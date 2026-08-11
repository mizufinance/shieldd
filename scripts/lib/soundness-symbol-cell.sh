#!/usr/bin/env bash

# Print the first unresolved symbol in a soundness-map cell and return nonzero.
# Backtick-delimited cells may list multiple symbols; `*` is a source-text
# wildcard. A literal n/a cell carries no source obligation.
soundness_missing_symbol() {
  local cell="$1"
  shift

  [[ -n "$cell" ]] || {
    printf '%s\n' '<empty>'
    return 1
  }

  local symbols
  symbols="$(printf '%s\n' "$cell" | rg -oN '`[^`]+`' || true)"
  if [[ -z "$symbols" ]]; then
    symbols="$cell"
  fi

  local quoted symbol regex
  while IFS= read -r quoted; do
    [[ -n "$quoted" ]] || continue
    symbol="${quoted#\`}"
    symbol="${symbol%\`}"
    [[ "$symbol" == "n/a" ]] && continue

    if [[ "$symbol" == *'*'* ]]; then
      regex="\\Q${symbol//\*/\\E.*\\Q}\\E"
      if ! rg -P "$regex" "$@" >/dev/null; then
        printf '%s\n' "$symbol"
        return 1
      fi
    elif ! rg -F "$symbol" "$@" >/dev/null; then
      printf '%s\n' "$symbol"
      return 1
    fi
  done <<<"$symbols"
}
