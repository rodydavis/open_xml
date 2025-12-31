#!/bin/bash

# Navigate to the script's directory (examples/) to ensure correct context

cd "$(dirname "$0")"

echo "Cleaning up output directory..."
rm -rf "out"

# Install dependencies
echo "Installing dependencies..."
dart pub get

# Define specific examples to run
EXAMPLES=(
  "docx/docx_comments_example.dart"
  "pptx/pptx_comments_example.dart"
  "xlsx/xlsx_comments_example.dart"
)

# Run specific example scripts
for file in "${EXAMPLES[@]}"; do
  echo "Running $file..."
  dart run "$file"
  
  if [ $? -eq 0 ]; then
    echo "✅ $file completed successfully"
  else
    echo "❌ $file failed"
  fi
  echo "-----------------------------------"
done

echo "All examples execution attempted."

cd ..

echo "Copying generated files..."
rm -rf OOXML-Validator/examples_out
mkdir OOXML-Validator/examples_out
cp -r ./examples/out/ OOXML-Validator/examples_out/

echo "Running validator..."
docker-compose -f OOXML-Validator/.build-files/compose.yaml run dev ./dev.sh run linux-arm64 ./examples_out

echo "Validator completed."

