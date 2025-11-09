#!/bin/bash

# Script para validar uma questão do CKA

LAB_NUM=$1
if [ -z "$LAB_NUM" ]; then
  echo "❌ Usage: ./validate-lab.sh <lab-number>"
  exit 1
fi

LAB_FILE=$(find validate -type f -name "validate-$(printf "%02d" $LAB_NUM).sh" | head -n 1)
if [ ! -f "$LAB_FILE" ]; then
  echo "❌ Validation script not found for question $LAB_NUM"
  exit 1
fi

echo "🔍 Running validation for Lab $LAB_NUM..."
bash "$LAB_FILE"