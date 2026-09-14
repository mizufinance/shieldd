# ZK-PARI proving optimization: second pass

Research date: 13 September 2026. Scope: complete single-Transfer proving latency, including first use, while preserving the transaction statement and privacy properties. Desktop evidence is not phone evidence.

## Decision

There are worthwhile remaining approaches, but the evidence does not establish that a different curve or a complete native-stack rewrite will beat Groth16. The strongest combination is **less commitment work through smaller domains and circuits, plus a genuinely different MSM implementation**. Startup has a separate, unusually concrete opportunity: B's checked Rust loader uses a much more expensive subgroup test than the deterministic test already available for the same curve in gnark.

This pass adds an executable domain-subset algebra probe and an inventory of actual captured scalar distributions. It also investigates an isolated Edwards-coordinate MSM implementation and deterministic subgroup testing. Existing optimizations are controls, not fresh potential gains. The current matched result remains authoritative until a new complete-API measurement replaces it.[^1]

| Candidate | Selected warm API | First proof including initialization | Additional reduction needed to equal A |
|---|---:|---:|---:|
| A: current gnark Groth16 / BLS12-377 | 1.84555 s | 23.09906 s | — |
| B: current circuit, ZK-PARI, combined gnark377 MSM | 2.47653 s | 89.80522 s | 25.5% |
| C: native Commonware381, prepared combined blst | 3.02896 s | 26.31931 s | 39.1% |

To beat A by 10%, the target is 1.661 s. B needs approximately 32.9% less time and C 45.2%. These are arithmetic targets, not forecasts. Any circuit technique that also helps Groth16 must receive an updated A control; beating a deliberately unoptimized A is insufficient.

## 1. Reduce polynomial degree without changing curves

The earlier domain discussion concentrated on mixed-radix roots and reaching 196,608 constraints. That misses an intermediate approach: retain the current power-of-two FFT implementation, but interpolate the relation over a structured subset of its points. Standard step-radix domains already demonstrate that efficient interpolation need not use one multiplicative subgroup; libfqfft implements a union of two subgroup cosets with a sparse vanishing polynomial.[^2]

The following construction is an independently checked algebraic candidate, not an implemented or security-reviewed ZK-PARI variant. Let the existing domain be H, containing N roots of unity. Remove a coset S of a subgroup of size s, and let D = H minus S. Write:

```
Z_S(X) = X^s - c
Z_D(X) = (X^N - 1) / Z_S(X)
m = N - s
```

For a degree-below-m polynomial f with evaluations on D, form N evaluations of g: use f(x) Z_S(x) on D and zero on S. One existing N-point inverse FFT recovers g. Exact division by the sparse binomial Z_S gives f. Evaluation uses an ordinary N-point FFT followed by selecting the retained positions. The key observation is that **commitment degree becomes m even though the FFT still has N points**.

This does not promise an FFT speedup. It adds weighting and division passes and reduces degree-dependent MSMs. Those large MSMs are exactly where the remaining proving time is concentrated. Division by X^s-c can use a linear coefficient recurrence; a general dense polynomial division would waste the structure.

The prototype in `tools/proving-experiment/domain_subset_probe.py` checks 48 deterministic cases in the actual BLS12-377 and BLS12-381 scalar fields. It uses small 64-point domains, verifies weighted interpolation, and checks the masked quotient identity:

```
A_mask = A + h Z_D
Q_mask = (A^2 - B)/Z_D + 2hA + h^2 Z_D
```

Here h is linear. Changing the relation's B polynomial by one breaks divisibility in every case. The computed quotient obeys degree at most m+2. This is algebra testing, not a SNARK soundness proof, timing test, or full-size implementation.[^3]

| Retained size | Degree reduction from 262,144 | Current B fits? | Current C fits? | C affine projection fits? |
|---|---:|---|---|---|
| 245,760 | 6.25% | Yes | Yes | Yes |
| 229,376 | 12.5% | No | No | Yes |
| 212,992 | 18.75% | No | No | No |
| 196,608 | 25% | No | No | No |

The 245,760, 229,376 and 196,608 rows correspond to removing one subgroup coset. The 212,992 target would remove several cosets; its size arithmetic is included, but the executable does not test that generalization. B needs at least 241,626 rows under its current lowering; C needs 232,703 columns. The affine-gadget projection for C is 220,029 columns. Thus 229,376 becomes a reachable C target without needing a 7th root of unity or removing another 23,421 columns to reach 196,608.

For B, shrinking m by 16,384 removes approximately 65,536 terms across quotient, A-opening and R-opening bases, whose lengths scale as m, m and 2m. The 229,132-term witness commitment is largely unchanged. This is about 5.1% of its current 1,277,714 large-MSM input terms, not a 6.25% total-API guarantee. The actual effect depends on scalar distributions, bucket scheduling and extra polynomial work.

The implementation obligation is larger than replacing an FFT constructor. Setup, matrix interpolation, masks, quotient construction, public-input Lagrange evaluations, domain serialization, transcript binding and verifier validation must agree. C explicitly rejects non-power-of-two domain sizes. The current vanishing-polynomial shortcuts assume X^N-1. A new descriptor must bind the removed coset and ordering, with rejection of malformed or overlapping domains. At challenge points in the removed coset, evaluating Z_D by a rational expression gives 0/0; evaluate its polynomial/geometric-sum form or handle that case correctly. Do not hide this behind an assumed negligible event.

PARI's paper presents its univariate machinery using power-of-two subgroups. Its more general row-check framework permits a domain subset, which motivates investigation but does not certify this adaptation, particularly its zero-knowledge extension.[^4] Subject to review, the same commitment/opening architecture appears capable of retaining the proof-element count. That is an inference; no network-benefit equivalence has been measured.

**Next bounded experiment:** implement only the domain arithmetic at the actual size and compare its total interpolation, vanishing division and quotient cost with the existing polynomial phases. Use exact polynomial equality. Require its extra cost to fit within the projected MSM saving before generating any new full key. Then try 245,760 with an unchanged relation; investigate 229,376 together with the affine C relation if the first result is positive.

## 2. Arithmetic: distinguish a new algorithm from another parameter sweep

**Edwards MSM for B.** The Botrel/El Housni ZPrize implementation changes the outer BLS12-377 G1 arithmetic to extended Edwards buckets. This changes neither Decaf nor the circuit. Its bucket algorithm is absent from the selected gnark-crypto 0.20.1 path. Modern gnark already has batch-affine processing and ARM64 assembly, so the historical aggregate ZPrize speedup is not an expected improvement over this baseline.[^5]

The isolated adapter uses current gnark field/scalar arithmetic and the existing real proof operands. All 20 actual-operand outputs matched; four focused Go tests passed. Summed commitment/opening medians decreased from 2.026293 s to 1.953277 s: 0.073017 s saved, or 3.60% of these groups. Substituting that saving into B projects only 2.95% less full-API time. This is not a new complete-proof measurement.

Reject this implementation for the selected stack. It adds 18.547 s of checked Edwards preparation after base loading, and mapped resident bases increase from 122,660,736 to 183,990,816 bytes. The comparison includes scalar encoding, IPC, canonical decoding and checked output mapping, with two workers and one active operation. No swap or competing heavy job occurred. The measured baseline helper used auto-selected Go 1.25.7; the adapter matched that actual toolchain. Exact samples and provenance are in the [EdMSM report](../../tools/proving-experiment/edmsm-probe.md).

**Specialized squaring.** Current gnark's six-limb ARM64 field wrapper implements `Square` through multiplication; the old harness has a dedicated squaring route. Squaring can exploit symmetric cross-products, but fewer algebraic products do not guarantee fewer cycles after carry handling and assembly scheduling. This is a distinct later experiment: compare field square/multiply primitives first, then the actual MSM. Its importance depends on which point formulas win. Do not combine an old pure-Go multiplication replacement with a coordinate change and attribute the result to Edwards alone.

**Sparse or short scalars.** The new inventory reads the hash-bound captured B scalars and reports aggregate counts only:[^3]

| Operation | Scalars | Zero | +1 / -1 | Other signed values below 2^128 | Large |
|---|---:|---:|---:|---:|---:|
| Witness | 229,132 | 40,935 | 29,414 / 18 | 239 | 158,526 |
| Quotient | 262,147 | 0 | 0 | 0 | 262,147 |
| Opening A | 262,145 | 0 | 0 | 0 | 262,145 |
| Opening R | 524,290 | 0 | 0 | 0 | 524,290 |

The dominant opening and quotient operations offer no short-scalar opportunity in this proof. gnark already skips zero scalars during digit partitioning, skips zero digits, and uses per-window occupancy statistics. A separate Boolean accumulator might reduce scanning/allocation, but it also adds a partition and point pass. It is a small witness-only lead, not an explanation for a possible 2× improvement. Synthetic proof operand counts are not a guarantee for all private witnesses.

**Fixed-base precomputation.** Small extra tables remain plausible; multi-gigabyte fixed-window schemes are poor default phone candidates. As a scale check, 16 affine multiples for each of 786,435 opening bases alone cost approximately 1.125 GiB at 96 bytes per point, before the original bases, commitments and scratch. Repeated-key reuse is already exploited by resident bases. Require full memory accounting and an amortization estimate for additional tables.[^6]

**Portable SIMD/WASM and GPU.** The current `montgomery` project supports both target pairing curves and exposes safe and unsafe MSM paths. Its unsafe path assumes noncolliding points, an assumption that cannot be accepted merely because a proving key looks random; prepared combined bases and bucket intermediates require correct exceptional handling. The safe path is a real alternate algorithm candidate, especially for browser delivery, but JIT/startup, memory transport and worker requirements belong in the comparison.[^7]

GPU work should reuse curve-specific kernels. Heliax's WebGPU Groth16 project supplies a relevant BLS12-381 direction; Mopro's cited Metal result targets BN254 and does not measure either selected backend.[^8] Start with C's real combined opening, including uploads, readback, scratch and resident-key preparation. A wins from applicable GPU kernels too. No phone GPU or energy result exists here.

## 3. Circuit improvements should be selected together with a domain target

**C affine formulas.** The prior probe already demonstrated 12,674 projected row/column savings across complete affine/shared-square scalar-multiplication gadgets. That is not new work or a measured proving improvement. Its significance increases with a 229,376 domain: the projected complete relation would fit. First compile that full relation and measure witness solving, because repeated affine inversions may offset cheaper constraints. Explicit inverse checks lost in the previous gadget probe; completeness-based constraints were the useful variant.[^9]

**B select-before-DH.** `DeriveSharedSecretsSpend` computes both user and issuer DH points and then selects the result. Transfer calls it four times. The detection branch needs an issuer result independently; other consumers must be followed before eliminating any multiplication. C already applies selection before multiplication on the suitable tiers. Porting that idea to B is a circuit candidate with a corresponding A control, preserving Decaf representative/encoding semantics. Do not count four removable multiplications or drop the issuer-detection computation. Compile the actual lowered relation to see whether this reaches 229,376.

The existing isolated gnark gadget count is 7,329 versus 4,571 R1CS rows per suitable tier, suggesting 8,274 fewer R1CS rows across three tiers. That is not an equivalent count of square rows: the deleted operations have different lowering costs. This interaction deserves priority because B needs 12,250 fewer square rows to fit 229,376. A's current 163,396 R1CS rows would remain above the 131,072 radix-two boundary after the isolated 8,274-row projection. Both can improve, but B could gain an additional domain reduction if the actual square-row savings suffice. Those domain and full-circuit results remain unmeasured.

**Corrected hinted multiplication.** The 2025 hinted-scalar technique remains a strong larger circuit opportunity: compute an output and short decomposition outside the circuit, then verify a shorter joint-multiplication relation. The August 2026 cofactor-torsion analysis makes subgroup/output binding essential. Include that correction, scalar congruence bounds and zero cases before comparing rows. The published R1CS reduction is not a square-R1CS result and does not compose additively with the affine-ladder saving.[^10]

**Global square reuse.** Generic multiplication ab has quadratic rank two in odd characteristic, whereas one squared linear form has rank one. There is no universal way to replace every independent multiplication with one square constraint and linear terms while preserving the same variables. Existing squares can nevertheless help: if a² and b² already exist, `(a+b)²-a²-b²=2ab` needs one new square. A useful compiler pass canonicalizes reusable linear forms and exposes shared squares across neighboring gadgets. Count introduced columns and matrix nonzeros as well as rows; dense linear combinations can increase witness evaluation/setup work. The current lowering already handles square/linear special cases, so simply reintroducing those rules is not an optimization.

**Hash design.** Anemoi/Jive deserves a concrete compile-only comparison for C's exact arities because its relation can use inexpensive quadratic structure. Its published R1CS advantages do not establish a win against the selected width-six Poseidon circuit. The designers' site also records later algebraic attacks on reduced rounds; use a reviewed parameter set and current analysis, not fewer rounds chosen for speed.[^11] Hash changes affect commitments, trees and encodings across the product. Poseidon2 mainly changes linear-layer cost and is not automatically a major square-row saving. Test witness time and full compiled shape, then consider setup only if a domain target becomes reachable.

**Ranges and bit decomposition.** Reuse canonical bit decompositions where the same exact variable and bound recur. Proving a field equality does not establish an integer bound; do not remove bit/range constraints because test witnesses happen to be small. Larger windows trade selection costs for fewer point additions, so choose a small symbolic cost comparison of at most two shapes, not another broad ladder sweep. Lookup arguments could replace larger range/hash subcomputations, but are a protocol-level composition, not a free gnark switch.[^12]

**Circuit specialization and private branches.** The gnark Transfer circuit declares the statement hash public; flags such as `IsRegulated`, dummy-spend status and classification are circuit witnesses. A separate key selected by one of those flags can expose information beyond the committed statement. Do not specialize by a private property merely to skip the unused branch. Publicly specified transaction families may justify distinct circuits only after checking the actual application disclosure boundary. Private Merkle-path sharing has a similar problem: revealing which paths overlap changes the privacy statement.

## 4. Fix first use independently of warm proving

B's approximately 90-second first proof is not an intrinsic cost of PARI. It includes about 68 seconds of Rust prover preparation and 19 seconds of arithmetic preparation. Much public key material is validated and held across both runtimes.[^1]

The pinned Arkworks BLS12-377 G1 configuration has no specialized subgroup-check override. Arkworks' default performs an unreduced full-order double-and-add multiplication. gnark377 instead uses a curve-endomorphism criterion with two short seed multiplication chains. This is a source-confirmed difference; its contribution to the total startup must be measured. Both still require correct on-curve and encoding validation.[^13]

A safe optimization uses the exact deterministic curve criterion, checked against the full-order reference on subgroup, torsion, mixed, identity and malformed points. In particular, multiplying by the group order through a scalar API that first reduces modulo that order would turn the check into a tautology. That shortcut is invalid. A bounded sample of real bases is enough to establish whether the faster check warrants a complete-loader integration.

**Measured result:** the bounded deterministic probe is complete. On the same 4,096 evenly sampled public bases, membership-check medians were 149.626 ms for the full-order reference and 60.077 ms for the short criterion. Canonical 97-byte point decoding plus membership took 148.373 versus 60.726 ms, a **2.44× improvement for that component**. All 198 boundary cases passed; 20 warmup/measured passes validated 81,920 points in total. The guard exited zero without swapping or a competing heavy job. Source and raw evidence are in `tools/proving-experiment/examples/subgroup.rs` and `cache/subgroup-comparison`.

This establishes a useful startup optimization candidate. It does not measure compressed proving-key deserialization, disk loading, matrix preparation or the complete first proof, and it does not change the selected loader. Dividing the 89.805-second first-proof result by 2.44 would be incorrect. Integrate the deterministic test with every existing validation/binding obligation and then measure a fresh process to quantify the real reduction.

The selected gnark version also exposes a probabilistic batch subgroup routine whose comment states an error bound below 2^-64. That is not interchangeable with deterministic checking or a specified 128-bit target. The newer batch-membership research uses a more careful construction; evaluate its actual assumptions and parameters if pursuing it.[^14]

The subsequent architectural improvement is **one owner of validated arithmetic bases**. A typed prepared key can carry the key identity, curve, domain and ordered operation segments without keeping a full unused Rust point copy merely to recognize callback slice addresses. The existing binding must be replaced with an equally strong relationship to the real proving key. `ProvingKey::check()` in this experiment checks its verifying key, while checked deserialization validates the vectors; decoding unchecked and calling that shallow method would silently omit checks.

Checked uncompressed storage can remove decompression square roots, but may enlarge downloads and storage. A cached prepared representation needs an authenticated expected identity and complete invalidation rules; a self-computed hash of arbitrary cache data does not establish that validation occurred. Memory mapping and lazy loading alone do not remove validation. Streaming is useful for peak memory, but repeated decoding during warm proving can be a regression.

These changes should reduce first-use cost and may improve phone feasibility. They receive **no warm-time credit** without a complete measurement.

## 5. Protocol and architectural avenues

The two large opening terms cannot be collapsed just because both are powers of the same setup point. Their alpha/beta multipliers are intentionally separated. The prover does not know their ratio. Revealing or assuming that ratio to eliminate a commitment family changes the security construction. Likewise, the algebraic factorization of a square-polynomial opening does not provide multiplication of two unknown committed scalars inside G1. These are not missing library optimizations.

Changing the commitment basis to Lagrange form can move FFT work into setup, but opening coefficients acquire challenge-dependent denominators. Sparse or Boolean row values therefore do not imply cheap opening scalars. Any proposed basis rewrite must count those scalar multiplications and preserve the same EPC relationship. This is lower priority than directly reducing the polynomial degree.

Garuda is a distinct alternative from the same research lineage. It supports custom gates and free linear gates, with logarithmic proof/verifier costs rather than PARI's compact constant-size design. Its hash-circuit results motivate an arithmetic-cost study, not an assumed Transfer speedup or preservation of the present network benefit.[^4] A serious comparison would require an explicitly zero-knowledge construction, the complete Transfer relation and a fresh network-cost model.

Lookup sidecars, split proofs, recursive compression and folding similarly change the proof package and verification architecture. They may make specialized computations cheaper, but introduce commitments, challenges and linking obligations. The cited lookup paper itself emphasizes commitment compatibility; a Commonware committed-input API is not proof that an arbitrary lookup protocol composes correctly.[^12]

Offline work can improve perceived send latency: prepare immutable keys, transaction-independent tables and eligible witness portions before a send. Charge that work separately and preserve fresh proof randomness. Moving work before the stopwatch does not reduce total proving time. State-root-dependent paths and private transaction inputs limit reuse.

Remote proving changes the trust/privacy model unless a suitable distributed protocol protects the witness. GPU acceleration on the user's own device does not require that architectural change. Post-quantum proof systems are a separate protocol research direction; PARI's pairing arithmetic does not become post-quantum through a curve or MSM replacement.

## 6. Coverage and experiment order

| Avenue | B / C | Disposition and smallest useful next check |
|---|---|---|
| Edwards outer-group MSM | B | Tested and rejected: 2.95% projected API saving, 50% more bases and extra startup |
| Dedicated ARM64 squaring | B | Primitive gate first; actual MSM only after a material primitive win |
| Safe alternate WASM/SIMD MSM | Both | One real opening, full boundary; useful for browser/phone delivery |
| Metal/WebGPU kernels | Both, stronger available lead for C | One curve-correct real opening; charge memory and transport |
| Fixed-base tables | Both | Small-table cost/memory screen; reject impractical phone footprint |
| Scalar partitioning | Both | Low ceiling; B's dominant scalar vectors are already large/dense |
| More GLV/window tuning | Both | Prior work closed; reopen only for a distinct decomposition/algorithm |
| Prepared and combined MSM | Both | Already selected; no duplicate credit |
| gnark381 instead of blst | C | Already measured at operand level; modest saving, extra runtime/startup |
| Structured domain subset | Both | New algebra check passed; full-size polynomial-cost prototype next |
| Mixed-radix/step-radix FFT | Both | Alternative to subset arithmetic; exact field/root support and total cost |
| Complete affine/shared-square gadgets | C | Prior gadget win; compile complete relation and solve witness |
| Select-before-DH | B | Follow consumers, preserve detection; compile B and matching A |
| Corrected hinted scalar multiplication | Both | Security-complete gadget count before full circuit/key |
| Square reuse / compiler outlining | Both | Count rows, columns and nonzeros; local rank limits prevent blanket 2× claim |
| Anemoi/Jive or other hash family | Primarily C | Exact arity/parameter compile screen and current cryptanalysis |
| Bit/range reuse and small window alternatives | Both | Canonicality-preserving static/gadget screen |
| Public circuit families / path sharing | Both | Reject private-data specialization; establish disclosure contract first |
| Faster deterministic subgroup test | B | Tested: 2.44× faster canonical decode/check component; full startup unmeasured |
| Single-owner keys / checked prepared cache | Both | Reduce duplicate validation/storage; measure fresh process and RSS |
| Buffer reuse, in-process boundary, allocator | Both | Phase-cost ceiling first; no blanket full-Go rewrite |
| LTO/PGO/toolchain | Both | Reproducibly pinned compiler, one justified setting; assembly limits upside |
| More workers / scheduling | Both | Equal resources for A/B/C; phone thermal/core behavior measured separately |
| Garuda / lookups / recursion / PQ systems | New variants | Protocol research; cannot inherit the current network conclusion |

CPU profiling must include the Rust and Go process tree. The current native Cargo release profile does not explicitly enable LTO or one codegen unit; that leaves a concrete build-control possibility, but much MSM time is in assembly/external libraries that Rust LTO cannot optimize. Changing two workers to four is a resource comparison, and must apply to A as well. A desktop ARM result does not identify phone performance-core scheduling, sustained thermal behavior or energy use.

The Edwards MSM and deterministic subgroup probes are closed. The immediate order is: perform the B select-before-DH and C affine complete-relation compile/witness checks and a standalone full-size subset-domain polynomial check; then choose a single combined candidate. The faster deterministic check independently deserves checked-loader integration and fresh-process measurement. Corrected hints and hash changes are the larger follow-on circuit branches if that combination remains insufficient.

Benchmarking remains compact. For a new arithmetic candidate, one combined commitment and one combined opening with two warmups and three alternating paired samples is enough to screen it. Correctness cases are not timing samples. Only a surviving candidate gets complete scenario gates and a short full-API comparison. Repeat the final 18 measured A/B/C samples only after selecting actual changes. Keep initial preparation, peak RSS and fresh randomness visible; do not run a new proof corpus or broad parameter grid.

The best expert judgment is that **B has the more credible near-term route to parity**, because it starts closer and can reuse more of the optimized current circuit. C's strongest route is a circuit/domain reduction together with arithmetic improvement. Neither has demonstrated a comfortable proving-time win. A further 2× from a library switch alone is unsupported by the current profile and completed controls.

Production release-gated prover suites and formal certification were not run for this research pass. The experimental algebra and arithmetic checks establish only the specifically recorded identities and behavior. Full semantic proof gates remain required before adopting a new circuit, domain or loader.

## Sources and evidence

[^1]: [Selected matched desktop report](transfer-proving-selected.md), exact medians and API boundaries; [experiment ledger](../../tools/proving-experiment/optimization-ledger.md). Immutable measured inputs are bound by `cache/desktop-selected-source/manifest.json` and `cache/desktop-selected/identity.json`.
[^2]: [SCIPR Lab libfqfft](https://github.com/scipr-lab/libfqfft), domain definitions; [step-radix implementation](https://raw.githubusercontent.com/scipr-lab/libfqfft/master/libfqfft/evaluation_domain/domains/step_radix2_domain.tcc). These establish domain alternatives, not measured Shieldd speedups.
[^3]: [Executable algebra/inventory probe](../../tools/proving-experiment/domain_subset_probe.py) and [generated evidence](zkpari-second-pass-evidence.json). The evidence binds its source and original operand manifest by SHA-256. This is independently derived polynomial arithmetic.
[^4]: Dellepere, Mishra and Shirzad, [Garuda and Pari: Faster and Smaller SNARKs via Equifficient Polynomial Commitments](https://www.usenix.org/system/files/usenixsecurity26-dellepere.pdf), USENIX Security, August 2026; framework and univariate-domain definitions. No paper benchmark is used as a Shieldd result.
[^5]: [Botrel/El Housni mobile artifact](https://github.com/gbotrel/zprize-mobile-harness), pinned experiment source revision `6ae651b7b1664b81e7dac19c4a038eb014e93237`; [gnark-crypto v0.20.1 MultiExp](https://github.com/Consensys/gnark-crypto/blob/v0.20.1/ecc/bls12-377/multiexp.go), plus local ARM64 field source and isolated adapter provenance.
[^6]: Luo, Fu and Gong, [Speeding Up Multi-Scalar Multiplication over Fixed Points Towards Efficient zkSNARKs](https://tches.iacr.org/index.php/TCHES/article/view/10287), TCHES 2023; [implementation](https://github.com/LuoGuiwen/MSM_blst). The memory illustration in this report is a direct representation calculation, not their benchmark result.
[^7]: Gregor Mitscha-Baude, [montgomery](https://github.com/mitschabaude/montgomery), current curve support, safe/unsafe API and worker requirements, accessed 13 September 2026.
[^8]: [Heliax WebGPU Groth16](https://github.com/heliaxdev/webgpu-groth16); [Mopro Metal MSM v2](https://pse.dev/blog/mopro-metal-msm-v2). Hardware/curve-specific implementation leads, not selected-stack timings.
[^9]: [Native affine gadget cost and correctness evidence](../../tools/proving-experiment/native-affine-cost.md); [prepared native MSM measurements](../../tools/proving-experiment/native-prepared-msm.md). Gadget projections are kept separate from full proofs.
[^10]: Eagen, El Housni, Masson and Piellard, [Fast elliptic curve scalar multiplications in SN(T)ARK circuits](https://eprint.iacr.org/2025/933); El Housni, [Cofactor-torsion attacks on hinted scalar multiplications in SNARK circuits](https://eprint.iacr.org/2026/1776), 2026. A corrected technique is required; no current Shieldd vulnerability is inferred from those papers.
[^11]: Bouvier et al., [Anemoi and Jive](https://eprint.iacr.org/2022/840); [designers' site and cryptanalysis updates](https://anemoi-hash.github.io/). Exact selected-field/arity performance remains unmeasured.
[^12]: Campanelli, Fiore and Gennaro, [Natively Compatible Super-Efficient Lookup Arguments and How to Apply Them](https://eprint.iacr.org/2024/1058), latest listed revision December 2024. Commitment compatibility remains a separate composition obligation.
[^13]: Locally pinned `ark-bls12-377-0.6.0/src/curves/g1.rs`; [Arkworks v0.6.0 default SW subgroup test](https://github.com/arkworks-rs/algebra/blob/v0.6.0/ec/src/models/short_weierstrass/mod.rs); [gnark-crypto v0.20.1 BLS12-377 G1](https://github.com/Consensys/gnark-crypto/blob/v0.20.1/ecc/bls12-377/g1.go). Constants and scalar semantics must match the target curve.
[^14]: Koshelev, El Housni and Fotiadis, [Batch subgroup membership testing on pairing-friendly curves](https://yelhousni.github.io/publication/conference/africacrypt26/), author page lists July 2025 and AFRICACRYPT 2026; selected gnark batch implementation documents its separate 64-bit error bound.
