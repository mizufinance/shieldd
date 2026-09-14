# Fair gnark Groth16 subset checkpoint

See [the measured report](../../../../docs/research/groth16-subset-proving.md). This retains the complete M196608/N262144 gnark control at a matched 3.96% warm improvement. All 18 timed/warmup proofs are unique and verify. Four focused algebra/protocol/key tests, three existing worker tests, six setup self-tests and six full-API positive/negative gates pass. Production release-gated suites and phone tests were not run.

The component screen and final full path have separate source identities/archives. The full archive includes exact generated gnark backend sources, checked helpers, worker/circuit sources, dependency locks and controller. The unmodified pinned gnark files are hash-bound in full-identity.json and available from gnark v0.15.0. The patch records the three modified upstream files; helper additions are in the source archive and candidate directory.

component-source.tar.gz preserves the original screen preparation script before narrowing its overlay to component files. Later README updates describe the completed result; frozen source archives retain their original documentation. Generated keys, binaries and proofs are not tracked; artifact-hashes.json binds their exact retained cache bytes. Raw performance/resource/gate records and all successful test logs are retained.

The initial component preparation failed on inherited read-only directories, and the resulting no-matching-tests run is excluded explicitly. Corrected preparation ran two named passing tests. Full preparation separately stopped on a text-match assertion before compilation; limiting the match to setupABC fixed it. No failed or empty invocation is claimed as validation.
