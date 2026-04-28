#!/bin/bash

# Navigate to the script's directory (examples/) to ensure correct context
cd "$(dirname "$0")"

echo "Running validator on all outputs in ./out..."
echo "-----------------------------------"

if [ -d "out" ]; then
  find out -type f \( -name "*.docx" -o -name "*.pptx" -o -name "*.xlsx" \) | while read file; do
    echo "Validating $file..."
    dart ../lib/src/validate/validate_cli.dart "$file"
    if [ $? -eq 0 ]; then
      echo "✅ $file validated successfully"
    else
      echo "❌ $file failed validation"
    fi
    echo "-----------------------------------"
  done
else
  echo "No 'out' directory found. Please run the examples first to generate outputs."
fi
