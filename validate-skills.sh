#!/usr/bin/env bash
# validate-skills.sh — validates all skills in skills/ against conventions

set -euo pipefail

SKILLS_DIR="$(dirname "$0")/skills"
PASS=0
WARN=0
FAIL=0

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
RESET='\033[0m'

pass() { echo -e "${GREEN}  ✓ $1${RESET}"; PASS=$((PASS + 1)); }
warn() { echo -e "${YELLOW}  ⚠️  $1${RESET}"; WARN=$((WARN + 1)); }
fail() { echo -e "${RED}  ❌ $1${RESET}"; FAIL=$((FAIL + 1)); }

if [[ ! -d "$SKILLS_DIR" ]]; then
  echo -e "${YELLOW}No skills/ directory found — nothing to validate.${RESET}"
  exit 0
fi

skill_dirs=("$SKILLS_DIR"/*/SKILL.md)

if [[ ${#skill_dirs[@]} -eq 0 ]] || [[ ! -f "${skill_dirs[0]}" ]]; then
  echo -e "${YELLOW}No SKILL.md files found in skills/ — nothing to validate.${RESET}"
  exit 0
fi

for skill_file in "$SKILLS_DIR"/*/SKILL.md; do
  [[ -f "$skill_file" ]] || continue

  skill_name="$(basename "$(dirname "$skill_file")")"
  echo
  echo "Validating: $skill_name"

  # --- Frontmatter exists ---
  if ! head -1 "$skill_file" | grep -q '^---'; then
    fail "Missing YAML frontmatter (file must start with ---)"
    continue
  fi

  # Extract frontmatter block (between first and second ---)
  frontmatter="$(awk '/^---/{count++; if(count==2) exit; next} count==1' "$skill_file")"

  # --- name field ---
  name_value="$(echo "$frontmatter" | grep '^name:' | sed 's/^name:[[:space:]]*//' | tr -d '"'"'" | head -1 || true)"

  if [[ -z "$name_value" ]]; then
    fail "Missing 'name' field in frontmatter"
  else
    name_len=${#name_value}
    if [[ $name_len -lt 1 || $name_len -gt 64 ]]; then
      fail "name '$name_value' is $name_len chars — must be 1–64"
    elif ! echo "$name_value" | grep -qE '^[a-z0-9]+(-[a-z0-9]+)*$'; then
      fail "name '$name_value' is not valid kebab-case (lowercase alphanumeric and hyphens only)"
    else
      pass "name '$name_value' is valid kebab-case ($name_len chars)"
    fi

    if [[ "$name_value" != "$skill_name" ]]; then
      fail "name '$name_value' does not match directory name '$skill_name'"
    fi
  fi

  # --- description field ---
  desc_value="$(echo "$frontmatter" | grep '^description:' | sed 's/^description:[[:space:]]*//' | tr -d '"'"'" | head -1 || true)"

  if [[ -z "$desc_value" ]]; then
    fail "Missing 'description' field in frontmatter"
  else
    desc_len=${#desc_value}
    if [[ $desc_len -lt 1 ]]; then
      fail "description is empty"
    elif [[ $desc_len -gt 1024 ]]; then
      fail "description is $desc_len chars — must be 1–1024"
    else
      pass "description is $desc_len chars (within 1–1024)"
    fi
  fi

  # --- metadata.version field ---
  version_value="$(echo "$frontmatter" | grep -A5 '^metadata:' | grep 'version:' | sed 's/.*version:[[:space:]]*//' | tr -d '"'"'" | head -1 || true)"

  if [[ -z "$version_value" ]]; then
    fail "Missing metadata.version in frontmatter"
  elif ! echo "$version_value" | grep -qE '^[0-9]+\.[0-9]+\.[0-9]+$'; then
    fail "metadata.version '$version_value' is not semver (e.g. 1.0.0)"
  else
    pass "metadata.version '$version_value' looks like semver"
  fi

  # --- File size ---
  line_count="$(wc -l < "$skill_file" | tr -d ' ')"
  if [[ $line_count -gt 500 ]]; then
    fail "File is $line_count lines — must be under 500"
  elif [[ $line_count -gt 450 ]]; then
    warn "File is $line_count lines — approaching 500-line limit"
  else
    pass "File is $line_count lines (under 500)"
  fi

done

echo
echo "----------------------------------------"
echo -e "Results: ${GREEN}${PASS} passed${RESET}  ${YELLOW}${WARN} warnings${RESET}  ${RED}${FAIL} failed${RESET}"
echo

if [[ $FAIL -gt 0 ]]; then
  echo -e "${RED}Validation failed — fix errors before committing.${RESET}"
  exit 1
else
  echo -e "${GREEN}All checks passed.${RESET}"
  exit 0
fi
