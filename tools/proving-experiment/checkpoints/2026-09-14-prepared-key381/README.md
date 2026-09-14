# Native prepared key storage evidence

Same-key comparison: three warmups, five measured warm requests and one fresh-process first proof per representation. All 18 unique proofs verify and cross-verify under the other storage worker. Six API scenario/negative gates and six seeded reference proof equalities precede timing. Two component codec tests, five Commonware release tests, eight actual full-key rejection cases and scoped WASM build pass.

The first two component test attempts are retained as failed evidence: the first missed the ReadExt import; the second incorrectly expected blst to deserialize an x=0 torsion point. The final tests require rejection there and also test a nonzero-x on-curve point that specifically fails subgroup validation. No validation check was weakened.

The conversion manifest proves full decoded-key equality and exact original compressed-byte equality, pins both keys, and records storage expansion. Its total clock ends before final file writes. Key files remain cached, not tracked. Only four nonidentity query roles expand; the protocol, circuit and identity policies remain unchanged.

`compiled-source.tar.gz` preserves frozen build sources, excluding non-build Commonware documentation media. `source-identity.json` binds the original full source set and executables. Existing parallel-FFT polynomial evidence is reused because this change affects storage only. All resource guards on completed measurements report zero swap and no competing heavy work. No phone, production release-gated suite, formal certification or throughput claim follows.
