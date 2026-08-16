#!/usr/bin/env bash
set -euo pipefail

# Fast entry points for the exact Lean circuit workflow. Every mode remains
# serial and delegates resource limits to lean-build-safe/check-lean-circuit-fv.

fail() { echo "fv-lean failed: $*" >&2; exit 1; }

[[ "$#" -ge 1 ]] || fail "usage: $(basename "$0") [fast|affected|full] [CIRCUIT|all]..."
mode="$1"
shift
case "$mode" in
  fast|affected|full) ;;
  *) fail "unknown tier $mode" ;;
esac

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

case "$mode" in
  fast)
    # No Lean and no prover: deterministic generators, exact source drift,
    # import closure, stamps, and parity vectors.
    exec "$ROOT/scripts/check-lean-circuit-fv.sh" fast "$@"
    ;;
  affected)
    # Build only the selected family theorem roots. No prover/release replay.
    exec "$ROOT/scripts/check-lean-circuit-fv.sh" affected "$@"
    ;;
  full)
    # Expensive release tier, explicit by name.
    exec "$ROOT/scripts/check-lean-circuit-fv.sh" release "$@"
    ;;
esac
