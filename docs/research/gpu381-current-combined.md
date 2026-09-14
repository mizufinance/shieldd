# Current native Transfer combined GPU screen

Close this GPU candidate under the user's narrowed threshold. Two combined requests save0.140091374s, or7.84%of these component calls. An optimistic substitution into the separately measured2.110349417s native prover suggests6.64%less time before integration overhead, below the approximately10%overall threshold. This is a projection, not a measured full-proof improvement. GPU is not selected.

| Operation | Terms | Native warm median | GPU warm median |
| --- | ---: | ---: | ---: |
| Witness + quotient | 393216 | 0.692099125s | 0.681967625s |
| Opening A + R | 589827 | 1.091992250s | 0.965807417s |
| Sum per measured block | 983043 | 1.785922708s | 1.645831334s |

Five summed paired observations are reported; the median of block sums differs from summing separate operation medians. One actual-output gate, three warmups and five measured calls for each operation/backend; all36outputs match. Both tables remain resident. Each request includes checked scalar-file read/hash/decoding, finite-index gathering, arithmetic, GPU sorting/index upload/readback where applicable, checked result encoding and IPC. The native kernel alone is slightly faster for witness+quotient; GPU gains concentrate in the opening. Full API integration would have additional scalar serialization/transport and startup costs. No full GPU proof or phone measurement ran.

These are current comparator3/4 Transfer operands under the selected prepared key and relation722fba7093a6188bba83708f0abe409a39cf34fa4451b95594e82781b68f3783. A fresh capture proof verifies; combined outputs equal the original separate outputs and paired-mask combined proof bytes match exactly. Altered statement, truncated proof and invalid witness reject. Capture copying/validation is excluded from performance claims. The393216-term commitment includes5107identity bases. Total finite terms are977936.

The CPU helper initially used the public-key decoder, which rejects identities. The first attempt stopped during initialization with no timing samples. A reproducing unit test failed, then switching the adapter to the existing checked read_maybe_identity path made both canonical-identity acceptance and malformed-identity rejection tests pass. Curve/subgroup and canonical roundtrip checks remain. GPU's32reused-buffer cases and614400-term cap rejection pass; this fork only increases the earlier prepared adapter's count bound. The previous scoped WebAssembly library check covers the unchanged mechanism; it was not rerun for the constant-only bound change.

CPU table preparation totals0.242116125s and101705376B of reported resident prepared bases. GPU preparation totals1.285125250s and751054848B of persistent GPU bases. Fresh component initialization including checked compressed point admission was29.050663166s CPU/30.196061458s GPU, not complete first-proof latency. Conservative GPU peak estimate3148489880B includes both resident buffers and largest-operation temporaries before upload, below the6GiB cap. Warm sampled processRSS peaks299499520B CPU/1648623616B GPU. Combined guarded tree peaked1,870,479,360B, zero swap and no competing heavy job. RSS is not complete GPU-allocation telemetry.

Shared selected-prover dependency versions were retained; unused development dependencies were pruned from the capture helper. An initial source-freezing check incorrectly rejected that pruning and consequently no executable/proof process existed for its attempted launch; the admission record and empty launch logs are preserved. Subsequent capture and checked comparison guards exited0. Regular blst0.3.17 and GPU nam-blst0.3.15-nam.0 run in separate processes. No production dependencies, proof acceptance or circuits changed; no production release-gated suite or formal certification ran.

[Compact source and raw evidence](../../tools/proving-experiment/checkpoints/2026-09-14-gpu381-current/README.md). The user's later stop request ends further optimization work. Selected CPU implementations remain the phone benchmark candidates.
