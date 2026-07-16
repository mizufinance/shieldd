#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "soundness invariant failed: $*" >&2
  exit 1
}

command -v rg >/dev/null 2>&1 || fail "rg is required"

# NoteReshape is the sole production vocabulary for this circuit family. Keep
# the pcli negative assertion, Lean contributor instructions, and pinned
# statement-hash domain labels out of this source-name lint. The four protocol
# labels are checked separately below so they cannot become general aliases.
if rg -n 'Consolidate|consolidate(2x1|4x1|8x1)|Split1x8|split1x8' . \
    --glob '!target/**' \
    --glob '!tools/gnark/lean/.lake/**' \
    --glob '!tools/gnark/lean/AGENTS.md' \
    --glob '!crates/bin/pcli/tests/cli_surface.rs' \
    --glob '!tools/gnark/lean/gen/gen_note_reshape_2x1_statement_semantics.py' \
    --glob '!tools/gnark/lean/gen/gen_note_reshape_statement_hash_semantics.py' \
    --glob '!scripts/check-soundness-invariants.sh' \
    --glob '!docs/protocol/theme/js/mermaid.min.js'; then
  fail "deleted Split/Consolidate production vocabulary remains"
fi

protocol_label_files=(
  tools/gnark/lean/gen/gen_note_reshape_2x1_statement_semantics.py
  tools/gnark/lean/gen/gen_note_reshape_statement_hash_semantics.py
)
protocol_label_hits="$({
  rg -n 'Consolidate|consolidate(2x1|4x1|8x1)|Split1x8|split1x8' \
    "${protocol_label_files[@]}" || true
})"
unexpected_protocol_label_hits="$(printf '%s\n' "$protocol_label_hits" | rg -v \
  '^[^:]+:[0-9]+:[[:space:]]*"(consolidate2x1|consolidate4x1|consolidate8x1|split1x8)",[[:space:]]*(#.*)?$' || true)"
[[ -z "$unexpected_protocol_label_hits" ]] || {
  printf '%s\n' "$unexpected_protocol_label_hits"
  fail "legacy operation spelling escaped the statement-hash protocol-label allowlist"
}
for label in consolidate2x1 consolidate4x1 consolidate8x1 split1x8; do
  count="$(printf '%s\n' "$protocol_label_hits" | rg -c \
    "[[:space:]]*\"$label\",[[:space:]]*(#.*)?$" || true)"
  [[ "$count" == "1" ]] \
    || fail "statement-hash protocol label $label must appear exactly once, found $count"
done

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
        open|composed|refined|assumed|proved|proved-symbolic|proved-computational) return 0 ;;
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
  local id="$1" artifact="$2"
  [[ -f "$artifact" ]] || fail "row $id cites missing proof artifact $artifact"
  [[ -f "$artifact.sha256" ]] || fail "row $id artifact $artifact lacks .sha256 stamp"
  local want have
  want="$(cat "$artifact.sha256")"
  have="$(shasum -a 256 "$artifact" | awk '{print $1}')"
  [[ "$want" == "$have" ]] \
    || fail "row $id artifact $artifact stamp mismatch (want $want got $have)"
}

require_symbol() {
  local label="$1"
  local symbol="$2"
  shift 2
  [[ -n "$symbol" && "$symbol" != "n/a" && "$symbol" != '`n/a`' ]] || return 0
  symbol="$(printf '%s\n' "$symbol" | strip_ticks)"
  rg -F "$symbol" "$@" >/dev/null || fail "$label symbol $symbol is missing"
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
  "$CIRCUIT_FORMAL/circuit-whole-picus-report.txt"
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
# Whole-circuit evidence is checked directly. Narrative mirrors are deliberately
# not machine inputs: they used to duplicate ledger rows and routinely went stale.
for artifact in \
  "$CIRCUIT_FORMAL/note_reshape2x1-whole-circuit-lean-artifact.txt" \
  "$CIRCUIT_FORMAL/note_reshape4x1-whole-circuit-lean-artifact.txt" \
  "$CIRCUIT_FORMAL/note_reshape8x1-whole-circuit-lean-artifact.txt" \
  "$CIRCUIT_FORMAL/note_reshape1x8-whole-circuit-lean-artifact.txt" \
  "$CIRCUIT_FORMAL/transfer-whole-circuit-lean-artifact.txt"; do
  check_stamped_artifact "WHOLE-CIRCUIT-FV" "$artifact"
  rg -F "whole-circuit" "$artifact" >/dev/null \
    || fail "whole-circuit artifact $artifact does not state its scope"
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
C2X1_ARTIFACT="$CIRCUIT_FORMAL/note_reshape2x1-whole-circuit-lean-artifact.txt"
C4X1_ARTIFACT="$CIRCUIT_FORMAL/note_reshape4x1-whole-circuit-lean-artifact.txt"
C8X1_ARTIFACT="$CIRCUIT_FORMAL/note_reshape8x1-whole-circuit-lean-artifact.txt"
S1X8_ARTIFACT="$CIRCUIT_FORMAL/note_reshape1x8-whole-circuit-lean-artifact.txt"
TRANSFER_ARTIFACT="$CIRCUIT_FORMAL/transfer-whole-circuit-lean-artifact.txt"
GNARK_LEAN_SRC="tools/gnark/lean/ShielddGnarkFormal"
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
  for circuit in note_reshape2x1 note_reshape4x1 note_reshape8x1 note_reshape1x8 transfer; do
    if [[ "$status" != "discharged" ]]; then
      [[ "$evidence" == *"Discharged-Circuits:"*"$circuit"* ]] \
        || fail "decaf row $id is $status for $circuit without a Discharged-Circuits: $circuit marker"
    fi
    case "$circuit" in
      note_reshape2x1) check_stamped_artifact "$id" "$C2X1_ARTIFACT" ;;
      note_reshape4x1) check_stamped_artifact "$id" "$C4X1_ARTIFACT" ;;
      note_reshape8x1) check_stamped_artifact "$id" "$C8X1_ARTIFACT" ;;
      note_reshape1x8) check_stamped_artifact "$id" "$S1X8_ARTIFACT" ;;
      transfer) check_stamped_artifact "$id" "$TRANSFER_ARTIFACT" ;;
    esac
  done
  # The two-torsion row is fully mechanized for note_reshape2x1: it must be discharged.
  if [[ "$id" == "ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE" ]]; then
    two_torsion_seen=1
    [[ "$status" == "discharged" ]] \
      || fail "ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE must be discharged (mechanized via compress_respects_decafEquivalent), got $status"
  fi
done < <(table_rows "$assumption_file")
[[ "${two_torsion_seen:-0}" == "1" ]] \
  || fail "assumption ledger is missing ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE"

transfer_bridge_theorems() {
  case "$1" in
    ZK-ASSUME-DLEQ-RELATION) printf '%s\n' "dleq_sound" ;;
    ZK-ASSUME-ACK-DERIVATION) printf '%s\n' "ack_sound" ;;
    ZK-ASSUME-COMPLIANCE-CIPHERTEXT)
      printf '%s\n' "shared_secrets_sound" "transfer_salt_sound" "detection_sound" "amount_sound" "address_sound" ;;
    ZK-ASSUME-POSEIDON5) printf '%s\n' "Poseidon5Bridge.circuit_sound" ;;
    ZK-ASSUME-DUMMY-MUX) printf '%s\n' "dummy_mux_sound" "assert_equivalent_if_sound" ;;
    ZK-ASSUME-THRESHOLD-REGULATED) printf '%s\n' "threshold_flag_sound" "select_point_sound" ;;
    *) return 1 ;;
  esac
}

while IFS= read -r row; do
  [[ -z "$row" ]] && continue
  id="$(markdown_field "$row" 2 | strip_ticks)"
  theorem_list="$(transfer_bridge_theorems "$id" || true)"
  [[ -n "$theorem_list" ]] || continue
  status="$(markdown_field "$row" "$assumption_status_index" | strip_ticks)"
  evidence="$(markdown_field "$row" 6)"
  [[ "$status" == "discharged" || "$evidence" == *"Discharged-Circuits:"*"transfer"* ]] \
    || fail "transfer row $id is $status without a Discharged-Circuits: transfer marker"
  check_stamped_artifact "$id" "$TRANSFER_ARTIFACT"
  while IFS= read -r theorem; do
    [[ -z "$theorem" ]] && continue
    rg -F "$theorem" "$GNARK_LEAN_SRC" >/dev/null \
      || fail "transfer bridge theorem $theorem for $id is absent from $GNARK_LEAN_SRC"
  done < <(printf '%s\n' "$theorem_list")
done < <(table_rows "$assumption_file")

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
  ack_sound \
  shared_secrets_sound \
  transfer_salt_sound \
  detection_sound \
  amount_sound \
  address_sound \
  dleq_sound \
  threshold_flag_sound \
  select_point_sound \
  dummy_mux_sound \
  assert_equivalent_if_sound; do
  rg -F "$bridge_theorem" "$GNARK_LEAN_SRC" >/dev/null \
    || fail "safe-by-composition bridge $bridge_theorem is absent from $GNARK_LEAN_SRC"
done

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
if rg -n '^GADGET .* undischarged$' "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null; then
  fail "Picus gadget report contains undischarged gadget leaves"
fi
for gadget in gadget-poseidon-hash5 gadget-ack-two-step gadget-dleq; do
  rg -F "GADGET $gadget safe" "$CIRCUIT_FORMAL/circuit-constraint-report.txt" >/dev/null \
    || fail "Picus gadget report must mark transfer probe $gadget safe"
done
check_stamped_artifact "PICUS-WHOLE-REPORT" "$CIRCUIT_FORMAL/circuit-whole-picus-report.txt"

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
