# Isolated arithmetic experiment results

Agent report. For subsequent parent proof timings and final decisions, see
[the consolidated report](../../circuit-state-optimization-experiments.md).

Source baseline: current Shieldd working tree on 2026-09-21, measured with temporary Commonware `EXPERIMENT_METRICS` instrumentation. Variants live in `variants/`; `run_variant.py` and `run_bundle.py` byte-restored live sources after each measurement. `metrics.json` contains rows, allocated columns, matrix nonzeros, and domains.

| Family | Baseline rows | Routing delta | Tree selector delta | IVK inverse delta | Combined delta | Bounded disclosure delta |
|---|---:|---:|---:|---:|---:|---:|
| Transfer | 212,174 | -961 | -960 | -500 | -2,421 | 0 |
| Reshape 1→8 | 157,049 | -961 | -448 | -500 | -1,909 | 0 |
| Reshape 8→1 | 185,925 | -961 | -1,792 | -500 | -3,253 | 0 |
| Withdrawal | 119,090 | -961 | -832 | -500 | -2,293 | 0 |
| Seizure | 16,604 | 0 | -192 | 0 | -192 | 0 |
| Disclosure | 159,226 | 0 | 0 | 0 | 0 | -50,160 |
| History generation | 15,123 | 0 | -160 | 0 | -160 | 0 |
| History chunk 10 | 143,357 | 0 | -1,600 | 0 | -1,600 | 0 |

Bounded comparison drops Disclosure from domain 262,144 to 131,072. Other measured variants preserve all family domains. Routing, tree, authorization, range, and Disclosure existing focused tests passed; Disclosure included a real proof test. Dedicated bounded-comparison and canonical-limb boundary tests passed in the combined suite. Real native Pari prove/verify tests ran in the combined 57-test circuit library suite. Full application/workspace feature-gated prover and release suites were not run.

The measured deltas are exact for these compiled relation shapes. Individual deltas do not establish independent savings for every later candidate; the final bundle below captures their combined effect. Proving time and key size require separate measurement.

Amount-bit reuse across note and balance or floor-bit reuse across multiple spends still requires typed cross-gadget values; the extracted gadget experiment below does not claim a full-family result for those paths.

Matrix-detail examples from baseline to independently measured variants: Transfer routing+tree+IVK changes allocated columns by -2,451, squared matrix nonzeros by -127,652, and linear nonzeros by -3,678. Disclosure bounded comparison changes allocated columns by -50,160, squared nonzeros by -235,323, and linear nonzeros by -84,216. Seizure tree-only changes columns by -192 and remains at domain 32,768; the final bundle crosses to domain 16,384 after the bounded age comparison and position reuse.

## Final combined relation, width 10

The byte-restored bundle `run_bundle.py --limb-equality --full-tests` passed all 57 circuit library tests, including native Pari proofs, in 453.28 seconds. These include native Pari prove/verify tests for the circuit families; full application/workspace feature-gated prover and release suites were not run. The candidate uses bounded comparisons, a 128/127-bit canonical limb comparator with high-limb equality, routing mask implications, IVK inverse, signed balance, quaternary selection and position reuse, 328-field Disclosure packing and amount-bit reuse, and a shared history target decomposition. No live source was retained after the run.

| Family | Baseline rows / columns / domain | Combined rows / columns / domain | Rows saved |
|---|---:|---:|---:|
| Transfer | 212174 / 212126 / 262144 | 204511 / 204426 / 262144 | 7663 |
| Reshape 1→8 | 157049 / 156987 / 262144 | 153460 / 153362 / 262144 | 3589 |
| Reshape 8→1 | 185925 / 186308 / 262144 | 179676 / 180023 / 262144 | 6249 |
| Withdrawal | 119090 / 119143 / 131072 | 114550 / 114566 / 131072 | 4540 |
| Seizure | 16604 / 16686 / 32768 | 16224 / 16306 / 16384 | 380 |
| Disclosure | 159226 / 158090 / 262144 | 90949 / 89846 / 131072 | 68277 |
| History generation | 15123 / 15166 / 16384 | 13330 / 13368 / 16384 | 1793 |
| History chunk 10 | 143357 / 143740 / 262144 | 118533 / 118893 / 131072 | 24824 |

Attribution measured separately before the bundle: routing saves 961 rows per applicable action; tree selection saves eight rows per level; IVK inverse saves 500 rows per authorized family; bounded Disclosure saves 50,160 rows and halves the domain. The residual combined savings from signed balance, 48/128-bit call sites, limb comparison, packing, constrained-value reuse, and cross-gadget effects were not measured one by one and must not be presented as independent additive gains. A three-comparison limb ablation produced 120,993 rows/121,353 columns for width-ten history chunk; high-limb equality reduced each by 2,460 at unchanged 131072 domain.

## Capacity and width

| Fixed history width | Rows | Columns | Domain |
|---:|---:|---:|---:|
| 8 | 95077 | 95365 | 131072 |
| 9 | 106805 | 107129 | 131072 |
| 10 | 118533 | 118893 | 131072 |
| 11 | 130261 | 130657 | 131072 |
| 12 | 141989 | 142421 | 262144 |

Width 11 passes the focused ordered-chunk and near-u64-overflow test with the fixture's index arithmetic changed to `CHUNK_SIZE`. It has only 415 columns of headroom below the current domain boundary; width ten is the fully verified default until width-eleven proving latency is measured. One-note Disclosure with the combined arithmetic/packing candidate compiles to 5,172 rows, 5,123 columns, domain 8,192. A separate circuit evaluation accepted a valid note and rejected inactive-first, note amount mismatch, and wrong digest cases. Capacity one still needs a separate catalogue/family identity and native proof benchmark before adoption.

## Extracted decomposition gadget

Repeated decomposition of one already constrained value was measured as an extracted relation, not a full-family change: 128 bits twice costs 261 rows versus 132 with one shared bit vector; 48 bits twice costs 101 versus 52; 48 bits eight times costs 395 versus 52. Out-of-range 48-bit and 128-bit witnesses failed. This supports typed cross-gadget reuse but does not quantify note/balance or multi-spend floor integration in a full transaction.

The 16,384-domain Seizure relation has 78 columns of headroom. The 131,072-domain width-eleven history relation has 415 columns of headroom. Small later additions can reverse these boundary wins; remeasure after each source change. The source remains at Disclosure capacity 32 and history width 10. A capacity-one Disclosure would require a separate public family identifier, relation key, and registry framing; simply changing the global constant is an isolated cost experiment, not an integration plan. All measured bundle changes were temporary and restored byte-for-byte.

## Adoption boundaries

A one-note Disclosure is an isolated relation result. The current off-chain package fixes `CIRCUIT_ID` to the 32-slot relation and selects `Family::Disclosure`; requests already reveal 1–32 selected outputs. Production use needs a distinct family, key, circuit ID, and count-based prover/verifier selection bound to the same request. The measured 8,192-domain result alone does not validate that integration. Even the packed 32-slot relation changes the canonical statement digest and relation identity, so its circuit ID and registry keys must be renewed and the off-chain package/CLI parity checked.

Width eleven should wait for native proof timing and a complete history lifecycle review. The circuit's `CHUNK_SIZE` and the SCT protocol's `CHUNK_WIDTH` both equal ten today; wallet coverage, gas, chunk indices, bundle verification, and protocol-version guardrails rely on the width. A narrow 415-column margin means small future changes can push width eleven back to a 262,144 domain. Existing proof bundles and offline note continuity need an explicit handling decision before changing width.

Signed balance passed the full native circuit suite, with u128 constituent bounds and a 129-bit magnitude relation. Before promotion, add targeted malformed sign/magnitude and extreme-value parity tests. Zero magnitude currently permits either sign with the same commitment point; selecting one canonical sign would make the witness state unambiguous. Keep local amount bounds until callers pass typed constrained amounts end to end.
