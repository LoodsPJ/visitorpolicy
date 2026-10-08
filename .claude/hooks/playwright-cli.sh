#!/bin/bash
# Zet playwright-cli klaar in een cloudsessie (claude.ai/code). Lokaal doet dit niets.
# Draait op de achtergrond zodat de sessie er niet op wacht; fouten breken niets.
[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0
cd "$CLAUDE_PROJECT_DIR" || exit 0

# Chromium draait in de cloud als root: zonder sandbox starten.
if [ ! -f .playwright/cli.config.json ]; then
  mkdir -p .playwright
  printf '%s\n' '{"browser":{"launchOptions":{"chromiumSandbox":false}}}' > .playwright/cli.config.json
fi

if ! command -v playwright-cli >/dev/null 2>&1; then
  (npm install -g @playwright/cli@latest >/dev/null 2>&1 &)
fi
exit 0
