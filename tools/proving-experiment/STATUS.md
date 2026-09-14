# Transfer proving experiment status

**Optimization campaign active. Selected desktop baseline is frozen; new circuit and startup candidates are being implemented and measured. Physical-phone access remains pending.**

[Current measured report and plots](../../docs/research/transfer-proving-selected.md) use the single matched `cache/desktop-selected` session. The earlier `desktop-final` checkpoint and report remain unchanged; do not pool their samples.

| Candidate | Warm median | First proof | Warm peak RSS |
|---|---:|---:|---:|
| Current Groth16 | 1.8455 s | 23.0991 s | 0.610 GiB |
| ZK-Pari377, combined gnark arithmetic | 2.4765 s | 89.8052 s | 2.373 GiB |
| Native Commonware381, prepared blst | 3.0290 s | 26.3193 s | 2.658 GiB |

Two workers, standard regulated Transfer, two warmups and five measured warm proofs plus one fresh-process first proof per candidate. All 18 measured proofs and six warmups verify with unique proof bytes. The guard exits zero, with no swap or competing heavy workload. All owned workers have exited. Fresh process does not mean a flushed OS page cache; no p95 or cold-tail claim follows.

Groth16 remains the proving baseline. B takes 1.34× its warm time, C 1.64×. B carries substantial first-use loading: the Go base files add 118.20 MiB on disk, alongside the proving key. All checked initialization, witness handling, scalar transport and output encoding are included. These results do not decide SnarkPack versus ZK-Pari validator costs or payment TPS.

## Completed implementation and checks

- B retains the exact gnark/BLS12-377 relation, lowering and key. Combined persistent gnark377 MSMs use fresh proof randomness and validated resident bases.
- C retains the complete previously checked native Transfer circuit and key. Prepared/combined blst arithmetic prepares affine tables once and keeps ordinary transcript/masking work.
- Both selected worker binaries pass six real scenario gates, altered proof/statement/truncation negatives and the invalid-witness rejection before timing. Eight B release example tests, one C release transport test and six focused Python checks pass.
- The first selected B attempt chose an older Go helper; the gate rejected it before any proof or timing was admitted. Preserved failure evidence, a reproducing helper-identity test and the corrected successful gate are recorded in the ledger.
- The bounded gnark381 control is closed. All 70 arithmetic results match; its 0.146576 s saving would project only about 4.9% off the prior C API. Retain prepared blst; no full Go381 proving result or further sweep is authorized by that projection.

## Evidence

`cache/desktop-selected` retains raw samples, every proof, memory traces, environment observations, results, analysis and completion hashes. `cache/desktop-selected-source` freezes measured worker sources, dependency locks and exact binaries. The separate reporting-source copy is bound by the delivery checkpoint. The source-only report addition records encoded arithmetic-base storage; it does not change the measured worker or controller.

Prior arithmetic, semantic, original/converted relation, wrong-key and release checks remain documented in `optimization-ledger.md`, `native-obligations.md`, `gnark-msm-probe.md`, `native-prepared-msm.md` and `native-gnark381-msm.md`. Production release-gated prover suites and formal certification were not run; formal work remains in shieldd-security.

## Reopened optimization pass

The user requested another thorough pass with distinct approaches. This supersedes the earlier blanket deferral of further desktop research; preserve the matched desktop baseline and run only one guarded heavy job at a time. The broader source assessment is in [the second-pass report](../../docs/research/zkpari-optimization-second-pass.md).

- [Edwards MSM](edmsm-probe.md) is closed: all20actual-operand outputs match; summed medians2.026293125→1.953276625 s save73.0165 ms, only2.95% projected full API. Preparation adds18.547 s and resident bases grow50%. Retain selected gnark377; no full-API integration or window sweep.
- [Deterministic subgroup validation](subgroup-startup-probe.md) is closed as a bounded startup probe:4096actual public bases,198point boundary cases,81,920sample validations. Checked decoding plus membership improves148.373→60.726 ms (2.44×), preserving canonical/curve/subgroup checks. No selected/full-key loader has changed and no complete first-proof improvement is claimed.
- Distinct next gates are described in the second-pass report: full native affine compilation/witness cost, actual-size subset-polynomial work and a carefully checked loader integration. No new full key or final matrix has been started by these two probes.

## Remaining scope

Do not pool the new diagnostics with the completed desktop baseline or rerun its final matrix without a newly selected full-API winner. Circuit/domain ideas remain research with explicit correctness and cost gates, not accumulated speedup claims. The two bounded arithmetic/startup probes above are complete; no heavy job is running from them.

Physical iPhone/Android measurements remain unavailable: `adb devices -l` lists no device and `xcode-select -p` selects CommandLineTools rather than full Xcode. Preserve all selected binaries for device testing when actual hardware and build/signing access become available. Desktop ARM is not phone evidence. Stay quiet while that prerequisite is unchanged.

The older `tools/zkpari-spike` campaign and `complete-shieldd-proof-spike` automation remain stopped/paused. Its two 4,096-proof corpora and completed one-worker results are preserved. Do not resume the excluded verification campaign.

## Active campaign

The [authorized campaign](../../docs/research/zkpari-optimization-campaign.md) now carries worthwhile candidates through full API measurements. The isolated `candidates/selected-dh` module changes only three eligible Transfer DH tiers; sender-core issuer detection remains unconditional. Exact coordinate/encoding parity passed 24 boundary combinations and rejected invalid flag/EPK cases. Full Transfer compile/solve and actual Square-R1CS lowering are next. These checks are not new proving results.
