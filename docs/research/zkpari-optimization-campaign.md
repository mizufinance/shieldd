# Transfer proving optimization campaign

Status: authorized and active, 13 September 2026.
Branch: `codex/zkpari-proving-optimization`.

## Objective and ownership

Implement and measure worthwhile candidates from the [second-pass assessment](zkpari-optimization-second-pass.md). Improve complete Transfer proving latency while preserving zero knowledge, statement binding and transaction semantics. Component probes are selection gates, not completion of the campaign. Production adoption is a separate decision.

The existing **Assess shieldd performance gains** thread owns implementation and the single heavy-job slot. The orchestration thread reviews evidence, prioritizes next experiments and coordinates Git checkpoints. Use [live status](../../tools/proving-experiment/STATUS.md) for the active job, current candidate, evidence and next gate. Before a Git mutation, agree on its owner and avoid staging another task's unfinished files.

Keep the completed [desktop comparison](transfer-proving-selected.md) immutable: A 1.84555 s, B 2.47653 s and C 3.02896 s warm. Save new results separately. The old verification/SnarkPack spike remains stopped.

## First implementation round

Run these gates sequentially, with isolated candidate sources and unique artifact directories:

1. **B selected-key DH.** Retain sender-core issuer detection and its required points. Select the key before multiplication on the other three eligible tiers after following every use, including encoding and semantic traces. Compile the complete gnark Transfer and the actual square-R1CS lowering; solve all six scenarios and check the changed relation. Record rows, columns, domain, witness cost and any semantic differences. Use the same eligible circuit improvement for the Groth16 control.
2. **C affine/shared-square Transfer.** Integrate the previously checked complete affine gadgets into an isolated full native Transfer relation. Preserve point-domain and scalar-bound conditions that establish completeness. Compile and solve all scenarios, retaining negative cases. Measure witness-generation cost before setup; do not add overlapping gadget and hinted-method savings.
3. **Structured domain arithmetic.** Prototype actual-size interpolation, vanishing division and masked quotient arithmetic over the same fields. Start with a retained size of 245,760 within a 262,144-point FFT; evaluate 229,376 when a compiled relation fits. Check exact polynomial identities and compare the entire polynomial phase against its existing implementation. Account for extra passes; the FFT does not automatically shrink. Generate no key until projected MSM savings exceed the added work by a useful margin.
4. **B deterministic checked loading.** Integrate the successfully tested fast G1 subgroup criterion into a real experimental loader. Preserve canonical encoding, curve/subgroup checks for every vector, allowed identity behavior, lengths, domain/curve/key association, truncation and trailing-data rejection. Compare against the existing loader using the same key and adversarial inputs. Never substitute scalar multiplication that reduces the group order to zero, a shallow verifying-key-only check, or the 64-bit probabilistic batch routine. Measure fresh-process first use, not just the 97-byte point microbenchmark.

For domain adoption, review setup/interpolation, masked degree bounds, quotient and openings, public-input Lagrange evaluation, descriptor/transcript binding and verifier acceptance together. Reject malformed domains and correctly handle challenge points where a rational vanishing formula would yield 0/0. A domain subset changes the current protocol implementation and requires an explicit correctness/security argument; toy algebra checks alone are insufficient. Do not claim formal certification.

## Additional branches

The first round is not an exclusive list. Continue an additional branch when a concrete cost model or source finding makes it worthwhile:

- **Same-key coset quotient.** For unmasked `q0 = (A^2-B)/Z_H`, use its degree below N to recover it from a disjoint N-point coset, then apply the existing mask expansion. Compare the actual full polynomial phase against the 2N product path, with exact quotient/proof equality. Preserve release-mode invalid-witness rejection by checking the already-computed original-domain row evaluations before interpolation; degree checks on a coset interpolant alone do not establish divisibility. Charge validation and coset preparation. C also retains its B-side mask correction. A already uses a coset-N `computeH`, so the synthetic 2N QAP control is not a measurement of A's deployed polynomial phase.
- **Prepared public polynomials.** B interpolates `zA`, `zB`, and `wA` although `wA=zA-xA`; C interpolates `zA`, `zB`, `xA`, and `xB`. Prepare the exact public-column coefficient polynomials from the checked relation once, apply every fresh public input, and derive B's `wA` or C's public polynomials by a small linear combination. Establish zero columns from the matrices rather than assuming them. Measure saved transforms against the added scalar passes, preparation and resident memory. Keep statement binding and paired-mask proof equality. This can improve the existing protocol and key before a domain-format change.
- Corrected hinted scalar multiplication, including cofactor/output binding, signed decomposition, congruence and zero cases. Start with a complete constrained gadget, then compile the full relation.
- Anemoi/Jive or other suitable hash/circuit changes using reviewed parameters, exact arities and current cryptanalysis; preserve all application obligations and document changed hashes/encodings.
- Shared-square compiler reuse, canonical bit reuse and narrowly selected ladder shapes. Count matrix nonzeros and witness costs as well as rows.
- Dedicated ARM64 squaring, safe alternate SIMD/WASM MSM or curve-correct local GPU kernels. Start with one relevant primitive/real operation, including boundaries and preparation.
- Single-owner prepared bases, bounded scratch reuse and deterministic prepared-key storage after profiling ownership/validation costs.
- One justified compiler or worker-profile control, applied fairly to A/B/C.

Do not rerun the losing Edwards implementation or previous GLV/window/gnark381 controls without a distinct reason. Do not generate large fixed-base tables before a phone-relevant memory estimate. Private flags must not become public circuit choices to skip work. Protocol alternatives such as Garuda, lookups, recursion and post-quantum systems may receive a feasibility assessment, but cannot inherit the present ZK-PARI network conclusion.

## Promotion and measurement

An experiment moves through: proposed, implemented, correctness checked, component measured, full-API checked, selected or rejected. Record the evidence for each transition and a specific next action. A losing implementation is a completed experiment, not a failed campaign.

Only a candidate with credible complete-API benefit receives a new full key. Run all six positive Transfer scenarios, relevant invalid witnesses, altered statements/proofs, canonicality/boundary cases and candidate-specific negatives before timing. For unchanged relations and key-compatible arithmetic changes, compare exact outputs or paired-mask proofs. For redesigned circuits, compare equivalent obligations and application behavior rather than expecting cross-circuit or cross-curve proof bytes to match.

The final A control must receive applicable circuit or arithmetic improvements. Preserve the original shipping measurement as historical context; do not use it to manufacture a win over an intentionally weaker control. Explain any changes to the meanings of A/B/C explicitly in the final report.

Use small paired diagnostics to choose winners. After selecting combined candidates, run one matched desktop session: A/B/C, one representative scenario, one common worker profile, two warmups and five warm proofs plus one fresh-process first proof each. That is 18 measured proofs and six warmups. Include logical-witness processing, solving, mapping, FFI/IPC, encoding and all required online work. Verification is a correctness check outside the timer. Charge checked preparation to first use, report RSS and extra storage, and distinguish a fresh process from a flushed disk cache. Use fresh randomness for ordinary timing.

Apply the same compact comparison to physical phones when devices and build access exist. Missing phones do not block feasible desktop work and must not be represented by desktop ARM numbers. Avoid broad grids, proof corpora and unsupported tail-latency claims.

## Resources, persistence and completion

Use the existing resource guard and repository limits: one heavy job total, Cargo/Rayon/Go two by default, serial expensive proof tests. Inspect memory, swap, disk and competing workloads first. Stop the campaign's own heavy work on pressure, diagnose before retrying, and do not modify an executing script. Do not interrupt unrelated work or increase global resources.

Commit coherent source/report milestones on the experiment branch and push without force. Save compact raw timings, identities and conclusions with the sources. Keep generated keys, witness/proof corpora, build outputs, runtime downloads and large caches out of Git; retain their local provenance and hashes. A checkpoint commit does not imply production readiness or a completed final measurement.

The desktop campaign is complete when prioritized worthwhile candidates have been implemented and evaluated or rejected on explicit evidence, surviving combinations have passed full gates and received a fair compact comparison, and the results and source checkpoints are saved. Report device/access blockers separately. Do not stop merely after a successful compile or component probe, and do not continue a weak branch indefinitely without a new reason.
