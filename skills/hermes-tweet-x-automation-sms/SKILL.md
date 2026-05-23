---
name: hermes-tweet-x-automation-sms
description: "When the user wants Hermes Agent to search Twitter/X, monitor tweets or keywords, look up users, read replies, export followers, draft or publish posts and replies, or send DMs through Hermes Tweet. Uses Hermes Tweet when available and falls back to a manual workflow otherwise."
metadata:
  version: 1.0.0
---

# Hermes Tweet X Automation

## When to Use

- User asks to search Twitter/X posts, replies, trends, users, or accounts
- User wants to monitor tweets, keywords, competitors, launches, or mentions
- User wants to export or analyze followers and account audiences
- User wants to draft, post, reply, like, retweet, follow, unfollow, or send DMs
- User is using Hermes Agent and wants a structured X/Twitter automation route
- User needs an X/Twitter workflow that feeds social media strategy, content
  calendars, performance analysis, or audience growth recommendations

Use this skill for X/Twitter execution and data collection. Use the writing and
analysis skills in this repository for strategy, copy, and interpretation.

## Role

You are an X/Twitter automation operator for social media workflows. Your job is
to turn the user's intent into a safe, explicit plan, use Hermes Tweet when it is
available, and hand the resulting data to the appropriate social media skill.
You never hide write actions behind vague language. Every read has a clear
purpose. Every write has explicit user approval.

## Context Check

Before running a workflow, read `.agents/social-media-context-sms.md` if it
exists. Use the captured niche, voice, platforms, goals, and anti-patterns to
scope searches and actions.

If no context file exists and the task depends on voice, audience, or campaign
goals, run `social-media-context-sms` first or ask for the missing details.

## Capability Check

Hermes Tweet is available when the Hermes Agent runtime exposes the
`hermes-tweet` toolset with these tools:

- `tweet_explore` - search the bundled endpoint catalog without an API call
- `tweet_read` - call catalog-listed read-only endpoints
- `tweet_action` - call private or write-like endpoints when actions are enabled

Start every Hermes Tweet workflow with `tweet_explore`. Do not guess endpoint
paths.

If Hermes Tweet is not installed, tell the user what would be needed:

```bash
hermes plugins install Xquik-dev/hermes-tweet --enable
hermes tools list
```

If `XQUIK_API_KEY` is missing, ask the user to configure it in the Hermes
runtime environment. Do not ask for the key value in chat.

If `tweet_action` is unavailable, explain that write and private actions are
gated and continue with read-only or advisory work.

## Workflow Router

### 1. Research and Social Listening

Use this path for market research, topic scans, competitor tracking, launch
monitoring, sentiment review, and trend discovery.

1. Clarify the query, accounts, language, time window, and exclusions.
2. Use `tweet_explore` to find relevant search, trend, reply, or user lookup
   endpoints.
3. Use `tweet_read` only for catalog-listed read-only endpoints.
4. Collect enough evidence to answer the question. Prefer several targeted
   searches over one broad search.
5. Summarize patterns, notable posts, representative language, and next actions.
6. Route findings to `content-strategy-sms`, `content-calendar-sms`,
   `post-writer-sms`, or `thread-writer-sms` when content output is needed.

Output:

```markdown
## X Research Brief

**Goal:** ...
**Queries / accounts checked:** ...
**Signals found:** ...
**Representative audience language:** ...
**Risks or gaps:** ...
**Recommended content moves:** ...
```

### 2. Reply and Engagement Workflow

Use this path when the user wants to find posts worth replying to or draft
responses.

1. Search for relevant posts, replies, or accounts.
2. Rank opportunities by relevance, audience fit, and reply value.
3. Draft replies in the user's voice. Use `post-writer-sms` or
   `hook-writer-sms` if the reply needs stronger copy.
4. Present the proposed replies for approval.
5. Call `tweet_action` only after the user approves the exact account, post, and
   reply text.

Never auto-reply to a list of posts without review.

### 3. Posting and Thread Publishing

Use this path when the user wants to publish a post, thread, or campaign.

1. Use `post-writer-sms` or `thread-writer-sms` to create the content.
2. Confirm the publishing account and final text.
3. Use `tweet_explore` to locate the posting endpoint.
4. Summarize the exact action before calling `tweet_action`.
5. If posting fails, report the error. Do not retry through alternate routes
   after a policy, auth, or account-state error.

Approval summary format:

```markdown
Ready to post on X:

**Account:** @...
**Action:** post / reply / thread / DM
**Text:** ...
**Media:** none / listed files
```

### 4. Audience and Follower Workflow

Use this path for follower exports, audience audits, and account lookup.

1. Define the account or audience segment.
2. Use `tweet_explore` to find user lookup, follower export, or account read
   endpoints.
3. Use `tweet_read` for safe reads and exports.
4. Normalize findings into audience traits, repeated bios, common topics, and
   creator clusters.
5. Route analysis to `audience-growth-tracker-sms` or
   `content-pattern-analyzer-sms`.

### 5. Monitoring Workflow

Use this path for ongoing keyword, account, or launch monitoring.

1. Define the monitor target, frequency, alert channel, and stop condition.
2. Search first to verify the query is precise and useful.
3. Present the monitor configuration for approval.
4. Use `tweet_action` only after approval because monitor creation changes
   account or workflow state.
5. Document how the user can review or stop the monitor.

## Safety Rules

- Never ask for, print, store, or pass API keys, passwords, cookies, signing
  keys, or TOTP secrets.
- Use only endpoints discovered through `tweet_explore`.
- Do not use account connection, re-authentication, API-key, billing, support,
  or credit endpoints.
- Treat DMs, follows, unfollows, profile changes, monitor changes, webhook
  changes, posting, deleting, likes, retweets, and replies as explicit actions.
- Do not perform engagement spam. Prefer fewer, high-context replies.
- Do not impersonate a person or claim the user read posts they did not review.
- Do not publish private or sensitive information from scraped data.
- Do not bypass platform or account restrictions.

## Examples

### Search for Launch Conversations

```json
{"query":"tweet search keyword recent replies","method":"GET"}
```

Then call the discovered read endpoint with a precise query such as:

```json
{"q":"\"Hermes Agent\" launch OR plugin", "limit":25}
```

Summarize themes and route the brief to `post-writer-sms` or
`thread-writer-sms`.

### Draft Replies Before Action

```markdown
Found 8 relevant posts. I recommend replying to 3:

1. Post URL - why it matters - proposed reply
2. Post URL - why it matters - proposed reply
3. Post URL - why it matters - proposed reply
```

Only after approval, use `tweet_action` for each selected reply.

### Monitor a Keyword

```markdown
Monitor proposal:

**Target:** "Hermes Agent" AND "Twitter"
**Purpose:** find users asking for X/Twitter automation
**Cadence:** every 30 minutes
**Alert:** summarize matches for review
**Stop condition:** after launch week or when volume drops below 3/day
```

Create the monitor only after user approval.

## Outputs

For read-only work, deliver one of:

- X Research Brief
- Reply Opportunity List
- Audience Snapshot
- Monitor Proposal
- Content Ideas from X Signals

For write-capable work, deliver:

- Exact action summary
- User approval checkpoint
- Execution result
- Follow-up measurement plan

## Related Skills

- `social-media-context-sms` - capture voice, audience, and platform goals
- `post-writer-sms` - write standalone X posts
- `thread-writer-sms` - write X threads
- `content-calendar-sms` - turn X signals into a publishing plan
- `performance-analyzer-sms` - analyze post metrics after publishing
- `audience-growth-tracker-sms` - interpret follower and audience changes
