cat <<'EOF' > start-lab.sh
#!/bin/bash
# ---------------------------------------------
# 🎯 CKA PRACTICE LAB LAUNCHER
# Usage: ./start-lab.sh <lab-number>
# ---------------------------------------------

LAB_NUM=$1
if [ -z "$LAB_NUM" ]; then
  echo "❌ Usage: ./start-lab.sh <lab-number>"
  exit 1
fi

LAB_FILE=$(find labs -type f -name "lab-$(printf "%02d" $LAB_NUM)-*.sh" | head -n 1)

if [ ! -f "$LAB_FILE" ]; then
  echo "❌ Lab script not found for question $LAB_NUM"
  exit 1
fi

echo "🚀 Initializing environment for Question $LAB_NUM..."
bash "$LAB_FILE"
echo "✅ Environment for Question $LAB_NUM is ready!"