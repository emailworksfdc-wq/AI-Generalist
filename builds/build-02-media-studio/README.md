# Build 2 — Media Studio One-Shot

**Pitch:** One command — one prompt in — 30-second branded video out. Script, image, video, voice-over, all chained.

**Weeks:** 2 (Days 8–14)

## User story

As a creator, I want to type one sentence and have a fully rendered, on-brand 30-second video ready to post — with no manual step in between.

## Success criteria

- [ ] Pipeline runs from a single trigger (CLI, n8n, or a small Python script)
- [ ] Input: one plain-English prompt (e.g. `"Announce Build 1 shipping. Excited, urgent, punchy."`)
- [ ] Output stages: (1) 3-scene script → (2) hero image → (3) 30-sec image-to-video → (4) voice-over synced to video
- [ ] Final file: 720p+ mp4, ≤30 sec, on-brand (consistent font/colour hint in prompt)
- [ ] End-to-end run time ≤10 min
- [ ] 3 example outputs saved in this folder

## Stack

- Script: OpenAI or Claude (structured JSON: scene list + VO script)
- Image: Midjourney (via their new API) OR Runway image OR Flux via fal.ai
- Video: Runway Gen-3 image-to-video OR Kling AI
- Voice: ElevenLabs voice clone (your own voice) OR HeyGen avatar
- Orchestration: Python script OR n8n workflow — pick one based on Day 11 video

## Key risks

- API costs — one full run may cost $5–10; cap yourself at 5 test runs before optimising
- Model licensing — check commercial use terms if you post to socials
- Sync — matching VO length to video length is fiddly; may need to trim scene by scene

## Shipped checklist

- [ ] 3 sample outputs (mp4 files) in this folder
- [ ] Pipeline script/workflow committed
- [ ] Public X post with the video (video-of-video pipeline)
- [ ] Cost-per-run documented
