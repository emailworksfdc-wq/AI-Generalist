# AI Generalist — 30-Day Self-Directed Learning Plan

**Start here:** open [`index.html`](index.html) in Chrome.

The site is video-first — every day-page has embedded YouTube players you can watch inline, plus a 60-min build task feeding one of 5 signature builds.

## Folders

- **[index.html](index.html)** — dashboard: 4 weeks × 7 days, today's card is highlighted
- **[days/](days/)** — one HTML page per day, videos embedded, build task listed
- **[builds/](builds/)** — where your code goes; one folder per signature build
- **[notes/](notes/)** — quick markdown notes while watching (`day-01.md` … `day-30.md`)
- **[daily/](daily/)** — end-of-day journal (`YYYY-MM-DD.md`)
- **[SIGNATURE-BUILDS.md](SIGNATURE-BUILDS.md)** — the 5 builds you'll ship
- **[RESOURCES.md](RESOURCES.md)** — creator channels + official docs
- **[SETUP.md](SETUP.md)** — accounts + API keys to secure on Day 0

## The rule

Ship > consume. A day counts as "done" only when something is in the current signature build's folder you can demo. If a week's checkpoint slips, cut scope on the next build, not on shipping the current one.

## Start date

**Day 1 = 2026-08-03. Day 30 = 2026-09-01.**

The dashboard highlights today automatically.

## To open

```bash
cd /Users/akshay.kashyap/ai-mega-sprint-learning-plan && ./start.sh
```

This starts a local HTTP server on `http://127.0.0.1:8765` and opens the dashboard in Chrome. YouTube embeds **only work when served over HTTP** — opening `index.html` via `file://` triggers Error 153 in the player.

To stop later: `lsof -ti:8765 | xargs kill`
