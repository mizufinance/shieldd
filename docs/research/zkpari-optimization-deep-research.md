# Further optimization of the Transfer zk-PARI provers

This is the first research checkpoint. See the [second-pass assessment](zkpari-optimization-second-pass.md) for completed optimization outcomes, the current matched baseline, and the new domain-subset and checked-loading investigations.

The strongest next direction is to reduce the circuit and commitment work that remains after the successful gnark-crypto integration. C also has a concrete implementation opportunity: prepare the immutable MSM bases in the representation that blst consumes. A wholesale language or curve change is less compelling than these targeted interventions.

Three investigations deserve priority: circuit-oriented Edwards formulas for C; corrected hinted scalar multiplication for B and C; and prepared, combined MSMs for C, with gnark-crypto BLS12-381 as one independent arithmetic control. B also has a concrete phone-oriented arithmetic lead in EdMSM, distinct from its current bucket implementation. Mixed-radix domains are a particularly useful longer-term research direction because they could turn moderate circuit savings into smaller FFTs and commitments. None of these proposals has a measured speedup in this experiment yet.

## Scope and measured starting point

A is shipping gnark Groth16 on BLS12-377, using the Decaf377 Transfer relation. B retains that relation and gnark witness solving, lowers it to square R1CS, and proves with zk-PARI. Its selected development arithmetic now uses persistent gnark-crypto BLS12-377 MSMs with combined, resident bases. C uses the native Commonware draft, blst and BLS12-381, with a separately implemented Jubjub/Poseidon Transfer circuit preserving the required transaction obligations.[^1][^2]

| Candidate | Complete warm API median | Interpretation |
| --- | ---: | --- |
| A, shipping Groth16 | 1.8502 s | Frozen desktop comparison |
| B, original optimized Arkworks arithmetic | 3.5661 s | Same frozen comparison |
| C, optimized native circuit and quotient | 3.6630 s | Same frozen comparison |
| B, separate gnark-crypto MSMs | 2.5773 s | Later matched arithmetic follow-up |
| B, combined gnark-crypto MSMs | **2.4240 s** | Same follow-up as preceding row |

The latest B result includes the encoded-witness API boundary, Go solving/transport, checked assignment mapping, proving and output handling. Its median proving phase is 2.3154 s; Go round-trip and mapping are approximately 69 and 37 ms. API overhead is counted. Removing it cannot supply the next substantial improvement.[^2]

Comparing the latest B result with historical A suggests a remaining 31% latency disadvantage; closing that gap requires about **24% less B time**, not 31%. This is a planning calculation across sessions, not a new matched benchmark. An illustrative 20% lead over historical A would require B near 1.480 s, approximately 39% below its current result. There is no defensible guarantee that engineering changes alone will achieve this.

The follow-up's 85.91 s joint initialization includes multiple resident workers and reference state. It is not an isolated first-proof result for the proposed B deployment. Frozen first-proof times are A 22.90 s, B 71.99 s and C 26.62 s. Physical-phone performance remains unmeasured.[^1][^2]

## What the cost inventory implies

C currently has 232,683 rows and 232,703 columns in a domain of 262,144. Its operation inventory partitions as follows; these categories must not be added again to component totals such as encryption or authorization.[^3]

| Operation category | Rows | Share of all rows |
| --- | ---: | ---: |
| Variable-base multiplication, nine 252-bit and two 129-bit calls | 65,874 | 28.3% |
| Fixed-base multiplication, nine 252-bit calls | 22,635 | 9.7% |
| Hashing | 82,248 | 35.3% |
| Subgroup membership checks | 910 | 0.4% |
| Residual operations | 61,014 | 26.2% |
| Input links | 2 | <0.1% |

Tree hashing accounts for 49,440 of the hash rows: 120 five-input hashes at 412 rows each. The large encryption component accounts for 69,109 rows, but includes some of the operations above. It is an entry point for inspection, not an additional independent saving.

Reaching a 131,072 domain requires removing at least 101,611 rows and 101,631 columns: approximately 44%. Even deleting every hash row leaves 150,435 rows. Deleting every scalar multiplication leaves 144,174. Halving both categories still leaves approximately 147,305. Consequently, “a hash twice as efficient” is not by itself a credible route to another domain halving.

Fewer rows still help some witness and commitment work within the same domain. However, the dense quotient and opening vectors do not shrink proportionally until their domain or degree bounds change. Every circuit proposal should report rows, columns, matrix nonzeros, relevant polynomial lengths and MSM lengths, rather than one constraint count.

B has 241,626 lowered rows, including four boundary/outlining rows, in a 262,144 domain. Its original gnark relation has 163,396 constraints. Another full radix-two halving is also a substantial circuit project.[^1]

## Ranked experiments

The order below balances evidence of unused opportunity, plausible end-to-end impact and applicability to phones. It does not imply that every row should become a benchmark.

| Priority | Investigation | Applies to | First decision artifact | Principal limitation |
| --- | --- | --- | --- | --- |
| 1 | Circuit-specific affine addition/doubling and shared square expressions | C; selected compiler ideas also B | Costed gadget comparison, then full compile inventory | Row savings may remain within the same domain |
| 2 | Hinted scalar multiplication with correct subgroup and scalar binding | B and C | Correctness argument and compiled gadget costs | Recent cofactor attack; extra checks may erase savings |
| 3 | Prepared affine, combined MSMs; one gnark-crypto381 control | C | Actual-operand equivalence and boundary-inclusive comparison | BLS12-377 results do not predict BLS12-381 results |
| 4 | EdMSM coordinate implementation | B | Source-level comparison, then one real-operand probe | Older mobile baseline; current batch-affine path may win |
| 5 | Mixed-radix domain feasibility | B and C | Reviewed domain/degree analysis and static target sizes | Construction and implementations assume radix two |
| 6 | Memory-bounded fixed-base MSM precomputation | B and C | Table-size and break-even calculation | Published fast configurations need gigabytes |
| 7 | Security-vetted hash replacement or compression specialization | C; separate B relation variant | Complete hash recipe and square-R1CS costs | Parameter/security review; state commitment changes |
| 8 | GPU MSM on actual target hardware | Both | Curve-compatible kernel and memory feasibility | Phone integration and shared Groth16 benefit |

The first implementation round should select one circuit intervention and one arithmetic intervention. The remaining entries are research branches with explicit gates, not a request to build eight complete provers.

## 1. Optimize C's point formulas for constraints

C's `group.rs` uses extended Edwards coordinates during scalar multiplication. `Extended::double` computes four coordinate outputs; variable-base radix-four multiplication performs two doublings and an addition per window. These are sensible ordinary group-arithmetic formulas, but their operation count is not necessarily the minimum number of square constraints.[^4]

In ordinary arithmetic, inversion is expensive, making projective or extended coordinates attractive. In a circuit, division can instead witness a quotient and constrain its product with the denominator. The pinned Commonware circuit already implements this mechanism in `Var::div`, with an explicit nonzero-denominator obligation. C's current affine helper instead computes an inverse of a product of denominators and then multiplies it into both outputs.[^4]

The first candidate should use specialized circuit operations, retaining efficient native witness generation separately. Compare complete affine Edwards addition and doubling with the current extended formulas. The pinned gnark twisted-Edwards implementation offers concrete formula references: its affine addition uses six multiplication/division relations, and doubling uses squares, one cross-product and two constrained divisions. Translate and count the actual square-R1CS result; ordinary R1CS counts are not interchangeable with it.[^5]

Shared squares merit a related compiler investigation. If a circuit already constrains `u²` and `v²`, the identity `2uv = (u+v)² − u² − v²` needs one additional square. A generic two-square multiplication lowering can miss that reuse. The saving depends on existing expressions and whether outlining introduces extra columns or dense linear combinations. Start with repeated point expressions, not a global optimizer rewrite.

The correctness conditions are concrete. Inputs must be valid points, each exceptional denominator must be excluded or handled by a complete formula, identity and zero-scalar behavior must remain correct, and an output must be bound to the same point representation used by encoding and downstream constraints. A free quotient witness in a `0/0` case is unacceptable. Extended-coordinate formula literature provides algebraic references, but its CPU timings do not establish circuit savings.[^6]

**Smallest useful experiment:** compare one 252-bit variable-base multiplication, one 129-bit multiplication, and one fixed-base multiplication at compile/correctness level. Exercise zero, identity where allowed, inverse points and canonical scalar boundaries. Then compile the full six-scenario relation once. Generate a new full proving key only if the resulting inventory shows material work reduction or contributes to a reachable smaller domain.

**Expert judgment:** this is C's best first circuit intervention because the expensive operations and a compatible constrained-division primitive are visible in the source. Expect useful savings, but do not assume this alone removes 36,095 columns, much less 101,631. B already uses affine gnark point operations inside its custom ladders, so the same formula rewrite is not an equally large opportunity there.

## 2. Hinted multiplication, including the recent correction

Eagen, El Housni, Masson and Piellard's LATINCRYPT 2025 work replaces direct scalar-multiplication computation inside the circuit with a hinted output and a shorter verification relation. Their presentation reports a Jubjub example decreasing from 3,314 to 2,401 R1CS constraints. These are gadget results in their environment, not complete Transfer or square-R1CS speedups.[^7]

A simple form seeks short integers `u,v` satisfying `u + vk = 0 mod r`, where `r` is the curve subgroup order. For a claimed `Q = [k]P`, the circuit checks a short joint multiplication relation `[u]P + [v]Q = O`. Computing the output and decomposition outside the circuit can be cheaper than constraining every step of a long ladder. This does not require changing the outer pairing curve merely to obtain a real GLV endomorphism.

There is a material update: El Housni's August 2026 preprint shows that the certification can accept an incorrect torsion-shifted output on cofactor curves when prime-subgroup membership is missing. It describes subgroup checking and a more economical preimage-binding remedy. This is directly relevant to Jubjub and to adapting a method to Decaf companion-curve representations.[^8]

B's hot Transfer paths call Shieldd's `ScalarMulLEBits` and `ScalarMulWindow2LEBits`, which implement ordinary ladders. They do not automatically inherit gnark's `scalarMulFakeGLV` merely because the project uses gnark v0.15.0. The dependency contains a hinted method, but the relevant custom callers and their representation semantics must be inspected individually.[^5]

For C, existing cofactor-preimage membership gadgets are useful building blocks. They do not automatically constrain a newly hinted multiplication output. Bind every required output explicitly, and retain on-curve checks and nonidentity requirements where the transaction statement requires them. For B, distinguish Decaf quotient-group equality from equality of an Edwards representative; preserving the abstract point alone may not preserve coordinate-dependent encodings.

The scalar equation also deserves careful treatment. The circuit field modulus and subgroup order differ. An equality modulo the circuit field is not automatically an integer congruence modulo the subgroup order. Signed decomposition, quotient bounds, nonzero output coefficient, canonical inputs and any no-wrap or limb arithmetic must all be included in the cost. Zero scalars need a complete case, not an assumed nonzero decomposition.

**Smallest useful experiment:** first specify one corrected variable-base gadget for each representation. Compare compiled square-R1CS rows, columns and witness cost with the actual custom ladder, including all subgroup and scalar-binding checks. Include adversarial hint tests for trivial decompositions, torsion-shifted outputs and malformed quotient/sign values. Test fixed-base and 129-bit cases only if their cost model suggests a benefit; neither necessarily benefits from a general hinted method.

**Expert judgment:** this is the strongest new research-backed circuit technique for both candidates. C has 65,874 variable-multiplication rows, making the opportunity substantial. Nevertheless, even a hypothetical 30% reduction of that category removes only about 19,762 rows; it does not alone reach the 196,608 domain target. Formula and hinted-method savings overlap and must be measured together, not added as independent percentages.

This experiment retains zk-PARI as the proving system if it proves the same relation. Equivalent changes to B must also be evaluated as a Groth16 circuit control. No claim about a vulnerability in Shieldd's current custom ladders follows from the paper about hinted gadgets.

## 3. Prepare C's MSM inputs, then compare one alternative

The pinned Commonware G1 MSM path filters points/scalars, converts the selected projective points to affine with `batch_to_affine`, flattens scalar bytes, and calls blst. That conversion is repeated on each invocation even though proving-key bases are fixed across proofs.[^4]

Prepare checked affine bases once, bind the prepared object to the exact key and curve, and retain the indexing needed to remove identity bases safely. Scalars and masking randomness remain fresh per proof. A prepared path should avoid rebuilding point vectors and repeating normalization, while preserving blst's required identity handling. Reusable scratch storage is a separate small opportunity once its actual ownership and allocation costs are known.

G1 affine coordinates occupy two base-field elements, versus three for projective coordinates. At 48 bytes per field element, replacing a projective representation with an affine one can reduce storage from 144 to 96 bytes per point before container overhead. Keeping both representations instead increases resident memory; an implementation should account for that distinction explicitly.

Next apply the algebraically compatible combined-MSM arrangement already proven useful for B: share bucket reduction for contributions to the same output commitment/opening without per-proof concatenation of bases. Confirm the exact C transcript dependencies before combining operations. Contributions needed at different challenge stages cannot simply be scheduled together.

Only then compare the prepared blst path with gnark-crypto's BLS12-381 `MultiExp` on the same real C operands. The Go boundary should be coarse, bases resident, and all conversion and transport included. This is an arithmetic substitution; Commonware can still supply the circuit, polynomial/protocol code and verifier. It should be labeled a hybrid C variant rather than a pure native-stack result.[^9]

**Smallest useful experiment:** one capture of each required C MSM class, two warmups and three paired calls for the selected alternative. Check exact group outputs. If projected savings survive the boundary, run full correctness gates and a short ordinary-API comparison. Prepared blst must be the control so that avoidable wrapper costs do not masquerade as a curve-library disadvantage.

**Expert judgment:** high confidence that repeated preparation work exists; medium confidence that removing it produces a useful end-to-end gain. The large bucket arithmetic remains. B's measured gain from gnark-crypto377 cannot be transferred numerically to gnark-crypto381, where field arithmetic, assembly, scalar sizes and the competing blst path differ.

The pinned gnark-crypto377 implementation already includes batch-affine bucket processing for relevant large-window cases. “Add batch affine MSM” is therefore not a fresh missing optimization for B. Existing GLV/window investigations are also complete; neither should be repeated without a new algorithmic reason.[^2][^9]

### B's additional arithmetic candidate: EdMSM

Botrel and El Housni's EdMSM work and ZPrize mobile submission use optimized twisted-Edwards coordinates for BLS12-377 G1 MSMs. The artifact distinguishes the coordinate improvement from its other ARM64 and field-arithmetic optimizations. Its large total gain over the old reference cannot be treated as the expected gain over current gnark-crypto.[^24]

The pinned v0.20.1 `MultiExp` dispatch inspected here uses Jacobian-extended and batch-affine bucket processors. That establishes a concrete comparison to investigate; importing a Go package named gnark-crypto does not mean this exact historical Edwards-coordinate route is selected. Confirm the algorithmic differences before implementing a port, including improvements that may already have landed elsewhere in the field layer.

This changes coordinates for the **outer BLS12-377 proof-group arithmetic**, not the Decaf transaction curve or circuit. Preserve the subgroup mapping, identity/exceptional-point treatment and exact output group element. Preconvert immutable bases and charge the preparation and resident representation costs. Retain the existing combined operations and worker boundary.

**Smallest useful experiment:** after the source comparison, run one selected EdMSM implementation against current batch-affine MultiExp on B's real largest operation, with equal resources and full conversion accounting. Prefer the actual phone when available; desktop ARM is only a screening result. Reject a losing implementation without another window sweep.

**Expert judgment:** a more concrete B CPU/phone lead than another generic GLV parameter adjustment, and potentially less memory-intensive than large fixed-base tables. Confidence in a win is moderate-to-low because the published mobile control is old and current batch-affine arithmetic is a strong competitor. The cited implementation targets BLS12-377; it is not a drop-in C/BLS12-381 backend.

## 4. Mixed-radix domains can change the circuit target

The current reasoning treats the next useful domain as 131,072. That is an implementation restriction, not a statement that the scalar fields lack intermediate multiplicative subgroups. Static integer divisibility using the exact pinned scalar moduli establishes the following possibilities.[^10]

| Domain size | Field availability | Circuit headroom or required reduction | Domain reduction from 262,144 |
| --- | --- | --- | ---: |
| 196,608 = 3 × 65,536 | Both fields | B needs 45,018 fewer rows; C needs 36,075 fewer rows and 36,095 fewer columns | 25% |
| 229,376 = 7 × 32,768 | BLS12-377 | B needs 12,250 fewer rows, plus column check | 12.5% |
| 245,760 = 15 × 16,384 | BLS12-377 | Current B row count fits; all other bounds require checking | 6.25% |
| 233,472 = 57 × 4,096 | BLS12-381 | Current C row and column counts fit | 10.94% |

The **196,608 target** is the most attractive general research option: a small radix-three component and about 15.5% fewer C columns or 18.6% fewer B rows. It offers a plausible combination target for circuit interventions. Higher odd radices or multiple odd factors complicate the FFT and can erase a modest size advantage; the last two rows are mathematical possibilities, not recommended full implementation branches.

Arkworks 0.6 includes a mixed-radix domain implementation. Its BLS12-381 field configuration declares a small subgroup of order three; the pinned BLS12-377 configuration does not declare one, despite the modulus admitting it. Also, `GeneralEvaluationDomain` attempts a radix-two domain first and only falls back to mixed radix. A type-name substitution would not necessarily select a smaller domain.[^10]

There is an essential protocol gate. The published Pari construction defines its smooth subgroups as having power-of-two size. The familiar vanishing-polynomial identity `Z_H(X) = X^N − 1` holds for any multiplicative subgroup of size N, but that alone does not prove that every indexing, basis, setup and soundness argument generalizes unchanged.[^11]

Audit the full path: row/column padding, interpolation order, matrix bases, public-input locations, quotient and opening degree bounds, masking terms, key generation, transcript binding, serialization and verification. The quotient's supporting transform must also use the intended mixed size—silently rounding a `2N` transform back up can destroy the projected benefit. New domain-specific keys are required.

**Smallest useful experiment:** a mathematical and code-level feasibility note first, followed by small correctness-only domain examples. A full Transfer key and timed proof are justified only after the domain extension is reviewed and the actual circuit fits. This is a protocol research branch, not an established drop-in FFT optimization.

**Expert judgment:** this is the most interesting structural lead because it relaxes an otherwise severe circuit threshold. A 25% smaller domain is not automatically 25% faster proving: model `T = a + bN log N + cN`, account for mixed-radix constants, and measure the real vectors. Groth16 over the same field can also potentially benefit from a domain extension; its 163,396-row relation already fits 196,608. The opportunity is not exclusive to zk-PARI.

## 5. Fixed-base MSM precomputation with a phone budget

Proving-key MSM bases are reused across proofs, so fixed-base algorithms remain relevant after generic Pippenger tuning. Luo, Fu and Gong's CHES 2023 work studies this exact setting and provides a BLS12-381/blst artifact. Its bucket construction reduces online work using precomputed point multiples, but trades it against a large table.[^12]

The published construction can require `3nh` precomputed points, with `h` scalar digits. For illustration, taking approximately 786,432 bases, 16 digits and 96-byte affine points requires **3.375 GiB for that table alone**. This is a derived storage calculation, not a measured allocation or selected parameter set. It excludes the rest of the prover. The authors' artifact explicitly warns about multi-gigabyte configurations and modifies blst internals.[^12][^13]

A more recent April 2026 preprint investigates structured precomputation for small MSMs. Its headline improvements are against fixed-window methods in the small-input regime. They do not establish a similar gain for this prover's hundreds of thousands of bases or for modern gnark-crypto.[^14]

**Smallest useful experiment:** choose one additional-table budget before implementation—for example, 128 MiB as an initial engineering budget, subject to the actual phone's available memory. Derive which fixed-base method or partial-table arrangement fits. Include scalar recoding, table loading, resident memory, cache behavior and preparation time in the model. If no configuration offers a plausible material gain, close the branch without running a benchmark.

For an accepted design, compare only its selected configuration on the real largest MSM. Use `preparation_time / per_proof_saving` to report the number of proofs needed to amortize preparation. Persistent storage can reduce repeated computation but introduces artifact size and checked loading costs. A wallet restarted for one transaction may never amortize a desktop-friendly table.

**Expert judgment:** worth a bounded assessment for B, whose remaining work is overwhelmingly MSM arithmetic. Lower priority for phones than reducing circuit/domain size or avoiding duplicate representations. Do not import a large research implementation wholesale or treat its old Pippenger baseline as equivalent to the current optimized control. Any useful method may also accelerate Groth16.

## 6. Hashes, tree structure and shared computation

Poseidon2 changes the linear layer and permits compression-oriented usage. Its ordinary computation improvements are relevant to witness generation and sparse matrix work. In square R1CS, linear combinations are already cheap in row count, so a substantially cheaper linear layer does not imply the same reduction in nonlinear constraints.[^15]

Anemoi/Jive is a more interesting constraint-count candidate than a straightforward Poseidon-to-Poseidon2 rename, especially for Merkle compression. The authors maintain both research and implementations, including BLS12-381 code. Their site also records successive cryptanalytic developments through 2025. Round counts and exact instantiation must be evaluated against those updates.[^16]

The 2024 Algebraic FreeLunch paper gives algebraic attacks on several families including Anemoi and Griffin. This is a reason to require a current parameter justification, not a claim that every instance of those hashes is broken. A low-constraint recipe is not a meaningful candidate if its security assumptions or margin are weaker than the required target.[^17]

**Smallest useful experiment:** select one documented compression/hash recipe after its security review, then compile a five-input tree hash and one representative longer sponge message. Count square constraints and witness operations, including inverse-exponent witnesses and their checks. Only then calculate the whole-Transfer saving from the inventory. Do not benchmark a catalogue of hash families.

Hash changes affect commitments, roots, addresses and domain separation. They can preserve the logical Transfer obligations but create a different concrete cryptographic relation. C is the natural experimental home; B with a new hash must be labeled a distinct relation variant with a matching Groth16 control.

Tree-path sharing needs equally careful accounting. Two private paths may share ancestors, but a fixed circuit cannot simply skip unknown shared work without implementing and charging for the necessary selection/consistency constraints. Publishing path relationships or benchmarking specially adjacent leaves changes the privacy or workload. Audit actual guaranteed reuse before assigning savings to a multiproof design.

Several smaller equivalent changes remain useful when combined toward a domain threshold: share canonical decompositions of the same variable, reuse identical bound checks and intermediate hashes, and select the correct audit key before scalar multiplication where semantics permit. C already includes the principal selected-key DH optimization. Its measured or estimated savings must not be credited a second time. Applying an equivalent change to B also creates an A control.[^1][^3]

## 7. Zakura, alternative curves and accelerators

Zakura Common includes BLS12-381, Jubjub, Bellman and Halo2-related forks. That makes selected code relevant to C, but does not establish that its complete stack is a faster PARI implementation. Its public release material also includes proving-key reuse and block-verification scheduling gains, which are different from faster warm Transfer proving.[^18][^19]

Use a source-specific Zakura optimization when it addresses a measured hot path: field assembly, MSM representation, allocation or witness computation. The evidence reviewed does not establish a reproducible Zakura-versus-prepared-blst win for this workload. It therefore does not justify adding a third arithmetic backend before the simpler C comparison. Halo2 or Sapling proving speedups do not transfer automatically to PARI.

Bandersnatch is an inner-curve alternative over the BLS12-381 scalar field with an efficient endomorphism. The original paper reports faster ordinary scalar multiplication but also reports no improvement in its evaluated R1CS constraint count. It should not replace Jubjub solely on the strength of native arithmetic benchmarks.[^20]

Corrected hinted multiplication on the current inner curve is the better first experiment. If a later Bandersnatch-specific decomposition has a materially lower fully constrained cost, it can be assessed separately, including subgroup representation, encodings and complete point formulas. Changing the outer pairing curve and changing the inner transaction curve are different decisions.

GPU MSM remains a potentially larger arithmetic intervention. Public work includes Mopro's Metal MSM effort and a BLS12-381 WebGPU Groth16 prover. These provide implementation leads; they do not establish phone results for either current candidate.[^21][^22]

An eventual accelerator experiment should preserve resident public bases, include scalar transfer and synchronization, verify exact group outputs and bound scratch memory and kernel duration. Use the real target's supported compute API and curve. A BN254 or CUDA benchmark does not predict BLS12-377 or BLS12-381 performance on an iPhone. Evaluate Groth16 under comparable accelerator access. Thermal behavior and memory feasibility matter more than another desktop sample sweep.

## Lower-priority and separate objectives

Preparing public-polynomial contributions, specializing polynomial squaring and reducing allocations can improve the remaining field work. They deserve attention when a phase profile identifies a concrete cost. For B, the previously profiled non-MSM total was only about 0.34 s, so even eliminating all of it would project around 2.08 s from the latest API result. This approximate bound does not support a full Go polynomial rewrite as the route to comfortably beating A.[^2]

First-proof latency warrants a separate artifact-loading investigation. Compare checked compressed loading with a well-defined prepared or uncompressed format; identify whether square roots, subgroup validation or duplicated reference preparation dominate. Preserve the provenance and integrity checks appropriate to the artifact. Do not report unchecked decoding as a speed optimization, or assume the follow-up's joint initialization describes a deployed candidate.

Background preparation can reduce latency after Send, but total work must include it. Fresh proof masks remain mandatory; precomputing unrelated immutable state does not permit reusing randomness. Report one-shot and amortized costs separately and apply comparable preparation to A.

Garuda, from the same research line as Pari, supports custom gates and free linear gates and targets faster proving. It is a separate construction with different proof-size and verification scaling. It belongs in a new proof-system investigation, with its own zero-knowledge and network analysis, rather than being labeled a faster configuration of the current zk-PARI variants.[^23]

## A compact decision sequence

1. **Static and compile work:** inventory C affine formulas and shared-square lowering; specify corrected hinted multiplication for B and C. Produce one combined row/column projection per candidate, with overlapping savings removed. In parallel as a research topic, resolve whether a mixed-radix extension preserves the required construction; no competing heavy jobs.
2. **One arithmetic comparison for C:** prepared/combined blst against the current native control, followed by one gnark-crypto381 control only if still justified. Maintain separate labels for pure native and hybrid C.
3. **Select at most one further intervention per candidate:** use measured remaining costs and the reachable domain target. For B, inspect EdMSM before another arithmetic rewrite. Fixed-base tables require a memory model first; a hash replacement requires a security-qualified recipe first.
4. **Integrate winners and verify:** all six Transfer scenarios, malformed/wrong-statement/invalid-witness checks, and targeted adversarial tests for changed gadgets. Arithmetic-only substitutions should preserve exact group results and paired-mask proof bytes where the protocol permits. A changed circuit/key instead needs relation-equivalence and ordinary proof verification.
5. **Run the short final comparison:** on each device, A/B/C each get two warmups, five measured warm proofs and one fresh-process first proof—18 measured proofs plus six warmups. All six scenarios are correctness coverage, not six timing matrices. Any necessary shared Groth16 circuit control is one explicitly labeled targeted comparison, not a Cartesian product of variants.

The API timer must include witness solving, mapping, foreign boundaries and proof encoding. Record initialization, table preparation and artifact loading separately and in the first-proof result. Fix worker count and source identity, use fresh timing-proof randomness, and retain raw samples, proof verification records and resource measurements. Do not pool diagnostic and final samples or infer physical-phone performance from desktop ARM results.

## Assessment

B is close enough to the historical Groth16 result that a material MSM or domain improvement could change the comparison. C has more visibly unexploited circuit and representation opportunities, but it also starts farther behind and currently lacks B's latest arithmetic work. Neither stack is demonstrably at its optimum.

The best route to a convincing result is **less constrained group work plus fewer dense commitment terms**, supported by efficient prepared arithmetic. A strong CPU/phone lead remains uncertain. Improvements shared with Groth16 may narrow the practical adoption case even while making zk-PARI faster in absolute terms. The experiment should establish that outcome rather than assume a stack change must win.

## Sources

The repository evidence is the development checkpoint available on 13 September 2026. External sources were checked on that date. Arithmetic and circuit calculations above are analytical projections; no new proving or performance runs support the proposed experiments. The [static evidence record](zkpari-optimization-static-evidence.json) preserves input file hashes, exact scalar moduli, domain divisibility and the derived cost calculations.

[^1]: Shieldd. [Transfer proving results](transfer-proving-results.md), [experiment specification](zkpari-proving-experiment.md), and [experiment status](../../tools/proving-experiment/STATUS.md). September 2026. Frozen desktop comparison, candidate definitions and completed optimizations.

[^2]: Shieldd. [gnark-crypto MSM investigation](../../tools/proving-experiment/gnark-msm-probe.md), [combined full-API analysis](../../tools/proving-experiment/cache/gnark-combined-full/analysis.json), and [source manifest](../../tools/proving-experiment/cache/gnark-combined-source/manifest.json). September 2026. Latest matched B result and its measurement limits.

[^3]: Shieldd. [Native tuned inventory](../../tools/proving-experiment/cache/native-tuned-inventory.json) and [native obligations](../../tools/proving-experiment/native-obligations.md). September 2026. Inventory relation digest `c266ae6a5ab86caa5d6eb417e0870bcfb34c05f27b15715f36d6011d87126851`.

[^4]: Shieldd/Commonware. [Native point gadgets](../../tools/proving-experiment/native/src/group.rs), [circuit operations](../../tools/proving-experiment/cache/commonware/cryptography/src/zk/circuit.rs), and [BLS12-381 group implementation](../../tools/proving-experiment/cache/commonware/cryptography/src/bls12381/primitives/group.rs). Local patched draft based on Commonware PR #4523, commit `1a56762927a8ad3300e0594886c28c59d9801769`.

[^5]: Shieldd. [Custom scalar ladders](../../tools/gnark/internal/compliance/scalar_mul.go) and [pinned dependencies](../../tools/gnark/go.mod). Consensys. [gnark v0.15.0 twisted-Edwards point operations](https://github.com/Consensys/gnark/blob/v0.15.0/std/algebra/native/twistededwards/point.go). Exact pinned dependency source inspected locally; formulas and caller applicability, not a claim of security certification.

[^6]: Huseyin Hisil, Kenneth Koon-Ho Wong, Gary Carter and Ed Dawson. [Twisted Edwards Curves Revisited](https://eprint.iacr.org/2008/522). 2008. Ordinary group-operation formulas and their cost model.

[^7]: Liam Eagen, Youssef El Housni, Simon Masson and Thomas Piellard. [Fast elliptic curve scalar multiplications in SN(T)ARK circuits](https://eprint.iacr.org/2025/933). LATINCRYPT 2025. [Authors' presentation](https://yelhousni.github.io/latincrypt25.pdf), October 2025, slide 15, Jubjub comparison. The accessible presentation and paper metadata support the cited result; its R1CS measurements are not square-R1CS measurements.

[^8]: Youssef El Housni. [Cofactor-torsion attacks on hinted scalar multiplications in SNARK circuits](https://eprint.iacr.org/2026/1776). August 2026 preprint. [Author's summary](https://yelhousni.github.io/publication/preprint/preprint26-1776/). Attack model and proposed remedies; a full review of the selected corrected construction remains an experiment prerequisite.

[^9]: Consensys. [gnark-crypto v0.20.1 BLS12-377 MSM](https://github.com/Consensys/gnark-crypto/blob/v0.20.1/ecc/bls12-377/multiexp.go) and [BLS12-381 MSM](https://github.com/Consensys/gnark-crypto/blob/v0.20.1/ecc/bls12-381/multiexp.go). Pinned local dependency source. Supranational. [blst](https://github.com/supranational/blst), accessed September 2026. Arithmetic implementation references.

[^10]: Arkworks contributors. `ark-poly 0.6.0`, `src/domain/mixed_radix.rs` and `src/domain/general.rs`; `ark-bls12-377 0.6.0` and `ark-bls12-381 0.6.0`, `src/fields/fr.rs`. Exact local Cargo-registry sources inspected. [Algebra source repository](https://github.com/arkworks-rs/algebra) and [curve source repository](https://github.com/arkworks-rs/curves). Field moduli, subgroup configuration and domain selection; divisibility calculations independently recomputed from those moduli.

[^11]: Michel Dellepere, Pratyush Mishra and Alireza Shirzad. [Garuda and Pari: Faster and Smaller SNARKs via Equifficient Polynomial Commitments](https://www.usenix.org/system/files/usenixsecurity26-dellepere.pdf). USENIX Security 2026, Appendix B.1.1. Power-of-two smooth-subgroup definition and polynomial basis definitions.

[^12]: Guiwen Luo, Shihui Fu and Guang Gong. [Speeding Up Multi-Scalar Multiplication over Fixed Points Towards Efficient zkSNARKs](https://tches.iacr.org/index.php/TCHES/article/view/10287). TCHES 2023(2), pp. 358–380. [Authors' CHES slides](https://iacr.org/submit/files/slides/2023/tches/ches2023/2_53/slides.pdf), September 2023, slides 10–16 and auxiliary complexity table. Precomputation model.

[^13]: Guiwen Luo. [MSM_blst research artifact](https://github.com/LuoGuiwen/MSM_blst). Accessed September 2026. Modified blst implementation, memory requirements and artifact scope.

[^14]: Saulius Grigaitis. [Optimizing Multi-Scalar Multiplication Over Fixed Bases](https://www.preprints.org/manuscript/202604.0045). Version 1, 2 April 2026; explicitly not peer-reviewed. Small-MSM regime and precomputation tradeoffs.

[^15]: Lorenzo Grassi, Dmitry Khovratovich and Markus Schofnegger. [Poseidon2: A Faster Version of the Poseidon Hash Function](https://eprint.iacr.org/2023/323). 2023. Linear-layer and compression design changes.

[^16]: Anemoi authors. [Anemoi project and security updates](https://anemoi-hash.github.io/), accessed September 2026. [New Design Techniques for Efficient Arithmetization-Oriented Hash Functions: Anemoi Permutations and Jive Compression Mode](https://eprint.iacr.org/2022/840), 2022/Crypto 2023. Algorithm family, implementations and subsequent attack references.

[^17]: Augustin Bariant, Aurélien Boeuf, Axel Lemoine, Irati Manterola Ayala, Morten Øygarden, Léo Perrin and Håvard Raddum. [The Algebraic Freelunch: Efficient Gröbner Basis Attacks Against Arithmetization-Oriented Primitives](https://eprint.iacr.org/2024/347). 2024. Cryptanalytic context for hash-family selection.

[^18]: Zakura contributors. [Zakura Common libraries](https://github.com/zakura-core/common). Accessed September 2026. Component and curve inventory; no measured PARI performance claim.

[^19]: Zakura. [Release: Zakura 1.0.4](https://zakura.com/announcements/zakura-1-0-4/). 26 July 2026. Proving-key reuse and block-verification scheduling, distinct from warm proving-kernel improvements.

[^20]: Simon Masson, Antonio Sanso and Zhenfei Zhang. [Bandersnatch: a fast elliptic curve built over the BLS12-381 scalar field](https://eprint.iacr.org/2021/1152). 2021; revised September 2024. See original [reference implementation](https://github.com/asanso/Bandersnatch). Ordinary scalar-multiplication results and the paper's stated R1CS limitation.

[^21]: Privacy & Scaling Explorations / Mopro. [Mopro Metal MSM v2](https://pse.dev/blog/mopro-metal-msm-v2). Accessed September 2026. Mobile GPU implementation lead; results are not a measurement of Shieldd's curves and prover.

[^22]: Heliax contributors. [webgpu-groth16](https://github.com/heliaxdev/webgpu-groth16). Accessed September 2026. BLS12-381 WebGPU proving implementation and backend design.

[^23]: Michel Dellepere, Pratyush Mishra and Alireza Shirzad. [Garuda and Pari](https://www.usenix.org/conference/usenixsecurity26/presentation/dellepere). USENIX Security 2026. See also the [August 2024 manuscript](https://eprint.iacr.org/2024/1245.pdf), introduction and construction overview, for the distinct Pari and Garuda objectives.

[^24]: Gautam Botrel and Youssef El Housni. [EdMSM: Multi-Scalar-Multiplication for SNARKs and Faster Montgomery multiplication](https://eprint.iacr.org/2022/1400). 2022. [Authors' ZPrize mobile harness](https://github.com/gbotrel/zprize-mobile-harness), particularly its optimization notes. Coordinate-specific BLS12-377 implementation and historical mobile measurements.
