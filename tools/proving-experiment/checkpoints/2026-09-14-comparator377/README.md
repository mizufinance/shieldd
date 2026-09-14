# BLS12-377 comparator compile checkpoint

Strict polynomial comparators pass focused Go tests and six complete Transfer solved-assignment gates. The actual Arkworks Square-R1CS conversion validates all six original/lowered/converted assignments and rejects altered constant, statement and witness wires. No setup, new proof or proving measurement is included.

`solved-complete.json` hashes the full local cache, including the six assignments, canonical R1CS and executable. These large artifacts remain in `cache/comparator377-compile`; this compact checkpoint preserves source, identity, metadata, typed timings, lowering result and resource/test logs. `delivery.json` binds the files actually included here. Production release-gated tests and formal certification were not run.
