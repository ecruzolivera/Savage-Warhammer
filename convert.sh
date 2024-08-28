#!/bin/bash
set -eo pipefail

# Make sure the output directory exists
mkdir -p dist

# Loop over all .md files in the input directory
for md_file in *.md; do
  # Get the base filename without the extension
  base_name=$(basename "$md_file" .md)

  # Convert the markdown file to a pdf
  pandoc "$md_file" -o "dist/$base_name.html"
done

echo "Conversion complete"

ls -alh dist

# pandoc -s "./Savage Warhammer.md" -o "Savage Warhammer.html"
# pandoc -s "./Savage Warhammer.md" -o "Savage Warhammer.odt"
