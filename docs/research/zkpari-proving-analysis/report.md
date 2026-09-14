# Reducing Shieldd zk-PARI proving time

**Recommendation.** Keep BLS12-377 and the current gnark Transfer relation for the first optimization experiment. Replace the generic R1CS-to-Square-R1CS lowering with one that recognizes squares, affine-related factors, and linear constraints. Cache the prepared relation and remove repeated synthesis from each proof. Then optimize the remaining polynomial work and large multiscalar multiplications (MSMs). These changes preserve zk-PARI's proof-system architecture and network properties; a curve or proof-system replacement is not necessary to pursue them.

The strongest new finding is specific to Shieldd's actual exported relation. Of its 163,396 constraints, **85,170 can use one square constraint instead of two**. This gives 241,622 body rows, or approximately **241,625 rows including the current three boundary rows**, versus 326,795 today. That is enough to move from a 524,288-point domain to a 262,144-point domain. Polynomial multiplication's maximum domain correspondingly falls from 1,048,576 to 524,288. This is a static result, not a measured prover improvement. [^1]

The current standard-Transfer warm median is **13.258 s for zk-PARI versus 3.315 s for Groth16**, using one worker and 30 samples per backend. zk-PARI's development bridge accounts for 2.158 s, and the prover call accounts for 10.978 s, including its own synthesis and conversion. Eliminating all bridge time would leave roughly 11.10 s, so removing the bridge alone cannot solve the regression. The smaller domain addresses the larger remaining cost. [^2]

**Scope and evidence.** This analysis uses the local experiment `99228210a891ffa23aeb`, Shieldd revision `b3de9fecebbaa8d44f5f582e3fae16287970300e`, zk-PARI revision `a8266aac58314214552a214fead1c0258f8de418`, and the source snapshot identified by the experiment. Research was checked on September 13, 2026. The 1,642-record measurement snapshot contains complete one-worker warm and batch cells; the full experiment, including two-worker measurements, is incomplete. No existing benchmark source, running script, production circuit, or proving artifact was changed for this analysis.

**The existing gnark circuit and the proposed representation.**

Both backends currently prove the same gnark Transfer relation over the BLS12-377 scalar field. The six scenarios supply different assignments to this relation; they are not six different circuit sizes. gnark's Groth16 API constructs/solves the witness and produces the proof. In the zk-PARI spike, gnark constructs and solves the witness, exports the full assignment, and Rust imports the relation and assignment before invoking zk-PARI. [^3]

R1CS represents a row as `A(w) × B(w) = C(w)`, with each capital letter a linear expression in the wires. zk-PARI uses Square-R1CS, whose row is `L(w)² = R(w)`. The current adapter translates every R1CS row to two square rows. Improving this translation changes the representation used by zk-PARI, while preserving the transaction statement and gnark witness calculation.

Groth16 does not receive the domain-halving benefit from this proposed translation: it never paid the two-row conversion overhead. Its current domain is already 262,144. The proposal brings zk-PARI down to that domain size. Generic improvements to the original gnark circuit, arithmetic kernels, or key loading could benefit both backends, and a fair comparison should distinguish those shared improvements from improvements specific to zk-PARI.

The first implementation can keep gnark for solving. It needs a prepared, deterministic lowering that maps original wire assignments into the reduced Square-R1CS witness space. Regenerating zk-PARI keys is required because the indexed constraint matrices change. The proof remains two G1 elements plus one scalar, **128 bytes** on the current curve; key identity and domain metadata change. This is a new indexed representation of the same relation, not a new payment protocol. The pinned implementation already has an entry path for native Square-R1CS. [^3][^4]

**Why the four-node PoA topology favors this direction.**

Assume one block proposer and three other verifiers. The relevant bottleneck is not solely the time to check an already-created SnarkPack aggregate. The proposer must construct that aggregate, whereas zk-PARI accepts independently created proofs and batches their verification without that construction stage. The pinned implementation provides batch verification, not a compressed aggregate artifact replacing all individual proofs. [^4]

The existing complete one-worker cells give the following medians. All times include the relevant checked preparation; the aggregation column must not be confused with the smaller raw-aggregation phase in the other report. [^2]

| Proofs | SnarkPack checked construction | SnarkPack checked verification | zk-PARI checked batch verification |
|---:|---:|---:|---:|
| 64 | 0.416 s | 0.052 s | 0.016 s |
| 256 | 1.543 s | 0.059 s | 0.055 s |
| 1,024 | 6.007 s | 0.066 s | 0.210 s |
| 4,096 | 24.272 s | 0.077 s | 0.843 s |

With equal verifiers running concurrently, their contribution to the critical path is approximately the slowest required verifier, not the sum of all three. A simplified proof-stage latency is `construction + verification` for SnarkPack versus `batch verification` for zk-PARI. At 4,096 proofs these are approximately 24.35 s and 0.843 s. If proposer-side zk-PARI validation precedes peer validation and no validation is reused, budget two serial checks, about 1.69 s. These are service-time models from local measurements, not measured consensus latency.

For aggregate work across all four machines, a model including proposer self-verification is `G + 4Vs` versus `4Vp`. At 4,096 proofs this is approximately 24.58 versus 3.37 worker-seconds, around a 7.3× difference. These sums approximate work from one-worker wall times; they are not direct CPU-time measurements. Arrival patterns, validation caches, incremental aggregation, block propagation, and consensus work affect an actual deployment.

The bandwidth difference is measurable and modest in absolute terms for this topology. At 4,096 proofs, zk-PARI carries 524,288 proof bytes and 131,072 statement bytes. SnarkPack carries a 59,745-byte wrapped aggregate and the same 131,072 statement bytes. The difference is 464,543 bytes per recipient, about 1.33 MiB for three replicas. Both exclude other transaction data and framing. Compact propagation or shared mempool data can change the bytes actually transmitted. [^2]

This supports optimizing zk-PARI wallet latency for this PoA design. It does not imply every node topology benefits equally, nor does it turn verifier throughput into payment TPS. Wallet proof creation remains a separate user-visible cost.

**The concrete Square-R1CS optimization.**

The generic conversion introduces a fresh witness `t` and enforces:

```text
t = (A − B)²
(A + B)² = 4C + t
```

Subtracting the equations gives `4AB = 4C`. Over the current odd prime field this is equivalent to the original row. This is appropriate for a general product, but wasteful for many rows in Shieldd. The following mutually exclusive classification normalizes terms modulo the field, combines repeated wires, and ignores zero coefficients. It depends only on circuit structure, never on the private witness. [^1][^5]

| Original row class | Count | Proposed square rows per row | Saved rows |
|---|---:|---:|---:|
| Identical left and right factors | 58,181 | 1 | 58,181 |
| Affine-related factors, excluding exact squares | 23,809 | 1 | 23,809 |
| One factor constant, hence a linear relation | 3,180 | 1 | 3,180 |
| General products | 78,226 | 2 | 0 |
| Total | 163,396 | — | **85,170** |

An existing square `A² = C` is already one Square-R1CS row. For affine-related factors `B = kA + d`, with nonzero field constant `k`, use:

```text
(2kA + d)² = 4kC + d²
```

The difference between its two sides is exactly `4k(AB − C)`. Because `4k` is nonzero, the new row holds exactly when the old row holds. Both sides have the required square/linear structure. The simpler exact-square case should retain `A² = C` directly, avoiding needless coefficient scaling. Boolean constraints are one useful special case: `b(b−1)=0` becomes `b²=b`.

If one factor is constant, `AB−C` is linear, so `0² = AB−C` suffices. A compiler can later eliminate suitable linear definitions by substitution, but must measure resulting matrix density; the conservative count here retains one row for each linear relation. General products retain the established two-row conversion.

The arithmetic is therefore:

```text
Original body:        2 × 163,396                 = 326,792
Proposed body:        85,170 + 2 × 78,226          = 241,622
With three boundary rows retained:                241,625
Next power of two:                                 262,144
Remaining margin below that domain limit:           20,519
```

The exact final public-copy/outlining row count depends on the native compiler integration. Carrying the existing three-row overhead is a conservative design estimate, not a generated-circuit measurement. There is enough domain margin that a small bookkeeping difference would not change the main result. Preserving constant/public wire order and the verifier's trailing outlining-row assumptions is essential: the pinned upstream implementation explicitly checks this shape because native circuits can otherwise escape its public-input outlining. [^4]

Recognizing exact squares alone would leave 268,614 rows including the same overhead, still above 262,144. The affine-related rows are what make the domain boundary reachable. This matters more than a generic recommendation to “reduce constraints”: a modest reduction that stays within the larger domain leaves much of the FFT and SRS-sized MSM work unchanged.

The accompanying script checks the original row and proposed algebra against all six saved assignments, totaling **980,376 row/assignment checks**. It also checks the affine identity exhaustively over a small odd field, including false relations, and perturbs the right-hand value in the applicable real-field checks. This supports the algebra and the inventory. It does not test a Rust lowering implementation, public outlining, new key generation, or proofs under the new relation. [^1]

**What to remove from each proving request.**

The bridge currently decodes canonical scalars, checks the original relation, synthesizes and converts it, and checks the converted relation. The subsequent `ZkPari::prove` call synthesizes and converts again and materializes the matrices. The 2.158-second bridge median is thus not merely IPC overhead. Go witness construction and solving are only about 0.081 s combined in this cell; rewriting those in Rust first would attack a small measured component. [^2][^3]

Prepare immutable matrices, public-input mapping, deterministic derived-wire operations, and relevant domain data once per indexed relation. Each proof should consume a fresh assignment, evaluate the prepared mapping, and run the prover. Use flat sparse arrays and reusable buffers where they reduce allocations. Bind the prepared relation to the correct key and validate its shape once. Per-assignment canonicality, public-statement binding, and failure handling remain necessary.

Fuse row satisfaction checking with the matrix evaluation needed by the prover, or retain an equivalent release-build polynomial-remainder check. The intended optimization is to avoid repeated traversal and reconstruction, not to remove invalid-assignment rejection. Cached objects must hold only immutable circuit/key material across unrelated proofs; witness buffers and masking randomness remain per proof.

Arkworks parallel features are already enabled in the pinned zk-PARI dependency. A missing `parallel` feature is not the explanation for the 4× result. The timing inside the prover still needs phase profiling to separate synthesis, matrix extraction, interpolation, quotient construction, commitment MSMs, and opening MSMs. Existing `print-trace` timers expose these phases; use them in a separate experiment after the current benchmark finishes, without changing its pinned source identity. [^4]

**Polynomial work that can improve without changing the proof protocol.**

The pinned prover interpolates three vectors, `z_A`, `z_B`, and `w_A`, and computes an unmasked quotient using `z_A² − z_B`. Its generic polynomial multiplication evaluates both operands separately, even when both operands are the same polynomial. A dedicated squaring operation can use one forward FFT, pointwise field squaring, and one inverse FFT, saving one forward FFT at the multiplication-domain size. This follows directly from the pinned zk-PARI call and Arkworks 0.6 implementation. [^4][^6]

There are deeper algebraic opportunities after the simpler implementation is measured. Since `w_A = z_A − x_A`, and public inputs occur only in a few known outlining rows, derive the public contribution in coefficient form using those rows' Lagrange polynomials, then subtract it from `z_A`. This can avoid a full interpolation of `w_A`; for Shieldd there are only the constant and one public statement scalar. It requires exact agreement with the indexed public-row layout.

For a satisfied assignment, `z_B` agrees with `z_A²` on the domain. Since `deg(z_B) < m`, the quotient of `(z_A²−z_B)/(X^m−1)` is determined by the high coefficients of `z_A²`. An implementation may exploit that to avoid materializing some intermediate polynomials or a separate `z_B` interpolation, provided it still checks the original matrix relation and constructs every commitment/opening polynomial correctly. A coset-based quotient implementation is another candidate. These are equivalence-based engineering ideas, not implemented speedups; benchmark memory traffic as well as operation counts.

The pinned prover already expands its vanishing-polynomial masks algebraically to avoid a 4m multiplication domain. That improvement is already present in the measured baseline. Removing or shortening the randomness is not the proposed optimization, and Zakura's distinct masking analysis cannot be imported as a proof of zk-PARI's zero knowledge. Preserve the existing transcript and fresh masks when testing these equivalent computations. [^4][^12]

**Faster MSMs on the existing curve.**

The prover performs large G1 MSMs for the witness and quotient commitment, followed by opening MSMs of approximately `m` and `2m` coefficients. Smaller domains reduce several of these vectors as well as the FFTs. Avoiding 85,170 auxiliary square witnesses also reduces the witness-commitment input, subject to the finalized witness layout. The exact end-to-end reduction is not simply the row-count percentage. [^4]

BLS12-377 already supports a GLV endomorphism. Arkworks 0.6 uses it for individual projective scalar multiplication, but the inspected `msm_unchecked` route converts scalars to big integers and uses the generic signed-MSM implementation. It does not inherit individual-scalar GLV automatically. A large-MSM implementation that explicitly decomposes scalars and uses endomorphism-related bases is therefore a real candidate on the current curve. Doubling the number of bases while shortening scalars changes bucket cost and memory traffic, so it is not a guaranteed 2× MSM speedup. [^7]

Other candidates are better bucket scheduling, batch-affine arithmetic, prepared tables for the fixed SRS bases, and an internal twisted-Edwards representation of BLS12-377 G1. The latter changes the arithmetic representation of the same group; it is not a switch to Decaf377 or to an unrelated small curve. Arkworks exposes this G1 representation. Mapping exceptions, subgroup behavior, and return to the canonical proof encoding need parity checks. [^7]

The proving bases are reused across proofs, making bounded precomputation attractive for a persistent wallet process. Large tables can also make an already-heavy mobile prover worse. Measure table size, initialization, working set, and first-proof latency before selecting them. Specialized small-scalar MSMs are appropriate only for wire classes with established bounds; quotient and opening coefficients generally occupy the full scalar field.

There are relevant implementations beyond Zakura. Mitscha-Baude's `montgomery` supports BLS12-377 MSMs in Wasm, and Penumbra's WebGPU work directly targets BLS12-377. ICICLE documents BLS12-377 MSM bindings. These are useful kernel candidates for the matching deployment target; none of their advertised microbenchmarks is a Shieldd proof benchmark. Browser GPU implementations also require actual device/driver testing, and a CUDA result is not evidence for an iPhone. [^13][^14][^15]

Offloading to a local GPU can preserve wallet witness locality. Uploading a full witness to a remote prover changes the privacy model even on a permissioned chain. A remote acceleration proposal would need a separate design for keeping witness data private; it is not required for the main path here.

**Which Zakura ideas transfer.**

Zakura Common's August 29 announcement reports over 14× mobile and 5× desktop proving improvements. Its September 10 update reports iPhone 17 cold proving reduced from 3 s to 142 ms, with improvements across several older phones. These are the project's own measurements of its Zcash stack. The latter announcement specifically describes caching duplicated circuit construction, changing early public-input work, reducing memory traffic, and improving cold-CPU utilization. [^8][^9]

Common includes Halo2, Orchard, Pasta curves, BLS12-381, Bellman, and related Zcash crates. This is not a drop-in BLS12-377 zk-PARI prover. The right transfer is individual techniques and kernels after checking their prerequisites, not multiplication of Shieldd's current time by the advertised inverse speedup. [^10]

| Zakura technique | Application to Shieldd zk-PARI | Priority |
|---|---|---|
| Cache circuit construction and remove early memory traffic | Direct architectural match to the repeated bridge/prover work | High |
| Improve MSM arithmetic and fixed-base preparation | Applicable principle; implement for BLS12-377 and the actual MSM sizes | High after domain reduction |
| Deferred Montgomery reductions and fused products | Potential field-kernel improvement; audit existing Arkworks primitives first | Medium |
| Split dependent arithmetic chains | Potential improvement to batch inversion/evaluation where profiling finds serial chains | Medium |
| Faster modular inversion | Benchmark against Arkworks' existing binary-GCD path, not against Pasta's former Fermat baseline | Medium/low until profiled |
| Faster elliptic-curve FFT for key construction | Relevant to setup/key preparation if used there; not the same as scalar FFTs in warm proving | Low for the current warm bottleneck |
| Sinsemilla acceleration | No direct replacement for Shieldd's Poseidon377/Decaf377 relations | Low |
| Sparse Halo2/IPA masking | Different protocol and proof of zero knowledge | Separate cryptographic research |

Zakura documents sharing Montgomery reductions across sums of products and eliminating repeated factors. Its cited Halo2 evaluator changes yield roughly 1.2% and 1.4% end-to-end improvements individually. These illustrate why large headline gains arise from many changes rather than one portable trick. Arkworks already exposes a sum-of-products primitive, so first inspect whether hot loops use the available operation effectively. [^11]

The modular inversion example is similarly nuanced. Zakura replaced Pasta's Fermat-exponentiation baseline with specialized variable-time safegcd, reporting about 4.6× faster inversions. Arkworks 0.6 already uses a binary extended-GCD algorithm. Safegcd could still improve it, but the published 4.6× ratio is against a different starting point. Constant-time requirements must be assessed for the specific witness-dependent operation; a faster public-verification primitive does not establish suitability for all secret arithmetic. [^16]

Zakura's dependency-scheduling work reports that two independent multiplication chains can fill more CPU execution slots than one serial chain, improving batch inversion in its workload. This is relevant if the profile shows comparable serial chains; it does not accelerate every field multiplication by a universal percentage. Its elliptic-curve FFT work concerns transforming commitment-key points, whose twiddles are scalar multiplications of points. zk-PARI's warm polynomial FFTs operate on field elements, so the reported curve-FFT gain cannot be applied to them. [^17][^18]

**Curve and proof-system alternatives.**

| Option | Keeps the present zk-PARI network approach? | Consequence for Shieldd | Assessment |
|---|---|---|---|
| BLS12-377 with improved lowering/kernels | Yes | Same protocol facts, smaller representation, new indexed key where needed | First choice |
| BLS12-381 | Yes, in principle | Different scalar field; retarget native Decaf377/Poseidon377 relations or emulate them | No demonstrated total-cost advantage |
| BN254 | Yes, in principle | Smaller curve arithmetic and 96-byte two-G1/one-scalar proof, but different field and materially lower pairing security | Poor default trade |
| Pasta/Pallas/Vesta | Not the current pairing-based zk-PARI construction | Requires a different commitment/proof system and circuit stack | Does not meet the same scope |
| BW6-761 as a direct base prover | Pairing-based construction possible in principle | Much larger arithmetic; primarily relevant to an outer recursive layer | Not a credible first speedup |
| Garuda/custom gates | Requires a fresh assessment | Can reduce algebraic circuit cost, but proof shape, zero knowledge and batch verifier need comparison | Separate fallback experiment |
| Halo2/Tachyon/Ragu or recursive wrapping | Requires a fresh assessment | New circuit, commitment, recursion and network-cost design | Broader architecture choice |

Shieldd's circuit works natively with Decaf377 over the scalar field of BLS12-377, and uses Poseidon377 throughout note/tree/compliance/statement computations. Changing the outer proof curve changes the scalar field in which native constraints run. Keeping those operations by non-native emulation can erase a faster outer-curve kernel; changing the cryptographic primitives instead reaches keys, commitments, trees, encryption, signatures, storage encodings, circuits, verifiers and fixtures. The prototype policy permits such changes, but the whole cost must be measured. [^3]

Pasta curves lack the pairing interface required by this construction, a tradeoff Penumbra also identifies in its curve-selection rationale. BLS12-381 remains a legitimate candidate if a complete retargeted benchmark wins, but six-limb versus six-limb curve arithmetic and two roughly 256-bit scalar fields do not establish a large intrinsic speed difference. BN254's often-cited approximately 100-bit pairing-security estimates make it a materially different security trade, not merely a quicker parameter setting. The 96-byte proof size is an encoding calculation, not a measured Shieldd artifact. [^19][^20]

Garuda is more interesting than an arbitrary curve substitution if the optimized zk-PARI path still misses the latency goal: the original Garuda/Pari work explicitly develops arbitrary custom gates and free linear gates for Garuda. That could suit polynomial/hash-heavy constraints. However, the original paper's Pari description is not identical to the pinned 128-byte zk-PARI implementation; neither Garuda's benchmarks nor the paper's proof sizes should be substituted for this experiment. Any alternative needs the same Transfer semantics and four-node cost model. [^21]

Within the current relation, reducing redundant bit decomposition, sharing repeated hash/curve computations, or changing hash gadgets may help both proof systems. These deserve circuit-level profiling after the conversion fix. Splitting the proof by a private branch, such as compliance status, could expose which branch was selected; the current structural lowering does not do that. A true hash/curve redesign should be evaluated as a protocol change, not bundled into a prover-kernel optimization.

**Expected improvement and what remains unknown.**

The evidence supports a substantial engineering opportunity, but not a measured 4× recovery. There is no demonstrated lower bound requiring zk-PARI to remain four times slower, and there is also no valid inference that matching Groth16's domain makes its proving time equal. The number and size of MSMs, polynomial openings, and fixed costs still differ.

Removing the entire measured bridge gives an optimistic accounting subtraction of `13.258 − 2.158 ≈ 11.10 s`. Some necessary checks must remain or be fused, so even this subtraction is not a benchmark. Let `F` be remaining fixed cost, `d` the reduction factor in domain-sensitive work, and `k` an additional kernel speedup. An illustrative model is:

```text
T_new = F + (11.10 − F) × d / k
```

If, purely illustratively, `F=1.10 s` and halving the domains halves the remaining work (`d=0.5`), the model gives 6.10 s without a new kernel, 4.43 s with a 1.5× kernel improvement, and 3.60 s with a 2× kernel improvement. **These are sensitivity scenarios, not forecasts or measured results.** They show why recovering most of the regression is plausible, and why Groth16 parity still requires evidence. Caching repeated synthesis may lower `F`; memory bottlenecks or imperfect scaling can worsen `d`.

Fresh-process latency needs its own track. In the five completed standard-Transfer first-proof samples, the median is approximately 244.9 s for zk-PARI and 43.0 s for Groth16. The first zk-PARI sample spends about 227.3 s loading/checking the proving key. Its approximately 110 MiB compressed key is much larger than the approximately 40 MiB Groth16 key. A long-lived prepared prover, smaller key after domain reduction, and a measured validated local key representation can matter more to first use than a warm MSM improvement. Do not interpret a warm benchmark as wallet startup latency or bypass point validation on untrusted key material. [^2][^3]

**Recommended experiment sequence.**

1. **Prepared prover with existing relation and keys.** Add phase timings and eliminate repeated construction with a cached matrix/witness plan. Keep statement binding and release-mode invalid-witness rejection. Measure complete request time, first-proof time, and peak memory. This isolates integration overhead from cryptographic representation changes.
2. **Square-aware lowering of the same exported gnark relation.** Implement the four structural cases above, retaining gnark solving. Pin original/public/derived-wire mapping, finalize outlining, count the actual rows, generate development keys, and prove all six scenarios. Compare against the original gnark relation and include malformed assignments, altered statements, wrong keys, and invalid proofs/batch entries. This is the principal domain-reduction experiment.
3. **Equivalent polynomial optimizations.** Specialize squaring first, then evaluate eliminating redundant interpolation or polynomial buffers. Check intermediate-polynomial equivalence and invalid-assignment rejection before attributing any speedup.
4. **MSM backend experiment on BLS12-377.** Benchmark actual witness, quotient and opening MSM inputs after lowering. Compare generic Arkworks with explicit GLV and a suitable CPU/Wasm/GPU candidate. Include data conversion, table loading, memory, and complete proof time; ensure unchanged canonical outputs and verification.
5. **Device and PoA validation.** Re-run balanced complete one/two-worker comparisons, then representative native mobile/browser clients. Measure cold and warm startup separately. On the four-node PoA test, measure proposer preparation, peer verification, bytes propagated, consensus time and mempool reuse independently.

This sequence deliberately gives Groth16 credit for shared optimizations. A useful experiment matrix has the current baseline, improved integration, improved Square-R1CS lowering, and optimized kernels as separate cells. Generic circuit improvements should run on both backends; native lowering belongs only to zk-PARI. Keep one heavy verification job active at a time, respect the repository resource bounds, and finish the existing experiment before changing its sources.

The current deliverable is analysis and arithmetic validation. **No new optimized proof was generated, no timing of the proposed implementation was measured, and no prover/release-gated test suite was run in this analysis.** Existing proof measurements and their prior test records were reused. The arithmetic script is not formal verification; formal tools, specifications, and certification evidence remain outside this repository in `shieldd-security`.

**Sources and reproduction.**

The companion [evidence.json](evidence.json) records the relation/sample hashes, counts and extracted timing cells. Reproduce from the repository root with:

```sh
python3 docs/research/zkpari-proving-analysis/analyze.py \
  tools/zkpari-spike/cache/99228210a891ffa23aeb
```

[^1]: Local static analysis, [analyze.py](analyze.py) and [evidence.json](evidence.json), September 13, 2026. Input relation SHA-256 `9c7f003980d783133db6b82e4e30fd3444d1fe37bf80fd3da4c6a227d0046ff7`. The script reads saved assignments locally and emits only counts and timings, not witnesses.
[^2]: Shieldd local experiment, [samples.jsonl](../../../tools/zkpari-spike/cache/99228210a891ffa23aeb/samples.jsonl), snapshot identified in `evidence.json`; [partial benchmark report](../../../tools/zkpari-spike/cache/99228210a891ffa23aeb/report/report.md). Private/local measurements, Apple M4 Pro; full comparison incomplete.
[^3]: Shieldd [spike README](../../../tools/zkpari-spike/README.md), [Rust bridge](../../../tools/zkpari-spike/src/bridge.rs), [worker](../../../tools/zkpari-spike/src/main.rs), and [Transfer circuit](../../../tools/gnark/internal/circuits/transfer_circuit.go), local source snapshot.
[^4]: Guruvamsi Policharla et al., zk-PARI implementation, revision `a8266aac58314214552a214fead1c0258f8de418`; locally inspected `src/prover.rs`, `src/circuit.rs`, `src/batch_verify.rs`, `src/data_structures.rs`, and `Cargo.toml` in the Cargo checkout. [Repository](https://github.com/guruvamsi-policharla/zk-pari). The public moving branch is not the pinned source snapshot.
[^5]: Arkworks, `ark-relations` 0.6.0, locally inspected `src/sr1cs/mod.rs`, generic conversion and assignment mapping. [Package source](https://docs.rs/ark-relations/0.6.0/src/ark_relations/sr1cs/mod.rs.html).
[^6]: Arkworks, `ark-poly` 0.6.0, locally inspected `src/polynomial/univariate/dense.rs`, polynomial multiplication implementation. [Package](https://docs.rs/ark-poly/0.6.0/ark_poly/).
[^7]: Arkworks, `ark-bls12-377` and `ark-ec` 0.6.0, locally inspected G1 configuration and `scalar_mul/variable_base/mod.rs`. [G1 source](https://docs.rs/ark-bls12-377/0.6.0/src/ark_bls12_377/curves/g1.rs.html), [curve documentation](https://docs.rs/ark-bls12-377/0.6.0/ark_bls12_377/).
[^8]: Zakura, [Zakura Common: High Performance Zcash Cryptography](https://zakura.com/announcements/zakura-common/), August 29, 2026. Project-reported measurements.
[^9]: Zakura, [Release: Zakura 1.4.0](https://zakura.com/announcements/zakura-1-4-0/), September 10, 2026. Project-reported device measurements and cold-start optimizations.
[^10]: Zakura Common, [library inventory](https://raw.githubusercontent.com/zakura-core/common/main/README.md), accessed September 13, 2026.
[^11]: Zakura, [Avoiding Montgomery Reductions](https://zakura.com/engineering/deferred-montgomery-products/), accessed September 13, 2026; Arkworks `ark-ff` 0.6.0, locally inspected `montgomery_backend.rs`, including `sum_of_products`.
[^12]: Zakura, [Formally Verifying Zero Knowledge for Zakura](https://zakura.com/engineering/ironwood-zero-knowledge/), accessed September 13, 2026. This describes its Halo2/IPA masking model, not a zk-PARI theorem.
[^13]: Gregor Mitscha-Baude, [montgomery: Fast MSM in WebAssembly](https://github.com/mitschabaude/montgomery), accessed September 13, 2026. Supports BLS12-377; documents that constant-time execution is not a design goal.
[^14]: Penumbra Labs, [Accelerating Client-Side Cryptography with WebGPU](https://www.penumbra.zone/blog/accelerating-client-side-cryptography-with-webgpu), August 9, 2024; [BLS12-377 implementation](https://github.com/td-kwj-zp2023/webgpu-msm-bls12-377). Relevant kernel precedent, not a current Shieldd/device benchmark.
[^15]: Ingonyama, [ICICLE 3.7.0 Rust MSM documentation](https://dev.ingonyama.com/3.7.0/icicle/rust-bindings/msm). Version-specific BLS12-377 example; target-backend availability must be checked for the intended device.
[^16]: Zakura, [Porting libsecp256k1's Modular Inversion to Pasta](https://zakura.com/engineering/safegcd-modular-inversion/), accessed September 13, 2026; Arkworks `ark-ff` 0.6.0, locally inspected `montgomery_backend.rs`, binary extended-GCD inversion.
[^17]: Zakura, [Data Dependencies in Field Multiplication](https://zakura.com/engineering/multiplication-dependencies/), accessed September 13, 2026.
[^18]: Zakura, [Faster Elliptic-Curve FFTs](https://zakura.com/engineering/pasta-ecfft/), accessed September 13, 2026.
[^19]: Penumbra, [Proving Considerations](https://protocol.penumbra.zone/main/crypto/proofs.html), accessed September 13, 2026. Curve/proof-system compatibility rationale.
[^20]: Michael Scott, [On the Deployment of curve based cryptography for the Internet of Things](https://eprint.iacr.org/2020/514), 2020, for the reported reduction of BN254 security estimates; Consensys, [BLS12-377 parameter documentation](https://github.com/Consensys/gnark-crypto/blob/master/ecc/bls12-377/bls12-377.go), for current curve parameters and its stated security estimate. Security levels are estimates, not measured prover speeds.
[^21]: Michel Dellepere, Pratyush Mishra, Alireza Shirzad, [Garuda and Pari: Faster and Smaller SNARKs via Equifficient Polynomial Commitments](https://eprint.iacr.org/2024/1245), 2024.
