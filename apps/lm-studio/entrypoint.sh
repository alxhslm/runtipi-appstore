#!/bin/sh
set -e

echo "Starting LM Studio Headless Daemon..."
lms daemon up

echo "Enabling LM Link..."
lms link enable || true

# Check if authenticated or print login link to logs
if ! lms link status 2>&1 | grep -q "Connected"; then
  echo ""
  echo "================================================================="
  echo "🔗 LM STUDIO LINK PAIRING REQUIRED"
  echo "================================================================="
  echo "Open the pairing link below to pair your LM Studio account:"
  echo ""
  lms login || true
  echo "================================================================="
  echo ""
fi

if [ -n "$MODEL_ID" ]; then
  echo "Auto-loading model: $MODEL_ID..."
  lms get "$MODEL_ID" --yes || lms get "$MODEL_ID" || true
  lms load "$MODEL_ID" || true
fi

echo "Starting LM Studio OpenAI API Server on port 1234..."
exec lms server start --port 1234 --host 0.0.0.0
