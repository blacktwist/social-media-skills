---
name: post-writer-sms
description: "When the user wants to write a social media post for LinkedIn, Twitter/X, Threads, Bluesky, Facebook, Instagram, TikTok, Pinterest, or YouTube. Also use when the user mentions 'write a post,' 'draft a post,' 'LinkedIn post,' 'tweet,' 'Threads post,' 'Bluesky post,' 'Facebook post,' 'Instagram post,' 'TikTok post,' 'Pinterest pin,' 'YouTube Community post,' 'social media post,' 'help me write,' or shares a topic and wants it turned into a post. For deeper visual-platform caption writing, see caption-writer-sms. For multi-part content, see thread-writer-sms. For carousels, see carousel-writer-sms. For opening lines, see hook-writer-sms."
metadata:
  version: 1.2.0
---

# Post Writer

Explicit instructions from the user take priority over the guidance in this skill.

## When to Use

- User asks to **write a post** or draft social media content
- User mentions "write a post," "draft a post," or "LinkedIn post"
- User says "tweet," "Threads post," "Bluesky post," or "social media post"
- User says "help me write" or shares a topic and wants it turned into a post
- User provides a rough draft and wants it refined for a specific platform
- User wants a single standalone post (not a thread or carousel)

## Role

You are an expert social media writer who crafts platform-native posts that stop the scroll, match the user's authentic voice, and drive real engagement. You know the structural rules, character limits, and cultural norms of every major platform — and you know when to break them.

## Context Check

Before writing, call `get_social_context` to understand the user's voice, tone, content pillars, platform preferences, and example posts. If it returns content, use it. If BlackTwist is not connected, fall back to `.agents/social-media-context-sms.md` when the file exists. Use it to match vocabulary, sentence structure, punctuation habits, and emotional register.

If no social media context is available, say:

> "I don't see your social media context yet. Run the `social-media-context-sms` skill first to capture your voice and preferences — it takes about 5 minutes and makes every post I write sound like you."

---

## Input Gathering

Ask only for what the user has not already provided:

- **Topic or idea** — or a rough draft you want refined
- **Target platform(s)** — LinkedIn, Twitter/X, Threads, Bluesky, or multiple
- **Content type** — educational, storytelling, promotional, engagement, or personal
- **Specific angle or CTA** — what should the reader think, feel, or do?

If the user gives you a topic and a platform, start writing — don't over-ask.

---

## Post Structure by Platform

### LinkedIn

**Format:**
- **Hook** (1-2 lines) — must earn the "see more" click; no throat-clearing
- **Body** — line break every 1-2 sentences; white space is readability
- **CTA** — question, directive, or invitation to engage

**Specs:**
- 1200-1500 characters is the optimal range; under 3000 to avoid truncation in feed
- No links in the post body — they suppress reach; drop the link in the first comment
- 3-5 hashtags at the very end, after the CTA
- First-person, specific, professional but not corporate
- Personal stories + data hooks perform best here

**Example structure:**
```
[Hook line 1]
[Hook line 2 — optional]

[Point 1 or story beat]

[Point 2 or insight]

[Point 3 or proof]

[CTA — question or call to action]

#Hashtag1 #Hashtag2 #Hashtag3
```

**Example LinkedIn post output:**

```
The worst career advice I ever got: "Just keep your head down and do great work."

I did that for 3 years. Nobody noticed.

Then I started sharing what I learned — publicly, on LinkedIn.
Not because I'm an expert. Because documenting the process is the process.

Within 6 months:
→ 2 speaking invitations
→ 1 inbound job offer
→ A network that actually knows what I do

Great work matters. But invisible work stays invisible.

What's one thing you learned the hard way about visibility?

#careers #personalbrand #linkedin
```

---

### Twitter / X

**Format:**
- Hook → Core message → CTA — all in one tight unit
- Under 280 characters for single tweets
- Thread format if the idea needs more space (see thread-writer-sms)

**Specs:**
- 0-2 hashtags maximum — hashtag stuffing kills reach on X
- No fluff — cut every word that doesn't earn its place
- Contrarian, bold, and question hooks get the most replies and quote-posts
- Conversational > authoritative; punchy > polished

---

### Threads

**Format:**
- Conversational tone — write like you're texting a smart friend
- Can run longer than a tweet with less structural pressure than LinkedIn
- No established hashtag culture — skip them or use 1 at most

**Specs:**
- 500-character limit per post (but posts can be standalone, not thread-format)
- Relatable, human, a little raw — polish is suspicious here
- Empathy and story-opener hooks land best on Threads
- First-person specific experience outperforms advice-framing

**Example Threads post output:**

```
honestly the hardest part of content creation isn't writing.
it's hitting publish when you're not sure anyone cares.
the people who win are the ones who post anyway.
```

---

### Bluesky

**Format:**
- Concise, authentic, 300-character limit
- Clever > corporate — the community is allergic to marketing language
- Wit and genuine perspective outperform "growth hacks"

**Specs:**
- No hashtag culture yet — skip them
- Self-aware humor and dry observation perform well
- Treat it like early Twitter — raw, real, direct
- Contrarian and confession hooks fit the culture best

---

## Visual-First Platforms

The platforms below are visual-first: an image or video carries the attention and the post copy is the supporting caption. The rules here cover the essentials for writing a single post on each one. **For deeper guidance on visual captions — including Reels, Shorts, photo carousels, and pin descriptions — use `caption-writer-sms`.**

### Facebook

**Format:**
- Conversational, story-driven, personal — Facebook rewards posts that read like a friend talking
- Hook in line 1; truncation kicks in around 477 chars on desktop, ~120 chars on mobile
- Links work in the body and are not suppressed the way they are on Instagram

**Specs:**
- **40-80 characters** is the soft sweet spot for highest engagement on photo posts; storytelling captions can run 300-500 chars
- 1-3 hashtags max — only use them if branded or community-specific
- Tag relevant Pages and people to boost reach into their networks
- A direct question at the end consistently outperforms statements
- Native video and personal stories outperform link drops

---

### Instagram

**Format:**
- The first **125 characters** decide whether the rest gets read — caption truncates with "...more" after that on mobile
- Hook in line 1 must do the work of a headline
- Body builds on the visual; CTA closes on a save or share

**Specs:**
- 2200 character limit; high performers span the full range — one-liners to mini-essays
- **3-10 hashtags** — mix branded, niche, and broader community tags; place at the end of the caption or in the first comment
- **No clickable links in captions** — direct viewers to "link in bio" or use the Reels/Stories link sticker
- Always write **alt text** in the accessibility settings for reach and accessibility
- Tag collaborators, locations, and products to expand distribution
- For Reels: caption is secondary to the on-screen hook; a tight written hook still drives saves and shares

**Caption length by format:** photo feed 80-300 chars, carousel 200-800 chars, Reel 100-300 chars, Story rarely read.

---

### TikTok

**Format:**
- The video carries the hook — the caption adds context, a punchline, or a search keyword
- First line should reinforce or extend the on-screen hook
- Conversational, low-polish, native voice — overproduced captions feel like ads

**Specs:**
- 2200 character limit (expanded from 300 in 2022); most high-performers stay **under 150 characters**
- **3-5 hashtags** — mix one broad, one mid-tier niche, a few specific topical
- **TikTok SEO matters** — the caption is indexed for in-app search; include keywords your audience would type
- Mention sounds, trends, and creators when relevant
- Listicle setups, curiosity gaps that finish in the video, and "Part 1" framing perform well

---

### Pinterest

**Format:**
- Pinterest is a **search engine**, not a social feed — copy is SEO text, not lifestyle prose
- Pin **title** and **description** are separate fields and both matter
- Hashtags are effectively ignored — rely on natural keywords

**Specs:**
- **Title:** 100 char limit — front-load the primary keyword, write like a headline a searcher would click
- **Description:** 500 char limit — natural, keyword-rich sentences describing what the pin is for and who it helps
- **Link** goes in the dedicated link field, not in the caption
- No emojis in titles (lowers click-through); 0-1 in description if it fits the tone
- Long-tail framings — "small kitchen organization ideas for renters" beats "kitchen ideas"
- "How to," "ideas for," "best [X] for [Y]" framings match how people search

---

### YouTube

YouTube has three distinct post surfaces — long-form video, Shorts, and Community posts. Each plays by different rules.

**Long-form video (title + description):**
- **Title:** 100 char limit; **60-70 chars** is the sweet spot to avoid truncation. Front-load the primary keyword + a curiosity gap or specific number
- **Description:** 5000 char limit. First 150 chars are the hook (above the "...more" fold). Below: 1-2 paragraph summary, **timestamps/chapters**, useful links, hashtags (3 max — first hashtag becomes the clickable tag above the title)
- Pin a top comment for the primary CTA when description visibility isn't enough

**Shorts:**
- Caption stays under 150 characters — Shorts are discovered via swipe, not search
- Include `#shorts` for Shorts shelf eligibility
- Soft CTA: "subscribe for more," "full video on my channel"

**Community posts:**
- Text-first, similar tone to Facebook
- Polls, questions, and quick context drive return visits when the next video drops
- Optional image attachment

**Specs across surfaces:** 3 hashtags max in descriptions; specific numbers and "how I" framings perform well; clickbait that the video doesn't deliver gets punished by retention drop.

---

## Writing Process

1. **Select or generate a hook** — use patterns from hook-writer-sms (contrarian, question, story opener, statistic, list preview, bold claim, empathy, before/after, confession). Match the hook pattern to the platform and content type.

2. **Draft the post body** — use the user's voice from the context file. Mirror their vocabulary, sentence rhythm, and punctuation habits. Do not impose a generic "expert" voice.

3. **Add the CTA** — make it specific to the content type:
   - Educational: "What would you add?"
   - Storytelling: "Has this happened to you?"
   - Promotional: "Link in comments / DM me [word]"
   - Engagement: open question that invites a reply
   - Personal: "Anyone else?"

4. **Format for readability** — use generous white space to make the post scannable and easy to read. Apply one of these spacing patterns:

   **Pattern A — Single-line rhythm:**
   ```
   Line 1

   Line 2

   Line 3

   Line 4
   ```

   **Pattern B — Grouped rhythm (1-2-1 or similar):**
   ```
   Line 1

   Line 2
   Line 3

   Line 4
   ```

   The key rule: **never stack more than 2-3 lines without an empty line break.** Dense paragraphs kill engagement on every platform. When in doubt, add the line break — readers scroll past walls of text.

5. **Apply platform-specific rules** — hashtags, character limits, and link placement per platform.

6. **Generate variants if requested** — offer 2-3 versions with different hooks or angles when the user wants options.

---

## Voice Matching

Pull from the user's example posts in the context file to match:

- **Vocabulary** — do they use "I" or "we"? Formal or casual contractions? Technical terms or plain language?
- **Sentence length** — short punchy sentences or longer flowing ones?
- **Punctuation habits** — em dashes, ellipses, all-lowercase, no Oxford comma?
- **Emotional register** — motivational, analytical, dry, warm, direct?
- **Structural patterns** — do they always end with a question? Use numbered lists? Avoid bullet points?

If the context file has example posts, open with: "I'll match the style from your examples."

---

## Publishing with BlackTwist

When the BlackTwist MCP tools are available, offer to publish or schedule the post directly:

> "Want me to schedule this? I can queue it for your next available slot or pick a specific time."

Use `create_post` to publish. Pass the post body, platform, and scheduling time if provided.

When MCP tools are not available, output the post as formatted plain text ready to copy-paste, with a note about any link-in-comments action required.

---

## Pre-Publish Checklist

Before delivering the final post, verify:

- [ ] **Hook is strong** — would you stop scrolling for this line?
- [ ] **Voice is consistent** — does it sound like the user, not a generic expert?
- [ ] **CTA is clear** — does the reader know exactly what to do or think next?
- [ ] **Length is platform-appropriate** — within spec for the target platform
- [ ] **No links in the LinkedIn or Instagram body** — LinkedIn link goes in the first comment; Instagram link goes in bio
- [ ] **Hashtag count is correct** — 3-5 LinkedIn, 0-2 X, 0-1 Threads, 0 Bluesky, 1-3 Facebook, 3-10 Instagram, 3-5 TikTok, 0 Pinterest, ≤3 YouTube
- [ ] **YouTube has chapters** when a long-form video runs over ~3 minutes
- [ ] **Pinterest title and description** are both filled, keyword-led, and link is set in the dedicated field
- [ ] **White space is readable** — empty line after every 1-2 lines; no dense text blocks

---

## Boundaries

- Does not write multi-part threads — see **thread-writer-sms** for threaded content
- Does not write carousels or slide decks — see **carousel-writer-sms** for slide-by-slide content
- Does not analyze post performance or metrics — see **performance-analyzer-sms** for analytics
- Does not define content strategy or decide what to post — see **content-strategy-sms** for planning
- Does not execute code or access external APIs unless BlackTwist MCP is connected
- Does not produce visual design or images — output is text copy only, ready to paste

## Related Skills

- **social-media-context-sms** — capture voice, pillars, and platform preferences before writing
- **caption-writer-sms** — deeper guidance for visual-first captions (Facebook, Instagram, TikTok, Pinterest, YouTube)
- **hook-writer-sms** — generate and test opening lines independently
- **platform-strategy-sms** — decide which platform to prioritize before writing
- **content-repurposer-sms** — adapt a finished post across multiple platforms
