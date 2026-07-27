#!/usr/bin/env bash

# Run a forbidden-pattern search with fail-closed ripgrep semantics.
# Returns 0 only when no match exists, 1 when a match exists, and preserves
# ripgrep errors (2+) so callers cannot mistake a broken search for clean input.
reject_rg_matches() {
  local label="$1"
  shift
  local rc
  if rg "$@"; then
    rc=0
  else
    rc=$?
  fi
  case "$rc" in
    0)
      echo "$label: forbidden match found" >&2
      return 1
      ;;
    1)
      return 0
      ;;
    *)
      echo "$label: ripgrep failed with exit $rc" >&2
      return "$rc"
      ;;
  esac
}
