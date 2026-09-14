# Native comparator with three-quarter retained domain

Development-only native BLS12-381 Transfer candidate. Inclusive polynomial comparisons preserve caller-constrained bits and exact witnesses. The191516-row/191501-column relation uses M196608 retained roots within N262144 FFT roots; all indices1 modulo4 are excluded. No production dependency or artifact is changed.

For d=N/4 and e=omega^d, the vanishing polynomial is X^(3d)+eX^(2d)+e²X^d+e³. Interpolation weights, division, masks, public columns, quotient coset inverses, key query lengths and checked domain decoding all derive from this domain. Relation, commitment-key, verifier-key and proof transcript namespaces are distinct; the proof package begins `SHNC3401`. Existing seven-eighths keys are rejected.

`prepare.py` verifies the frozen `commonware-subset381` input files and applies the tracked patch to a fresh `cache/commonware-subset34`. The isolated Cargo lock uses Rust1.95. Run under the experiment resource guard with Cargo jobs2, Rayon2 and the shared native target. Relevant library tests and the six-witness `subset_cost` polynomial gate must precede `transfer_gate` setup. `prepared_msm_full` provides the persistent full witness API. All outputs belong in fresh cache directories.
