# Developer & AI Agent Guidelines for Runtipi App Store

When modifying or updating any app in this Runtipi App Store repository (`alxhslm/runtipi-appstore`), all AI coding assistants and developers must adhere to the following rules:

## Versioning & App Rules

1. **Increment `tipi_version`:**
   Whenever changes are made to an app's `config.json`, `docker-compose.json`, `Dockerfile`, or `entrypoint.sh`, you **MUST** increment the integer field `"tipi_version"` in `apps/<app_id>/config.json` (e.g., from `2` to `3`).

2. **Update `updated_at` Timestamp:**
   Always update `"updated_at"` to the current Unix timestamp in milliseconds (`Date.now()`).

3. **Increment `"version"`:**
   Increment the semantic version string `"version"` (e.g., `"1.0.2"` → `"1.0.3"`).

4. **GitHub Container Registry (GHCR):**
   Ensure pre-built Docker images are published to `ghcr.io/alxhslm/<image_name>:latest` via GitHub Actions CI.
