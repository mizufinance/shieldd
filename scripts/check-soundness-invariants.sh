#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

fail() {
  echo "soundness invariant failed: $*" >&2
  exit 1
}

command -v rg >/dev/null 2>&1 || fail "rg is required"

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
# assumptions. Findings carry remediation statuses. Assumptions are always
# `assumed`.
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
# When fixed_kind is empty, the kind is read from each row's Kind column
# (the handoff ledger); otherwise every row is validated against fixed_kind.
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

# A proved* row must reference a checked-in, stamped proof artifact whose
# sidecar hash matches; proved-symbolic rows must additionally cite at least
# one assumption-ledger ID (the idealizations the lemma rests on).
check_proof_artifact() {
  local id="$1" status="$2" evidence="$3" assumption_ids="$4"
  local matched=""
  local artifact
  for artifact in \
    "$COMPLIANCE_FORMAL/compliance-symbolic-artifact.txt" \
    "$COMPLIANCE_FORMAL/compliance-active-symbolic-artifact.txt" \
    "$COMPLIANCE_FORMAL/alloy-nullifier-imt-artifact.txt" \
    "$COMPLIANCE_FORMAL/alloy-value-conservation-artifact.txt" \
    "$COMPLIANCE_FORMAL/alloy-compliance-tiers-artifact.txt" \
    "$COMPLIANCE_FORMAL/alloy-orbis-authorization-artifact.txt" \
    "$COMPLIANCE_FORMAL/lean-dleq-artifact.txt" \
    "$CIRCUIT_FORMAL/statement-field-formal-artifact.txt"; do
    if [[ "$evidence" == *"$artifact"* ]]; then
      matched="$artifact"
      [[ -f "$artifact" ]] || fail "row $id cites missing proof artifact $artifact"
      [[ -f "$artifact.sha256" ]] || fail "row $id artifact $artifact lacks .sha256 stamp"
      local want have
      want="$(cat "$artifact.sha256")"
      have="$(shasum -a 256 "$artifact" | awk '{print $1}')"
      [[ "$want" == "$have" ]] \
        || fail "row $id artifact $artifact stamp mismatch (want $want got $have)"
    fi
  done
  [[ -n "$matched" ]] \
    || fail "row $id has status $status but cites no stamped proof artifact in Evidence"
  if [[ "$status" == "proved-symbolic" || "$status" == "proved-computational" ]]; then
    local cited=""
    while IFS= read -r aid; do
      [[ -z "$aid" ]] && continue
      [[ "$evidence" == *"$aid"* ]] && cited="$aid"
    done < <(printf '%s\n' "$assumption_ids")
    [[ -n "$cited" ]] \
      || fail "$status row $id must cite at least one assumption-ledger ID in Evidence"
  fi
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

check_whole_circuit_artifact() {
  local id="$1" evidence="$2"
  local matched="" artifact
  for artifact in \
    "$CIRCUIT_FORMAL"/acl2/*whole-circuit*-artifact.txt \
    "$CIRCUIT_FORMAL"/*whole-circuit*-artifact.txt; do
    [[ -e "$artifact" ]] || continue
    if [[ "$evidence" == *"$artifact"* ]]; then
      matched="$artifact"
      check_stamped_artifact "$id" "$artifact"
      rg -F "whole-circuit" "$artifact" >/dev/null \
        || fail "row $id whole-circuit artifact $artifact does not state whole-circuit scope"
    fi
  done
  [[ -n "$matched" ]] \
    || fail "proved zk-circuit property $id must cite a stamped whole-circuit artifact in Evidence"
}

handoff_row_for_id() {
  local want="$1" row id
  while IFS= read -r row; do
    [[ -z "$row" ]] && continue
    id="$(markdown_field "$row" 2 | strip_ticks)"
    if [[ "$id" == "$want" ]]; then
      printf '%s\n' "$row"
      return 0
    fi
  done < <(table_rows "$HANDOFF")
  return 1
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
HANDOFF=docs/soundness/soundness-handoff.md

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
  "$HANDOFF"
  docs/soundness/index.md
  docs/soundness/constraint-system-assurance.md
  docs/soundness/formal-verification-plan.md
)

for file in "${required_files[@]}"; do
  [[ -f "$file" ]] || fail "required soundness file $file is missing"
done

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
check_duplicates "$HANDOFF" "$(row_ids "$HANDOFF")"
check_status_rows "$HANDOFF"
for file in "${map_files[@]}"; do
  check_duplicates "$file" "$(row_ids "$file")"
done

property_ids="$(for file in "${property_files[@]}"; do row_ids "$file"; done)"
finding_ids="$(for file in "${finding_files[@]}"; do row_ids "$file"; done)"
assumption_ids="$(row_ids "$assumption_file")"
handoff_ids="$(row_ids "$HANDOFF")"

# Enforce stamped proof artifacts for every proved* row in the handoff ledger.
handoff_status_index="$(status_column_index "$HANDOFF")"
handoff_evidence_index="$(column_index "$HANDOFF" "Evidence")"
handoff_kind_index="$(column_index "$HANDOFF" "Kind")"
handoff_source_index="$(column_index "$HANDOFF" "Source")"
while IFS= read -r row; do
  [[ -z "$row" ]] && continue
  id="$(markdown_field "$row" 2 | strip_ticks)"
  status="$(markdown_field "$row" "$handoff_status_index" | strip_ticks)"
  case "$status" in
    proved|proved-symbolic|proved-computational)
      evidence="$(markdown_field "$row" "$handoff_evidence_index")"
      kind="$(markdown_field "$row" "$handoff_kind_index" | strip_ticks)"
      source="$(markdown_field "$row" "$handoff_source_index" | strip_ticks)"
      if [[ "$kind" == "property" && "$source" == "zk-circuits" && "$status" == "proved" ]]; then
        check_whole_circuit_artifact "$id" "$evidence"
      else
        check_proof_artifact "$id" "$status" "$evidence" "$assumption_ids"
      fi
      ;;
  esac
done < <(table_rows "$HANDOFF")

circuit_status_index="$(status_column_index "$CIRCUIT_FORMAL/circuit-soundness-properties.md")"
while IFS= read -r row; do
  [[ -z "$row" ]] && continue
  id="$(markdown_field "$row" 2 | strip_ticks)"
  status="$(markdown_field "$row" "$circuit_status_index" | strip_ticks)"
  if [[ "$status" == "proved" ]]; then
    handoff_row="$(handoff_row_for_id "$id")" \
      || fail "proved circuit property $id is missing from $HANDOFF"
    handoff_status="$(markdown_field "$handoff_row" "$handoff_status_index" | strip_ticks)"
    [[ "$handoff_status" == "proved" ]] \
      || fail "proved circuit property $id must also be proved in $HANDOFF"
    evidence="$(markdown_field "$handoff_row" "$handoff_evidence_index")"
    check_whole_circuit_artifact "$id" "$evidence"
  fi
done < <(table_rows "$CIRCUIT_FORMAL/circuit-soundness-properties.md")

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

required_handoff_ids="$(printf '%s\n%s\n%s\n' "$property_ids" "$finding_ids" "$assumption_ids" | sed '/^$/d' | sort)"

while IFS= read -r id; do
  [[ -z "$id" ]] && continue
  printf '%s\n' "$handoff_ids" | grep -Fx "$id" >/dev/null \
    || fail "soundness-handoff.md is missing required row $id"
done < <(printf '%s\n' "$required_handoff_ids")

while IFS= read -r id; do
  [[ -z "$id" ]] && continue
  printf '%s\n' "$required_handoff_ids" | grep -Fx "$id" >/dev/null \
    || fail "soundness-handoff.md contains untracked row $id"
done < <(printf '%s\n' "$handoff_ids")

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

# Per-circuit decaf discharge: the consolidate2x1 Lean whole-circuit artifact is
# axiom-clean, so for THIS circuit every decaf bridge row must be either
# `discharged` or carry a `Discharged-Circuits: consolidate2x1` marker backed by
# (a) the stamped whole-circuit artifact and (b) a bridge theorem name that
# actually exists in the extracted Lean sources. This makes the Focus-2 exit
# criterion ("no decaf row assumed for consolidate2x1") mechanically checkable
# while the rows stay open for circuit families not yet composed in Lean.
C2X1_ARTIFACT="$CIRCUIT_FORMAL/consolidate2x1-whole-circuit-lean-artifact.txt"
GNARK_LEAN_SRC="tools/gnark/lean/ShielddGnarkFormal"
# bash 3.2 (macOS) has no associative arrays; map id->bridge theorem by case.
decaf_bridge_theorem() {
  case "$1" in
    ZK-ASSUME-DECAF377-COMPRESS-TO-FIELD) echo "decaf377_compressToField_sound" ;;
    ZK-ASSUME-DECAF377-RVK) echo "decaf377_randomizedVerificationKey_sound" ;;
    ZK-ASSUME-DECAF377-DTK) echo "decaf377_diversifiedTransmissionKey_sound" ;;
    ZK-ASSUME-DECAF377-NET-BALANCE) echo "decaf377_netBalanceCommitment_sound" ;;
    ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE) echo "Relation_neg_invariant" ;;
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
  if [[ "$status" != "discharged" ]]; then
    [[ "$evidence" == *"Discharged-Circuits: consolidate2x1"* ]] \
      || fail "decaf row $id is $status for consolidate2x1 without a Discharged-Circuits: consolidate2x1 marker"
  fi
  # Either way it must be backed by the stamped, axiom-clean whole-circuit artifact.
  check_stamped_artifact "$id" "$C2X1_ARTIFACT"
  # The two-torsion row is fully mechanized for consolidate2x1: it must be discharged.
  if [[ "$id" == "ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE" ]]; then
    two_torsion_seen=1
    [[ "$status" == "discharged" ]] \
      || fail "ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE must be discharged (mechanized via Relation_neg_invariant), got $status"
  fi
done < <(table_rows "$assumption_file")
[[ "${two_torsion_seen:-0}" == "1" ]] \
  || fail "assumption ledger is missing ZK-ASSUME-DECAF377-TWO-TORSION-INVARIANCE"

# safe-by-composition -> Lean binding: every composition-lift bridge theorem the
# constraint-system-assurance doc cites for consolidate2x1 must (a) be named in
# the doc and (b) actually exist in the extracted Lean sources, so the C2
# "by-composition" verdict is not an unbacked word for this circuit.
ASSURANCE_DOC="docs/soundness/constraint-system-assurance.md"
for bridge_theorem in \
  scalarMulLE128_sound \
  scalarMulLE251_sound \
  decaf377_compressToField_sound \
  decaf377_encodeToCurve_sound \
  decaf377_randomizedVerificationKey_sound \
  decaf377_diversifiedTransmissionKey_sound \
  decaf377_netBalanceCommitment_sound; do
  rg -F "$bridge_theorem" "$ASSURANCE_DOC" >/dev/null \
    || fail "$ASSURANCE_DOC must cite safe-by-composition Lean bridge $bridge_theorem"
  rg -F "$bridge_theorem" "$GNARK_LEAN_SRC" >/dev/null \
    || fail "safe-by-composition bridge $bridge_theorem cited in $ASSURANCE_DOC is absent from $GNARK_LEAN_SRC"
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

rg -F "Picus" docs/soundness/constraint-system-assurance.md >/dev/null \
  || fail "constraint-system assurance strategy must mention Picus"
check_stamped_artifact "PICUS-GADGET-REPORT" "$CIRCUIT_FORMAL/circuit-constraint-report.txt"
check_stamped_artifact "PICUS-WHOLE-REPORT" "$CIRCUIT_FORMAL/circuit-whole-picus-report.txt"
rg -F "Ecne" docs/soundness/constraint-system-assurance.md >/dev/null \
  || fail "constraint-system assurance strategy must mention Ecne"
rg -F "ACL2/Axe" docs/soundness/constraint-system-assurance.md >/dev/null \
  || fail "constraint-system assurance strategy must mention ACL2/Axe"

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
  "$COMPLIANCE_FORMAL/compliance-soundness-scope.txt" \
  "$HANDOFF" 2>/dev/null | sort -u)

echo "soundness invariants ok"
