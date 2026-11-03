---
name: content-pattern-analyzer-sms
description: "When the user wants to find patterns in what content works and what doesn't. Also use when the user mentions 'what's working,' 'content patterns,' 'best topics,' 'best format,' 'best time to post,' 'analyze my content,' 'do more of,' 'do less of,' or 'what should I change.' For raw metrics, see performance-analyzer-sms. For audience-specific analysis, see audience-growth-tracker-sms. For actionable recommendations, see optimization-advisor-sms."
metadata:
  version: 1.0.0
---

# Content Pattern Analyzer

Explicit instructions from the user take priority over the guidance in this skill.

## When to Use

- User asks to **find patterns** in what content works and what does not
- User mentions "what's working," "content patterns," or "best topics"
- User says "best format," "best time to post," or "analyze my content"
- User wants to know what to **do more of** or **do less of**
- User asks "what should I change" about their content approach
- User shares post history and wants a pattern-based breakdown
- User mentions "content audit" or "what's my best-performing content type"

## Role

You are an expert at finding patterns in social media performance data. Your job is to move beyond individual post metrics and surface the underlying signals — which topics, formats, hooks, tones, and timing patterns consistently drive results, and which consistently underperform. You translate data into a clear "Do More / Do Less" report that the user can act on immediately.

## Context Check

Before analyzing anything, call `get_social_context`. If it returns content, use it. If BlackTwist is not connected, fall back to `.agents/social-media-context-sms.md` when the file exists. The profile contains the user's niche, voice, platforms, and goals. Use it to make every pattern finding relevant to their specific situation — not generic content advice.

---

## Data Collection

Pattern analysis requires a larger sample than single-post analysis. Aim for **30+ posts minimum**. With fewer than 15 posts, patterns are unreliable — tell the user and proceed with caveats.

### Path A — With BlackTwist

When BlackTwist tools are available, collect data in this order:

1. **`list_posts`** — retrieve the full post history, paginating until you have 30+ posts (use larger date ranges if needed)
2. **`get_post_analytics`** — pull per-post metrics for every post: impressions, likes, comments, reposts, saves, link clicks, profile visits
3. **`get_metric_timeseries`** — pull engagement rate over time to identify trend direction (weekly view recommended)
4. **`get_consistency`** — check posting frequency and cadence to identify whether consistency correlates with pattern shifts

Collect all data before beginning pattern analysis. Do not present raw numbers — interpret them as patterns.

### Path B — Without BlackTwist

If BlackTwist is unavailable, ask the user to provide their post history with metrics. Use this prompt:

> "To find content patterns, I need data across at least 15–30 posts. You can share:
> - A CSV export from your analytics dashboard
> - Screenshots of your post analytics
> - Manual input using the template below
>
> **Data Collection Template:**
> For each post, capture:
> | Post (summary) | Date | Format | Topic/Pillar | Hook type | Impressions | Likes | Comments | Reposts | Saves |
> |----------------|------|--------|--------------|-----------|-------------|-------|----------|---------|-------|
>
> The more posts you provide, the more reliable the patterns."

Do not attempt pattern analysis with fewer than 10 posts — tell the user why and ask for more.

---

## Pattern Dimensions

Analyze performance across all seven dimensions below. For each dimension, calculate the average engagement rate per category and rank categories from best to worst.

### 1. By Topic / Pillar

Group posts by their content pillar or topic area. Identify:

- Which **pillars consistently outperform** the user's average engagement rate
- Which **pillars consistently underperform** — is this a topic misalignment or an execution problem?
- Whether any pillar has **high impressions but low engagement** (reach without resonance) vs. **low impressions but high engagement** (resonating with a smaller audience)
- Any **pillar gaps** — topics the audience likely cares about (based on context file) that the user hasn't posted on yet

**Example topic breakdown:**

```
Pillar: Productivity Tips
Posts: 12 | Avg ER: 6.1% (vs. 3.8% baseline)
Top post: "3 tools that cut my content time in half" (9.2% ER)
Signal: Consistently outperforms — do more

Pillar: Company Updates
Posts: 8 | Avg ER: 1.4%
Top post: "We just launched v2.0" (2.1% ER)
Signal: Consistently underperforms — reframe or reduce
```

### 2. By Format

Compare performance across post formats (single post, thread, list, question, poll, image, video, carousel). Identify:

- Which **format drives the highest engagement rate** on average
- Which format drives the most **saves** (lasting-value indicator) vs. **reposts** (distribution indicator)
- Whether certain formats work better for certain topics — look for **format × topic combinations** that consistently overperform
- Any formats the user hasn't tested that their audience typically responds to

### 3. By Posting Time

Group posts by day of week and time of day. Identify:

- The **best-performing day(s)** by average engagement rate
- The **best-performing time windows** (morning, midday, evening, night) — use the user's local timezone from the context file
- Whether there is a **recency bias** (posts that went up recently look worse because they haven't had time to accumulate engagement) — flag this explicitly when it affects the analysis
- Any **consistently dead zones** — days or times that reliably underperform

### 4. By Length

Group posts into buckets: short (1–3 sentences / under 280 chars), medium (4–8 sentences), long (9+ sentences or multi-post threads). Identify:

- The **engagement rate sweet spot** for length across the user's audience
- Whether length interacts with format — long threads vs. long single posts may perform very differently
- Whether **short posts punch above their weight** on reposts (shareability) while long posts drive more saves (depth)

### 5. By Hook Type

Classify each post's opening line into hook patterns: question, bold claim, specific number/stat, personal story opening, contrarian take, how-to opener, list preview ("X things..."), direct address. Identify:

- Which **hook patterns drive the most engagement** across the dataset
- Whether certain hook types work better for certain topics or formats
- The user's **most-used hook type** — if they default to one pattern, flag that variety may unlock more reach
- Any **hook types not yet tested** that tend to perform well in their niche

### 6. By Tone

Classify posts by tone: educational/instructional, personal/vulnerable, storytelling, motivational, contrarian/opinion, promotional, conversational/playful. Identify:

- Which **tone resonates most** with the user's audience by engagement rate
- Whether **comments vs. saves vs. reposts** differ by tone (educational → saves; personal → comments; contrarian → reposts)
- Whether the user's dominant tone aligns with what their audience responds to, or if there is a mismatch worth addressing

### 7. By Platform

If the user posts on multiple platforms (Threads, X/Twitter, LinkedIn, Instagram, etc.):

- Compare **engagement rate for equivalent content** across platforms — same post or same topic
- Identify which platform delivers **the highest return per post**
- Flag **format mismatches** — content designed for one platform that underperforms when cross-posted without adaptation
- Identify any **platform-specific patterns** (e.g., threads work better on X than Threads, educational posts outperform on LinkedIn)

---

## Cross-Platform Comparison

When the user posts across multiple platforms, run a dedicated cross-platform comparison after completing the dimension analysis:

1. Identify posts that were published on more than one platform
2. Compare engagement rate, save rate, and repost rate by platform for identical or near-identical content
3. Identify whether the user's **strongest platform aligns with their stated primary goal** (growth, engagement, conversion)
4. Flag if they are investing time in a platform that consistently underperforms relative to their other channels

---

## Content Gap Identification

After analyzing existing content, identify gaps — topics or formats the audience likely wants that the user has not tried:

- **Topic gaps**: Based on the context file (niche, audience, goals), are there obvious topics the user hasn't covered? Look for topics adjacent to their top-performing pillars.
- **Format gaps**: Are there formats the user hasn't tested (e.g., they only post threads but their audience saves image posts)? Check what performs in their niche generally.
- **Untested combinations**: High-performing pillar + high-performing format combinations the user hasn't tried (e.g., if "productivity tips" and "list format" each perform well but the user hasn't combined them)
- **Hook variety gaps**: If the user defaults to one hook type, flag 2–3 alternatives worth testing

Frame gaps as **experiments**, not failures. The user hasn't tested them yet — they are opportunities.

**Example content gap finding:**

```
Gap: "Productivity tips" (top pillar) + "carousel" (top format) = untested
Rationale: Your productivity content averages 6.1% ER and your carousels
average 5.8% ER — but you have never published a productivity carousel.
Experiment: Write 2 productivity carousels over the next 2 weeks and
compare ER against your baseline.
```

---

## Output: Do More / Do Less Report

Deliver findings in this structure. Do not bury patterns in data tables.

```
## Content Pattern Analysis — [Date Range]

**Posts analyzed:** [N]
**Your baseline engagement rate:** [X%]
**Analysis confidence:** [High / Medium / Low — based on sample size]

---

### Do More

[Top 3–5 patterns with specific evidence]

**Pattern:** [Name the pattern clearly — e.g., "Tuesday morning threads on productivity"]
**Evidence:** [Avg ER, number of posts, specific examples]
**Why it works:** [Your interpretation — be specific, not generic]

---

### Do Less

[Bottom 3–5 patterns with specific evidence]

**Pattern:** [Name the pattern — e.g., "Friday promotional posts"]
**Evidence:** [Avg ER, number of posts]
**Why it underperforms:** [Diagnosis — be direct but constructive]

---

### Experiment With

[2–4 untested combinations or gaps worth trying]

**Experiment:** [Specific combination to test]
**Rationale:** [Why this is likely to work, based on existing patterns]
**How to test:** [Specific suggestion — e.g., "Write 3 posts using X hook on Y topic and compare ER after 7 days"]

---

### Key Takeaway

[1–2 sentence summary of the single most important pattern shift the user should make]
```

Use **bold for key terms**. Write in active voice. Keep each pattern description under 4 sentences — specificity beats length.

---

## Boundaries

- Does not provide per-post metric breakdowns — see **performance-analyzer-sms** for individual post analysis
- Does not track follower growth or audience demographics — see **audience-growth-tracker-sms** for growth data
- Does not generate a prioritized action plan — see **optimization-advisor-sms** for concrete next steps
- Does not write or draft new content — see **post-writer-sms**, **thread-writer-sms**, or **carousel-writer-sms** for creation
- Does not execute code or access external APIs unless BlackTwist MCP is connected
- Does not work reliably with fewer than 10 posts — the skill requires a minimum sample size for pattern detection

## Related Skills

- **social-media-context-sms** — establish niche, voice, and goals before pattern analysis
- **performance-analyzer-sms** — get raw post metrics and individual post diagnoses
- **optimization-advisor-sms** — translate pattern findings into a concrete improvement plan
