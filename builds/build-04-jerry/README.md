# Build 4 — Jerry v1: Your First AI Employee

**Pitch:** A cron-driven agent that does one job every day, autonomously, for a week straight — without you touching it.

**Weeks:** 3–4 (Days 21–24)

## User story

I want an "employee" named Jerry who wakes up every morning, does one boring-but-valuable task for me, drops the output where I need it, and gets out of my way.

## Pick ONE job for Jerry (be ruthless)

- **A. Inbox curator** — every morning, Jerry reads overnight email, extracts anything needing action, and posts a numbered list to your Slack DM
- **B. Meeting prepper** — for every meeting today, Jerry gathers past threads, LinkedIn on attendees, and Google Doc history, and produces a 1-page brief
- **C. Signal watcher** — every morning, Jerry checks Twitter/HN/YouTube for topics you care about and returns a 5-bullet digest
- **D. Salesforce/AFT3 janitor** — Jerry runs a nightly report on your sandbox agents and reports anomalies (only pick if you have write scope in a safe sandbox)

Pick ONE. Not "all four", not "let me abstract this". Jerry needs a job description before he needs a framework.

## Success criteria

- [ ] Jerry runs on a schedule (cron / n8n scheduled trigger / Vercel cron / Modal periodic)
- [ ] Runs successfully **7 days in a row** with no manual intervention
- [ ] Output delivered to a consistent channel (Slack DM, email, Notion page)
- [ ] Each run's inputs + outputs logged (Supabase or Airtable)
- [ ] Failure alerting — if a run fails, Jerry pings you (Slack) with the error

## Stack

- Runtime: pick one — Modal (Python), Vercel Cron (Next.js API route), Railway worker, or n8n scheduled trigger
- Agent framework: Claude Code SDK / OpenAI Agents SDK / Lyzr — try whichever the Day 21 video uses
- Storage: Supabase Postgres for runs table
- Notification: Slack Web API (post to your DM)

## Key risks

- Silent failure — cron jobs die and nobody notices. Alerting must be day-one, not "later".
- Prompt drift — after 3-4 days the agent may start producing worse output. Log inputs so you can diff.
- Cost creep — an agent making 20 tool calls × 7 days can be $50+ if unoptimised. Cap tokens per run.

## Shipped checklist

- [ ] 7 consecutive successful runs
- [ ] Screenshot of the runs table (Supabase) proving daily execution
- [ ] Cost-per-day documented
- [ ] Public post — "Jerry did X for me every morning for a week. Here's the code."
