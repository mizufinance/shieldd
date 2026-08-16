#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
source "$ROOT/scripts/lib/fail-closed-rg.sh"
source "$ROOT/scripts/lib/soundness-symbol-cell.sh"

MODE="${1:-}"
semantic_digest_args=()
case "$MODE" in
  candidate)
    semantic_digest_args=(--skip-semantic-digest)
    ;;
  strict) ;;
  *)
    echo "usage: $(basename "$0") [candidate|strict]" >&2
    exit 2
    ;;
esac

fail() {
  echo "soundness invariant failed: $*" >&2
  exit 1
}

command -v rg >/dev/null 2>&1 || fail "rg is required"
command -v jq >/dev/null 2>&1 || fail "jq is required"

# Fail before the broader documentation/artifact scan when a native validity
# predicate is absent from the reviewed specification or any fixed circuit.
python3 scripts/gen_fv_specification_matrix.py --check \
  || fail "fixed-circuit specification evidence matrix is stale"
python3 scripts/check-fv-specification-completeness.py \
  "${semantic_digest_args[@]}" \
  || fail "fixed-circuit specification predicate matrix is not closed"

# NoteReshape is the sole production vocabulary for this circuit family. Keep
# the pcli negative assertion, Lean contributor instructions, and pinned
# statement-hash domain labels out of this source-name lint.
reject_rg_matches "legacy NoteReshape vocabulary" \
    -ni '\b(consolidate(2x1|4x1|8x1)?|split1x8)\b' . \
    --glob '!target/**' \
    --glob '!tools/gnark/lean/.lake/**' \
    --glob '!tools/gnark/lean/AGENTS.md' \
    --glob '!crates/bin/pcli/tests/cli_surface.rs' \
    --glob '!tools/gnark/lean/gen/gen_certified_statement_hash_semantics.py' \
    --glob '!scripts/check-soundness-invariants.sh' \
    --glob '!docs/protocol/theme/js/mermaid.min.js' \
  || fail "deleted Split/Consolidate production vocabulary remains or the search failed"
reject_rg_matches "bare Split production vocabulary" \
    -n '(^|[^.[:alnum:]_])Split([^[:alnum:]_]|$)' \
    crates/core/component/shielded-pool/src \
    tools/gnark/cmd tools/gnark/internal/abi tools/gnark/internal/circuits \
  || fail "deleted bare Split production vocabulary remains or the search failed"

markdown_field() {
  local row="$1"
  local index="$2"
  printf '%s\n' "$row" | awk -F'|' -v idx="$index" '{
    field = $idx
    gsub(/^[[:space:]]+|[[:space:]]+$/, "", field)
    print field
  }'
}

strip_ticks() {
  sed 's/^`//; s/`$//'
}

row_ids() {
  local file="$1"
  sed -n 's/^| `\([^`]*\)` |.*/\1/p' "$file"
}

table_rows() {
  local file="$1"
  sed -n '/^| `[^`]*` |/p' "$file"
}

# Kind-aware status model. Properties carry proof-progress statuses;
# `proved-symbolic` is a Tamarin/ProVerif lemma discharged modulo cited
# assumption-ledger idealizations; `proved-computational` is a game-based
# Lean/VCVio proof in the random-oracle model, likewise modulo cited residual
# assumptions. Findings carry remediation statuses. Assumptions are either
# residual `assumed` rows or mechanized `discharged` rows.
status_allowed_for_kind() {
  local kind="$1" status="$2"
  case "$kind" in
    property)
      case "$status" in
        open|candidate|composed|composed-computational|refined|assumed|proved|proved-symbolic|proved-computational) return 0 ;;
      esac ;;
    finding)
      case "$status" in
        open|resolved|accepted-risk) return 0 ;;
      esac ;;
    assumption)
      # `assumed` is the default residual state; `discharged` marks an
      # assumption that has been mechanized into a theorem at its stated scope
      # (evidence must cite the discharging proof; the removal path records what,
      # if anything, remains for broader scopes).
      case "$status" in
        assumed|discharged) return 0 ;;
      esac ;;
    gadget)
      # Gadget-scoped R1CS proofs: only `proved` carries a certified theorem.
      case "$status" in
        planned|decomposed|evidence|proved) return 0 ;;
      esac ;;
  esac
  return 1
}

column_index() {
  local file="$1" name="$2"
  awk -F'|' -v want="$name" '
    /^\| ID \|/ {
      for (i = 1; i <= NF; i++) {
        field = $i
        gsub(/^[[:space:]]+|[[:space:]]+$/, "", field)
        if (field == want) {
          print i
          exit
        }
      }
    }
  ' "$file"
}

status_column_index() {
  column_index "$1" "Status"
}

check_duplicates() {
  local label="$1"
  local ids="$2"
  local duplicates
  duplicates="$(printf '%s\n' "$ids" | sed '/^$/d' | sort | uniq -d)"
  if [[ -n "$duplicates" ]]; then
    echo "$duplicates" >&2
    fail "$label contains duplicate IDs"
  fi
}

# check_status_rows <file> [fixed_kind]
# When fixed_kind is empty, the kind is read from each row's Kind column.
check_status_rows() {
  local file="$1"
  local fixed_kind="${2:-}"
  local status_index kind_index
  status_index="$(status_column_index "$file")"
  [[ -n "$status_index" ]] || return
  kind_index="$(column_index "$file" "Kind")"
  while IFS= read -r row; do
    [[ -z "$row" ]] && continue
    local id status kind
    id="$(markdown_field "$row" 2 | strip_ticks)"
    status="$(markdown_field "$row" "$status_index" | strip_ticks)"
    if [[ -n "$fixed_kind" ]]; then
      kind="$fixed_kind"
    elif [[ -n "$kind_index" ]]; then
      kind="$(markdown_field "$row" "$kind_index" | strip_ticks)"
    else
      kind="property"
    fi
    status_allowed_for_kind "$kind" "$status" \
      || fail "$file row $id has invalid status $status for kind $kind"
  done < <(table_rows "$file")
}

check_stamped_artifact() {
  local id="$1" artifact="$2" require_model_binding="${3:-false}"
  [[ -f "$artifact" ]] || fail "row $id cites missing proof artifact $artifact"
  [[ -f "$artifact.sha256" ]] || fail "row $id artifact $artifact lacks .sha256 stamp"
  local want have
  want="$(cat "$artifact.sha256")"
  have="$(shasum -a 256 "$artifact" | awk '{print $1}')"
  [[ "$want" == "$have" ]] \
    || fail "row $id artifact $artifact stamp mismatch (want $want got $have)"

  if [[ "$require_model_binding" == "true" ]]; then
    local model expected_model_sha actual_model_sha
    model="$(sed -n 's/^model: //p' "$artifact")"
    expected_model_sha="$(sed -n 's/^model_sha256: //p' "$artifact")"
    [[ -n "$model" && -n "$expected_model_sha" ]] \
      || fail "row $id artifact $artifact lacks an exact model binding"
    [[ "$model" != /* && "$model" != *".."* && -f "$model" ]] \
      || fail "row $id artifact $artifact names an invalid model path $model"
    actual_model_sha="$(shasum -a 256 "$model" | awk '{print $1}')"
    [[ "$expected_model_sha" == "$actual_model_sha" ]] \
      || fail "row $id artifact $artifact model hash is stale (want $expected_model_sha got $actual_model_sha)"
  fi
}

require_symbol() {
  local label="$1"
  local cell="$2"
  shift 2
  local missing
  if ! missing="$(soundness_missing_symbol "$cell" "$@")"; then
    fail "$label symbol $missing is missing"
  fi
}

COMPLIANCE_FORMAL=crates/core/component/compliance/formal
CIRCUIT_FORMAL=crates/core/component/shielded-pool/formal

required_files=(
  "$COMPLIANCE_FORMAL/threat-model.md"
  "$COMPLIANCE_FORMAL/soundness-properties.md"
  "$COMPLIANCE_FORMAL/assumption-ledger.md"
  "$COMPLIANCE_FORMAL/symbolic-model-design.md"
  "$COMPLIANCE_FORMAL/compliance-soundness-findings.md"
  "$COMPLIANCE_FORMAL/compliance-soundness-scope.txt"
  "$CIRCUIT_FORMAL/circuit-threat-model.md"
  "$CIRCUIT_FORMAL/circuit-soundness-properties.md"
  "$CIRCUIT_FORMAL/statement-field-map.md"
  "$CIRCUIT_FORMAL/external-check-map.md"
  "$CIRCUIT_FORMAL/circuit-soundness-findings.md"
  "$CIRCUIT_FORMAL/circuit-soundness-scope.txt"
  "$CIRCUIT_FORMAL/circuit-gadget-proofs.md"
  "$CIRCUIT_FORMAL/circuit-constraint-report.txt"
  "$CIRCUIT_FORMAL/fv-specification-predicate-matrix.schema.json"
  "$CIRCUIT_FORMAL/fv-specification-predicate-matrix.json"
  "$CIRCUIT_FORMAL/native-circuit-predicate-census.json"
  docs/soundness/README.md
  docs/soundness/fv.md
  docs/soundness/optimization.md
  docs/soundness/release.md
)

for file in "${required_files[@]}"; do
  [[ -f "$file" ]] || fail "required soundness file $file is missing"
done

# Keep the explanatory soundness surface intentionally small. Machine evidence
# belongs beside the code and in stamped artifacts, not in additional narrative
# files that can silently become competing sources of truth.
expected_soundness_docs="$(printf '%s\n' README.md fv.md optimization.md release.md | LC_ALL=C sort)"
actual_soundness_docs="$(find docs/soundness -type f -print \
  | sed 's#^docs/soundness/##' \
  | LC_ALL=C sort)"
if [[ "$actual_soundness_docs" != "$expected_soundness_docs" ]]; then
  diff -u \
    <(printf '%s\n' "$expected_soundness_docs") \
    <(printf '%s\n' "$actual_soundness_docs") >&2 || true
  fail "docs/soundness must contain exactly README.md, fv.md, optimization.md, and release.md"
fi

property_files=(
  "$COMPLIANCE_FORMAL/soundness-properties.md"
  "$CIRCUIT_FORMAL/circuit-soundness-properties.md"
)
finding_files=(
  "$COMPLIANCE_FORMAL/compliance-soundness-findings.md"
  "$CIRCUIT_FORMAL/circuit-soundness-findings.md"
)
assumption_file="$COMPLIANCE_FORMAL/assumption-ledger.md"
map_files=(
  "$CIRCUIT_FORMAL/statement-field-map.md"
  "$CIRCUIT_FORMAL/external-check-map.md"
)
certified_profiles="$(
  python3 scripts/check-fv-profiles.py --emit-tsv --status certified
)"
certified_circuits="$(printf '%s\n' "$certified_profiles" | cut -f1)"
[[ -n "$certified_circuits" ]] \
  || fail "FV profile catalog has no certified circuits"

for file in "${property_files[@]}"; do
  check_duplicates "$file" "$(row_ids "$file")"
  check_status_rows "$file" property
done
for file in "${finding_files[@]}"; do
  check_duplicates "$file" "$(row_ids "$file")"
  check_status_rows "$file" finding
done
check_duplicates "$assumption_file" "$(row_ids "$assumption_file")"
check_status_rows "$assumption_file" assumption
for file in "${map_files[@]}"; do
  check_duplicates "$file" "$(row_ids "$file")"
done

property_ids="$(for file in "${property_files[@]}"; do row_ids "$file"; done)"
finding_ids="$(for file in "${finding_files[@]}"; do row_ids "$file"; done)"
assumption_ids="$(row_ids "$assumption_file")"
# Whole-circuit evidence is checked directly from the certification catalog.
# Narrative mirrors are deliberately not machine inputs: they used to
# duplicate ledger rows and routinely went stale.
while IFS= read -r circuit; do
  [[ -z "$circuit" ]] && continue
  artifact="$CIRCUIT_FORMAL/$circuit-whole-circuit-lean-artifact.txt"
  check_stamped_artifact "WHOLE-CIRCUIT-FV" "$artifact"
  rg -F "whole-circuit" "$artifact" >/dev/null \
    || fail "whole-circuit artifact $artifact does not state its scope"
done <<< "$certified_circuits"

# Design-level model evidence must bind both its sidecar and the exact model
# source. The prover runners also compare freshly generated evidence in their
# default check mode; this static check catches stale stamps without requiring
# Alloy/Tamarin to be installed.
for artifact in \
  "$COMPLIANCE_FORMAL"/alloy-*-artifact.txt \
  "$COMPLIANCE_FORMAL/compliance-symbolic-artifact.txt" \
  "$COMPLIANCE_FORMAL/compliance-active-symbolic-artifact.txt"; do
  check_stamped_artifact "DESIGN-MODEL" "$artifact" true
done

# Gadget-scoped R1CS proof ledger. Status is the last column; a `proved` gadget
# row must cite a checked-in, stamped proof artifact whose sidecar hash matches.
# This is the only ledger whose rows may hold `proved`.
GADGET_LEDGER="$CIRCUIT_FORMAL/circuit-gadget-proofs.md"
check_duplicates "$GADGET_LEDGER" "$(row_ids "$GADGET_LEDGER")"
while IFS= read -r row; do
  [[ -z "$row" ]] && continue
  label="$(markdown_field "$row" 2 | strip_ticks)"
  status="$(printf '%s\n' "$row" | awk -F'|' '{f=$(NF-1); gsub(/^[[:space:]]+|[[:space:]]+$/,"",f); print f}' | strip_ticks)"
  status_allowed_for_kind gadget "$status" \
    || fail "$GADGET_LEDGER gadget $label has invalid status $status"
  if [[ "$status" == "proved" ]]; then
    artifact_cell="$(printf '%s\n' "$row" | awk -F'|' '{print $5}')"
    art="$(printf '%s\n' "$artifact_cell" | sed -n 's/.*(\([^)]*\)).*/\1/p')"
    [[ -n "$art" ]] || fail "$GADGET_LEDGER proved gadget $label cites no artifact path"
    art="$CIRCUIT_FORMAL/$art"
    [[ -f "$art" ]] || fail "$GADGET_LEDGER gadget $label cites missing artifact $art"
    [[ -f "$art.sha256" ]] || fail "$GADGET_LEDGER gadget $label artifact $art lacks .sha256 stamp"
    want="$(cat "$art.sha256")"
    have="$(shasum -a 256 "$art" | awk '{print $1}')"
    [[ "$want" == "$have" ]] \
      || fail "$GADGET_LEDGER gadget $label artifact stamp mismatch (want $want got $have)"
  fi
done < <(table_rows "$GADGET_LEDGER")

while IFS= read -r row; do
  [[ -z "$row" ]] && continue
  id="$(markdown_field "$row" 2 | strip_ticks)"
  owner="$(markdown_field "$row" 3)"
  rationale="$(markdown_field "$row" 5)"
  evidence="$(markdown_field "$row" 6)"
  removal_path="$(markdown_field "$row" 7)"
  [[ -n "$owner" && "$owner" != "pending" ]] || fail "assumption $id lacks owner"
  [[ -n "$rationale" && "$rationale" != "pending" ]] || fail "assumption $id lacks rationale"
  [[ -n "$evidence" && "$evidence" != "pending" ]] || fail "assumption $id lacks evidence"
  [[ "$evidence" == *"Postcondition:"* ]] || fail "assumption $id lacks explicit Postcondition"
  [[ -n "$removal_path" && "$removal_path" != "pending" ]] || fail "assumption $id lacks removal path"
done < <(table_rows "$assumption_file")

# Per-circuit decaf discharge: the Lean whole-circuit artifacts are axiom-clean,
# so for each completed circuit every decaf bridge row must be either
# `discharged` or carry a `Discharged-Circuits: <circuit>` marker backed by
# (a) the stamped whole-circuit artifact and (b) a bridge theorem name that
# actually exists in the extracted Lean sources. This makes the exit criterion
# ("no decaf row assumed for this circuit") mechanically checkable while rows
# stay open for circuit families not yet composed in Lean.
GNARK_LEAN_SRC="tools/gnark/lean/ShielddGnarkFormal"
TEMPLATE_INVENTORY="tools/gnark/artifacts/certified-template-inventory.json"
[[ -f "$TEMPLATE_INVENTORY" ]] \
  || fail "certified template inventory is missing: $TEMPLATE_INVENTORY"

template_digests() {
  local prefix="$1"
  jq -r --arg prefix "$prefix" '
    .templates[]
    | .template_key
    | select(startswith($prefix))
    | split("@")[1]
  ' "$TEMPLATE_INVENTORY"
}

ack_digests="$(template_digests "decaf.ack@")"
shared_secret_digests="$(template_digests "decaf.shared_secret@")"

# bash 3.2 (macOS) has no associative arrays; map id->bridge theorem by case.
decaf_bridge_theorem() {
  case "$1" in
    ZK-ASSUME-DECAF377-COMPRESS-TO-FIELD) echo "decaf377_compressToField_sound" ;;
    ZK-ASSUME-DECAF377-RVK) echo "decaf377_randomizedVerificationKey_sound" ;;
    ZK-ASSUME-DECAF377-DTK) echo "decaf377_diversifiedTransmissionKey_sound" ;;
    ZK-ASSUME-DECAF377-NET-BALANCE) echo "decaf377_netBalanceCommitment_sound" ;;
    ZK-ASSUME-DECAF377-ASSERT-EQUIVALENT) echo "decaf377_assertEquivalent_sound" ;;
    ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE) echo "compress_respects_decafEquivalent" ;;
    *) echo "" ;;
  esac
}
assumption_status_index="$(status_column_index "$assumption_file")"
while IFS= read -r row; do
  [[ -z "$row" ]] && continue
  id="$(markdown_field "$row" 2 | strip_ticks)"
  theorem="$(decaf_bridge_theorem "$id")"
  [[ -n "$theorem" ]] || continue
  status="$(markdown_field "$row" "$assumption_status_index" | strip_ticks)"
  evidence="$(markdown_field "$row" 6)"
  # The bridge theorem must exist in the extracted Lean sources.
  rg -F "$theorem" "$GNARK_LEAN_SRC" >/dev/null \
    || fail "decaf row $id cites bridge theorem $theorem absent from $GNARK_LEAN_SRC"
  while IFS= read -r circuit; do
    [[ -z "$circuit" ]] && continue
    if [[ "$status" != "discharged" ]]; then
      [[ "$evidence" == *"Discharged-Circuits:"*"$circuit"* ]] \
        || fail "decaf row $id is $status for $circuit without a Discharged-Circuits: $circuit marker"
    fi
    check_stamped_artifact \
      "$id" "$CIRCUIT_FORMAL/$circuit-whole-circuit-lean-artifact.txt"
  done <<< "$certified_circuits"
  # The two-torsion row is fully mechanized for every deployed circuit.
  if [[ "$id" == "ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE" ]]; then
    two_torsion_seen=1
    [[ "$status" == "discharged" ]] \
      || fail "ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE must be discharged (mechanized via compress_respects_decafEquivalent), got $status"
  fi
done < <(table_rows "$assumption_file")
[[ "${two_torsion_seen:-0}" == "1" ]] \
  || fail "assumption ledger is missing ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE"

# Safe-by-composition -> Lean binding. Check theorem existence directly; prose
# citations are not evidence and must not be required for a gate to pass.
for bridge_theorem in \
  scalarMulLE128_sound \
  scalarMulLE251_sound \
  decaf377_compressToField_sound \
  decaf377_encodeToCurve_sound \
  decaf377_randomizedVerificationKey_sound \
  decaf377_diversifiedTransmissionKey_sound \
  decaf377_netBalanceCommitment_sound \
  decaf377_conservationNetBalanceCommitment2_sound \
  ack_sound \
  shared_secrets_sound \
  transfer_salt_sound \
  detection_sound \
  amount_sound \
  address_sound \
  threshold_flag_sound \
  select_point_sound \
  dummy_mux_sound \
  assert_equivalent_if_sound; do
  rg -F "$bridge_theorem" "$GNARK_LEAN_SRC" >/dev/null \
    || fail "safe-by-composition bridge $bridge_theorem is absent from $GNARK_LEAN_SRC"
done

require_deployed_provider_theorem() {
  local module="$1"
  local theorem="$2"
  local provider="$GNARK_LEAN_SRC/Deployed/Templates/Semantics/$module.lean"
  [[ -f "$provider" ]] \
    || fail "deployed semantic provider is missing: $provider"
  rg -n "^theorem $theorem\\b" "$provider" >/dev/null \
    || fail "deployed semantic provider $module lacks theorem $theorem"
}

while IFS= read -r digest; do
  [[ -z "$digest" ]] && continue
  require_deployed_provider_theorem "TDecafAck_${digest}" sound
done <<<"$ack_digests"

while IFS= read -r digest; do
  [[ -z "$digest" ]] && continue
  module="TDecafSharedSecret_${digest}"
  require_deployed_provider_theorem "$module" sound
  provider="$GNARK_LEAN_SRC/Deployed/Templates/Semantics/$module.lean"
  if rg -n '^theorem flag_bool\b' "$provider" >/dev/null; then
    require_deployed_provider_theorem "$module" flag_bool
  fi
done <<<"$shared_secret_digests"

scope_ids=""
for scope in "$COMPLIANCE_FORMAL/compliance-soundness-scope.txt" "$CIRCUIT_FORMAL/circuit-soundness-scope.txt"; do
  ids="$(sed -n 's/^\([^#|][^|]*\)|.*/\1/p' "$scope")"
  check_duplicates "$scope" "$ids"
  scope_ids="${scope_ids}"$'\n'"$ids"

  while IFS='|' read -r id target extra; do
    [[ -z "$id" || "$id" =~ ^# ]] && continue
    [[ -z "${extra:-}" ]] || fail "$scope row $id has too many fields"
    [[ -n "$target" ]] || fail "$scope row $id lacks target"
    [[ "$target" == *:* ]] || fail "$scope row $id target must be file:pattern"
    file="${target%%:*}"
    pattern="${target#*:}"
    [[ -f "$file" ]] || fail "$scope row $id target file $file is missing"
    rg -F "$pattern" "$file" >/dev/null \
      || fail "$scope row $id pattern $pattern is missing from $file"
  done < "$scope"
done

required_scope_ids="$(printf '%s\n%s\n' "$property_ids" "$finding_ids" | sed '/^$/d' | sort)"
while IFS= read -r id; do
  [[ -z "$id" ]] && continue
  printf '%s\n' "$scope_ids" | grep -Fx "$id" >/dev/null \
    || fail "scope files are missing property/finding ID $id"
done < <(printf '%s\n' "$required_scope_ids")

while IFS= read -r id; do
  [[ -z "$id" ]] && continue
  printf '%s\n' "$required_scope_ids" | grep -Fx "$id" >/dev/null \
    || fail "scope files contain untracked ID $id"
done < <(printf '%s\n' "$scope_ids" | sed '/^$/d')

while IFS= read -r row; do
  [[ -z "$row" ]] && continue
  id="$(markdown_field "$row" 2 | strip_ticks)"
  rust_symbol="$(markdown_field "$row" 6)"
  go_symbol="$(markdown_field "$row" 7)"
  diff_symbol="$(markdown_field "$row" 8)"
  require_symbol "statement-field-map $id Rust" "$rust_symbol" \
    crates/core/component/shielded-pool/src crates/crypto/proof-params/src
  require_symbol "statement-field-map $id Go" "$go_symbol" tools/gnark/internal
  require_symbol "statement-field-map $id differential" "$diff_symbol" tools/gnark/internal/abi
done < <(table_rows "$CIRCUIT_FORMAL/statement-field-map.md")

while IFS= read -r row; do
  [[ -z "$row" ]] && continue
  id="$(markdown_field "$row" 2 | strip_ticks)"
  rust_symbol="$(markdown_field "$row" 4)"
  go_symbol="$(markdown_field "$row" 5)"
  require_symbol "external-check-map $id Rust" "$rust_symbol" crates/core/component crates/crypto
  require_symbol "external-check-map $id Go" "$go_symbol" tools/gnark
done < <(table_rows "$CIRCUIT_FORMAL/external-check-map.md")

check_stamped_artifact "PICUS-GADGET-REPORT" "$CIRCUIT_FORMAL/circuit-constraint-report.txt"
reject_rg_matches "Picus undischarged verdict" \
  -n '^GADGET .* undischarged$' "$CIRCUIT_FORMAL/circuit-constraint-report.txt" \
  >/dev/null \
  || fail "Picus gadget report contains undischarged gadget leaves or the search failed"
for gadget in gadget-poseidon-hash5; do
  rg -F "GADGET $gadget safe" "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
    || fail "Picus gadget report must mark certified-circuit probe $gadget safe"
done
if [[ -n "$ack_digests" || -n "$shared_secret_digests" ]]; then
  rg -F "GADGET gadget-ack-two-step safe" \
    "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
    || fail "Picus gadget report must mark the deployed ACK join probe safe"
else
  reject_rg_matches "retired ACK join probe in certification report" \
    -n -F "GADGET gadget-ack-two-step " \
    "$CIRCUIT_FORMAL/circuit-constraint-report.txt" \
    || fail "Picus report retains the ACK join probe after all dependent inventory families were removed"
fi
if [[ -n "$ack_digests" ]]; then
  rg -F "COMPOSITE ack-derivation safe-by-composition" \
    "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
    || fail "Picus gadget report must distinguish ACK composition from its two-step probe"
  while IFS= read -r digest; do
    [[ -z "$digest" ]] && continue
    lift="  deployed_relation_lift: Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_${digest}.sound"
    rg -F "$lift" "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
      || fail "Picus gadget report is missing exact ACK evidence: $lift"
  done <<<"$ack_digests"
  rg -F "  conditional_spec: exact rows prove AckBridge.AckBodySpec; the enclosing circuit must supply the ring public key on-curve premise before AckSpec promotion" \
    "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
    || fail "Picus gadget report must expose the ACK base-point curve premise"
else
  reject_rg_matches "retired ACK composite in certification report" \
    -n -F "COMPOSITE ack-derivation" \
    "$CIRCUIT_FORMAL/circuit-constraint-report.txt" \
    || fail "Picus report retains ACK certification after its inventory family was removed"
fi
if [[ -n "$shared_secret_digests" ]]; then
  rg -F "COMPOSITE shared-secrets safe-by-composition" \
    "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
    || fail "Picus gadget report must distinguish shared-secret composition from its ACK probe"
  while IFS= read -r digest; do
    [[ -z "$digest" ]] && continue
    module="TDecafSharedSecret_${digest}"
    lift="  deployed_relation_lift: Shieldd.GnarkFormal.Deployed.Templates.Semantics.${module}.sound"
    rg -F "$lift" "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
      || fail "Picus gadget report is missing exact shared-secret evidence: $lift"
    provider="$GNARK_LEAN_SRC/Deployed/Templates/Semantics/$module.lean"
    if rg -n '^theorem flag_bool\b' "$provider" >/dev/null; then
      flag_lift="  deployed_flag_lift: Shieldd.GnarkFormal.Deployed.Templates.Semantics.${module}.flag_bool"
      rg -F "$flag_lift" "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
        || fail "Picus gadget report is missing exact shared-secret flag evidence: $flag_lift"
    fi
  done <<<"$shared_secret_digests"
  rg -F "  promotion_lift: Shieldd.GnarkFormal.SharedSecretBridge.shared_secrets_sound" \
    "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
    || fail "Picus gadget report must pin shared-secret protocol promotion"
  rg -F "  conditional_spec: exact rows prove SharedSecretsBody; Transfer composition must bind the shared flag and supply ACK, DK, and published EPK on-curve premises before SharedSecretsSpec promotion" \
    "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
    || fail "Picus gadget report must expose the shared-secret composition premises"
else
  reject_rg_matches "retired shared-secret composite in certification report" \
    -n -F "COMPOSITE shared-secrets" \
    "$CIRCUIT_FORMAL/circuit-constraint-report.txt" \
    || fail "Picus report retains shared-secret certification after its inventory family was removed"
fi
rg -F "COMPOSITE conservation-net-balance-commitment2 safe-by-composition" \
  "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
  || fail "Picus gadget report must distinguish Withdrawal conservation from the Transfer net-balance composite"
rg -F "  lean_lift: Shieldd.GnarkFormal.ConservationNetBalanceCommitment2Bridge.decaf377_conservationNetBalanceCommitment2_sound" \
  "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
  || fail "Picus gadget report must pin the exact Withdrawal conservation composite Lean lift"
reject_rg_matches "removed deployed DLEQ composite" \
  -n '^COMPOSITE .*dleq' \
  scripts/circuit-constraint-check.sh \
  "$CIRCUIT_FORMAL/circuit-constraint-report.txt" \
  || fail "Picus gadget evidence still counts standalone DLEQ research toward deployed-family certification"
reject_rg_matches "standalone DLEQ research probe in certification report" \
  -n '^GADGET gadget-dleq ' \
  "$CIRCUIT_FORMAL/circuit-constraint-report.txt" \
  || fail "Picus certification report still counts the standalone DLEQ research probe"
reject_rg_matches "obsolete deployed DLEQ Lean lift" \
  -n -F "Shieldd.GnarkFormal.DleqBridge.dleq_sound" \
  scripts/circuit-constraint-check.sh \
  "$CIRCUIT_FORMAL/circuit-constraint-report.txt" \
  || fail "Picus gadget evidence still claims the removed non-deployed DLEQ theorem"
reject_rg_matches "abstract ACK theorem mislabeled as deployed relation lift" \
  -n -F "lean_lift: Shieldd.GnarkFormal.AckBridge.ack_sound" \
  scripts/circuit-constraint-check.sh \
  "$CIRCUIT_FORMAL/circuit-constraint-report.txt" \
  || fail "Picus gadget evidence still labels the abstract ACK theorem as a deployed-row lift"
reject_rg_matches "abstract shared-secret theorem mislabeled as deployed relation lift" \
  -n -F "lean_lift: Shieldd.GnarkFormal.SharedSecretBridge.shared_secrets_sound" \
  scripts/circuit-constraint-check.sh \
  "$CIRCUIT_FORMAL/circuit-constraint-report.txt" \
  || fail "Picus gadget evidence still labels the abstract shared-secret theorem as a deployed-row lift"
bash scripts/check-certified-circuit-spec-independence.sh "$MODE"

# Handwritten deployed refinements must resolve action witness roles through
# generated named bindings rather than embedding compiler wire numbers.
handwritten_refinements=()
while IFS= read -r refinement; do
  [[ -z "$refinement" ]] || handwritten_refinements+=("$refinement")
done < <(
  find tools/gnark/lean/ShielddGnarkFormal/Deployed \
    -maxdepth 1 -type f -name '*Refinement.lean' | LC_ALL=C sort
)
[[ "${#handwritten_refinements[@]}" -gt 0 ]] \
  || fail "no handwritten deployed refinements found"
reject_rg_matches "raw witness wire in handwritten deployed refinement" \
  -n -P '(?<!localRho )\brho [0-9]+' \
  "${handwritten_refinements[@]}" \
  || fail "a handwritten deployed refinement embeds a raw witness wire or the search failed"
reject_rg_matches "retired NoteReshape family dependency" \
  -n -e 'NoteReshape2x1' -e 'NoteReshape4x1' \
  tools/gnark/lean/ShielddGnarkFormal/Deployed/NoteReshape1x8Refinement.lean \
  tools/gnark/lean/ShielddGnarkFormal/Deployed/NoteReshape1x8Spend.lean \
  tools/gnark/lean/ShielddGnarkFormal/Deployed/NoteReshape8x1Refinement.lean \
  tools/gnark/lean/gen/gen_note_reshape_1x8_commitments.py \
  tools/gnark/lean/gen/gen_note_reshape_1x8_statement_seating.py \
  tools/gnark/lean/gen/gen_note_reshape_balance_seating.py \
  tools/gnark/lean/gen/gen_note_reshape_canonical_address.py \
  tools/gnark/lean/gen/gen_note_reshape_dtk_seating.py \
  tools/gnark/lean/gen/gen_note_reshape_padded_commitments.py \
  tools/gnark/lean/gen/gen_note_reshape_padded_spends.py \
  || fail "retained NoteReshape proof depends on a retired family or the search failed"
retired_note_reshape_paths="$(
  find tools/gnark/lean/ShielddGnarkFormal -type f \
    \( -path '*NoteReshape2x1*' -o -path '*NoteReshape4x1*' \) -print
  find "$CIRCUIT_FORMAL" -maxdepth 1 -type f \
    \( -name 'note_reshape2x1-*' -o -name 'note_reshape4x1-*' \) -print
)"
[[ -z "$retired_note_reshape_paths" ]] || {
  printf '%s\n' "$retired_note_reshape_paths" >&2
  fail "retired NoteReshape deployed proof or evidence path remains"
}
while IFS=$'\t' read -r circuit family; do
  [[ -z "$circuit" || -z "$family" ]] && continue
  circuit_facts="tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/$family/CircuitFacts.lean"
  reject_rg_matches "$family typed facts expose raw deployed rows" \
    -n 'rows[[:space:]]*:[[:space:]]*relationAll rho' "$circuit_facts" \
    || fail "$family CircuitFacts retains a raw-row escape hatch or the search failed"
  rg -F "theorem ${circuit}_circuitFacts (rho : Nat → DeployedF) (h : relationAll rho) :" \
    "$circuit_facts" >/dev/null \
    || fail "$family typed-fact constructor is not rooted in the exact deployed relation"
  semantic_seams="tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/$family/SemanticSeams.lean"
  if [[ -f "$semantic_seams" ]]; then
    reject_rg_matches "$family semantic seam field alias collision" \
      -n '^abbrev DeployedF' "$semantic_seams" \
      || fail "$family SemanticSeams redeclares Capstone.DeployedF or the search failed"
  fi
done < <(
  jq -r '.backends[] | [.label, .contract_module] | @tsv' \
    tools/gnark/fv_certification_backends.json
)

# Lemma-citation existence: every `lean-dleq/Dleq/<File>.lean::<symbol>`
# reference in the soundness docs must resolve to a real definition in the Lean
# sources. Guards against a rename/delete silently passing CI with a dangling
# citation. Citations are relative (`lean-dleq/...`); resolve under the
# compliance formal dir.
while IFS= read -r citation; do
  [[ -z "$citation" ]] && continue
  rel_path="${citation%%::*}"
  symbol="${citation##*::}"
  lean_path="$COMPLIANCE_FORMAL/$rel_path"
  [[ -f "$lean_path" ]] || fail "lean citation $citation references missing file $lean_path"
  rg -n "\b(theorem|lemma|def|abbrev|structure)\s+$symbol\b" "$lean_path" >/dev/null \
    || fail "lean citation $citation: symbol $symbol is not defined in $lean_path"
done < <(rg -oN --no-filename "lean-dleq/Dleq/[A-Za-z]+\.lean::[A-Za-z_][A-Za-z0-9_]*" \
  "$COMPLIANCE_FORMAL/soundness-properties.md" \
  "$COMPLIANCE_FORMAL/assumption-ledger.md" \
  "$COMPLIANCE_FORMAL/compliance-soundness-findings.md" \
  "$COMPLIANCE_FORMAL/compliance-soundness-scope.txt" 2>/dev/null | sort -u)

echo "soundness invariants ok"
