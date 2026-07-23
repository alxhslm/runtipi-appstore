#!/bin/sh
set -e

echo "Starting LM Studio Headless Daemon..."
lms daemon up

echo "Enabling LM Link..."
lms link enable || true

echo "Starting LM Studio Server on port 1234..."
lms server start --port 1234 --bind 0.0.0.0 --cors || true

CONTEXT_LEN="${CONTEXT_LENGTH:-8192}"

if [ -n "$MODEL_ID" ]; then
  echo "Auto-loading model: $MODEL_ID (${CONTEXT_LEN} context tokens)..."
  lms get "$MODEL_ID" --yes || true
  lms load "$MODEL_ID" --context-length "$CONTEXT_LEN" --identifier "$MODEL_ID" -y || true
fi

echo "LM Studio Headless Server is ready!"
tail -f /dev/null
