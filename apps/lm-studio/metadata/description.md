# LM Studio Headless

LM Studio Headless (`lms`) runs a high-performance, pure OpenAI-compatible local AI inference server for running GGUF LLMs on your Runtipi home server.

---

## ✨ Features

- ⚡ **Pure Headless Engine:** Lightweight container with zero GUI desktop overhead, maximizing RAM and GPU VRAM for model inference.
- 🎯 **Configurable Model (`MODEL_ID`):** Choose your desired model directly in the Runtipi UI form field.
- 🔗 **LM Link Pairing:** Easily pair your LM Studio account and Desktop app via container logs.
- 🤖 **OpenAI Compatible API:** Serves local LLM completions on `http://<server-ip>:1234/v1`.
- 💾 **Persistent Storage:** Downloaded models are stored persistently in Runtipi app data.

---

## 🚀 Quick Setup & Pairing Guide

### 1. Select Model in Runtipi UI
When installing or configuring **LM Studio Headless**, enter your desired Model ID in the **`MODEL_ID`** field (e.g., `google/gemma-4-e4b`, `gemma-2-9b-it`, `llama-3.2-3b-instruct`).

### 2. Pair via LM Link (Container Logs)
1. After starting the app, open **App Settings** -> **View Logs**.
2. Look for the pairing box:
   ```text
   =================================================================
   🔗 LM STUDIO LINK PAIRING REQUIRED
   =================================================================
   Open the pairing link below to pair your LM Studio account:

   👉 https://lmstudio.ai/pairing?code=xxx-yyyy-zzz
   =================================================================
   ```
3. Click the link to authenticate. Your server will instantly pair with your LM Studio account and Desktop app!

---

## 📡 API Endpoint

Integrate with OpenClaw, Chatbox, Open WebUI, or custom code:
- **Base URL:** `http://<your-server-ip>:1234/v1`
- **Models Endpoint:** `http://<your-server-ip>:1234/v1/models`
- **API Key:** `lm-studio` (or any string)
