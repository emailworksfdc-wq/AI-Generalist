# Setup — Accounts, Keys, Cost Cap

Do this on Day 0 (2026-08-02, ideally today) so Day 1 isn't spent creating logins.

## Cost cap

**~$50/week total across all tools.** Free tiers first, upgrade only when a build actually needs it. Set spending alerts everywhere.

## Accounts to create (all have free tiers)

### Core LLM APIs
- [ ] **Anthropic** — https://console.anthropic.com — Claude API + Claude Code (you likely have this)
- [ ] **OpenAI** — https://platform.openai.com — GPT + Codex CLI

### Local + playgrounds
- [ ] **Ollama** — https://ollama.com/download (Mac app, free) — pull `llama3.2:3b` and `qwen2.5:7b` to start

### Automation
- [ ] **n8n Cloud** — https://n8n.io — pick starter tier OR self-host in Docker
- [ ] **Google Cloud Console** — for Gmail + Calendar OAuth clients
- [ ] **Slack** — create a bot in your test workspace

### Media
- [ ] **Midjourney** — https://midjourney.com — Basic $10/mo (skip Free — no API)
- [ ] **Runway** — https://runwayml.com — free trial credits
- [ ] **Kling AI** — https://klingai.com — free credits at signup
- [ ] **ElevenLabs** — https://elevenlabs.io — free tier includes voice cloning
- [ ] **HeyGen** — https://heygen.com — free tier for 1-min avatars

### Voice agents
- [ ] **Retell AI** — https://retellai.com — free trial
- [ ] **vapi** — https://vapi.ai — free trial + free number
- [ ] **Twilio** — https://twilio.com — $1/mo per phone number if not using platform-provided

### Backend + deploy
- [ ] **Supabase** — https://supabase.com — free tier is generous
- [ ] **Railway** — https://railway.app — $5/mo starter
- [ ] **Vercel** — https://vercel.com — free hobby tier

### Monetisation
- [ ] **Stripe** — https://stripe.com — free until you take payment
- [ ] **Razorpay** — https://razorpay.com (if India-first)

### Dev
- [ ] **Bolt.new** — https://bolt.new (free tier)
- [ ] **Lovable** — https://lovable.dev (free tier)

---

## API keys to secure (put in `~/.zshrc` or a `.env`)

```bash
export ANTHROPIC_API_KEY="..."
export OPENAI_API_KEY="..."
export ELEVENLABS_API_KEY="..."
export RETELL_API_KEY="..."
export VAPI_API_KEY="..."
export SUPABASE_URL="..."
export SUPABASE_SERVICE_KEY="..."
export STRIPE_SECRET_KEY="..."       # start with test key
export STRIPE_PUBLISHABLE_KEY="..."
```

**Never** commit `.env` to a public repo. `git status` before every push.

---

## Spending alerts (set these NOW)

- Anthropic — set a $30/week budget in console
- OpenAI — set usage limit at $30/week
- Midjourney — no per-run cap (flat monthly), fine
- Runway / Kling — trials only for now
- Retell / vapi — set test call limits in dashboard
- Railway — hard budget cap in project settings

---

## Optional day-0 warmup

- [ ] Install Ollama, pull one model, confirm it runs (`ollama run llama3.2:3b`)
- [ ] Confirm Claude Code and Codex CLI both work in your terminal
- [ ] Fork or scaffold an empty Next.js repo you'll reuse for Build 5 later
