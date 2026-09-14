# Selected subset A/B/C desktop round

The single matched run is `cache/desktop-subset-selected`: two warmups, five warm requests and one fresh-process first proof per candidate, two workers, 24 fresh individually verified proofs. The guard exits zero with no swap or competing heavy jobs.

This compact checkpoint retains raw timing/memory records, complete source/key/binary identities, proof hashes, controller sources and the guard record. Binaries, generated keys and actual proofs remain in the ignored cache. The identity references the committed A/B/C candidate source checkpoints; this is not a standalone key distribution.

See [the report](../../../../docs/research/transfer-proving-subset-selected.md). The first subset/circuit/preparation round is complete. The broader optimization campaign remains active; this checkpoint does not establish physical-phone performance, production release certification, or validator throughput.
