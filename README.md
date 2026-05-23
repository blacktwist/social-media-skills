# Social Media Skills

AI agent skills for social media content strategy, creation, and analysis across text-first and visual-first platforms.

## Skill Catalog

### Foundation

| Skill                                                | Description                                                                                                 |
| ---------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| [social-media-context-sms](skills/social-media-context-sms/) | Captures platform context, audience details, content pillars, and tone preferences used by all other skills |

### Strategy

| Skill                                          | Description                                                                             |
| ---------------------------------------------- | --------------------------------------------------------------------------------------- |
| [content-strategy-sms](skills/content-strategy-sms/)   | Defines content pillars, audience targeting, and positioning for consistent brand voice |
| [content-calendar-sms](skills/content-calendar-sms/)   | Plans publishing cadence, themes, and scheduling across platforms                       |
| [platform-strategy-sms](skills/platform-strategy-sms/) | Tailors content approach per platform based on audience and format strengths            |

### Creation

| Skill                                            | Description                                                                      |
| ------------------------------------------------ | -------------------------------------------------------------------------------- |
| [post-writer-sms](skills/post-writer-sms/)               | Writes single standalone posts optimized for each platform's format and audience |
| [thread-writer-sms](skills/thread-writer-sms/)           | Writes multi-post threads with a clear narrative arc and strong opening hook     |
| [carousel-writer-sms](skills/carousel-writer-sms/)       | Writes slide-by-slide carousel scripts for LinkedIn and similar visual formats   |
| [caption-writer-sms](skills/caption-writer-sms/)         | Writes captions for visual-first platforms — Facebook, Instagram, TikTok, Pinterest |
| [content-repurposer-sms](skills/content-repurposer-sms/) | Transforms existing content into new formats and adapts it across platforms      |
| [hook-writer-sms](skills/hook-writer-sms/)               | Crafts high-performing opening lines to maximize engagement and stop-the-scroll  |

### Analysis

| Skill                                                        | Description                                                             |
| ------------------------------------------------------------ | ----------------------------------------------------------------------- |
| [performance-analyzer-sms](skills/performance-analyzer-sms/)         | Interprets post and account metrics to surface actionable insights      |
| [audience-growth-tracker-sms](skills/audience-growth-tracker-sms/)   | Tracks follower trends and identifies the content driving growth        |
| [content-pattern-analyzer-sms](skills/content-pattern-analyzer-sms/) | Identifies which content types, topics, and formats perform best        |
| [optimization-advisor-sms](skills/optimization-advisor-sms/)         | Recommends specific improvements based on performance data and patterns |

### Automation

| Skill                                                                  | Description                                                                                         |
| ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| [hermes-tweet-x-automation-sms](skills/hermes-tweet-x-automation-sms/) | Searches Twitter/X, monitors tweets, exports followers, and gates posts, replies, and DMs through Hermes Tweet |

## Installation

### Option 1: CLI Install (Recommended)

Use [npx skills](https://github.com/vercel-labs/skills) to install skills directly:

```bash
# Install all skills
npx skills add blacktwist/social-media-skills

# Install specific skills
npx skills add blacktwist/social-media-skills --skill post-writer-sms hook-writer-sms

# List available skills
npx skills add blacktwist/social-media-skills --list
```

This automatically installs to your `.agents/skills/` directory (and symlinks into `.claude/skills/` for Claude Code compatibility).

### Option 2: Clone and Copy

Clone the entire repo and copy the skills folder:

```bash
git clone https://github.com/blacktwist/social-media-skills.git
cp -r social-media-skills/skills/* .agents/skills/
```

### Option 3: Git Submodule

Add as a submodule for easy updates:

```bash
git submodule add https://github.com/blacktwist/social-media-skills.git .agents/social-media-skills
```

Then reference skills from `.agents/social-media-skills/skills/`.

### Option 4: Fork and Customize

1. Fork this repository
2. Customize skills for your specific needs
3. Clone your fork into your projects

### Option 5: Claude Code Cowork

Download the skill zip files from the [latest release](https://github.com/blacktwist/social-media-skills/releases/tag/v1.0.0), then add them one by one:

1. Go to **Cowork** > **Customize** > **Skills**
2. Click **"+"** > **Create skill** > **Upload a skill**
3. Upload each zip file

There's one zip per skill, so repeat for each skill you want to add.

### Option 6: SkillKit (Multi-Agent)

Use [SkillKit](https://github.com/rohitg00/skillkit) to install skills across multiple AI agents (Claude Code, Cursor, Copilot, etc.):

```bash
# Install all skills
npx skillkit install blacktwist/social-media-skills

# Install specific skills
npx skillkit install blacktwist/social-media-skills --skill post-writer-sms hook-writer-sms

# List available skills
npx skillkit install blacktwist/social-media-skills --list
```

## Supported Platforms

**Text-first**

- **LinkedIn** — long-form posts, carousels, newsletters
- **Twitter/X** — posts, threads, spaces
- **Threads** — posts, threads (Meta)
- **Bluesky** — posts, threads, starter packs

**Visual-first** (captions only — see `caption-writer-sms`)

- **Facebook** — feed posts, photo and video captions
- **Instagram** — feed, Reels, carousels, stories
- **TikTok** — short-form video captions
- **Pinterest** — pin titles and descriptions

## Tool Integrations

### BlackTwist (primary)

[BlackTwist](https://blacktwist.app/mcp) is the recommended MCP integration for this skill set. When the BlackTwist MCP server is connected to your Claude environment, skills use it directly for:

- Publishing and scheduling posts
- Fetching analytics and engagement data
- Managing drafts and queued content
- Tracking follower growth

When BlackTwist is not available, skills fall back to advisory mode — generating content and instructions for manual posting.

See [tools/REGISTRY.md](tools/REGISTRY.md) for the full tool reference.

### Hermes Tweet (optional for Hermes Agent)

[Hermes Tweet](https://github.com/Xquik-dev/hermes-tweet#readme) adds a Hermes
Agent X/Twitter toolset for tweet search, user lookup, replies, monitors,
follower exports, posting, replies, DMs, and other X actions. Use
`hermes-tweet-x-automation-sms` when a Hermes Agent workflow needs X/Twitter
data or approved X actions alongside the strategy, writing, and analysis skills
in this repository.

## License

MIT — see [LICENSE](LICENSE) for details.
