#!/bin/bash
set -e

echo "=================================================="
echo "📦 Setting up runtime Bun & Node..."
echo "=================================================="

if ! command -v bun &> /dev/null; then
    echo "Installing bun..."
    curl -fsSL https://bun.sh/install | bash
    
    export BUN_INSTALL="$HOME/.bun"
    export PATH="$BUN_INSTALL/bin:$PATH"
fi

echo "Installing OpenCode..."
curl -fsSL https://opencode.ai/install | bash

echo "=================================================="
echo "🚀 Running Oh-My-OpenAgents setup..."
echo "=================================================="

bunx oh-my-openagent install \
  --no-tui \
  --platform=opencode \
  --claude=no \
  --gemini=no \
  --copilot=no \
  --openai=no \
  --opencode-zen=no \
  --zai-coding-plan=no \
  --opencode-go=no \
  --kimi-for-coding=no \
  --vercel-ai-gateway=no \
  --no-codex-autonomous \
  --skip-auth

echo "=================================================="
echo "✅ Setup done!. Use the command \"opencode\" to start"
echo "=================================================="
