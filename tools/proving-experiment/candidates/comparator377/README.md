# Selected-key Transfer candidate

Isolated copy of the gnark module. `upstream.json` binds the input sources; production sources and shipped keys are unchanged. Three eligible audit tiers select the authenticated key before scalar multiplication. Sender-core retains both shared secrets for unconditional issuer detection. Each tier retains Boolean selection, the same scalar decomposition and published-EPK equivalence. Trace bindings describe only values still computed.

Sender and receiver ACKs remain unconditionally checked on-curve/nonidentity and compressed in their compliance leaves. Asset DKPub remains checked by compression before registry hashing, including when the effective unregulated key is selected. The shared secret feeds encryption with exactly the same coordinates; this is stronger than Decaf equivalence alone.

`compile_gate.py` exports the full canonical relation and six solved assignments into the ignored cache. Its compile-only worker does not validate against old circuit metadata because the relation deliberately changes; any later key load still requires key metadata and hash validation. The Rust `selected_dh_compile` example validates every original and converted constraint and the complete prepared assignment mapping. Neither gate generates a proof.

Verified: 155,122 original rows, 142,630 wires; 226,574 lowered body rows, 226,578 converted rows, 214,084 mapped witness wires, FFT domain 262,144. All six scenarios pass; over-limit, altered constant/statement/constrained witness, tier ciphertext/EPK/scalar mutations and malformed selected/unselected keys reject. The paired DH test covers 24 scalar/flag/identity combinations with exact coordinate and encoding equality. Production release-gated prover suites have not run.

The same candidate circuit must supply the updated Groth16 control before comparing full proving APIs. These row savings do not establish proving latency, phone acceptability, protocol throughput or TPS.
