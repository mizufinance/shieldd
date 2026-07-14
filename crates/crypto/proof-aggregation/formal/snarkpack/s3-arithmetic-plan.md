# S3 — arithmetic implementation correctness

Status: foundations started. `Ipp/Bls12377.lean` pins the BLS12-377 moduli,
optimal-ate loop parameter, scalar bit/radix bounds, curve representations,
Mathlib Jacobian point groups conditional on named arithmetic certificates,
a functional affine representation, exact field bit bounds and ate-loop
density, and an executable Miller-loop/final-exponent split. Arkworks conformance and
the mathematical bilinearity theorem remain open.
S3 proves that deployed arithmetic computes the specified mathematics. It does
**not** prove BLS12-377 security, discrete-log hardness, q-SDH, SXDH/co-CDH,
subgroup parameter provenance, or the security of Groth16/SnarkPack.

## Exact boundary

The production boundary is arkworks `0.5.0` on BLS12-377:

- `ark_ff::{Fp, PrimeField, Field}` operations used by challenge decoding,
  transcript polynomials, scalar powers, inverses, and extension fields;
- `ark_ec::short_weierstrass::{Affine, Projective}` addition, doubling,
  negation, scalar multiplication, normalization, subgroup checks, and
  `VariableBaseMSM`/`msm` paths for G1 and G2;
- `ark_ec::pairing::Pairing::{multi_miller_loop, final_exponentiation,
  multi_pairing}` and BLS12-377 prepared-point/line-evaluation code;
- canonical serialization is a separate ledger row. It is used by S2 challenge
  messages but is not silently bundled into arithmetic conformance.

The mathematical boundary is `ZMod p` for every prime field, the appropriate
finite extension tower for Fq2/Fq6/Fq12, Mathlib nonsingular Weierstrass points
for G1/G2, and a specified optimal-ate Miller loop plus final exponentiation.
Every executable theorem is total only on the same checked input domain as
Rust; failed inversion, malformed points, and non-subgroup inputs remain
explicit result cases.

The current S3-F00 certificate boundary is explicit: primality of the 377-bit
base modulus, primality of the 253-bit scalar modulus, and nonsquareness of
`-5` in the base field are fields of the named proposition
`Ipp.Bls12377.ArithmeticFacts`. No `sorry`, axiom declaration, or
`native_decide` substitutes for those certificates. S3-C01 exposes exact G1
and G2 Weierstrass/Jacobian representations and proves Mathlib group-instance
availability from those arithmetic facts. S3-C02 has a typed functional affine
representation relation with infinity and finite witnesses. S3-P00 currently pins
the positive loop parameter, its bit schedule and six non-leading set bits, plus the Miller/final-exp
split; line functions, Frobenius constants, and final-exponentiation chain
remain the next executable-spec work. Bilinearity/non-degeneracy stays a cited
mathematics row, not a theorem about the pseudocode.

## Field operations: backend swap versus post-hoc proof

### Option A — fiat-crypto-verified backend swap

Generate or instantiate a fiat-crypto Montgomery backend for the BLS12-377
base-field and scalar-field moduli. Prove the thin Rust adapter maps its limb
representation to `ZMod p` and preserves `0`, `1`, addition, subtraction,
negation, multiplication, square, and Montgomery encode/decode. Implement
inversion/square-root either with a verified fixed addition chain over proved
field multiplication or leave those functions on a separately proved path.

Target shapes:

```text
decode (add a b) = decode a + decode b : ZMod p
decode (sub a b) = decode a - decode b : ZMod p
decode (mul a b) = decode a * decode b : ZMod p
decode (square a) = decode a ^ 2 : ZMod p
decode (inv a) = (decode a)⁻¹ : ZMod p
decode (from_bytes bytes) = n  ↔ canonicalLittleEndian bytes n ∧ n < p
```

This gives the strongest proof reuse and avoids verifying arkworks' generic
limb machinery, but it is an implementation change and may regress the prover.
It also requires a compatibility layer for arkworks extension fields and curve
code; a field proof that is bypassed by conversions does not count.

### Option B — hax post-hoc verification of arkworks

Extract the monomorphized `ark_ff 0.5.0` BLS12-377 field call graph. Model the
four-limb Montgomery representation with a range invariant and prove each
executed carry/reduction routine refines `ZMod p`. This preserves performance
and API shape but inherits generic traits, macros, `unsafe`/assembly boundaries,
machine-word carry semantics, and a much larger extraction closure. Any opaque
big-integer multiplication or reduction result would defeat the objective.

### Decision and measurement gate

Decision: **prefer Option A if it is within the end-to-end prover noise floor;
otherwise use Option B only after a successful multiplication/reduction
extraction spike.** Do not choose from microbenchmarks.

On a Rust-capable benchmark host, compare current arkworks, the fiat-backed
adapter, and any post-hoc-instrumented build in the same release configuration.
Follow `crates/crypto/proof-aggregation/optimization-playbook.md`:

- use the deterministic SnarkPack corpus and benchmark both `aggregate_family`
  and `verify_family_aggregate` at `n ∈ {1,2,4,8,64}`; add 1024/2048 for prover
  scaling when the corpus is available;
- record median end-to-end build/prover and verify times, not only field-op
  microbenchmarks; record the existing pairing, GIPA, KZG, and total profile
  fields so regressions are attributable;
- test throughput, single-operation latency, and hybrid core allocation;
- use compile-time A/B seams in the same release build, warm the deterministic
  corpus first, repeat enough runs to establish a noise band, and report CPU,
  compiler flags, thread count, variance, and medians;
- require unchanged proof bytes, ShielddByte traces, aggregate acceptance,
  subgroup rejection, and cross-backend arithmetic vectors.

Go with the swap only if realistic prover-path medians are above-noise better,
or statistically indistinguishable with a material proof/maintenance win.

## Elliptic-curve group law conformance

The pinned Mathlib contains `WeierstrassCurve`, affine/projective/Jacobian
formula modules, nonsingular point types, conversions between coordinate
systems, and `AddCommGroup` instances. In particular the Jacobian and
projective `Point` modules prove that their formula-defined nonsingular points
form abelian groups. This is enough for a conformance target; S3 need not
re-prove associativity from raw polynomials.

Instantiate the BLS12-377 short-Weierstrass coefficients and prove the curve
discriminant is nonzero over `ZMod q`. Define representation relations from
arkworks affine/projective coordinates to Mathlib point classes. The core
theorems are:

```text
represents P p → represents Q q →
  represents (ark_add P Q) (p + q)

represents P p → represents (ark_double P) (p + p)
represents P p → represents (ark_neg P) (-p)

represents P p → represents (ark_scalar_mul k P) (k • p)

validInputs bases scalars →
  represents (ark_msm bases scalars) (∑ i, scalars i • points i)
```

Prove coordinate-formula lemmas first, including infinity, equal-point,
opposite-point, zero-`Z`, and mixed affine/projective branches. Projective
results are equality of point classes (or the existing Mathlib projective
equivalence), not unjustified coordinate equality. Lift scalar multiplication
and MSM by induction after addition/doubling. Separately prove normalization
preserves the represented point and subgroup checks characterize the intended
prime-order subgroup.

The formula target must be the actually monomorphized arkworks formulas. A
generic claim that both libraries implement “a Weierstrass law” is insufficient.

## Pairing split

### Provable implementation-correctness layer

Pin one published optimal-ate/BLS12 pseudocode and its exact parameterization:
signed loop parameter, NAF/bit order, twist map, Frobenius constants, line
functions, sparse Fq12 multiplication, conjugations, and the easy/hard final
exponentiation chain. The source and version become proof inputs; prose
equations assembled from several papers are not an acceptable model.

Model the extension tower over the proved base field and establish:

```text
decodeFq12 (ark_line_eval state P Q) = specLineEval state p q

decodeFq12 (ark_miller_loop preparedP preparedQ)
  = optimalAteMillerLoop specParams p q

decodeFq12 (ark_final_exponentiation f)
  = f ^ ((q^12 - 1) / r)

decodeGT (ark_multi_pairing ps qs)
  = ∏ i, publishedAtePairing (ps i) (qs i)
```

The final theorem follows from the executable Miller-loop and exponentiation
proofs. It retires implementation-bug risk in arkworks line evaluation,
extension arithmetic, loop scheduling, final exponentiation, prepared points,
and multi-pairing accumulation.

### Cited mathematical assumption layer

Keep a separate literature row, stated verbatim in substance:

> The pinned optimal-ate pseudocode, instantiated with the reviewed BLS12-377
> parameters and prime-order subgroups, computes a non-degenerate bilinear
> pairing into the order-`r` target subgroup.

Mathlib has the elliptic-curve group laws needed above, but the pinned tree has
no elliptic pairing/divisor development connecting Miller functions to a
non-degenerate bilinear map. Files whose names contain “Pairing” concern other
mathematical pairings, not cryptographic ate pairings. Proving the divisor
theory and Weil/Tate/ate correctness stack would be a separate research
project. Therefore bilinearity and non-degeneracy of the published construction
remain cited mathematics; q-SDH, SXDH/co-CDH, and curve security remain
cryptographic assumptions. S3 never claims that BLS12-377 is secure.

## Proof architecture and cost

Use three independently gated packages, all consumed through the S2 arithmetic
adapter:

1. `Field377`: limb representation, `ZMod` refinement, extension tower;
2. `Curve377`: Mathlib Weierstrass instantiation, coordinate formulas,
   scalar multiplication, subgroup and MSM;
3. `Pairing377`: line functions, Miller loop, final exponentiation,
   multi-pairing.

Estimated effort after S2 extraction works:

- field feasibility and benchmark spike: 3–5 weeks;
- production field refinement: 3–6 months for a fiat swap, 6–10 months for
  post-hoc arkworks verification;
- G1/G2 formula, scalar multiplication, subgroup, and MSM conformance: 4–7
  months;
- extension fields, Miller loop, final exponentiation, and multi-pairing:
  6–10 months;
- integration, audits, CI, and ledger replacement: 2–3 months.

Total: roughly **15–26 engineer-months**, with meaningful parallelism only
after the field representation is fixed.

## Go/no-go

Verdict: **NO-GO for a single monolithic S3 campaign; GO for staged spikes with
explicit gates.** First run the fiat-backend prover-path A/B and hax
multiplication/reduction extraction spikes. Select the field route only after
those results. Proceed to EC only when all field operations used by the curve
are proved and the Mathlib BLS12-377 instantiation is green. Proceed to pairing
only after extension-field refinement and after one published pseudocode is
pinned in the ledger.

Stop if the chosen production path crosses opaque assembly/unsafe arithmetic
without a verified specification, if the fiat path materially regresses the
real prover, or if the pairing proof cannot name one exact algorithm and
parameter set. Partial completion is still useful: each package retires only
its matching arithmetic row and leaves the remaining assumptions explicit.
