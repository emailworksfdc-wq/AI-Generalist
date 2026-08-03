#!/usr/bin/env bash
# Serve the plan over http://127.0.0.1:8765 so YouTube embeds work.
# YouTube's player rejects file:// origins (Error 153); http://localhost is trusted.
set -euo pipefail

PORT=8765
ROOT="$(cd "$(dirname "$0")" && pwd)"

# Kill any prior server on this port
if lsof -ti:$PORT >/dev/null 2>&1; then
  echo "→ stopping previous server on :$PORT"
  lsof -ti:$PORT | xargs kill -9 2>/dev/null || true
  sleep 0.5
fi

echo "→ serving $ROOT on http://127.0.0.1:$PORT"
cd "$ROOT"
nohup python3 -m http.server $PORT --bind 127.0.0.1 > /tmp/mega-sprint-http.log 2>&1 &
SERVER_PID=$!
echo "→ server PID $SERVER_PID (log: /tmp/mega-sprint-http.log)"

# Wait for server ready
for i in {1..10}; do
  if curl -sSf -o /dev/null http://127.0.0.1:$PORT/index.html; then break; fi
  sleep 0.3
done

open "http://127.0.0.1:$PORT/index.html"
echo "→ opened http://127.0.0.1:$PORT/index.html"
echo "→ to stop: kill $SERVER_PID   (or: lsof -ti:$PORT | xargs kill)"
