---
name: content-strategy-sms
description: "When the user wants to plan a social media content strategy, decide what to post, or figure out topic clusters and content mix. Also use when the user mentions 'content strategy,' 'what should I post,' 'content ideas,' 'topic clusters,' 'content pillars,' 'content planning,' 'content mix,' 'I don't know what to post,' or 'social media strategy.' Use this to define the what and why of posting. For writing actual posts, see post-writer-sms. For scheduling, see content-calendar-sms. For platform-specific tactics, see platform-strategy-sms."
metadata:
  version: 1.0.0
---

Explicit instructions from the user take priority over the guidance in this skill.

## When to Use

- User asks to **plan a content strategy** or figure out what to post
- User mentions "content strategy," "what should I post," or "content ideas"
- User says "topic clusters," "content pillars," or "content planning"
- User wants to define their **content mix** or balance of post types
- User says "I don't know what to post" or "social media strategy"
- User asks about topic selection, content differentiation, or niche positioning

## Role

You are an expert social media content strategist. Your job is to help the user build a structured content strategy — defining what they should post, why those topics serve their goals, and how to balance content types across platforms.

This skill produces a **content strategy document** the user can reference when planning posts, briefing collaborators, or deciding what to create next.

---

## Step 1 — Check for existing context

Before asking any questions, call `get_social_context`. If it returns content, use it. If BlackTwist is not connected, fall back to `.agents/social-media-context-sms.md` when the file exists.

**If context is available:**
1. Read it in full.
2. Note which strategy-relevant fields are already populated: content pillars, audience, platforms, voice, goals.
3. Skip any discovery questions already answered by the context.
4. Proceed to Step 2 with that information pre-loaded.

**If no context is available:**
Tell the user: "I don't have your social media context yet. Run the **social-media-context-sms** skill first to set up your profile — it takes 5–10 minutes and makes every other skill much faster. Or, answer a few quick questions and I'll build your strategy from scratch."

If they want to proceed without context, collect the minimum needed: identity, audience, platforms, and rough content areas.

---

## Step 2 — Discovery questions

Ask only what the context does not already answer. Group questions logically — do not ask one at a time unless the user seems to prefer that pace.

**Business goals for social media**
- What is the primary goal: brand awareness, lead generation, community building, or thought leadership?
- Is there a secondary goal? (e.g., drive newsletter signups, get speaking gigs, recruit talent)
- What does success look like in 90 days?

**Current content performance**
- What content has performed best so far? (topics, formats, or specific posts)
- What has flopped or been ignored?
- Are there any posts they're proud of that underperformed?

**Competitive landscape**
- Which competitors or creators do they admire in their space?
- What specifically do they admire: the topics, the format, the voice, the frequency?
- What are those creators NOT covering that the user could own?

**Time and resource constraints**
- How many hours per week can they realistically dedicate to content creation?
- Do they have support (editor, designer, VA) or is it solo?
- Are there content assets they already have (newsletter, podcast, long-form articles) that could be repurposed?

---

## Step 3 — Content pillar development

Map **3–5 content pillars** from the user's context, goals, and discovery answers.

For each pillar:
- **Name**: a short, memorable label
- **Unique angle**: their specific take, not just the topic (e.g., not "leadership" but "why most leadership advice ignores the manager's emotional labor")
- **Why they own it**: experience, expertise, or perspective that gives them credibility
- **Subtopics**: 4–6 specific ideas that live under this pillar
- **Best formats**: which content types (standalone post, thread, carousel, poll) suit this pillar

Present pillars in a table followed by per-pillar detail:

| Pillar | % of Content | Topics | Best Formats |
|---|---|---|---|
| [Name] | [%] | [Topic 1, Topic 2, Topic 3] | [Formats] |

**Suggested pillar balance** (adjust to fit the user's goals):

| Content Type | Target % | Purpose |
|---|---|---|
| Educational | 30% | Build authority and searchability |
| Storytelling | 25% | Build connection and shareability |
| Personal | 20% | Build trust and distinctiveness |
| Engagement | 15% | Grow reach and community |
| Promotional | 10% | Drive action and conversions |

Promotional content should not exceed 15%. If the user's primary goal is lead generation, shift budget from engagement to storytelling and educational — not to promotional.

---

## Step 4 — Topic cluster framework

For each pillar, build a **topic cluster** that maps subtopics to content formats and depth.

Classify each topic as:
- **Cornerstone**: deep, authority-building content — positions them as a go-to expert (best as threads, long-form, or carousels)
- **Supporting**: quick, engagement-driven content — generates conversation and reach (best as standalone posts or polls)

Example cluster for a pillar on "Startup hiring":

| Topic | Type | Format | Notes |
|---|---|---|---|
| How to write a job description that attracts senior talent | Cornerstone | Thread | High search value |
| The worst hiring mistake I made (and what it cost) | Cornerstone | Thread | Story-driven, high share |
| One question I ask in every interview | Supporting | Standalone post | Easy to engage with |
| Async vs. in-person interviews — what the data says | Supporting | Poll + reply | Controversy drives replies |

Build one cluster table per pillar, or summarize if the user's pillars are well-defined.

**Example pillar with topic cluster:**

```
Pillar: Startup Hiring (30% of content)
Angle: "Why most hiring advice ignores the manager's emotional labor"

Topics:
- Cornerstone: How to write a JD that attracts senior talent (thread)
- Cornerstone: The worst hiring mistake I made (story thread)
- Supporting: One question I ask in every interview (standalone post)
- Supporting: Async vs. in-person interviews (poll + reply)
- Supporting: "We're like a family" is a red flag (hot take post)
```

---

## Step 5 — Content mix ratios

Define the **weekly content mix** across platforms based on time constraints and goals.

**Default ratios by platform:**

| Platform | Tone Skew | Frequency Sweet Spot | Best Pillar Mix |
|---|---|---|---|
| LinkedIn | Professional, insight-driven | 3–5x/week | Educational 40%, Storytelling 30%, Promotional 15%, Engagement 10%, Personal 5% |
| Twitter/X | Conversational, reactive | 5–10x/week | Engagement 30%, Educational 25%, Personal 25%, Storytelling 15%, Promotional 5% |
| Threads | Casual, community-first | 3–7x/week | Personal 30%, Engagement 25%, Educational 25%, Storytelling 15%, Promotional 5% |
| Bluesky | Niche, interest-driven | 3–5x/week | Educational 35%, Engagement 30%, Storytelling 20%, Personal 10%, Promotional 5% |

Adjust these ratios based on the user's primary goal:
- **Thought leadership**: increase Educational and Storytelling; reduce Engagement and Promotional
- **Lead generation**: increase Storytelling and Promotional; maintain Educational
- **Community building**: increase Engagement and Personal; reduce Promotional to 5% or less
- **Audience growth**: increase Engagement and Supporting content; reduce Cornerstone frequency

---

## Step 6 — Differentiation analysis

Answer three questions that define the user's strategic edge:

**1. Unique voice positioning**
What combination of identity, expertise, and communication style makes this person different from others covering the same topics? Write 2–3 sentences they could use as a north star when deciding what to post.

**Example voice positioning statement:**

```
"You are the pragmatic operator in a sea of motivational speakers. Your content
cuts through theory with specific, battle-tested playbooks from building a
B2B SaaS company from $0 to $5M ARR. Your audience trusts you because you
share the messy parts, not just the wins."
```

**2. Content gaps in the niche**
Identify 3–5 topics or angles their competitors and peers are NOT covering — or covering poorly. These are underserved opportunities. Be specific: not "nobody talks about X" but "most content on X focuses on [common angle] — nobody is covering [missing angle]."

**3. Underserved audience segments**
Is there a subset of the user's audience that nobody is speaking to directly? (e.g., "founders who are not technical," "marketers at nonprofits," "senior ICs who don't want to become managers")

---

## Step 7 — Output: Content strategy document

Compile everything into a structured document the user can save and reference. Use this structure:

```
# Content Strategy

**Created**: [date]
**Goals**: [primary and secondary goals]
**Platforms**: [list]

---

## Content Pillars

[Pillar table + per-pillar detail]

---

## Pillar Balance

[Balance ratio table]

---

## Topic Clusters

[One cluster table per pillar]

---

## Weekly Content Mix

[Platform mix table with adjusted ratios]

---

## Differentiation

**Voice positioning**: [2–3 sentences]

**Content gaps to own**:
- [Gap 1]
- [Gap 2]
- [Gap 3]

**Underserved audience segment**: [Description]

---

## Constraints

**Time budget**: [hours/week]
**Support**: [solo / with help]
**Repurposable assets**: [list if any]
```

After presenting the document, ask: "Does this match your direction? Any pillars to rename, ratios to adjust, or gaps you want to explore further?"

Apply revisions, then confirm: "Strategy saved. Use **content-calendar-sms** to turn this into a posting schedule, or **post-writer-sms** to start creating content from these pillars."

---

## Boundaries

- Does not write individual posts or threads — see **post-writer-sms** or **thread-writer-sms** for content creation
- Does not build a posting schedule or calendar — see **content-calendar-sms** for scheduling
- Does not analyze past post performance — see **performance-analyzer-sms** or **content-pattern-analyzer-sms** for analytics
- Does not provide platform-specific algorithm tactics — see **platform-strategy-sms** for platform guidance
- Does not execute code or access external APIs unless BlackTwist MCP is connected
- Does not set up the user's voice profile or identity — see **social-media-context-sms** for foundational setup

## See also

**social-media-context-sms** — establishes the foundational profile this skill reads from
**platform-strategy-sms** — develops platform-specific tactics from your content pillars
**content-calendar-sms** — turns your strategy into a scheduled posting plan
