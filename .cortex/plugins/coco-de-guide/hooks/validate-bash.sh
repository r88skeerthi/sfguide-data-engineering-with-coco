#!/bin/bash
# validate-bash.sh — PreToolUse hook for bash tool
# Blocks any dbt command that targets production.
INPUT=$(cat)
COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')

if echo "$COMMAND" | grep -q 'dbt' && echo "$COMMAND" | grep -q '\-\-target prod'; then
  echo "Direct production dbt runs are not allowed. Use the CI/CD pipeline instead." >&2
  exit 2
fi
