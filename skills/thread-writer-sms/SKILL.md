---
name: thread-writer-sms
description: "When the user wants to write a multi-part thread or content series for Twitter/X, LinkedIn, Threads, Instagram (Reel/carousel/Story series), TikTok (multi-part videos), YouTube (video series, multi-Short series), or Facebook. Also use when the user mentions 'thread,' 'Twitter thread,' 'tweetstorm,' 'multi-part post,' 'series of posts,' 'Part 1 / Part 2,' 'Reel series,' 'TikTok series,' 'YouTube series,' 'video series,' or has a long-form idea that needs breaking into parts. For single posts, see post-writer-sms. For carousels, see carousel-writer-sms."
metadata:
  version: 1.3.0
---

# Thread Writer

Explicit instructions from the user take priority over the guidance in this skill.

## When to Use

- User asks to **write a thread** or create multi-part content
- User mentions "thread," "Twitter thread," or "tweetstorm"
- User says "multi-part post" or "series of posts"
- User has a **long-form idea** that needs breaking into sequential parts
- User shares an article or notes and wants them turned into a thread
- User wants to write a numbered thread for Twitter/X or LinkedIn

## Role

You are an expert at writing social media threads — multi-part content sequences that educate, tell stories, share frameworks, and build audiences. You know how to open with a hook that demands attention, sustain momentum across every post, and close with a CTA that converts readers into followers.

## Context Check

Before writing, call `get_social_context` to understand the user's voice, tone, content pillars, and platform preferences. If it returns content, use it. If BlackTwist is not connected, fall back to `.agents/social-media-context-sms.md` when the file exists. Use it to match vocabulary, sentence structure, punctuation habits, and emotional register.

If no social media context is available, say:

> "I don't see your social media context yet. Run the `social-media-context-sms` skill first to capture your voice and preferences — it makes every thread I write sound like you."

---

## Input Gathering

Ask only for what the user has not already provided:

- **Topic, key points, or source material** — the idea, draft, article, or notes to thread-ify
- **Target platform** — Twitter/X, LinkedIn, Threads, or another
- **Thread length preference** — short (3-5 posts), medium (7-10 posts), or long (10+)
- **Goal** — educate, tell a story, share a framework, or document a journey

If the user gives you a topic and a platform, start drafting — don't over-ask.

---

## Thread Architecture

Every thread has three distinct zones: the **hook**, the **body**, and the **closer**.

### Post 1 — Hook

The hook post must do two jobs simultaneously: stand alone as a compelling post and compel the reader to click through the entire thread.

> **Always use the `hook-writer-sms` skill to write the first post.** Do not draft the first post freehand. Invoke `hook-writer-sms` to generate 5-7 variants across different patterns (contrarian, question, story opener, statistic, bold claim, empathy, before/after, confession), then pick the strongest one for the thread's goal and platform. This is non-negotiable — the first post determines whether the thread gets read at all.

- **Keep it extremely short — one or two lines maximum.** A long first post kills the thread before it starts. Dense opening posts signal "this is going to be work to read" and readers scroll past.
- **Be ruthlessly specific.** Generic openers lose. Name the exact number, the exact pain, the exact transformation, or the exact claim. "I grew my audience" is weak; "I went from 200 to 20,000 followers in 6 months" is specific.
- **Make a promise** — what will the reader know, feel, or be able to do after this thread?
- On Twitter/X: include a thread signal ("A thread:" or "🧵") on the same line or immediately after the hook.
- The hook must be strong enough to perform as a standalone post — most readers decide here.

**Real-world example of a high-performing first post:**

```
50 THINGS TO DO INSTEAD OF WASTING ANOTHER YEAR (start them in April):
```

_Stats: 9K likes, 50 comments, 1.7K reposts, 1.7K shares._

Why it works:

- **One line.** No setup, no preamble — the promise lands instantly.
- **Specific number (50).** "A few things" would die; "50 things" signals scale and saves-worthiness.
- **Loss aversion.** "Wasting another year" taps a real fear — the reader feels the cost of scrolling past.
- **Urgency anchor.** "Start them in April" makes it timely and actionable, not evergreen filler.
- **Clear thread signal (1/12).** Readers know exactly how much is coming and commit to the ride.
- **All caps on the promise.** Treats the hook like a headline, not a sentence — scannable in a crowded feed.

### Body Posts

Each body post carries one idea, one example, or one step. No cramming multiple points into a single post.

- **One idea per post** — if a post needs a "and also…", split it
- **Each post stands alone** — a reader who jumps in mid-thread should follow it without context
- **Format each post for readability** — use empty lines between lines or short groups of lines to create white space. Never stack more than 2-3 lines without an empty line break. Use one of these spacing patterns within each post:
  - **Single-line rhythm:** one line, empty line, one line, empty line
  - **Grouped rhythm:** one line, empty line, two lines, empty line, one line
  - Dense text blocks kill thread engagement — when in doubt, add the line break
- **Transitions build momentum** — end each post with a hint of what comes next or a micro-payoff that makes the next post feel earned
- **Vary post length** — mix short punchy posts (1-2 lines) with longer explanatory ones; the rhythm prevents fatigue
- **End posts on curiosity hooks** — a short cliffhanger or unresolved tension keeps readers scrolling

### Final Post — Closer

The closer lands the thread and tells the reader what to do next.

- **Summarize the key takeaway** — one sentence that distills the entire thread
- **Strong CTA** — follow for more, repost the first tweet, reply with their situation, DM for a resource
- **Optional self-plug** — if relevant, mention a product, newsletter, or service without making it the main event
- On Twitter/X: the closer is also the best post to quote-tweet the opening for algorithmic boost

---

## Thread Formats

Choose the format before writing. The format determines the pacing, body structure, and closing approach.

### 1. Listicle

**Best for:** Tactical advice, tools, habits, mistakes, recommendations

**Structure:** "[N] things about [topic]" — dedicate one post per item. Open with the list promise, deliver each item in sequence, close with the meta-lesson the list reveals.

**Example opener:** "7 writing habits that doubled my output in 90 days. (A thread:)"

**Example listicle thread (3 posts shown):**

```
1/ 7 writing habits that doubled my output in 90 days.

(A thread:)

2/ Habit 1: Write the hook last.

Your opening line is the most important sentence.
Write the full post first, then return and craft a hook that earns the read.

Most people do this backwards.

3/ Habit 2: One idea per post.

The #1 reason posts lose readers: they try to say too much.
Pick one insight. Build everything around it.

Resist the urge to add "and also."
```

---

### 2. Story Arc

**Best for:** Personal journey, case study narrative, lessons from failure or success

**Structure:** Setup → Conflict → Resolution → Lesson

- Setup: who, where, when — give the reader a character to root for
- Conflict: the problem, the mistake, the obstacle
- Resolution: what changed, what worked, what was learned
- Lesson: the transferable insight the reader can apply

**Example opener:** "3 years ago I was about to quit. Today I run a 7-figure business. Here's the thread I wish someone had written for me then."

---

### 3. Framework

**Best for:** Step-by-step process, system, method, or repeatable playbook

**Structure:** Name the framework → define each step → show the output

- Give the framework a name — named frameworks are more memorable and shareable
- One post per step; include the step number for scannability
- Close with the result someone gets from applying it correctly

**Example opener:** "The 5-step framework I use to write a month of content in one afternoon. (Save this thread.)"

---

### 4. Breakdown

**Best for:** Analyzing a real example — a viral post, a company strategy, a historical event

**Structure:** Present the subject → examine each component → extract the lesson

- Lead with why this specific example is worth dissecting
- Walk through what worked (or failed) component by component
- Extract a principle the reader can apply to their own work

**Example opener:** "This post got 2 million impressions. I broke down exactly why it worked. Here's what I found:"

**Example breakdown thread closer:**

```
7/ The takeaway:

This post worked because it did 3 things most posts don't:
→ Led with a specific, surprising number
→ Showed the work, not just the result
→ Made the reader feel like they could do it too

That's the formula. Save this thread and use it on your next post.

Follow @handle for one content breakdown every week.
```

---

### 5. Contrarian

**Best for:** Challenging conventional wisdom, reframing a popular belief, sparking debate

**Structure:** State the contrarian claim → acknowledge the common belief → present your evidence → restate the claim with nuance

- The opening post must be bold enough to provoke — but not so extreme it loses credibility
- Use data, examples, or direct experience to back the claim
- Close by acknowledging the nuance — absolute contrarianism reads as performance, not insight

**Example opener:** "Stop posting every day. It's actively hurting your growth. Here's the data:"

---

## Platform-Specific Threading

### Twitter / X

- **280 characters per post** — every word earns its place
- **Number each post** — "1/" at the end of the first post, "2/", "3/" on each subsequent post; number signals this is a thread worth following
- **Thread as a self-reply chain** — post 1 live, reply to yourself for posts 2 onward
- **Short posts punch harder** — 1-2 tight sentences beat a paragraph
- Use the closer to quote-tweet the opener for a second reach window

**Example Twitter/X thread format:**

```
1/ Stop posting every day. It's actively hurting your growth.

Here's the data: 🧵

2/ I tracked 200 accounts for 6 months.

The ones posting daily averaged 1.8% ER.
The ones posting 3x/week averaged 4.3% ER.

More isn't better. Better is better.

3/ Why?

Daily posting forces you to fill slots.
3x/week lets you choose your best ideas.

The algorithm rewards engagement rate, not volume.
```

### LinkedIn

- **Longer posts per entry** — LinkedIn readers expect more depth; each post in a series can be 200-600 characters
- **Each post links to the next** — end each post with "Part 2 of N: [link]" or direct readers to follow for the next installment
- **Publish as separate posts, not replies** — LinkedIn has no native threading; a series is a sequence of standalone posts connected by copy
- **Label the series** — use a consistent label like "Thread (2/5):" at the top of each post

### Threads (Meta)

- **Conversational, no strict length limit** — write like you're texting a smart friend
- **Native thread format exists** — use it; Threads supports reply-chain threads natively
- **No hard character ceiling pressure** — let posts breathe; 1-3 short paragraphs per post is fine
- **Tone is casual** — polish is suspicious here; raw and real outperforms polished and corporate

### Facebook

- **No native threading** — a series is a sequence of standalone posts, similar to LinkedIn
- **Label each part** — "Series (1/5):" or "Part 1 of 5" at the very top of each post
- **Pin the first post** to the Page or Profile while the series is running so latecomers can find Part 1
- **Each post can be longer** — 200-500 chars per post, conversational and story-driven
- **Cross-link between parts** — close each post with "Part 2 drops Tuesday" or pin a comment with the link to the next/previous part
- **Tone:** community-forward, personal, story-led — Facebook rewards posts that feel like a human, not a brand

### Instagram

Instagram has no native thread mechanism, but three formats can carry a multi-part series:

- **Reel series** — "Part 1," "Part 2" labelled in the on-screen text **and** in the first line of the caption. Pin Part 1 to the profile grid while the series is running. Use a consistent thumbnail style so the series is recognisable in the grid. Drive comments with "Drop a 🍿 if you want Part 2" — comment volume gates whether Part 2 gets shown to the same audience.
- **Carousel as thread** — a single 10-slide carousel **is** a thread. One idea per slide, hook on slide 1, payoff on slide 10. See `carousel-writer-sms` for slide-by-slide structure.
- **Story series** — sequential 24-hour Stories with consistent on-image labels ("1/6," "2/6"). Use a Highlights cover so the series is preserved past 24 hours.

**Rules across all three:**
- The hook on Part 1 must promise the full series payoff, not just the first installment
- 3-10 hashtags on each post; reuse the same set for series recognition
- "Save" and "Share" are the engagement signals that compound across the series

### TikTok

TikTok is the strongest native fit for video threads outside of X.

- **Numbered video series** — "Part 1," "Part 2" labelled in the on-screen text **and** in the caption first line; the algorithm tends to surface later parts to viewers who watched earlier ones if you tag consistently
- **"Reply to comment" videos** — answer a top comment from Part 1 as Part 2; this format compounds reach because the prior video drives discovery
- **Hook each part independently** — every video must stand alone in the FYP; you cannot assume the viewer saw Part 1
- **Pin Part 1 to your profile** — so viewers who land on Part 7 can navigate back to the start
- **Caption per part:** include "Part X" + the search keyword for that specific part; TikTok captions are indexed for in-app search
- **3-5 hashtags per part** — keep one consistent series-specific tag (e.g., `#mycoldemailseries`) so viewers can browse the full set
- **Mention the series in voiceover too**, not just on-screen — accessibility plus retention

### YouTube

YouTube treats series as first-class content via **Playlists** for long-form and **Series links** for Shorts.

**Long-form video series:**
- Bundle all parts into a **Playlist**; link the playlist URL above the description fold on every video
- Title each part: `"[Series Name] — Part X: [Specific Topic]"` so search and suggested-videos rank them together
- Use the **end screen** to autoplay the next part
- Reference earlier parts in the first 30 seconds of voiceover; reference later parts in the closing 30 seconds
- Keep thumbnails visually consistent (same colour, frame, or graphic) so the series is recognisable in suggested results

**Shorts series:**
- **"Part 1 / Part 2"** labelled in the on-screen text and the caption — same rules as TikTok
- Include `#shorts` plus a series-specific hashtag on every part
- Pin the first Short to the Shorts shelf on the channel page
- Use **chapters in long-form video descriptions** to reference Shorts: "Want the long version? Watch the full breakdown: [link]"

**Community posts as bridges:**
- Drop a Community post between video parts to keep the audience warm — poll, question, behind-the-scenes
- Use it to ask: "What should Part 3 cover?" — generates comments and shapes the series

### Pinterest

Pinterest doesn't natively support threads or sequential parts the way social platforms do. Use these workarounds when a series concept is genuinely useful:

- **Idea Pins (multi-page pins)** — up to 20 pages in a single pin, swipeable; functions as a self-contained thread. See `carousel-writer-sms` for slide-by-slide structure
- **Topic-clustered Boards** — pin Part 1 / Part 2 / Part 3 as separate pins to the same board with consistent titling ("Cold Email Series — Part 1: Subject Lines," "Part 2: Opening Lines"); the board becomes the thread
- **Link each pin** to its respective long-form article or video — Pinterest is a search engine, so each pin needs to stand alone in search results
- **Skip explicit "thread" framing in titles** — searchers don't search for "Part 2"; lead with the keyword and append the part number

If the user wants a true sequential narrative on Pinterest, redirect to an Idea Pin or move the thread to another platform.

---

## Pacing Tips

- **Vary post length intentionally** — a long explanatory post lands harder after two short punchy ones
- **Use short punchy posts as palate cleansers** — one-liners between heavier posts reset the reader's attention
- **End posts on curiosity** — "But here's where it gets interesting…" or an unresolved question pulls the reader to the next post
- **Don't resolve too early** — if you give away the core insight in post 3 of a 10-post thread, the rest feels like filler; pace the payoff
- **Number posts explicitly on X** — readers need to know how far they are and how much is left

---

## Publishing with BlackTwist

When BlackTwist MCP tools are available, offer to publish or schedule the thread directly:

> "Want me to schedule this thread? I can queue it for your next available slot or set a specific time."

Use `create_post` to publish the thread. Pass the full thread body, target platform, and scheduling time if provided.

When MCP tools are not available, output the thread as numbered plain text formatted for copy-paste, with platform-specific notes (e.g., "Post this as a self-reply chain on X" or "Publish as separate posts on LinkedIn").

---

## Pre-Publish Checklist

Before delivering the final thread, verify:

- [ ] **Hook stands alone** — would this first post perform without the thread?
- [ ] **Hook is short and specific** — first post is one or two lines, names a specific number, pain, or claim
- [ ] **First post was written using hook-writer-sms** — skill was invoked to generate variants, not drafted freehand
- [ ] **One idea per post** — no post tries to do two jobs
- [ ] **Transitions are present** — each post flows into the next
- [ ] **Posts are numbered** — on Twitter/X, every post has its number; on visual platforms, "Part X" is in both on-screen text and the caption
- [ ] **Closer has a CTA** — the reader knows exactly what to do after finishing
- [ ] **Length matches platform** — 280 chars on X, longer on LinkedIn, conversational on Threads, on-screen + caption combo for Reels/TikTok/Shorts
- [ ] **Visual-platform parts stand alone** — each Reel, TikTok, or Short has its own hook and payoff; you cannot assume viewers saw Part 1
- [ ] **Series is discoverable** — Part 1 pinned, consistent thumbnails/hashtag, playlist or board configured for YouTube/Pinterest
- [ ] **Voice is consistent** — sounds like the user, not a generic expert
- [ ] **White space is readable** — empty line after every 1-2 lines within each post; no dense text blocks

---

## Boundaries

- Does not write single standalone posts — see **post-writer-sms** for short-form content
- Does not write carousels or slide decks — see **carousel-writer-sms** for slide-by-slide content
- Does not analyze post performance or metrics — see **performance-analyzer-sms** for analytics
- Does not define content strategy or decide what to post — see **content-strategy-sms** for planning
- Does not execute code or access external APIs unless BlackTwist MCP is connected
- Does not produce visual design or images — output is text copy for each thread post only

## Related Skills

- **social-media-context-sms** — establish voice, pillars, and platform preferences before writing
- **hook-writer-sms** — generate and test opening lines before threading
- **platform-strategy-sms** — decide which platform to prioritize and why
- **post-writer-sms** — write a single post when the idea doesn't need a thread
- **caption-writer-sms** — write the per-part captions for Reel/TikTok/Short series and Pinterest pins
- **carousel-writer-sms** — when an Instagram carousel or Pinterest Idea Pin is the right thread format
