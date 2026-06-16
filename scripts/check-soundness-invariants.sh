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
      case "$status" in
        assumed) return 0 ;;
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
rg -F "Ecne" docs/soundness/constraint-system-assurance.md >/dev/null \
  || fail "constraint-system assurance strategy must mention Ecne"
rg -F "ACL2/Axe" docs/soundness/constraint-system-assurance.md >/dev/null \
  || fail "constraint-system assurance strategy must mention ACL2/Axe"

echo "soundness invariants ok"
