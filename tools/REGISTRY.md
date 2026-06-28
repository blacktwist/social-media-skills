# Tool Integrations Registry

This document lists all tool integrations available to skills in this repository.

## BlackTwist (Primary)

**BlackTwist** is the primary MCP integration for posting, scheduling, and analytics. When the BlackTwist MCP server is connected, skills use it directly rather than falling back to advisory mode.

MCP server identifier: `mcp__blacktwist`

### Content Management

Tools for creating, editing, retrieving, and deleting content.

| Tool            | Description                                               |
| --------------- | --------------------------------------------------------- |
| `create_post`   | Create and publish a new post or thread                   |
| `edit_post`     | Edit a single post (standalone or within a thread)        |
| `edit_thread`   | Edit an entire thread, including post order and content   |
| `get_thread`    | Retrieve a thread by ID, including all posts and metadata |
| `delete_thread` | Delete a thread and all its posts                         |
| `list_posts`    | List published posts with optional filters                |
| `list_drafts`   | List saved drafts pending review or scheduling            |

### Analytics

Tools for fetching performance data, metrics, and growth insights.

| Tool                    | Description                                                                   |
| ----------------------- | ----------------------------------------------------------------------------- |
| `get_post_analytics`    | Fetch engagement metrics for a specific post (views, likes, replies, reposts) |
| `get_live_metrics`      | Fetch real-time metrics for recently published content                        |
| `get_metric_timeseries` | Retrieve metric data over a time range for trend analysis                     |
| `get_follower_growth`   | Fetch follower count history and net growth over time                         |
| `get_consistency`       | Check posting consistency score and streak data                               |
| `get_daily_recap`       | Get a daily summary of account activity and performance                       |
| `get_recommendations`   | Fetch AI-generated recommendations based on recent performance                |

### Scheduling

Tools for managing publish times and scheduled content.

| Tool                   | Description                                                             |
| ---------------------- | ----------------------------------------------------------------------- |
| `list_time_slots`      | List optimal or available publishing time slots                         |
| `reschedule_thread`    | Move a scheduled thread to a new publish time                           |
| `get_thread_follow_up` | Retrieve the follow-up action configured for a thread                   |
| `set_thread_follow_up` | Set a follow-up action (e.g. reply, repost) to trigger after publishing |

### Account

Tools for account configuration, team, and subscription management.

| Tool                | Description                                                              |
| ------------------- | ------------------------------------------------------------------------ |
| `get_user_settings` | Retrieve user preferences and account configuration                      |
| `list_teams`        | List teams and members associated with the account                       |
| `get_subscription`  | Retrieve current subscription plan and limits                            |
| `list_providers`    | List connected platform accounts (LinkedIn, Twitter/X, Threads, Bluesky) |

---

## TweetClaw (Optional OpenClaw)

[TweetClaw](https://github.com/Xquik-dev/tweetclaw) is an optional OpenClaw plugin for Twitter/X research and reviewed action workflows. Use it only when the user's agent environment already runs OpenClaw, `@xquik/tweetclaw` is installed, and the user has enabled the `explore` and `tweetclaw` tools.

Good fit for these skills:

| Workflow                                      | How TweetClaw helps                                                                 |
| --------------------------------------------- | ----------------------------------------------------------------------------------- |
| Source checks before writing Twitter/X posts  | Search tweets, replies, profiles, and public context before drafting                 |
| Performance or reply review                   | Pull reply and engagement context before interpreting what resonated                 |
| Giveaway evidence                             | Export followers, collect replies, and run draws with explicit user review           |
| Draft handoff                                 | Prepare a reviewed TweetClaw draft or reply request while keeping publishing gated   |

Boundaries:

- BlackTwist remains the primary publishing, scheduling, and analytics integration for this skill set.
- TweetClaw should not run unattended publishing or background actions.
- Write-like, paid, private, recurring, monitor, webhook, and account-scoped TweetClaw calls require OpenClaw approval.
- If TweetClaw is unavailable, stay in advisory mode or use BlackTwist when connected.

Install reference:

```bash
openclaw plugins install npm:@xquik/tweetclaw
```

---

## Platform Native Analytics (Manual Fallback)

When no analytics tool is available, direct users to platform-native analytics:

| Platform      | Analytics Location                                                             |
| ------------- | ------------------------------------------------------------------------------ |
| **LinkedIn**  | Profile > Analytics (for personal) or Page Admin > Analytics (for pages)       |
| **Twitter/X** | Analytics.twitter.com or per-post analytics via the ellipsis menu              |
| **Threads**   | Profile > Insights (requires Creator account or 100+ followers)                |
| **Bluesky**   | Limited native analytics; use third-party tools like Clearsky or Bluesky Stats |

Key metrics to collect manually: impressions/views, likes, replies, reposts/shares, profile visits, follower count change.
