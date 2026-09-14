# Complete subset377 proving checkpoint

See [the measured report](../../../../docs/research/pari-subset-proving.md). Both source archives and their original identities are immutable. The gate archive predates the integrated arithmetic worker; worker-source.tar.gz is the measured implementation. README status was updated after freezing; executable sources and dependency locks match worker-identity.json exactly.

Twelve release tests, six real solved-assignment proof gates, six full-API scenario/negative/domain gates and eighteen unique verified diagnostic proofs pass. Raw records, guard resource/exit logs, setup and arithmetic-base metadata are retained. artifact-hashes.json binds the generated key, gate proofs and measurement proofs to their exact local bytes; these large artifacts are not tracked.

The initial locked build failed because copied baseline lockfile entries required pruning. Offline metadata reconciled unused entries; retained dependency versions/checksums stayed unchanged. Corrected locked offline release builds and tests passed. There is no production release-suite, formal-certification or phone claim.
