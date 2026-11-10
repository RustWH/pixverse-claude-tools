#!/bin/bash
# Install the PixVerse CLI globally in Claude Code cloud sessions.
set -euo pipefail

# Only run in remote (cloud) sessions; local machines manage their own installs.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

if ! command -v pixverse >/dev/null 2>&1; then
  npm install -g pixverse
fi
