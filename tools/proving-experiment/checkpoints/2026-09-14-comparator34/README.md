# Native comparator3/4 proving checkpoint

Completed desktop correctness and bounded warm proving screen. Five warm observations plus three warmups per variant reduce complete native API median2.582560042→2.311950125seconds (10.4784%). All16 warm-run proofs are unique and verified. Three separately preserved startup proofs were individually reverified before inclusion; their unequal1candidate/2control observations are reported individually. The initial startup invocation was intentionally stopped for the quick sample budget and remains incomplete, with exact executing source and reason preserved.

The checkpoint includes frozen source, source identities, polynomial evidence, all six setup proof/claim records, all six API proof gates, typed benchmark samples/proofs and raw resource/test logs. Large keys and executable remain in cache, bound by recorded hashes. Delivery hashes bind the files actually included here; original cache manifests may also refer to omitted large artifacts.

45 relevant release tests pass across focused runs. Original/converted six-witness polynomial checks, key descriptors and cryptographic negative cases pass. WASM verification remains pending. Production release-gated prover tests and formal certification were not run. This is a targeted C desktop result; updated fair A/B and the combined comparison remain pending.
