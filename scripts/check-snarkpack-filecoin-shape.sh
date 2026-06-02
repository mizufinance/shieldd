#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

BELLPERSON_URL="https://github.com/filecoin-project/bellperson.git"
BELLPERSON_TAG="v0.21.0"
BELLPERSON_COMMIT="62c362fd46ca2139747b8770bae53ce6f1e42bb1"

FIL_PROOFS_URL="https://github.com/filecoin-project/rust-fil-proofs.git"
FIL_PROOFS_TAG="filecoin-proofs-v11.1.0"
FIL_PROOFS_COMMIT="004d7b4244c469e0d9aeebf15f9a81ef60308ba3"

CACHE_ROOT="${SNARKPACK_FILECOIN_CACHE:-${TMPDIR:-/tmp}/penumbra-snarkpack-filecoin-shape}"
BELLPERSON_DIR="$CACHE_ROOT/bellperson-$BELLPERSON_COMMIT"
FIL_PROOFS_DIR="$CACHE_ROOT/rust-fil-proofs-$FIL_PROOFS_COMMIT"

fail() {
  echo "snarkpack filecoin-shape failed: $*" >&2
  exit 1
}

pin_for_tag() {
  local url="$1"
  local tag="$2"
  local peeled
  peeled="$(git ls-remote --tags "$url" "refs/tags/$tag^{}" | awk '{print $1}')"
  if [[ -z "$peeled" ]]; then
    peeled="$(git ls-remote --tags "$url" "refs/tags/$tag" | awk '{print $1}')"
  fi
  printf '%s\n' "$peeled"
}

require_pattern() {
  local label="$1"
  local pattern="$2"
  local file="$3"
  grep -E -n -- "$pattern" "$file" >/dev/null \
    || fail "missing $label in $file"
}

require_common_label() {
  local label="$1"
  local prove="$2"
  local verify="$3"
  require_pattern "prover transcript label $label" "Transcript::<E>::new\\(.*$label" "$prove"
  require_pattern "verifier transcript label $label" "Transcript::<E>::new\\(.*$label" "$verify"
}

bellperson_pin="$(pin_for_tag "$BELLPERSON_URL" "$BELLPERSON_TAG")"
[[ "$bellperson_pin" == "$BELLPERSON_COMMIT" ]] \
  || fail "Bellperson $BELLPERSON_TAG resolved to $bellperson_pin, expected $BELLPERSON_COMMIT"

fil_proofs_pin="$(pin_for_tag "$FIL_PROOFS_URL" "$FIL_PROOFS_TAG")"
[[ "$fil_proofs_pin" == "$FIL_PROOFS_COMMIT" ]] \
  || fail "rust-fil-proofs $FIL_PROOFS_TAG resolved to $fil_proofs_pin, expected $FIL_PROOFS_COMMIT"

if [[ ! -d "$BELLPERSON_DIR/.git" ]]; then
  rm -rf "$BELLPERSON_DIR"
  mkdir -p "$CACHE_ROOT"
  git clone --filter=blob:none --no-checkout "$BELLPERSON_URL" "$BELLPERSON_DIR" >/dev/null
fi

if [[ ! -d "$FIL_PROOFS_DIR/.git" ]]; then
  rm -rf "$FIL_PROOFS_DIR"
  mkdir -p "$CACHE_ROOT"
  git clone --filter=blob:none --no-checkout "$FIL_PROOFS_URL" "$FIL_PROOFS_DIR" >/dev/null
fi

git -C "$BELLPERSON_DIR" fetch --depth 1 origin "$BELLPERSON_COMMIT" >/dev/null
git -C "$BELLPERSON_DIR" checkout --detach "$BELLPERSON_COMMIT" >/dev/null

git -C "$FIL_PROOFS_DIR" fetch --depth 1 origin "$FIL_PROOFS_COMMIT" >/dev/null
git -C "$FIL_PROOFS_DIR" checkout --detach "$FIL_PROOFS_COMMIT" >/dev/null

head_commit="$(git -C "$BELLPERSON_DIR" rev-parse HEAD)"
[[ "$head_commit" == "$BELLPERSON_COMMIT" ]] \
  || fail "Bellperson checkout is $head_commit, expected $BELLPERSON_COMMIT"

fil_proofs_head_commit="$(git -C "$FIL_PROOFS_DIR" rev-parse HEAD)"
[[ "$fil_proofs_head_commit" == "$FIL_PROOFS_COMMIT" ]] \
  || fail "rust-fil-proofs checkout is $fil_proofs_head_commit, expected $FIL_PROOFS_COMMIT"

prove="$BELLPERSON_DIR/src/groth16/aggregate/prove.rs"
verify="$BELLPERSON_DIR/src/groth16/aggregate/verify.rs"
transcript="$BELLPERSON_DIR/src/groth16/aggregate/transcript.rs"
mod_rs="$BELLPERSON_DIR/src/groth16/aggregate/mod.rs"
fil_seal="$FIL_PROOFS_DIR/filecoin-proofs/src/api/seal.rs"
fil_compound="$FIL_PROOFS_DIR/storage-proofs-core/src/compound_proof.rs"
fil_api_tests="$FIL_PROOFS_DIR/filecoin-proofs/tests/api.rs"

[[ -f "$prove" && -f "$verify" && -f "$transcript" && -f "$mod_rs" ]] \
  || fail "Bellperson aggregate source files are missing at pinned commit"
[[ -f "$fil_seal" && -f "$fil_compound" && -f "$fil_api_tests" ]] \
  || fail "rust-fil-proofs consumer source files are missing at pinned commit"

require_pattern "AggregateVersion::V2 enum" "V2" "$mod_rs"
require_common_label "hcom" "$prove" "$verify"
require_common_label "random-r" "$prove" "$verify"
require_common_label "gipa-0" "$prove" "$verify"
require_common_label "gipa-extra-link" "$prove" "$verify"
require_common_label "random-z" "$prove" "$verify"

require_pattern "prover public-message transcript inclusion" "write\\(&transcript_include\\)" "$prove"
require_pattern "verifier public-message transcript inclusion" "write\\(&transcript_include\\)" "$verify"

require_pattern "V2 first-round transcript branch in prover" "AggregateVersion::V2" "$prove"
require_pattern "V2 first-round transcript branch in verifier" "AggregateVersion::V2" "$verify"
require_pattern "first-round previous challenge input in prover" "write\\(&c_inv\\)" "$prove"
require_pattern "first-round previous challenge input in verifier" "write\\(&c_inv\\)" "$verify"
require_pattern "prover final randomness bridge" "write\\(&extra_challenge\\)" "$prove"
require_pattern "verifier final randomness bridge" "write\\(&extra_challenge\\)" "$verify"

require_pattern "transcript domain prefix" "PREFIX" "$transcript"
require_pattern "transcript application tag binding" "hasher.update\\(application_tag\\)" "$transcript"
require_pattern "transcript nonce binding" "counter_nonce" "$transcript"

require_pattern "consumer aggregate API version parameter" "aggregate_version: groth16::aggregate::AggregateVersion" "$fil_seal"
require_pattern "consumer aggregate call passes version" "aggregate_version," "$fil_seal"
require_pattern "consumer verify API version parameter" "aggregate_version: groth16::aggregate::AggregateVersion" "$fil_seal"
require_pattern "compound aggregate version parameter" "version: groth16::aggregate::AggregateVersion" "$fil_compound"
require_pattern "compound aggregate call" "aggregate_proofs::<Bls12>" "$fil_compound"
require_pattern "compound verify call" "verify_aggregate_proof" "$fil_compound"
require_pattern "conflicting aggregate version rejection test" "conflicting_aggregate_version" "$fil_api_tests"

printf 'snarkpack filecoin-shape ok\n'
printf 'bellperson %s %s\n' "$BELLPERSON_TAG" "$BELLPERSON_COMMIT"
printf 'rust-fil-proofs %s %s\n' "$FIL_PROOFS_TAG" "$FIL_PROOFS_COMMIT"
