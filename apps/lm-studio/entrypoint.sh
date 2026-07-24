#!/bin/sh

trap 'exit 0' TERM INT

echo "Starting LM Studio Headless Daemon..."
lms daemon up

echo "Enabling LM Link..."
lms link enable || true

if [ -n "$LINK_DEVICE_NAME" ]; then
  echo "Setting LM Link device name to: $LINK_DEVICE_NAME..."
  lms link set-device-name "$LINK_DEVICE_NAME" || true
fi

echo "Starting LM Studio Server on port 1234..."
lms server start --port 1234 --bind 0.0.0.0 --cors || true

CONTEXT_LEN="${CONTEXT_LENGTH:-8192}"

if [ -n "$MODEL_ID" ]; then
  echo "Triggering background model download and load for: $MODEL_ID (${CONTEXT_LEN} tokens)..."
  (
    lms get "$MODEL_ID" --yes >/tmp/lms-download.log 2>&1
    lms load "$MODEL_ID" --context-length "$CONTEXT_LEN" --identifier "$MODEL_ID" -y >>/tmp/lms-download.log 2>&1
  ) &
fi

echo "LM Studio Headless Server is ready!"
while true; do
  sleep 1 &
  wait $!
done
