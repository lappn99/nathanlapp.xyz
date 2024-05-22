#!/bin/zsh

DATE=$(date '+%F' | sed 's:-:.:g' | tr -d '\n')

echo "Building release for $DATE"

PAYLOAD=$(gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/lappn99/nathanlapp.xyz/releases \
   -f "tag_name=v$DATE" -f "target_commitish=main" -f "name=v$DATE" -f "body=[nathanlapp.xyz](https://nathanlapp.xyz) build on $DATE" -F "draft=false" -F "prerelease=false" -F "generate_release_notes=false")


gh release upload v$DATE ./nathanlapp.xyz.tar.gz