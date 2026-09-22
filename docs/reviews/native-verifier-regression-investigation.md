# Native verifier regression investigation

The compiler fix is retained as isolated patch 0005; see the
[restoration validation](constant-outline-validation.md) for current evidence.
The investigation measurements below describe the compiler without outlining.

2026-09-21. Follow-up to the shared-key/native-prover implementation.
No runtime, vendor, circuit or key artifacts were changed in this investigation.

## Conclusion

The ~442 ms eight-proof measurement is real for the current Shieldd relation,
but describing it generally as the cost of native Commonware was misleading.
The Pari verifier is byte-identical to baseline `1dc62a7`; the removed compiler
constant-outlining transformation is the critical distinction. The prepared
prover was a separate change and was not responsible for fast batch verification.

## Reproduction and profile

Reused the exact benchmark executable and existing corpus, with 12 runs:

```sh
SHIELDD_PARI_KEYS=target/shared-payload-native-pari-keys-20260921 \
  target/ci/transfer-benchmark --tx-count 8 --runs 12 \
  --out target/bench/native-verifier-recheck.json \
  --corpus-dir target/bench/shared-payload-native-corpus
```

The corpus was loaded, not regenerated. Batched verification averaged 461.782 ms
(range 437.788–518.708 ms); eight individual batches averaged 461.311 ms. The
five-second sampling profile overlapped this run, so use the original unprofiled
442.116 ms run for the cleaner timing estimate. Registry load, decoding and
artifact extraction are outside the measured verification region; there is a
warmup. The region includes blocking-task scheduling and receipt attachment.

On the active verification worker, 4,163 of 4,201 sampled stacks (~99.1%) were in
`public_evaluation` / `evaluate_public_columns`. The native verifier evaluates
public columns separately for each challenge, before its batched MSM/pairing.
`lagrange_basis_at` exponentiates a domain root for each touched row. This serial
field work dominates the pairing savings for this relation.

Read-only inspection of the already validated VK encodings found:

| Transfer VK | Bytes | Constant-column A entries | Constant-column B entries | All distinct public rows |
| --- | ---: | ---: | ---: | ---: |
| Baseline development registry | 539 | 1 | 0 | 2 |
| Current native registry | 4,390,381 | 121,907 | 34 | 121,908 |

The actual statement-input column has one A entry in both. Most of the current
work is the implicit public constant-one column, not 121,908 user inputs.
The removed `outline_constant` redirected constant coefficients into a private
witness column and constrained that witness to equal one. Its removal restored
the dense implicit constant column. Both registries have domain 262,144.

The verifier file SHA-256, identical before and after the implementation:
`25558811ab3f19525f12138ee73e7d0df2227aa562e09650eb4ec963922c36a9`.

## Published Commonware result

[The Proof is in the Pairing](https://commonware.xyz/blogs/batch-pari)
reports 524,288 proofs in 735.246 ms with eight threads and 32 proofs in
2.007 ms serially. This is proof verification, not an end-to-end TPS measurement.
Its linked [benchmark](https://github.com/guruvamsi-policharla/zk-pari/blob/4b76a97e54cdba784c1c8b523c76c51d6b6b46a0/pari-bench/benches/batch-verify-pari.rs)
uses BN254 and six repeated multiplication constraints in a separate Pari
implementation. Shieldd uses BLS12-381 and its much larger application relation.
Batch size/curve/hardware differences alone do not explain our observed hotspot:
our public-column field work dominates before the native batch pairing.

## Correct follow-up boundary

Keep native proving, verification, codecs, MSM and FFT. Separately resolve the
constant-column layout: investigate a properly constrained construction through
Shieldd's public circuit API or an upstream compiler change. Neither requires
resurrecting the custom prepared prover. An application-side construction must
be measured and tested for constant tampering, relation identity and all eight
families before adoption; the removed private compiler rewrite is not silently
restored here. The present regression should not be accepted merely because the
calls use native APIs.

Raw profile, column census script/results and run log are retained under
`/tmp/shieldd-verifier-investigation/`. Existing implementation test evidence is
unchanged; this investigation reran only the already-built benchmark and
performed read-only source/artifact inspection.
