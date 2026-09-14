# Inclusive comparator and exact reuse screen

Proceed to the smaller-domain and fair A/B gates. The comparator reduces the full native Transfer from **220,009 to191,516 square constraints (12.95%)** and220,029 to191,501columns. Both counts now fit M196608 within N262144. The current run still uses M229376, and generates no key or proof. This is not a measured proving speedup.

| Complete comparator | Current rows | Selected rows |
| --- | ---: | ---: |
| 128-bit variable bound | 1,788 | 511 |
| 252-bit variable bound | 3,524 | 1,007 |
| 128-bit all-ones constant bound | 764 | 1 |
| 252-bit subgroup-order-minus-one bound | 1,236 | 503 |

The inclusive comparison starts with `le=1` and consumes bits from least to most significant. Set `x=1-a`, `y=b`, `t=x*y`, then update `le=t+le*(x+y-2*t)`. Equal input bits preserve the lower-bit comparison; unequal bits decide it. Boolean input bits imply every state is Boolean by induction. The final existing `BoolVar::assert` is retained, with no unchecked constructor. All input decomposition, canonical and upper-bound assertions remain. An earlier AND/OR form passed the same tests but cost1,022/2,014rows for variable128/252-bit bounds; the polynomial form is selected. The all-ones constant bound is tautological after the unchanged input-width check, leaving only the final Boolean constraint.

Two focused release tests pass1,024 exhaustive4-bit constant/variable-bound and wrong-answer cases plus24amount/order boundary cases, checking original and converted relations. Both complete Transfer variants preserve all six existing witness/statement identities, pass18prepared solves each, and reject the saved invalid witness and altered statement. The control exactly reproduces the retained native relation digest. No hash, coordinate, encoding, scalar range or transaction obligation changes.

| Scenario | Construction, control / comparator (ms) | Prepared mapping (ms) | Complete checked solve (ms) |
| --- | ---: | ---: | ---: |
| transfer | 46.609 / 44.677 | 118.387 / 111.417 | 214.078 / 190.925 |
| transfer_unregulated | 47.033 / 46.131 | 118.209 / 113.194 | 214.435 / 195.679 |
| transfer_flagged | 46.797 / 46.019 | 118.919 / 112.759 | 214.459 / 194.256 |
| transfer_accumulating | 47.673 / 45.855 | 118.544 / 118.894 | 215.199 / 200.962 |
| transfer_over_limit_disclosure | 47.305 / 45.921 | 119.948 / 114.384 | 216.136 / 196.326 |
| transfer_accumulator_continuation | 46.915 / 45.659 | 119.456 / 112.585 | 214.889 / 194.436 |

These are medians of three observations per scenario, without warmups and with the control process before the candidate. Complete checked solve includes decoding, construction, actual prepared mapping, both original/converted checks and cleanup. It is not full proving latency; small timing differences carry no confidence or tail claim. Source, lock, parameter, witness and binary hashes are verified before/after execution. The guarded two-worker M4 Pro run exits0 with zero swap and no competing heavy job.

The independent exact-identity inventory finds184hash calls and **zero repeated hashes**, plus42decompositions with seven repeats accounting for663rows. This is not a global common-subexpression result: independently reconstructed equal expressions and separately allocated equal constants are not merged. Identity includes circuit context/index, field, parameter recipe, hash domain, arity/order and decomposition width. Known native counters0–64 are matched by exact field equality; unknown native constants are ineligible. All actual inputs were classified. Range spans exclude stronger outer canonical/upper-bound predicates, which would have to remain if bits were shared. A cross-component bit-cache refactor is not justified by663rows alone.

The initial inventory wrongly identified14hash repeats because native Scalar debug output is redacted. That result is explicitly rejected. A zero-versus-one regression reproduced the error before the fix; all four identity tests then passed, including domain/order/width/context separation and unknown-constant rejection. No circuit optimization used the invalid classification. The corrected full inventory reproduces the unchanged relation and passes all six original/converted and negative gates.

A/B's isolated gnark source still uses the redundant strict prefix-equality comparator in `compliance/comparison.go` and `less_than_constant.go`. Its applicable recurrence starts at0; strict/equality/boundary checks and the actual BLS12-377 lowering are next. For C, M196608 needs a separately bound domain implementation, polynomial/zero-row/root/mask checks and fresh development setup before proof timing. The corrected hinted scalar component can be assessed in that combined circuit. No physical-phone, production release-gated prover suite or formal certification ran here.

[Compact checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-comparator-reuse/README.md). The [runner](../../tools/proving-experiment/reuse_comparator_screen.py) freezes both optimized binaries and typed output. Historical proving reports remain unchanged; the broader campaign continues.
