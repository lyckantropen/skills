#!/usr/bin/env bash
# Regenerate the skills table in README.md between the skills-table markers,
# reading name/description from each skills/*/SKILL.md frontmatter.
set -euo pipefail
cd "$(dirname "$0")/.."

readme=README.md
entries=$(mktemp)
trap 'rm -f "$entries"' EXIT

for skill_md in skills/*/SKILL.md; do
    [ -f "$skill_md" ] || continue
    dir=$(dirname "$skill_md")
    meta=$(sed -n '2,/^---$/p' "$skill_md" | sed '$d')
    name=$(printf '%s\n' "$meta" | sed -n 's/^name:[[:space:]]*//p' | head -n 1)
    desc=$(printf '%s\n' "$meta" | sed -n 's/^description:[[:space:]]*//p' | head -n 1)

    # The CLI requires the frontmatter name to match the directory name.
    if [ -z "$name" ] || [ "$name" != "$(basename "$dir")" ]; then
        echo "warning: $skill_md: missing or mismatched 'name' in frontmatter (dir: $(basename "$dir"))" >&2
        continue
    fi
    [ -n "$desc" ] || desc="_(no description)_"
    printf '| [`skills/%s/`](./skills/%s/) | %s |\n' "$name" "$name" "$desc" >> "$entries"
done

tmp=$(mktemp)
awk '
    NR==FNR { ent = ent $0 ORS; next }
    { if ($0 ~ /skills-table:start/) { print; printf "%s", ent; skip = 1; next }
      if (skip && $0 ~ /skills-table:end/) { skip = 0 }
      if (!skip) print }
' "$entries" "$readme" > "$tmp"
mv "$tmp" "$readme"
echo "README skills table regenerated."
