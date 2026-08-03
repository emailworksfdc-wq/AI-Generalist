# Build 5 — Capstone: Monetised Product

**Pitch:** Take one of the earlier signature builds, wrap it in auth + a pricing page + a payment integration, and take a real $1 from a real human.

**Weeks:** 4 (Days 22–30)

## User story

I want the loop to close: idea → build → deploy → charge → get paid. Even $1 in the door proves the plumbing works.

## Pick ONE upstream build to monetise

- **Media Studio** → sell a "one-prompt → branded 30-sec ad" service, $10 per video
- **Voice Agent** → offer AI phone-answering-as-a-service, $49/mo per agent
- **Jerry** → sell "your own AI executive assistant, set up in 30 min", $99 one-time
- **Automation Hub** → sell "n8n workflow bundle for founders", $29 one-time

Pick the one you got most excited about while building. Not the "best market" — the one you'll ship.

## Success criteria

- [ ] Live URL — deployed to Vercel / Railway / Cloudflare
- [ ] Auth working — sign in with email or Google
- [ ] Pricing page with clear plans (Free / Pro / whatever)
- [ ] Stripe (or Razorpay) checkout flow completing successfully
- [ ] **≥$1 in real revenue from a real person who is not you** (even a friend paying $1 counts, but they must actually pay)
- [ ] Post-payment: user gets access to the actual product (fulfilment logic works)
- [ ] Cancellation / refund path documented (even if manual)

## Stack

- Frontend: Next.js scaffolded via Bolt.new or Lovable → refined in Cursor / Claude Code
- Deploy: Vercel or Railway
- Auth: Supabase Auth or Clerk
- DB: Supabase Postgres
- Payments: Stripe Checkout (or Razorpay if India-first)
- Fulfilment: whichever build's core logic (n8n / voice agent / Jerry) called from the API

## Key risks

- Fulfilment gap — you sold it, now you must deliver. Automate the delivery *before* opening checkout.
- Refund panic — if payment breaks, refund immediately. Don't debate.
- Overbuild — you don't need multi-tier pricing on day 1. One product, one price, one button.

## Shipped checklist

- [ ] URL live and reachable
- [ ] Stripe checkout tested end-to-end in test mode
- [ ] Switched to live mode
- [ ] First real transaction landed
- [ ] Screenshot of the Stripe dashboard showing $1+ in revenue
- [ ] Launch post (LinkedIn, X, Product Hunt draft)
