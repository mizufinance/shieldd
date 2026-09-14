# BLS12-377 square primitive evidence

Two focused tests cover5231canonical raw Montgomery inputs with big-integer/current-assembly equality, distinct input preservation, aliasing and64-square chains. The initial test compile failure and its corrected runtime-word assertion are recorded. The first build used64passes; only the subsequently frozen256-pass worker was measured. No completed measurement was overwritten.

Sixteen timed outputs match exactly: three warmups and five measured samples per method in alternating order,256passes each. Synthetic primitive corpus only, no MSM or Transfer proofs. `identity.json` binds the final sources, dependency locks, source archive and worker. `upstream.json` inside source records the old dedicated body and current gnark source identities. The Go module cache and selected backends remain unchanged.

The dedicated kernel is13.55%slower in this run and is rejected before integration. No phone, full-proof, release-gated or formal result is claimed.
