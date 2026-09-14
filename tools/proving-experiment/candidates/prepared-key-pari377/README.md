# Checked prepared-key Pari377 candidate

Isolated two-worker subset377 startup experiment. The ordinary worker accepts only `SHBUPK01`: the unchanged checked compressed verifying key followed by canonical uncompressed G1 query/mask points. Every point still receives deterministic curve/subgroup checks and canonical round-trip validation. The protocol, transcript, actual key points, proof encoding and arithmetic helper remain unchanged.

`prepare-key` is an offline checked importer for the frozen compressed development key. It checks all source and output points, requires exact equality of every key point and verifying-key field, and reports typed timing/size/hash records. Preparation and additional storage must be reported separately. This candidate is not selected until full API gates and matched measurements pass.
