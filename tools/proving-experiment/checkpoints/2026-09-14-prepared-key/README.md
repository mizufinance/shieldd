# Pari377 prepared-key storage diagnostic

The candidate retains every canonical, curve, subgroup and key/source association check. It stores the unchanged G1 query/mask points uncompressed and leaves the actual protocol, verifying key, proof encoding and Go arithmetic unchanged. The offline importer checks every original/prepared key point for equality.

Thirteen release tests, six full API gates and22 fresh benchmark proofs pass. Eighteen paired-session proofs also verify under the other key representation. Three first-use observations per variant give medians40.921308s prepared versus53.919482s compressed; warm medians2.189084s versus2.195858s are essentially unchanged. Encoded key108633744B versus54317136B. This is a retained development storage option, not a completed broader campaign or phone result.

This checkpoint contains source/lock/worker identities and source archive, typed import/measurement records, source of the initial failed importer build, guard logs, compact gate records and artifact hashes. Generated keys, binaries and proof bytes remain in the ignored cache. The base subset377 sources/dependencies are preserved in the earlier subset-proving checkpoint. See [the report](../../../../docs/research/pari-prepared-key.md).
