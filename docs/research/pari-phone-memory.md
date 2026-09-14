# One Pari memory-lifetime experiment

The completed [controlled phone screen](phone-proving-controlled.md) measures this variant at 8.180 s warm median and 1,055.7 MiB sampled peak worker RSS. The admission discussion below records the earlier conservative desktop-based estimate.

**The measured saving does not establish phone fit.** A fresh desktop worker
peaked at2.174GiB RSS during proving and1.644GiB during initialization. The earlier
retained B screen observed2.397GiB warm peak RSS. These are separate screens,
not a matched memory trial; the observed reduction is approximately9.3%.

This is one isolated BLS12-377 candidate using the same development key, relation,
proof protocol and owned Go arithmetic child. No further optimization candidates
were tested. Retained baseline sources and production paths are unchanged.

The candidate lowers the canonical relation, then releases its original rows
before Square-R1CS synthesis. After synthesis and checked matrix/key association,
it consumes the lowered relation into the derived-witness map needed by requests.
The Go solver starts after those temporary allocations are released and must
still match the original circuit hash and wire count before readiness.

The eliminated vector capacities account for252,061,568bytes of original relation
storage and306,023,952bytes of lowered compilation storage. These figures are
allocated-capacity estimates, not RSS savings; allocators can retain freed pages.

Verification completed before the memory screen:

-18 focused Rust tests plus the actual owned-child admission/failure test passed.
-All six full assignments satisfied the original and lowered constraints.
-All six derived witness vectors were identical before and after releasing rows.
-Six full logical-witness requests produced exactly the retained seeded proof
  bytes under the same key. These equality proofs are correctness evidence only.
-Wrong domains/statements, malformed/truncated/trailing proofs and an invalid
  witness were rejected.

The separate memory screen launched a fresh persistent worker without loading
reference assignments into its process. Six freshly randomized proofs, covering
all six scenarios, were individually verified. The0.1second process-tree monitor
includes the Rust worker, solver and private arithmetic child. Sampled peaks can
miss short allocations. The whole correctness helper's higher2.234GiB peak is
retained separately because reference checking affects its allocation history.

Fresh-worker sampled peaks were2,334,375,936bytes overall/proving and
1,765,228,544bytes during initialization. No swap growth or competing heavy job
was observed. These are M4 Pro results, not Android memory measurements; no new
desktop proving-latency comparison or production release-gated suite was run.

Adding the phone guard's1GiB headroom to the observed2.174GiB desktop peak would
require at least3.174GiB available at admission. The last phone baseline preflight
had about1.96GiB available. The memory candidate has not been started on the phone;
this is a conservative policy limit, not an observed Android OOM.

[Patch](../../tools/proving-experiment/phone/memory.patch) ·
[Reproducer](../../tools/proving-experiment/phone/memory.py) ·
[Fresh-worker memory screen](../../tools/proving-experiment/phone/memory_screen.py).
Raw evidence is in `tools/proving-experiment/cache/phone-memory377-gate` and
`phone-memory377-fresh-worker`. Physical-phone measurements remain pending.
