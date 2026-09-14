# Physical phone proving checkpoint

The first physical-phone correctness gate passed for the retained Groth16 candidate.
**Clean phone proving latency is still pending.** Screen closure was confirmed during
the first run, and the phone's two-minute timeout subsequently put it into Dozing.
The recorded timings remain diagnostic; they are not a controlled phone comparison.

The connected device reports SM-G781W, SM8250/kona, Android13/API33 and ARM64,
with5.50GiB total memory. Two Go/Rayon workers are configured. Only one backend
runs at a time. No phone power/performance settings or personal files were changed.

| Candidate | Phone evidence |
| --- | --- |
| A: retained Groth16/BLS12-377 | Six valid scenarios and proof/statement/witness negative checks passed;14 fresh distinct proofs verified across gate and diagnostic measurement. |
| C: retained native Pari/BLS12-381 | Policy skipped before prover launch: available2.113GB, required2.362GB. |
| B: retained Pari/BLS12-377 | Policy skipped before prover launch; its conservative start requirement is3.5GiB. |

Admission requirements use desktop RSS plus approximately1GiB of headroom.
These skips do not establish an Android OOM or inability to prove. The runtime
guard monitors MemAvailable and thermal state and terminates only its process group.

A's diagnostic fresh-process first proof measured112.696s on the device's monotonic
clock. Five diagnostic warm requests measured9.948,15.641,13.426,5.712 and6.706s.
Their median is9.948s. The checked key-loading phase took93.665s in that first-proof
process; circuit compilation took8.403s. Screen interruption and the unaccounted
time outside these request clocks prevent treating these numbers as clean results.

A separate five-second probe compared direct kernel CLOCK_REALTIME,
CLOCK_MONOTONIC and CLOCK_BOOTTIME with Go's clock. All elapsed readings agreed
within16microseconds. It found no clock fault or suspend interval during that probe;
it does not reconstruct the phone's power state during the earlier measurements.

The Android kernel lacks `/proc/PID/task/TID/children`. The supervisor therefore
marked process-tree RSS incomplete. The highest observed A worker RSS was596MB;
this is not a verified total-process-tree memory result. MemAvailable remained above
1.507GiB during measurement and observed thermal status remained0.

All optimized Android binaries built from retained sources and dependency locks.
Frozen source manifests, keys, witnesses and uploaded bytes were hash-checked.
The supervisor's framing, malformed-frame, memory parsing and exact scenario-set
tests passed, as did two host completion/failure regression tests. The first A
deployment omitted checked setup provenance and was rejected before producing a
proof; its failure is preserved. The corrected bundle includes the pinned provenance.

Raw records remain in `tools/proving-experiment/cache/phone-A-02`, `phone-C-01`,
`phone-B-01` and `phone-clock-probe-01.json`. The harness is described in
[its README](../../tools/proving-experiment/phone/README.md). Production release-gated
prover suites and formal certification were not run in this phone screen.

The next clean run requires the screen to remain awake through initialization and
measurement. Valid correctness evidence can be reused with identical artifacts.
The separately authorized single B memory-lifetime experiment remains pending;
no lower-memory performance result has been measured.
