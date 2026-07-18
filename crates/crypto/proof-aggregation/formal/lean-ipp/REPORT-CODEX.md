# S3-21 part 5 report

STATUS: DONE

## Public Fq12 byte theorems

- `decode_fq12_to_bytes`: for `Canonical12 a`, successful executed
  `fq12_to_bytes` equals `CanonicalWire.encodeFq12Canonical` in the exact
  c0/c1, c0/c1/c2, c0/c1 tower order; `Fq12ValueMatchesModel` attaches the
  encoded canonical naturals lane-by-lane to `decodeFq12 a`.
- `decode_fq12_from_bytes_some`: executed `.ok (some a)` implies
  `Canonical12 a`, `decodeFq12Canonical (asFq12Wire bytes) =
  some (canonicalFq12Value a)`, and the decoded canonical value matches
  `decodeFq12 a` in all 12 lanes.
- `decode_fq12_from_bytes_none`: executed `.ok none` implies
  `decodeFq12Canonical (asFq12Wire bytes) = none`.
- `decode_fq12_from_bytes_exact`: for any successful executed result,
  model decoding equals `result.map canonicalFq12Value`; this is the exact
  acceptance/rejection classification corollary.
- `canonicalFq12Value_model`: the 12 canonical natural representatives used
  by the wire model equal the `.val` lanes of `decodeFq12`.

## CanonicalGtDecode attachment

Added only model-facing encoding/peeling API to `Ipp/CanonicalGtDecode.lean`:

- `encodeFqCanonical`, `encodeFq2Canonical`, `encodeFq6Canonical`, and
  `encodeFq12Canonical` encode fixed-width little-endian canonical values in
  the existing `Fq12Wire` shape.
- `encodeFqCanonical_value` proves the base encoder's decoded integer.
- Small `decodeFq{2,6,12}Canonical_*` component lemmas expose the existing
  model decoder's success and short-circuit rejection branches.

`asFq12Wire` is the extracted structured-byte view of the same model shape;
there is no re-derived flat 576-byte ordering. `Fq12ValueMatchesModel` is the
bridge from the model's canonical-natural value type to the concrete
`Bls12377.Fq12Model` returned by `decodeFq12`.

## Fq-level companions

Added the smallest missing base-field serialization facts in
`ArkworksFqSqrtBytes.lean`:

- `limbs_to_bytes_value_spec`: six serialized words preserve `limbsToNat`.
- `to_bytes_value_spec`: canonical `to_bytes` emits `(decode a).val`.
- `from_bytes_some_canonical`: successful decoding returns a canonical
  Montgomery representative.
- `from_bytes_none_rejects_model`: executed `none` rejects under
  `decodeFqCanonical`.

The serializer proof uses one 8-byte word lemma composed over six limbs. The
Fq12 proofs then bind-peel through Fq2, Fq6, and Fq12 helpers, applying the Fq
lane contract exactly 12 times. Generated Lean and the Rust spike were not
modified.

## Gates

- Pinned lake, `LEAN_NUM_THREADS=1`; a process check preceded every lake call.
- `lake build Ipp.Extracted.ArkworksFqSqrtBytes` — PASS, 2,990 jobs.
- Final `lake build Ipp.Extracted.ArkworksFq12` — PASS, 3,003 jobs.
- One final full `lake build Ipp` — PASS, 3,426 jobs.
- Changed-file scan for `sorry`, `admit`, or `axiom` — PASS, no matches.
- `git diff --check` — PASS.
- Prover/release-gated tests — NOT RUN; this part changes Lean model/refinement
  proofs, and all requested Lean gates passed.

## Axiom audit

`#print axioms` results for the new public Fq12 theorems:

```text
canonicalFq12Value_model:
  [propext, Quot.sound]
decode_fq12_to_bytes:
  [propext, Classical.choice, Quot.sound]
decode_fq12_from_bytes_some:
  [propext, Classical.choice, Quot.sound]
decode_fq12_from_bytes_none:
  [propext, Classical.choice, Quot.sound]
decode_fq12_from_bytes_exact:
  [propext, Classical.choice, Quot.sound]
```

The four new public Fq companions and `encodeFqCanonical_value` also audit to
`[propext, Classical.choice, Quot.sound]`. The model component-peeling lemmas
do not depend on any axioms. No new axiom was added.

No commit was made. Pre-existing untracked `.claude/` and `hooks/` paths were
not touched.
