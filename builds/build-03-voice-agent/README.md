# Build 3 — Voice Agent on a Phone Number

**Pitch:** Live phone number that a real caller can dial and have a genuinely useful conversation with — booking, screening, or FAQ.

**Weeks:** 3 (Days 18–20)

## User story

As a small business owner or solo operator, I want a voice agent that picks up the phone, handles a single job well, and never gets tired.

## Success criteria

- [ ] Live phone number (Twilio or platform-provided) that routes to your agent
- [ ] Agent handles one clearly-defined job: e.g. "book a 30-min meeting", "answer top-10 FAQ", "screen an inbound sales lead"
- [ ] ≥5 test calls, all completing the intended flow with no dropped calls or dead-ends
- [ ] Every call transcript logged to Supabase (or n8n → Airtable) with duration + outcome
- [ ] Barge-in works (user can interrupt the agent mid-sentence)
- [ ] Agent gracefully hands off to a fallback (voicemail, SMS, or "text this number") when it can't help

## Stack

- Voice platform: Retell AI OR vapi (decide on Day 18 based on the tutorial you prefer)
- Telephony: Twilio phone number or platform-provided
- Voice: ElevenLabs voice (choose one that matches the brand)
- Transcripts: Supabase table `voice_calls (id, ts, duration_sec, transcript, outcome, caller_number)`
- Optional: Calendly/Google Calendar API for the booking flow

## Key risks

- Latency — first-token must be <1s or callers hang up. Pick a low-latency voice + STT combo.
- Barge-in echo — if the agent hears itself, it interrupts itself. Test with real speakers, not a webcam mic.
- Cost — $0.10-0.30/min adds up. Set a $50 test budget cap in the platform dashboard.
- Prompt drift — the agent will hallucinate booking times if you don't constrain it. Use tool calls, not free-text answers, for anything with a real-world side effect.

## Shipped checklist

- [ ] Phone number published somewhere (personal site, LinkedIn header)
- [ ] 5 successful test calls, transcripts committed
- [ ] Barge-in tested with a real speaker
- [ ] 60-sec Loom demo of a live call
- [ ] Public post — "call this number, it books a 30-min chat with me"
