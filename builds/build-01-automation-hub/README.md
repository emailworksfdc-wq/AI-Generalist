# Build 1 — Personal Automation Hub

**Pitch:** n8n workflows that save you ≥1 hour a day, running on a stable instance you own.

**Weeks:** 1 (Days 4–7, refined in Week 2 as needed)

## User story

As a busy operator, I want n8n workflows humming in the background that triage my inbox, prep me for meetings, and summarise my day to Slack — so I stop doing that chore work myself.

## Success criteria

- [ ] n8n running (self-hosted on Railway/Docker OR n8n Cloud), reachable from a stable URL
- [ ] Workflow 1: **Gmail triage** — auto-label / summarise incoming mail every 15 min
- [ ] Workflow 2: **Calendar prep digest** — 8am daily briefing (today's meetings + doc links + past thread summaries) posted to Slack DM
- [ ] Workflow 3: **End-of-day summary** — 6pm post to Slack: what got done, what's pending, what tomorrow looks like
- [ ] All three workflows exported as JSON into this folder
- [ ] Time-saved log kept for 5 consecutive days — screenshot / paste output

## Stack

- n8n (Cloud tier ok, or self-hosted on Railway)
- Gmail OAuth
- Google Calendar OAuth
- Slack bot (post to DM channel)
- OpenAI or Anthropic for summarisation nodes
- Optional: Airtable or Supabase for logging runs

## Key risks

- OAuth setup friction for Gmail/Calendar/Slack (allocate 30 min buffer per integration)
- Rate limits on Gmail if the trigger fires too aggressively — start every 15 min, not every 1 min
- Loops / cost: LLM nodes on every unread email add up — filter first, summarise second

## Shipped checklist

- [ ] Workflows tested against real inbox / calendar for ≥3 days
- [ ] JSON files committed here
- [ ] 60-sec Loom demo showing the Slack digest arriving
- [ ] Public post on LinkedIn or X with the Loom link
