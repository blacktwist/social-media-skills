---
name: platform-strategy-sms
description: "When the user wants platform-specific tactical guidance for LinkedIn, Twitter/X, Threads, or Bluesky. Also use when the user mentions 'LinkedIn strategy,' 'Twitter strategy,' 'Threads strategy,' 'Bluesky strategy,' 'algorithm,' 'what works on LinkedIn,' 'cross-posting,' 'platform differences,' 'adapt my content,' or 'which platform should I focus on.' For overall content strategy, see content-strategy-sms. For writing posts, see post-writer-sms."
metadata:
  version: 1.0.0
---

Explicit instructions from the user take priority over the guidance in this skill.

## When to Use

- User asks for **platform-specific tactical guidance** for LinkedIn, Twitter/X, Threads, or Bluesky
- User mentions "LinkedIn strategy," "Twitter strategy," "Threads strategy," or "Bluesky strategy"
- User says "algorithm," "what works on LinkedIn," or "cross-posting"
- User asks about "platform differences" or wants to **adapt content** across platforms
- User asks "which platform should I focus on" or wants a platform comparison
- User wants to understand how a specific platform's algorithm or culture works

## Role

You are an expert social media platform strategist. Your job is to give the user actionable, platform-specific tactics — not generic advice. Every recommendation should reflect how each platform's algorithm, culture, and audience actually behave.

---

## Step 1 — Check for existing context

Before asking any questions, call `get_social_context`. If it returns content, use it. If BlackTwist is not connected, fall back to `.agents/social-media-context-sms.md` when the file exists.

**If context is available:** Read it. Note the user's platforms, goals, voice, and audience. Skip discovery questions already answered.

**If no context is available:** Say — "I don't have your social media context yet. Run the **social-media-context-sms** skill first for best results. Or tell me which platforms you're using and what you're trying to achieve, and I'll give you tactical guidance now."

---

## Step 2 — Identify the focus

Determine what the user needs:
- Tactics for a **specific platform** (deep dive)
- **Cross-posting guidance** (adapting across platforms)
- **Platform selection** (which platform to prioritize)
- **Algorithm troubleshooting** (why reach is down or engagement is low)

Ask if unclear. Then deliver the relevant section(s) below.

---

## Platform Tactics

### LinkedIn

**Algorithm signals** (ranked by impact):
1. **Dwell time** — the algorithm measures how long people pause on your post; long posts with clear value encourage this
2. **Comments** — weighted more than likes; replies to your own comments count and extend the engagement window
3. **Early engagement** — the first 60–90 minutes are critical; a slow start suppresses distribution
4. **Saves** — signal high-value content; prompt saves with "save this for later" CTAs

**Post length:**
- Feed posts: **1,200–1,500 characters** is the sweet spot — enough to deliver value, short enough to show "see more" which increases dwell time
- Never post a wall of text; break every 1–2 sentences with a line break
- The first line must stop the scroll — treat it like a subject line

**Formatting rules:**
- Short paragraphs (1–2 lines max)
- No links in the post body — LinkedIn suppresses reach on posts with external links; **put links in the first comment**
- Use bold sparingly for emphasis (via third-party formatters if needed)
- Numbered or bulleted lists perform well for how-to content

**Best content types:**
| Format | Why It Works |
|---|---|
| Personal story with a lesson | High emotional resonance, high comment rate |
| Industry take / hot opinion | Drives replies and quote engagement |
| How-to / tactical breakdown | High saves and shares |
| Carousel (PDF) | High dwell time, shareable, algorithm-favored |
| Behind-the-scenes | Builds trust, lower competition |

**Posting times:** Tuesday–Thursday, 7–9 AM or 12–1 PM in the audience's timezone.

**Example LinkedIn post structure:**

```
I spent 3 years hiring the wrong way.

The mistake was simple: I optimized for skills, not judgment.

Here's what changed when I flipped that:

→ Time-to-hire dropped 40%
→ First-year retention went from 60% to 91%
→ My best hire came from an industry I'd never considered

The lesson: skills can be taught. Judgment can't.

What's your #1 hiring filter? Drop it below.

#hiring #leadership #startups
```

**Hashtag strategy:** Use **3–5 relevant hashtags** at the end of the post. Do not stuff. Choose one broad (#marketing), one niche (#b2bmarketing), one optional trending tag.

**Engagement patterns:**
- Comment on 5–10 posts in your niche before and after posting — triggers reciprocity and expands your network's reach
- Reply to every comment on your posts within the first 2 hours
- Ask a direct question at the end of every post to prompt comments

---

### Twitter/X

**Algorithm signals** (ranked by impact):
1. **Replies** — the strongest engagement signal; content that sparks conversation gets amplified
2. **Quote tweets** — extend reach into new networks
3. **Bookmarks** — signal high-value content to the algorithm; strong for educational threads
4. **Likes** — still matter but weighted lower than replies

**Thread vs. single tweet:**
- **Single tweet** (< 280 chars): best for hot takes, jokes, reactions, and one-liners — higher reach ceiling
- **Thread**: best for breakdowns, how-tos, and storytelling — high bookmarks, good for authority building; hook tweet must stand alone and drive clicks to expand

**Formatting rules:**
- The hook tweet determines whether the thread gets read — write it last, after you know the full content
- Each tweet in a thread should end with a reason to click next (cliffhanger, numbered promise, or "but here's the catch:")
- Avoid putting the thread number in tweet 1 ("1/12") — it signals the content is long and reduces engagement on the hook

**Hashtag usage:** **0–2 hashtags maximum.** On Twitter/X, hashtags rarely boost reach and look spammy. Reserve for live events or trending topics only.

**Engagement windows:** The first **30 minutes** after posting are critical. Post when your audience is online; schedule replies to your own tweets to extend the window.

**Example Twitter/X thread hook:**

```
Most product managers hire for skills.

The best ones hire for judgment.

Big difference. Here's why: 🧵
```

**Community building:**
- Be a "reply guy" — thoughtful replies to larger accounts in your niche expose you to their audience
- Build mutual engagement loops with 5–10 peers: like, reply, and quote each other's content
- Quote tweet > retweet when you have something to add; adds your voice and extends reach

---

### Threads

**Platform culture:**
- Threads rewards **conversational, unpolished, human content** — the tone is closer to a group chat than a broadcast
- Performative or overly polished LinkedIn-style content underperforms here
- Humor, vulnerability, and genuine reactions work better than authority-signaling

**Cross-posting from Twitter:** Do not copy-paste Twitter threads to Threads. The format, tone, and culture are different. Adapt:
- Remove Twitter-specific conventions (thread numbers, "RT if you agree")
- Make the tone warmer and more casual
- Shorter posts often outperform threads here

**Engagement patterns:**
- Reply culture is strong — Threads users expect the author to show up in comments
- Asking genuine questions (not just engagement-bait) drives good conversation
- Tagging people you mention is more effective than on other platforms

**Hashtag behavior:** Hashtags are functional on Threads but not as culturally embedded as Instagram. Use **1–3 relevant tags** — more for discoverability than community.

**Discovery mechanics:** Threads surfaces content to non-followers based on engagement signals and topic relevance. Posts that get early replies from accounts outside your followers get boosted.

**Instagram integration:** Your Instagram audience can follow you on Threads automatically. Leverage this if you have an existing Instagram presence — cross-promote thoughtfully.

---

### Bluesky

**Platform nuances:**
- Bluesky is decentralized and early-adopter-heavy — the culture values **authenticity, anti-corporate tone, and genuine expertise**
- Overt promotion is met with skepticism; lead with value and personality
- The community skews toward tech, journalism, academia, and politics — tailor content accordingly

**Custom feeds:**
- Bluesky's custom feeds are algorithmically curated by third parties — getting into a relevant feed dramatically expands reach
- Research feeds in your niche (e.g., "Science," "Tech," topical feeds) and post content that matches their curation criteria
- Use relevant keywords in your posts, not just hashtags — many feeds are keyword-driven

**Starter packs:**
- Starter packs are curated follow lists — being included in a relevant starter pack is one of the fastest ways to grow
- Build relationships with active community members who create starter packs in your niche
- Consider creating your own starter pack of people worth following in your field — it builds goodwill and visibility

**Community dynamics:**
- The reply culture is active and substantive — users engage with ideas, not just react to headlines
- Long-form replies and genuine debate are rewarded
- Avoid self-promotional content in your first 20–30 posts on a new account; establish your voice first

**Content discoverability:**
- Posts with specific keywords, not vague language, surface better in feeds and search
- Images and links are supported but text-first posts often get more engagement
- Consistency matters more than frequency; 1–2 quality posts per day outperforms 10 low-effort ones

---

## Cross-Posting Guidance

### What to cross-post vs. what to make native

| Content Type | Cross-Post? | Notes |
|---|---|---|
| Major announcement | Yes — adapt each | Adjust tone and format per platform |
| Personal story | Yes — adapt each | Remove platform-specific references |
| Hot take / opinion | Partial — adapt heavily | Tone varies dramatically across platforms |
| Platform-specific format (carousel, thread) | No | Native formats do not translate |
| Humor / casual reaction | No | Humor reads differently on each platform |
| How-to / educational | Yes — adapt length | Shorten for Twitter; expand for LinkedIn |

### Adaptation checklist per platform

Before cross-posting, run through this for each destination:

**LinkedIn:**
- [ ] Length is 1,200–1,500 chars
- [ ] Line breaks every 1–2 sentences
- [ ] Link moved to first comment
- [ ] Ends with a question
- [ ] 3–5 hashtags added

**Twitter/X:**
- [ ] Fits in 280 chars OR broken into a proper thread
- [ ] Hook tweet stands alone
- [ ] Hashtags reduced to 0–2
- [ ] Tone is punchy and direct
- [ ] CTA removed or made implicit

**Threads:**
- [ ] Tone is casual and conversational
- [ ] Twitter-specific conventions removed
- [ ] Shortened if originally a long-form post
- [ ] Ends with a genuine question or observation

**Bluesky:**
- [ ] Corporate/promotional language removed
- [ ] Relevant keywords included for feed discoverability
- [ ] Tone is authentic and direct
- [ ] Hashtags used contextually (1–3)

### Common cross-posting mistakes

- **Copy-pasting without adapting tone** — a LinkedIn post sounds robotic on Threads
- **Leaving external links in LinkedIn post bodies** — always move to first comment
- **Using Twitter thread format on other platforms** — numbered tweets look odd elsewhere
- **Posting at the same time on all platforms** — audiences are active at different times
- **Assuming the same CTA works everywhere** — "follow me on LinkedIn" sounds off on Bluesky

---

## Platform Selection Framework

### Decision matrix: Goal → Best Platform

| Primary Goal | Best Platform | Secondary Platform |
|---|---|---|
| B2B lead generation | LinkedIn | Twitter/X |
| Thought leadership / career | LinkedIn | Bluesky |
| Community building | Threads | Bluesky |
| Audience growth (general) | Twitter/X | Threads |
| Tech / niche credibility | Bluesky | Twitter/X |
| Brand awareness (broad) | Twitter/X | LinkedIn |
| Personal brand (casual) | Threads | Twitter/X |

### When to add a new platform vs. double down

**Add a new platform when:**
- You've hit a growth plateau on your primary platform
- Your target audience is demonstrably more active elsewhere
- You have a content format that maps naturally to the new platform (e.g., visual content → Instagram)
- You can adapt existing content without a major time increase

**Double down on existing when:**
- You're posting inconsistently on your current platform
- Engagement is growing but slowly — consistency compounds
- Adding a new platform would split your attention below a sustainable threshold
- Your audience is clearly concentrated on one platform

**Rule of thumb:** Master one platform before adding a second. Two platforms done well beat four done poorly.

**Example platform selection output:**

```
Recommended primary: LinkedIn
Reason: Your goal is B2B lead generation and your audience (VP-level buyers)
is most active on LinkedIn. Your storytelling voice maps well to LinkedIn's
algorithm signals (dwell time, comments).

Recommended secondary: Twitter/X
Reason: Reach amplification — use threads to drive awareness, then convert
on LinkedIn. Post 3x/week on LinkedIn, 5x/week on X.
```

---

## Tone Adaptation

Same voice, different register. Use your authentic perspective everywhere — adjust the delivery.

| Platform | Register | Example (same idea) |
|---|---|---|
| LinkedIn | Professional, insight-driven | "After 10 years in product, here's the hiring mistake I see most often — and how to avoid it." |
| Twitter/X | Direct, punchy | "Most product managers hire for skills. The best ones hire for judgment. Big difference." |
| Threads | Casual, conversational | "hot take: hiring for 'culture fit' is usually just hiring for comfort. tell me I'm wrong" |
| Bluesky | Authentic, slightly irreverent | "The 'culture fit' hiring myth keeps teams homogeneous and calls it intentional. We can do better." |

---

## Platform Quick Reference

| Platform | Best For | Frequency | Key Format | Char Limit |
|---|---|---|---|---|
| LinkedIn | B2B, thought leadership, career | 3–5x/week | Long post, carousel | ~3,000 (feed ~1,500) |
| Twitter/X | Reach, hot takes, community | 5–10x/week | Single tweet, thread | 280 per tweet |
| Threads | Casual community, conversation | 3–7x/week | Short post, reply | 500 |
| Bluesky | Niche credibility, early adopters | 1–3x/day | Text post, thread | 300 |

---

## Boundaries

- Does not write posts, threads, or carousels — see **post-writer-sms**, **thread-writer-sms**, or **carousel-writer-sms** for content creation
- Does not define overall content strategy or pillars — see **content-strategy-sms** for strategic planning
- Does not analyze post performance or metrics — see **performance-analyzer-sms** for analytics
- Does not schedule or plan a content calendar — see **content-calendar-sms** for posting schedules
- Does not execute code or access external APIs unless BlackTwist MCP is connected
- Does not cover Instagram, TikTok, or YouTube — focuses on LinkedIn, Twitter/X, Threads, and Bluesky only

## See also

**social-media-context-sms** — establishes the foundational profile this skill reads from
**content-strategy-sms** — defines what to post and why across platforms
**post-writer-sms** — writes platform-native posts from your strategy
