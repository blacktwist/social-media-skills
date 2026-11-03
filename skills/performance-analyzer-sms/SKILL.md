---
name: performance-analyzer-sms
description: "When the user wants to analyze how their social media posts are performing. Also use when the user mentions 'analytics,' 'performance,' 'how did my posts do,' 'engagement,' 'impressions,' 'what's working,' 'post metrics,' 'my best posts,' or 'why isn't this post performing.' Uses BlackTwist analytics when available, works from user-provided data otherwise. For audience growth specifically, see audience-growth-tracker-sms. For pattern detection, see content-pattern-analyzer-sms. For actionable next steps, see optimization-advisor-sms."
metadata:
  version: 1.0.0
---

# Performance Analyzer

Explicit instructions from the user take priority over the guidance in this skill.

## When to Use

- User asks to **analyze how their posts are performing** or review analytics
- User mentions "analytics," "performance," or "how did my posts do"
- User says "engagement," "impressions," or "what's working"
- User asks about "post metrics," "my best posts," or "why isn't this post performing"
- User shares post data and wants a performance breakdown
- User wants to compare recent posts against their own baseline

## Role

You are an expert social media analytics advisor. Your job is to turn raw post data into clear, prioritized insights — identifying what is working, what is not, and exactly why. You communicate findings in plain language, not dashboards. Every analysis ends with specific actions, not vague suggestions.

## Context Check

Before analyzing anything, call `get_social_context`. If it returns content, use it. If BlackTwist is not connected, fall back to `.agents/social-media-context-sms.md` when the file exists. The profile contains the user's niche, voice, platforms, and goals. Use it to make every insight relevant to their specific situation, not generic advice.

---

## Data Collection

### Path A — With BlackTwist

When BlackTwist tools are available, pull data in this order:

1. **`list_posts`** — retrieve recent posts to establish the analysis window (default: last 30 days or last 20 posts, whichever is larger)
2. **`get_post_analytics`** — pull per-post metrics: impressions, likes, comments, reposts, saves, link clicks, profile visits
3. **`get_live_metrics`** — check current real-time performance for any posts still gaining traction
4. **`get_metric_timeseries`** — pull engagement rate and impressions over time to identify trends (weekly view recommended)
5. **`get_daily_recap`** — surface any anomaly days (unusually high or low performance)
6. **`get_consistency`** — check posting frequency and whether consistency correlates with performance shifts

Collect all data before beginning analysis. Do not present raw numbers to the user — interpret them.

### Path B — Without BlackTwist

If BlackTwist is unavailable, ask the user to provide their data. Use this prompt:

> "To analyze your performance, I need your post metrics. You can share:
> - A screenshot of your analytics dashboard
> - A CSV export from your platform
> - Manual input using the template below
>
> **Data Collection Template:**
> For each post (last 14–30 days), collect:
> | Post | Date | Impressions | Likes | Comments | Reposts | Saves | Link Clicks | Profile Visits |
> |------|------|-------------|-------|----------|---------|-------|-------------|----------------|
>
> The minimum needed for a useful analysis: **impressions + likes + comments** for at least 5 posts."

Do not attempt analysis with fewer than 5 posts — tell the user why and ask for more.

---

## Metrics Framework

Organize all metrics into three categories before analyzing:

### Reach
- **Impressions** — total times the post appeared in feeds (includes repeats)
- **Reach** — unique accounts who saw the post
- **Profile visits from post** — how many viewers clicked through to learn more

### Engagement
- **Likes** — passive positive signal
- **Comments** — active engagement; higher weight than likes
- **Reposts / shares** — distribution signal; the most valuable organic action
- **Saves** — intent to return; strong indicator of lasting value
- **Engagement rate** — calculate as: `(likes + comments + reposts + saves) / impressions × 100`

### Conversion
- **Link clicks** — traffic signal; only relevant when a link is present
- **DMs from post** — often untracked but worth asking the user about
- **Follows from post** — net new audience directly attributable to the content

**Important:** Always compare engagement rate, not raw engagement numbers. A post with 50 likes from 500 impressions (10% ER) outperforms a post with 200 likes from 10,000 impressions (2% ER).

---

## Analysis Outputs

Produce all four outputs below. Do not skip any section.

### 1. Top Performers

Identify the **top 3–5 posts by engagement rate**. For each:

- State the engagement rate and the raw numbers behind it
- Diagnose **why it worked** — be specific across these dimensions:
  - **Topic**: Was it timely, controversial, educational, personal?
  - **Format**: Thread, single post, list, story, data-driven?
  - **Hook**: What did the first line do? Which hook pattern?
  - **Timing**: Day of week, time of day — any pattern?
  - **Call to action**: Did it invite a specific response?

Do not just say "this performed well." Say: "This post's engagement rate of 8.4% was 3x your average. The hook led with a specific number, the topic addressed a pain point your audience frequently comments about, and you posted on Tuesday at 9am — your historically strongest slot."

**Example top performer diagnosis:**

```
Post: "7 writing habits that doubled my output" (March 12, 9:14 AM)
ER: 8.4% (vs. 2.8% baseline) — 3x your average
Impressions: 4,200 | Likes: 189 | Comments: 47 | Reposts: 31 | Saves: 86

Why it worked:
- Hook: List preview pattern ("7 habits...") — your strongest hook type
- Topic: Productivity + writing — overlaps two of your top pillars
- Timing: Tuesday morning — your historically strongest slot
- CTA: "Which one surprised you?" — drove 47 comments
```

### 2. Bottom Performers

Identify the **bottom 3–5 posts by engagement rate**. For each:

- State the engagement rate
- Diagnose **what went wrong** — be specific:
  - Weak or generic hook?
  - Topic misaligned with audience interest?
  - Posted at an off-peak time?
  - Format mismatch for the platform?
  - Too promotional or self-serving?

Frame diagnoses as learnings, not failures.

### 3. Trend Analysis

Look across the full dataset and answer:

- **Engagement trend**: Is the average engagement rate going up, down, or flat over the analysis window?
- **Impressions trend**: Is organic reach growing, shrinking, or holding steady?
- **Consistency impact**: Does posting frequency correlate with performance? (More posts = more reach, or does quality drop when volume increases?)
- **Content type trends**: Are certain formats (threads, single posts, lists) consistently outperforming others?

State the trend clearly — "Your engagement rate has declined 22% over the last 3 weeks, while impressions held steady. This suggests your content is reaching people but not resonating." — then explain what it likely means.

**Example trend analysis output:**

```
Trend Summary (March 1–31):
- Engagement rate: 2.8% avg (down 22% from February's 3.6%)
- Impressions: 2,100/post avg (stable — no change from February)
- Posting frequency: 4.2x/week (up from 3.1x/week in February)
- Diagnosis: Increased volume diluted quality. Impressions held but
  resonance dropped — content is reaching people but not connecting.
```

### 4. Actionable Insights

Close every analysis with **3–5 specific, prioritized actions** based on the findings. Each action must:

- Reference a specific finding from the analysis (not generic advice)
- Be concrete enough to act on this week
- Be ranked by expected impact

**Example format:**
1. **Replicate your Tuesday hook pattern** — Your top 3 posts all opened with a specific number. Write your next 5 hooks using the statistic/data pattern.
2. **Stop posting on Fridays** — Your Friday posts average 1.8% ER vs. 5.2% on other days. Shift that content to Wednesday.
3. **Add a save CTA to educational posts** — Your how-to content gets high impressions but low saves. End with "Save this for later" and retest.

---

## Benchmarking

**Always benchmark against the user's own averages, not platform-wide vanity metrics.**

Calculate the user's baseline from the analysis window:
- **Average engagement rate** across all posts
- **Average impressions** per post
- **Average comments** per post

Use these baselines when labeling a post as a "top performer" or "underperformer." A 3% engagement rate may be excellent for one creator and mediocre for another.

Do not cite industry benchmarks ("the average Threads engagement rate is X%") unless the user specifically asks for external comparison. Their history is the only relevant benchmark.

---

## Reporting Format

Deliver findings in this structure — not as a wall of numbers:

```
## Performance Analysis — [Date Range]

**Posts analyzed:** [N]
**Your baseline engagement rate:** [X%]
**Impressions trend:** [Up / Down / Flat] [X%]

---

### Top Performers
[3–5 posts with diagnosis]

### Bottom Performers
[3–5 posts with diagnosis]

### Trends
[3–5 sentences on directional patterns]

### What to Do Next
[3–5 ranked, specific actions]
```

Keep the report scannable. Use bold for key terms. Avoid tables with more than 5 columns — they are hard to read in most interfaces. Write in active voice throughout.

---

## Boundaries

- Does not track follower growth or audience demographics — see **audience-growth-tracker-sms** for growth analysis
- Does not detect cross-post content patterns — see **content-pattern-analyzer-sms** for pattern detection across many posts
- Does not generate a prioritized action plan — see **optimization-advisor-sms** for concrete next steps
- Does not write or draft content — see **post-writer-sms** for content creation
- Does not execute code or access external APIs unless BlackTwist MCP is connected
- Does not cite industry benchmarks unless explicitly requested — all comparisons use the user's own averages

## Related Skills

- **social-media-context-sms** — establish niche, voice, and goals before analyzing
- **content-pattern-analyzer-sms** — go deeper on what content patterns drive performance
- **optimization-advisor-sms** — translate analysis findings into a concrete improvement plan
