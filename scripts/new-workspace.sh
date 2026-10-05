#!/usr/bin/env bash
# Tạo workspace private của đội từ playbook.
# Dùng: bash scripts/new-workspace.sh ../itcc-2026-workspace
set -euo pipefail

target="${1:-}"
if [ -z "$target" ]; then
  echo "Dùng: bash scripts/new-workspace.sh <thư-mục-đích>" >&2
  exit 1
fi
if [ -e "$target" ] && [ -n "$(ls -A "$target" 2>/dev/null)" ]; then
  echo "Thư mục '$target' đã tồn tại và không rỗng. Dừng để không ghi đè." >&2
  exit 1
fi

root="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$target"

cp -R "$root/workspace-template/." "$target/"
cp -R "$root/prompts" "$target/prompts"
cp -R "$root/templates" "$target/templates"
mkdir -p "$target/.claude" "$target/.agents"
cp -R "$root/.claude/commands" "$target/.claude/commands"
cp -R "$root/.agents/workflows" "$target/.agents/workflows"

git -C "$target" init -q -b main

cat <<EOF

Đã tạo workspace tại: $target

Bước tiếp:
  1. cd "$target"
  2. Điền tên ba thành viên vào STATUS.md
  3. git add -A && git commit -m "chore: khởi tạo workspace"
  4. Tạo repo PRIVATE và đẩy lên:
       gh repo create itcc-2026-workspace --private --source . --push
  5. Mời hai thành viên còn lại vào repo.

Không bao giờ đặt repo này ở chế độ public: nó sẽ chứa case study và giải pháp của đội.
EOF
