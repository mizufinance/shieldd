# GAP-07 report

STATUS DONE

## Deliverable

New hand-authored module: `Ipp/Bls12377GtMembership.lean`.

The concrete checked predicate is
`Ipp.Bls12377.arkworksPairingOutputCheckedMembership`:

```lean
fq12Pow x scalarModulus = fq12One
```

It is exposed to GAP-04's existing parameterized decoder by the concrete
boolean `pairingOutputValueMember` and the specialization
`decodePairingOutputGtChecked`.

## GAP-04 predicate finding and consumers

GAP-04 did not contain a concrete GT predicate. Its only checked surface was
`Ipp.CanonicalWire.decodePairingOutputChecked
  (member : PairingOutputValue → Bool)`, and its theorem
`decodePairingOutputChecked_eq_some_iff` was correspondingly parameterized.
`canonicalDecoderFamily` uses `decodePairingOutputCanonical`, not the checked
decoder. A repository-wide search found no pre-existing S1/S2 caller of
`decodePairingOutputChecked` and no other concrete `PairingOutput` membership
predicate.

GAP-07 therefore supplies the missing concrete boolean once and specializes
the existing GAP-04 decoder; it does not define a parallel wire decoder. The
current concrete consumer is `decodePairingOutputGtChecked`. The S3-21 bridge
consumer is `Fq12ValueMatchesModel`; theorem
`pairingOutputModelOfValue_eq_of_matches` identifies its model with GAP-07's
wire interpretation. GAP-10 can use this surface for the later executed
`Valid::check` refinement, and S3-41 can consume the GT membership/cardinality
theorems.

No stricter/looser predicate discrepancy was found: there was no prior
concrete predicate to compare. The supplied predicate models the pinned
arkworks check `pow(r) == 1`; nonzeroness is derived from that equality rather
than added as an independent executable condition.

## Main theorems

- `pairingOutputModelOfValue_eq_of_matches`: an S3-21
  `Fq12ValueMatchesModel x m` witness implies
  `pairingOutputModelOfValue x = m`.
- `arkworksPairingOutputCheckedMembership_iff_pow`: the executable-model
  check holds iff `fq12Coefficients x ^ r = 1` in canonical Fq12.
- `arkworksPairingOutputCheckedMembership_iff_nonzero_pow`: the check holds
  iff the canonical value is nonzero and its `r`-th power is one.
- `arkworksPairingOutputCheckedMembership_iff_exists_mem_gtGroup`: the check
  holds iff there is a canonical Fq12 unit with that value which belongs to
  `GtGroup`.
- `pairingOutputValueMember_eq_true_iff`: the concrete GAP-04 boolean is
  propositionally exact.
- `decodePairingOutputGtChecked_eq_some_iff`: checked wire decoding succeeds
  exactly when canonical decoding succeeds and the decoded canonical value is
  nonzero `r`-torsion.
- `checkedPairingOutputEquivGt`: accepted executable Fq12 models are
  equivalent to `GtGroup`.
- `arkworksPairingOutputCheckedMembership_card`: the accepted model subtype
  has cardinality `scalarModulus` by `checkedPairingOutputEquivGt` and
  `gtGroup_card`.
- `pairingOutput_checked_factorization_and_cardinality`: packages the landed
  concrete factorization `q^12 - 1 = r * gtCofactor` with accepted-set
  cardinality `r`.
- `arkworksPairingOutputCheckedMembership_identity`: multiplicative Fq12 one
  is accepted.
- `arkworksPairingOutputCheckedMembership_rejects_field_zero`: additive field
  zero is rejected.
- `arkPairingOutput_zero_value_accepted`: arkworks additive
  `PairingOutput` zero maps to accepted multiplicative one.
- `field_zero_rejected_and_ne_arkPairingOutput_zero`: field zero is rejected
  and differs from the arkworks additive identity's underlying GT value,
  citing `fq12_zero_ne_gt_identity`.

## Verification

- Machine-wide Lean/lake process check was clear before every lake invocation.
- Focused pinned build:
  `lake build Ipp.Bls12377GtMembership` passed, 3005 jobs.
- Full pinned build: `lake build Ipp` passed, 3428 jobs.
- Every lake invocation used `LEAN_NUM_THREADS=1` and
  `C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe`.
- `#print axioms` was included for every main theorem and equivalence. Output
  was limited to `propext`, `Classical.choice`, and `Quot.sound`.

Exact new-module axiom output (each line reported the same allowed set):

```text
pairingOutputModelOfValue_eq_of_matches: [propext, Classical.choice, Quot.sound]
arkworksPairingOutputCheckedMembership_iff_pow: [propext, Classical.choice, Quot.sound]
arkworksPairingOutputCheckedMembership_iff_nonzero_pow: [propext, Classical.choice, Quot.sound]
arkworksPairingOutputCheckedMembership_iff_exists_mem_gtGroup: [propext, Classical.choice, Quot.sound]
checkedPairingOutputEquivGt: [propext, Classical.choice, Quot.sound]
arkworksPairingOutputCheckedMembership_card: [propext, Classical.choice, Quot.sound]
pairingOutput_checked_factorization_and_cardinality: [propext, Classical.choice, Quot.sound]
pairingOutputValueMember_eq_true_iff: [propext, Classical.choice, Quot.sound]
decodePairingOutputGtChecked_eq_some_iff: [propext, Classical.choice, Quot.sound]
arkworksPairingOutputCheckedMembership_identity: [propext, Classical.choice, Quot.sound]
arkworksPairingOutputCheckedMembership_rejects_field_zero: [propext, Classical.choice, Quot.sound]
arkPairingOutput_zero_value_accepted: [propext, Classical.choice, Quot.sound]
field_zero_rejected_and_ne_arkPairingOutput_zero: [propext, Classical.choice, Quot.sound]
```

- Source audit found no `sorry`, `admit`, or new `axiom`; the new module also
  has no trailing whitespace.
- No q^12-scale kernel exponentiation or new residue certificate was used.
  Power transport is symbolic through `fq12Coefficients_pow`, `mem_gtGroup`,
  and the landed factorization/cardinality theorems.
- Prover, release, and release-gated tests were not run; this change is confined
  to the hand-authored Lean library and its report.
