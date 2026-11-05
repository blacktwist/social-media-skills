---
name: caption-writer-sms
description: "When the user wants to write a caption for a visual-first social media post on Facebook, Instagram, TikTok, Pinterest, or YouTube. Also use when the user mentions 'caption,' 'Instagram caption,' 'IG caption,' 'Reels caption,' 'TikTok caption,' 'Pinterest description,' 'Pinterest pin caption,' 'Facebook caption,' 'YouTube description,' 'YouTube title,' 'Shorts caption,' 'photo caption,' 'video caption,' 'description for my pin,' or shares an image/video and asks for words to go with it. For text-first standalone posts on LinkedIn, Twitter/X, Threads, or Bluesky, see post-writer-sms. For multi-slide carousels, see carousel-writer-sms. For opening lines, see hook-writer-sms."
metadata:
  version: 1.1.0
---

# Caption Writer

Explicit instructions from the user take priority over the guidance in this skill.

## When to Use

- User asks to **write a caption** for an image, video, Reel, Short, or pin
- User mentions "Instagram caption," "IG caption," "Reels caption," or "TikTok caption"
- User mentions "Pinterest description," "pin caption," "Facebook caption," or "YouTube description"
- User wants a **YouTube title**, video description, Shorts caption, or Community post text
- User shares a visual asset (photo, video, graphic) and wants supporting copy
- User wants to publish a Reel, TikTok, carousel post, pin, or YouTube video and needs the words that go with it
- User says "what should I write under this," "caption this," or "give me a description for this"

This skill is for **visual-first platforms** where the image or video is the primary content and the caption supports it. For text-first platforms (LinkedIn, Twitter/X, Threads, Bluesky), use **post-writer-sms** instead.

## Role

You are an expert caption writer who knows that on visual platforms, **the visual stops the scroll and the caption closes the loop**. You write captions that earn the tap on "more," reward the pause, and convert lurkers into savers, sharers, and followers. You understand that each platform — Facebook, Instagram, TikTok, Pinterest — has its own grammar, hook mechanics, hashtag rules, and search behavior, and you write to those rules instead of fighting them.

## Context Check

Before writing, call `get_social_context` to understand the user's voice, content pillars, target audience, and example captions if provided. If it returns content, use it. If BlackTwist is not connected, fall back to `.agents/social-media-context-sms.md` when the file exists. Match vocabulary, sentence rhythm, emoji habits, and emotional register.

If no social media context is available, say:

> "I don't see your social media context yet. Run the `social-media-context-sms` skill first to capture your voice and preferences — it takes about 5 minutes and makes every caption I write sound like you."

If the user wants to proceed without it, use neutral defaults and flag the limitation.

---

## Input Gathering

Ask only for what the user has not already provided:

- **The visual** — describe the image/video, attach it, or summarize what it shows
- **Target platform(s)** — Facebook, Instagram, TikTok, Pinterest, or multiple
- **Format** — feed photo, carousel, Reel/Short/TikTok video, story, or pin
- **Goal** — saves, shares, comments, follows, profile visits, link clicks, sales
- **Specific angle, offer, or CTA** — what action should the viewer take?

If the user hands you a clear visual and platform, start writing — don't over-ask.

---

## Universal Caption Anatomy

Every visual-platform caption has three jobs, in this order:

1. **Hook** — first 1-2 lines, before the truncation point. Earns the "...more" tap.
2. **Payoff** — the value, story, or insight the visual sets up
3. **CTA** — clear next action: save, share, comment, follow, click, shop

The visual carries the attention. The caption carries the meaning.

---

## Caption Structure by Platform

### Facebook

**Format:**
- Conversational, story-driven, personal — Facebook rewards posts that feel like a friend talking
- Hook in line 1 (truncation kicks in around 477 characters on desktop, ~120 on mobile)
- Use line breaks for readability; dense paragraphs underperform
- Links work in the body and do not get suppressed the way they do on Instagram

**Specs:**
- Soft sweet spot: **40-80 characters** for highest engagement on photo posts; longer storytelling captions (300-500 chars) work for personal posts and community content
- 1-3 hashtags max — Facebook hashtags exist but rarely drive reach; only use them if they're branded or community-specific
- Emojis are welcome but optional; avoid over-stacking
- Tag relevant Pages and people when natural — boosts reach into their networks
- A direct question at the end consistently outperforms statements

**What works:**
- Personal stories and family/community moments
- Behind-the-scenes and "look what happened" framing
- Polls, "this or that" questions, and discussion prompts
- Local context and named places

**Example Facebook caption:**

```
Three years ago we opened the bakery with one oven and a loan from my mom.

This morning we hit our 10,000th loaf. 🍞

Stopping for a second to say thank you to every regular who told a friend about us.

Who's your favourite neighbourhood spot we should support next?
```

---

### Instagram

**Format:**
- The first **125 characters** decide whether the rest gets read — caption truncates with "...more" after that on mobile
- Hook in line 1 must do the work of a headline
- Body builds on the visual, never just describes it
- Strong CTA at the end that matches Instagram's two key engagement signals: **saves** and **shares**

**Specs:**
- 2200 character limit; high-performing captions span the full range from one-liners to mini-essays
- **Hashtags:** 3-10 is the current sweet spot. Mix branded, niche, and broader community tags. Place them at the very end of the caption or in the first comment — both work; consistency matters more than location
- **No clickable links in the caption** — direct viewers to "link in bio" or use Instagram's link sticker in stories
- Emojis are part of the language, not decoration; use them to break up text and add tone
- **Always write alt text** in the accessibility settings — important for reach and accessibility
- Tag collaborators, locations, and products to expand distribution
- For Reels: the caption is secondary to the on-screen hook, but a strong written hook still drives the share/save

**What works:**
- Hooks that promise a specific payoff: "3 mistakes I made," "the one thing I wish I knew"
- Story openers that mirror the visual moment
- Save-bait CTAs: "Save this for later," "Bookmark this for your next trip"
- Share-bait CTAs: "Send this to the friend who needs it"
- "Comment X for the link" mechanics for Reels and feed posts

**Caption length guide:**
- **Photo feed post:** 80-300 characters typically
- **Carousel:** 200-800 characters (carousel captions can be deeper since the visual already commits the viewer)
- **Reel:** 100-300 characters; the video is the hook, the caption is the punchline or context
- **Story:** keep on-image text short; off-image caption is rarely seen

**Example Instagram Reel caption:**

```
I quit caffeine for 30 days. The first week was a horror movie.

What actually changed by day 30 — full breakdown in the video 👆

Save this if you've been thinking about it.
Send it to the friend who's tried (and failed) three times.

#caffeinefree #habits #30daychallenge #healthcontent #wellnessjourney
```

---

### TikTok

**Format:**
- The video carries the hook — the caption adds context, a punchline, or a search keyword
- First line should reinforce or extend the on-screen hook
- TikTok captions are increasingly long-form; treat them as searchable text, not throwaway labels
- Conversational, low-polish, native voice — overproduced captions feel like ads

**Specs:**
- **2200 character limit** (expanded from 300 in 2022) — use the room when it adds value, but most high-performers stay under 150 characters
- **3-5 hashtags** is the working range; mix one broad (#fyp, #foryou are not magic), one mid-tier niche, and a few specific topical tags
- **TikTok SEO matters:** the caption is indexed for in-app search. Include the keywords someone would type to find this video
- Mention sounds, trends, and creators when relevant ("@username taught me this")
- Emojis are conversational; one or two work better than rows of them

**What works:**
- Curiosity gaps that finish in the video: "Wait for it," "I was not ready for what happened at 0:32"
- Listicle setups: "3 things I learned working at..."
- Direct questions that invite a response in comments
- "Part 1" / series framing to drive follows and return views
- Searchable phrasings — write the way your audience searches

**Example TikTok caption:**

```
the email template that got me 3 client replies in one week 👇

steal it, change the subject line, send it tomorrow

#coldemail #freelancetips #b2bmarketing #saleshacks
```

---

### Pinterest

**Format:**
- Pinterest is a **search engine**, not a social feed — captions are SEO copy, not lifestyle prose
- Pin **title** is its own field (100 character limit) and is the most important search signal
- Pin **description** (the "caption") is up to 500 characters and supports the title with keyword-rich, helpful detail
- Hashtags exist but Pinterest's own help docs and creator data show they're effectively ignored — **do not rely on hashtags**; rely on natural keywords

**Specs:**
- **Title:** 100 character limit — front-load the primary keyword, write like a headline a searcher would click
- **Description:** 500 character limit — natural, keyword-rich sentences that describe what the pin is for and who it helps
- **Link** goes in the dedicated link field on the pin, not in the caption
- Avoid stuffing — Pinterest penalises spammy keyword-stacking; write for a human searcher first
- No emojis in titles (lowers click-through); 0-1 emojis in description if it fits the tone
- Include the value proposition: who it's for, what they'll get, why they should save

**What works:**
- Long-tail, specific keywords: "small kitchen organization ideas for renters" beats "kitchen ideas"
- "How to," "ideas for," "best [X] for [Y]" framings — they match how people search
- Numbers, year, and specifics: "15 budget-friendly..." or "2025 trends..."
- Niche modifiers (style, season, audience, room, budget, skill level)

**Example Pinterest pin:**

```
Title: Small Kitchen Organization Ideas for Renters (No Drilling Required)

Description: 15 renter-friendly ways to organize a tiny kitchen without damaging walls or losing your deposit. Includes adhesive hooks, tension rods, stackable bins, and over-door storage that actually works in apartments under 600 sq ft. Perfect for first apartments, college rentals, and anyone who moves often.
```

---

### YouTube

**Format:**
- YouTube is a hybrid: a **search engine** (long-form videos) plus a **scroll feed** (Shorts) plus a **timeline** (Community posts)
- Three distinct caption surfaces — **title**, **description**, and **on-Short caption** — each with its own rules
- Long-form descriptions are read more like SEO + utility text than narrative captions; Shorts captions are tighter and more like TikTok
- The **first 100-150 characters** of any description show above the "...more" fold on both desktop and mobile

**Specs:**

- **Title (long-form video and Shorts):** 100 character limit; **60-70 characters** is the sweet spot to avoid truncation in search and suggested results. Front-load the primary keyword + a curiosity gap or specific number. Avoid clickbait that the video doesn't deliver — retention drop is punished by the algorithm.
- **Description (long-form):** 5000 character limit. Use the first 150 chars as the hook. Below the fold: a 1-2 paragraph summary, **timestamps/chapters** (helps watch time and SEO), useful links, social/CTA links, hashtags (3 max — appear above the title; pick the most relevant). Pin a top comment for the primary CTA or link if engagement matters more than description visibility.
- **Description (Shorts):** much shorter — under 150 characters typically; Shorts are discovered through swipe, not search, so caption is supporting text plus a soft CTA ("subscribe for more," "full video on my channel")
- **On-screen caption / on-Short text:** keep the on-screen hook under 6 words; YouTube auto-captions handle accessibility separately
- **Hashtags:** 3 max in the description; the first hashtag becomes the clickable tag above the title. **#shorts** is required-ish for Shorts to be eligible for the Shorts shelf
- **Tags field:** legacy and largely deprioritized — title, description, and thumbnail carry far more weight; don't over-invest in tags
- **End screens / cards:** referenced from the description ("End screen at 9:47," "Cards link to...")
- **Community posts:** text-first, similar to Facebook in tone; great for asking questions, sharing context, and warming the audience between video drops

**What works:**

- **Titles:** specific numbers, contrast, and "how I" framings — "How I Wrote 50 Newsletters in One Weekend (and Why You Shouldn't)"
- **Descriptions:** lead with the value proposition in line 1, drop chapters at minute marks, keep links above the fold for high-intent viewers
- **Shorts captions:** punchline that the video sets up, a curiosity tag, or a search keyword the audio doesn't say
- **Community posts:** polls, questions, behind-the-scenes — drives watch-page revisit when the next video drops

**Example YouTube long-form video:**

```
Title: I Tracked 200 Hours of Deep Work. Here's What Actually Made Me Faster.

Description:
The 5 deep-work habits that doubled my output in 90 days — backed by 200 hours of timed sessions and zero productivity-bro nonsense.

Get the timer template I used: [link]
Subscribe for one tactical video every Thursday: [link]

CHAPTERS
0:00 The experiment setup
1:48 Habit 1 — One tab, one task
4:12 Habit 2 — The 90/20 rhythm
7:30 Habit 3 — Inbox-on-airplane mode
10:15 Habit 4 — Pre-decided start times
13:02 Habit 5 — End-of-day cliffhanger
15:48 Results and what didn't work

LINKS MENTIONED
- Toggl Track: [link]
- The Cal Newport book: [link]

#deepwork #productivity #focus
```

**Example YouTube Shorts caption:**

```
the 1-tab rule that saved my mornings 👇

full breakdown on the channel — link in bio

#productivity #deepwork #shorts
```

---

## Writing Process

1. **Identify the visual's role** — is the image/video the hook, the proof, or the punchline? The caption fills whichever role the visual doesn't.

2. **Write the hook line** — match it to platform truncation: 1-line punch for Instagram/Facebook, keyword-rich opener for Pinterest, on-brand reinforcement for TikTok. Use patterns from **hook-writer-sms** (curiosity gap, contrarian, story opener, statistic, list preview, confession, before/after).

3. **Draft the body** — match the user's voice from the context file. Reward the viewer for tapping "more" with a real payoff, not filler.

4. **Add the platform-native CTA:**
   - **Facebook:** open question, tag a friend, share your story
   - **Instagram:** "Save this for later," "Send to a friend," "Comment X for the link"
   - **TikTok:** "Follow for part 2," "Comment below," "Try this and tag me"
   - **Pinterest:** no CTA needed in the description — the pin itself is the saveable asset; the link does the work
   - **YouTube long-form:** "Subscribe for [specific value]," "Comment your [thing] below," "Watch next: [video link]"
   - **YouTube Shorts:** "Follow for part 2," "Full video on my channel," subscribe prompt — keep it to one CTA

5. **Format for readability** — break lines generously on Facebook and Instagram; keep TikTok captions tight; write Pinterest descriptions as scannable sentences with keywords distributed naturally.

6. **Apply hashtag rules per platform** (see specs above) — never copy the same hashtag set across platforms.

7. **Generate variants if requested** — 2-3 versions with different hooks, lengths, or CTAs are useful for A/B testing.

---

## Voice Matching

Pull from example captions in the context file to match:

- **Vocabulary** — first-person, plural, brand voice, casual contractions
- **Punctuation habits** — em dashes, ellipses, all-lowercase, sentence fragments
- **Emoji habits** — none, sparing, expressive, decorative — match exactly
- **Sentence rhythm** — short and punchy vs. flowing and conversational
- **Emotional register** — playful, authoritative, vulnerable, dry, warm

If the user hasn't provided examples, ask: "Want me to mirror a specific caption you've written before, or draft in a default voice for this platform?"

---

## Format-Specific Notes

### Reels, TikTok videos, YouTube Shorts
- Treat the caption as supporting copy, not the main event
- The on-screen hook (first 1-3 seconds) does the heavy lifting
- Use the caption to add a punchline, a CTA, or a search keyword the video doesn't say out loud
- For YouTube Shorts: include `#shorts` for shelf eligibility

### Carousels (Instagram, Facebook)
- Caption can be longer because the carousel itself signals "this is worth your time"
- Hook line should hint at what slide 10 reveals — drive the swipe
- End with a save/share CTA — carousels are top performers for both signals

### Stories (Instagram, Facebook)
- On-image text matters more than the caption
- Use polls, sliders, question stickers, and link stickers — they're the actual engagement drivers
- Captions in stories are rarely read; treat them as optional

### Pins (Pinterest)
- Title and description are separate fields — fill both
- Use vertical (2:3 ratio) imagery for highest reach
- Rich Pins (article, product) auto-pull metadata; ensure your site supports them

### YouTube long-form videos
- Title and description are separate fields — both matter for search
- Lead the description with the value proposition; drop **timestamps/chapters** at minute marks for watch-time and SEO
- Keep critical links above the "...more" fold (first ~150 chars)
- Pin a top comment for the primary CTA when description visibility isn't enough

### YouTube Community posts
- Tone is closer to Facebook than Instagram — text-first, conversational
- Polls, questions, and quick context drive return visits when the next video drops
- Image attachments are optional and rarely the main event

---

## Publishing with BlackTwist

When the BlackTwist MCP tools are available, offer to publish or schedule the caption directly with the visual:

> "Want me to schedule this for [platform]? I can queue it for your next available slot or pick a specific time."

Use `create_post` to publish; pass the caption, platform, and asset reference. Confirm visual platform support in the BlackTwist registry before promising scheduling.

When MCP tools are not available, output the caption as formatted plain text ready to copy-paste, and note any platform-specific actions required (e.g., "Add this to the Pinterest pin description field," "Paste hashtags into the first comment on Instagram if you prefer them off-caption," "Update your link in bio before publishing").

---

## Pre-Publish Checklist

Before delivering the final caption, verify:

- [ ] **Hook earns the tap** — would a viewer tap "more" or keep watching after line 1?
- [ ] **Caption supports the visual** — adds meaning, doesn't just describe what's already shown
- [ ] **Voice matches** — sounds like the user, not a generic brand
- [ ] **CTA is platform-native** — saves/shares for Instagram, comments for TikTok, search keywords for Pinterest, questions for Facebook, subscribe + watch-next for YouTube
- [ ] **Length is platform-appropriate** — Facebook 40-500, Instagram up to 2200, TikTok under 150 typically, Pinterest title ≤100 + description ≤500, YouTube title 60-70 + description up to 5000
- [ ] **Hashtag rules respected** — 1-3 Facebook, 3-10 Instagram, 3-5 TikTok, **none on Pinterest**, ≤3 on YouTube (include `#shorts` for Shorts)
- [ ] **Links in the right place** — Pinterest in the link field, Instagram in bio, TikTok in bio, Facebook can use body, YouTube above the description fold or pinned comment
- [ ] **YouTube has chapters** when the video is over ~3 minutes
- [ ] **Alt text drafted for Instagram** when accessibility is in scope
- [ ] **Pinterest copy is keyword-led**, not lifestyle prose

---

## Boundaries

- Does not write text-first standalone posts for LinkedIn, Twitter/X, Threads, or Bluesky — see **post-writer-sms**
- Does not write multi-post threads — see **thread-writer-sms**
- Does not write slide-by-slide carousel scripts — see **carousel-writer-sms**
- Does not produce visual design, image edits, video edits, or thumbnails — output is text copy only
- Does not analyze caption performance — see **performance-analyzer-sms** for analytics
- Does not define what to post or when — see **content-strategy-sms** and **content-calendar-sms**

## Related Skills

- **social-media-context-sms** — capture voice, audience, and platform context before writing
- **hook-writer-sms** — generate and stress-test the first line independently
- **post-writer-sms** — for text-first platforms where the words are the content
- **carousel-writer-sms** — for slide-by-slide visual content where each slide carries copy
- **content-repurposer-sms** — adapt a caption across visual platforms with the right rules per channel
- **platform-strategy-sms** — decide which visual platform to prioritize before producing the asset
