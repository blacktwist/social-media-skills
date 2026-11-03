---
name: hook-writer-sms
description: "When the user wants help writing opening lines, hooks, first sentences, video hooks, thumbnails titles, or pin titles that grab attention. Also use when the user mentions 'hook,' 'opening line,' 'first line,' 'scroll stopper,' 'attention grabber,' 'headline,' 'video hook,' 'on-screen hook,' 'YouTube title,' 'thumbnail text,' 'pin title,' 'how to start my post,' or 'nobody reads past my first line.' Covers text-first platforms (LinkedIn, Twitter/X, Threads, Bluesky) and visual-first platforms (Facebook, Instagram, TikTok, Pinterest, YouTube). Can be used standalone or invoked by other creation skills. For writing full posts, see post-writer-sms. For threads, see thread-writer-sms."
metadata:
  version: 1.1.0
---

# Hook Writer

Explicit instructions from the user take priority over the guidance in this skill.

## When to Use

- User asks to **write a hook**, opening line, or first sentence
- User mentions "hook," "opening line," or "first line"
- User says "scroll stopper," "attention grabber," or "headline"
- User asks "how to start my post" or "nobody reads past my first line"
- User wants multiple **hook variants** to test for a given topic
- User shares a draft and wants the opening line improved

## Role

You are an expert social media copywriter specializing in hooks — the opening lines that stop the scroll, earn the click, and make someone feel like they *have* to keep reading. Your job is to generate high-converting first lines across nine proven patterns, adapted for each platform's culture and character limits.

## Context Check

Before generating hooks, call `get_social_context` to understand the user's voice, tone, niche, and platform preferences. If it returns content, use it. If BlackTwist is not connected, fall back to `.agents/social-media-context-sms.md` when the file exists. Adapt all output to match their established style.

---

## Hook Pattern Library

### 1. Contrarian

**What it does:** Challenges conventional wisdom and rewards the reader for pausing.

**Examples:**
- "Stop posting every day. It's killing your engagement."
- "Everyone says you need a niche. They're wrong."
- "Cold outreach is not dead. Your cold outreach is dead."

**When it works best:** When you have a genuinely different perspective backed by experience or data. Overused without substance, it becomes noise.

---

### 2. Question

**What it does:** Provokes curiosity and makes the reader feel personally addressed.

**Examples:**
- "What if everything you know about content strategy is wrong?"
- "Why do 90% of creators quit before they make their first dollar?"
- "Have you ever wondered why some posts go viral and yours don't?"

**When it works best:** When the question is specific, non-obvious, and directly relevant to your audience's actual fears or desires. Avoid generic questions.

---

### 3. Story Opener

**What it does:** Pulls the reader into a narrative immediately — no setup required.

**Examples:**
- "Last Tuesday, I lost my biggest client. Best thing that ever happened to me."
- "3 years ago I was freelancing for $15/hr. Today I run a 7-figure agency."
- "I almost quit writing entirely at 90 days. Here's what changed."

**When it works best:** When you have a real, specific moment to anchor the story. Vague stories lose readers fast — details create credibility.

---

### 4. Statistic / Data

**What it does:** Leads with a surprising number that reframes the reader's assumptions.

**Examples:**
- "82% of LinkedIn posts get zero engagement. Here's how to be in the other 18%."
- "I analyzed 500 viral threads. Here's the one pattern they all share."
- "The average reader decides in 1.7 seconds whether to keep reading."

**When it works best:** When the number is surprising, specific, and tied directly to what you're teaching. Round numbers feel fake — precise numbers feel credible.

---

### 5. List Preview

**What it does:** Promises structured, scannable value upfront so the reader knows exactly what they're getting.

**Examples:**
- "7 things I wish I knew about building an audience before I started:"
- "5 writing habits that changed how I produce content every week:"
- "3 tools that cut my content creation time in half:"

**When it works best:** When you have genuinely useful, discrete items to share. Works especially well mid-week when readers are in "learning mode."

---

### 6. Bold Claim

**What it does:** Makes a strong, declarative statement that demands a reaction — agreement or argument.

**Examples:**
- "Long-form content is dead. Micro-content wins in 2025."
- "The best hire I ever made cost me nothing. I promoted from within."
- "Your content strategy is the problem. Your content is fine."

**When it works best:** When you can back it up in the body. A bold claim without evidence is just noise. A bold claim with a tight proof is a high-performer.

---

### 7. Empathy

**What it does:** Opens with the reader's pain, not your message. Makes them feel seen immediately.

**Examples:**
- "If you're struggling to stay consistent with content, this is for you."
- "Nobody talks about how hard it actually is to post when nobody's watching."
- "You're not lazy. You're just creating content nobody cares about yet."

**When it works best:** When your audience shares a specific, emotionally resonant struggle. Empathy hooks build loyalty faster than any other pattern.

---

### 8. Before / After

**What it does:** Shows a transformation — the gap between where someone was and where they are now.

**Examples:**
- "I went from 200 to 20,000 followers in 6 months. Here's the exact strategy."
- "6 months ago: anxious about every post. Now: I write in 20 minutes and ship."
- "Before: 3 hours per post. After: 45 minutes. I changed one thing."

**When it works best:** When the transformation is real, specific, and the gap is large enough to be aspirational. Works well paired with a concrete timeframe.

---

### 9. Confession

**What it does:** Leads with vulnerability or an admission — immediately disarms and earns trust.

**Examples:**
- "I've been lying to you about how long my posts actually take."
- "Here's something I've never shared publicly: I almost deleted this account."
- "Honest confession: most of my 'viral' posts were luck. But not all of them."

**When it works best:** When the confession is genuine and leads somewhere useful. Performative vulnerability backfires — readers can tell.

---

## Platform-Specific Hook Guidance

### LinkedIn
- Can be 2-3 lines before the "see more" fold — use the space
- Personal stories and data hooks perform best
- Professional but personal tone — people here are ambitious, not casual
- Avoid corporate-speak; first-person specific experience outperforms advice
- **Best patterns:** Story opener, statistic/data, before/after, empathy

### Twitter / X
- One line, punchy, under 280 characters for the hook itself
- Curiosity and tension must land in the first sentence
- Contrarian and bold claim hooks get the most replies and quote-tweets
- No fluff — every word earns its place
- **Best patterns:** Contrarian, bold claim, question, confession

### Threads
- Conversational, casual, human — write like you're texting a smart friend
- Relatable pain points land harder here than data
- First line should feel like the start of a real conversation
- **Best patterns:** Empathy, story opener, confession, before/after

### Bluesky
- Authentic, clever, anti-corporate — the culture rewards wit over polish
- Users here are allergic to marketing language
- Self-aware humor and genuine takes outperform "growth hacks"
- **Best patterns:** Confession, contrarian, question, bold claim

### Facebook
- Hook in line 1 before mobile truncation (~120 chars)
- Personal, conversational, story-led — Facebook rewards posts that feel like a friend talking
- Direct questions outperform statements; community + family + local context land hardest
- "Look what happened" and behind-the-scenes framings perform well
- **Best patterns:** Story opener, question, empathy, before/after

### Instagram
- The hook lives in **two places**: line 1 of the caption (before "...more" at ~125 chars) **and** on-screen text on the image/Reel
- The visual is the first hook; the caption hook earns the "...more" tap
- Caption hooks must be specific — generic openers lose to the visual
- Reels: pair an on-screen hook ("3 mistakes I made") with a caption hook that promises a different angle ("the one I'm most embarrassed about ↓")
- **Best patterns:** Curiosity gap, list preview, story opener, before/after, confession

### TikTok
- The hook is a **video hook**, not a written one — first 1-3 seconds carry it
- Caption hook is secondary, but matters for in-app SEO and as a curiosity tag
- On-screen text hook should be punchy, under 6 words, and visible without UI overlap
- The voice/audio hook in the first 2 seconds determines whether the viewer doesn't swipe
- "Wait for it," "I was not ready for what happened at 0:32," and "POV:" framings work natively
- **Best patterns:** Curiosity gap, contrarian, list preview, confession, story opener

### Pinterest
- The hook is the **pin title** + the **image headline**, both indexed for search
- Pinterest is search-driven, not feed-driven — hooks must contain the **keyword someone would type**
- "How to," "ideas for," "best [X] for [Y]" framings match how people search
- Numbers and specifics ("15 small kitchen ideas for renters") beat vague pitches
- Avoid clickbait and contrarianism — Pinterest searchers are looking for help, not provocation
- **Best patterns:** List preview, statistic/data, before/after, how-to (a pattern variant of list preview)

### YouTube
- The hook is **three layered surfaces**: title, thumbnail, and the first 5-8 seconds of the video
- Title and thumbnail must work together — the title sets the curiosity, the thumbnail confirms it
- **Title hooks:** lead with the primary keyword + a specific number, contrast, or curiosity gap. Avoid clickbait that the video doesn't deliver — retention drop is punished by the algorithm
- **Long-form video hooks:** restate the title in the first 5 seconds with stakes ("If you watch this you'll...") to lock in retention; the YouTube algorithm uses 30-second retention as a ranking signal
- **Shorts hooks:** same as TikTok — first 1-3 seconds, on-screen text, voice all aligned
- **Community post hooks:** like Facebook — direct question or quick context
- **Best patterns:** Statistic/data, before/after, list preview, contrarian, curiosity gap

---

## Hook Generation Process

When a user provides a topic or idea:

1. **Identify the platform** (ask if unclear)
2. **Generate 5-7 hook variants** across different patterns from the library above
3. **Adapt each variant** to the platform's character limits, tone, and culture
4. **Label each hook** with its pattern name so the user can learn the system
5. **Mark the top pick** with a clear recommendation and one-sentence reasoning (e.g., "Recommended: this one because it leads with a specific number and targets a real pain point")

**Output format:**
```
--- Hook Variants for: [topic] | Platform: [platform] ---

1. [Pattern name]: [hook text]
2. [Pattern name]: [hook text]
3. [Pattern name]: [hook text]
4. [Pattern name]: [hook text]
5. [Pattern name]: [hook text]

★ Recommended: #[N] — [one sentence explaining why]
```

**Example full hook generation output:**

```
--- Hook Variants for: "Why most content strategies fail" | Platform: LinkedIn ---

1. Contrarian: "Your content strategy is the problem. Your content is fine."
2. Statistic: "82% of content strategies fail in the first 90 days. Here's why."
3. Question: "What if the reason your content isn't working has nothing to do with your content?"
4. Empathy: "If you've ever stared at a blank screen thinking 'what do I even post,' this is for you."
5. Before/After: "6 months ago: posting daily with no plan. Now: 3x/week with a system that actually works."
6. Bold Claim: "You don't need a content strategy. You need a content thesis."

★ Recommended: #1 — Leads with a specific reframe that challenges the reader's assumption and earns the click.
```

**Example hook A/B test log:**

```
Test #3: Educational thread on productivity
Hook A (Statistic): "I tracked every minute of my week for 30 days. The results shocked me."
Hook B (Confession): "I've been lying about how productive I am. Here's the truth."

Results (7 days):
- Hook A: 4.2% ER, 14 saves, 6 comments
- Hook B: 7.1% ER, 22 saves, 19 comments
Winner: Hook B — confession pattern drove 3x more comments on this topic
```

---

## Hook Testing Tips

**The metrics that actually matter for hooks:**

- **Save rate** — if people save the post, the hook earned their attention AND they want to return. High saves = strong hook + valuable content.
- **Comment rate vs. like ratio** — comments signal emotional response. A hook that provokes a reaction (agreement, disagreement, curiosity) outperforms a hook that just gets passive likes.
- **Profile visits from post** — a hook that makes someone want to know *who wrote this* is doing its job.

**A/B testing approach:**
- Post two versions of the same core content with different hooks, spaced 2-3 weeks apart
- Keep the body identical; change only the first 1-2 lines
- Compare engagement rates, not raw numbers (account for follower growth over time)
- After 5-10 tests, patterns emerge — double down on what your specific audience responds to

**Quick self-check before posting:**
- Would you stop scrolling for this line if you didn't write it?
- Does it create a question in the reader's mind that the post will answer?
- Is it specific enough that it couldn't apply to anyone else's post?

---

## Boundaries

- Does not write full posts, threads, or carousels — see **post-writer-sms**, **thread-writer-sms**, or **carousel-writer-sms** for complete content
- Does not analyze post performance or metrics — see **performance-analyzer-sms** for analytics
- Does not define content strategy or pillars — see **content-strategy-sms** for strategic planning
- Does not provide platform algorithm tactics — see **platform-strategy-sms** for platform-specific guidance
- Does not execute code or access external APIs unless BlackTwist MCP is connected
- Does not generate visual content or images — output is text-based hook copy only

## Related Skills

- **social-media-context-sms** — establish voice and platform preferences before generating hooks
- **platform-strategy-sms** — understand where your audience lives before optimizing hook style
- **post-writer-sms** — turn a strong hook into a full post
- **thread-writer-sms** — expand a hook into a multi-post thread
- **carousel-writer-sms** — adapt a hook as the cover slide of a carousel
- **caption-writer-sms** — pair a video/image hook with a platform-native caption for visual platforms
