# gnark Groth16 subset-domain experiment

Development-only fair control for the selected-DH Transfer circuit. The complete M196608/N262144 setup/prover/key path retains gnark's solver, randomizers, MSM scheduling, verifier and proof encoding. A distinct checked development key descriptor binds its shorter Z query. Production modules and frozen workers remain unchanged.

Four focused tests, three existing worker tests, all six generation/full-API scenario gates and all eighteen diagnostic proofs pass. Matched warm proving improves 1.793246→1.722219 seconds (3.96%), with lower first-use latency and memory. See [the report](../../../../docs/research/groth16-subset-proving.md) and parent STATUS.md. This is a targeted A result; the final combined comparison is pending.

`prepare.py` installs the component screen into a fresh ignored source cache. `prepare_full.py` separately copies pinned gnark v0.15.0 and the selected-DH module, applies the complete setup/prover/codec changes and records source hashes. Build sequentially under the parent resource guard with GOTOOLCHAIN=go1.25.7, GOMAXPROCS=2 and go -p 2. Frozen archives preserve the exact measured source versions.
