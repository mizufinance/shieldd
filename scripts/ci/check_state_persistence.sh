#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
export CARGO_BUILD_JOBS=2 RAYON_NUM_THREADS=2 GOMAXPROCS=2
export SHIELDD_PARI_KEYS="${SHIELDD_PARI_KEYS:-$root/target/dev-pari-keys}"
SHIELDD_PARI_KEYS="$(python3 -c 'import pathlib, sys; print(pathlib.Path(sys.argv[1]).resolve())' "$SHIELDD_PARI_KEYS")"
export CARGO_TARGET_DIR="$root/target"
cd "$root"
cargo run --locked --profile ci -p shieldd --example state_persistence -- "$work/db" "$work/result"
echo 'Current-version reopen, checkpoint, history, replay and next-root persistence passed.'
