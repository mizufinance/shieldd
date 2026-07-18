# S3-22 report

STATUS DONE

## Deliverable

New hand-authored module: `Ipp/Bls12377Gt.lean`.

- `gtCofactor` pins the exact literal
  `10623521018019860488254031663707568428798032905123811199571213965079129114663661236359849629341526275899063345613340067081670062620727617884137487754739150147491204559514205186492385590272208934467461444944652711005169371168250068790820776124772095630237102189827733019989835063334551453893534663070786533932633573962932272563471643288531959637300817070265537429506484880990981069041269405383502889677357082012807298529931118124428569059822346289745077401570134157444973271520981774047146918354408632568723153146248333028827919406785654402107153546667815607201488590832478225403444136409349877481268154817904541340614173261949772403060924324366861723245182619859389254985008236007465814273361497134138868945580557938161335670207544906643574043606819537336472235809927599628123275314288006170804044560238676463931639339711913111080974582593228138704154320599775683095604041309000197025419968125718018311805959315220036948621879242495199408833915486421612374480018459896018440926235261824654956932384859260479372776022979736734221629097297890154692194441528462770218811795624471108972377573690833913231260547835550851256817740247389770320334698430697237343583761719223414894063451411431859122738488311580005412765070251810159991897110936324943232526870280724876946523218213525646968094720`.
- `gtCyclotomicCofactor` pins the exact literal
  `530120800708274287517286541802349452660745684053757914303768306618941972249640599293219931039210515729594290095080864629839255786034925825766501871381405070298586299360456640686306783945821986704847802905075226768628585629948009388297573781114348798579024146628152873080566041108659848567284670260514857010142479602040029387286382704121649569349339557572505841407388976720904193`.

## Theorems

- `fq12_order_factorization`: `q^12 - 1 = r * gtCofactor`.
- `scalarModulus_dvd_fq12_order`: `r ∣ q^12 - 1`.
- `cyclotomic_order_factorization`: `q^4 - q^2 + 1 = r * gtCyclotomicCofactor`.
- `scalarModulus_dvd_cyclotomic_order`: `r ∣ q^4 - q^2 + 1`.
- `cyclotomic_order_dvd_fq12_order`: `q^4 - q^2 + 1 ∣ q^12 - 1`, with quotient `q^8 + q^6 - q^2 - 1`.
- `scalarModulus_coprime_gtCofactor`: `Nat.Coprime r gtCofactor`.
- `scalarModulus_gcd_fq12_order`: `gcd r (q^12 - 1) = r`.
- `GtGroup`: the kernel of the `r`-th-power endomorphism on `Fq12Canonicalˣ`.
- `mem_gtGroup`: `x ∈ GtGroup ↔ x^r = 1`.
- `gt_pow_cyclotomic_order_eq_one`: GT membership gives `x^(q^4-q^2+1) = 1` for the S3-38/39 cyclotomic hypothesis.
- `fq12_units_card`: `|Fq12Canonicalˣ| = q^12 - 1`.
- `gtGroup_card`: `Nat.card GtGroup = r`.
- `one_mem_gtGroup`, `gtValue_one`, `gtValue_ne_zero`, `fq12_zero_ne_gt_identity`: the GT identity is multiplicative Fq12 `1`, and field `0` is not a GT value.
- `ArkPairingOutput`, `arkPairingOutput_zero`, `arkPairingOutput_add`, `arkPairingOutput_nsmul`: the add-only adapter records arkworks notation `0 ↦ 1`, `+ ↦ *`, and `n • x ↦ x^n`.

## Cofactor and gcd outcome

The exact factorization is the first literal above. The checked gcd is
`gcd(r, gtCofactor) = 1`, expressed by `scalarModulus_coprime_gtCofactor`.
Thus `r` does not divide the cofactor: the order-`r` factor occurs only once
in `q^12 - 1`. Also `gcd(r, q^12 - 1) = r`.

The cyclotomic factor has the second exact cofactor above, so
`r ∣ q^4 - q^2 + 1`; this is the connector required by the later
cyclotomic-square/final-exponentiation proofs.

## Cardinality proof route

Mathlib's finite-integral-domain units instance supplies
`IsCyclic Fq12Canonicalˣ`. `IsCyclic.card_powMonoidHom_ker` computes the
cardinality of the `r`-th-power kernel as `gcd(|Fq12Canonicalˣ|, r)`.
`Fintype.card_units` plus `fq12_card` rewrites the unit-group order to
`q^12 - 1`, and `Nat.gcd_eq_right_iff_dvd` closes the result from
`scalarModulus_dvd_fq12_order`.

## Verification

- Focused pinned build: `lake build Ipp.Bls12377Gt` passed, 2014 jobs.
- Full pinned build: `lake build Ipp` passed, 3427 jobs.
- Both used `LEAN_NUM_THREADS=1` and
  `C:\Users\acyrn\.elan\toolchains\leanprover--lean4---v4.30.0\bin\lake.exe`.
- `#print axioms` was run in the module for every deliverable theorem. Output
  was limited to `propext`, `Classical.choice`, and `Quot.sound`; several
  arithmetic facts used only `propext`.
- Source audit found no `sorry`, `admit`, new `axiom`, or `opaque` declaration
  in `Ipp/Bls12377Gt.lean`.
- Prover, release, and release-gated tests were not run; this session changed
  only the hand-authored Lean library.
