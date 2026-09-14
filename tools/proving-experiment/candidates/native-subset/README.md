# Native Pari381 subset candidate

Development-only full affine Transfer with the selected allocation lifetimes and a canonical retained domain. The unchanged220009rows/220029columns fit M229376, using FFTN262144; assignment padding, setup, masks, openings, public columns and key/transcript binding agree on that distinction. Relation, key and commitment namespaces and the proof-package marker identify this experimental protocol.

All44native release tests, three focused prepared/domain-audit tests, six actual masked-polynomial gates, six fresh full-proof/negative gates and six logical-witness full-API gates pass. Matched warm time improves2.758030→2.585017s (6.27%); all18diagnostic packages verify. This is a targeted C result; see [the report](../../../../docs/research/native-subset-proving.md) and parent STATUS.md for the final-round state.

`prepare_subset.py` verifies the exact lifetime baseline recorded in upstream.json, copies it to a fresh ignored directory and applies patches/commonware-subset.patch. The existing native-affine module/Commonware checkout and frozen control worker stay unchanged. Use Rust1.95.0, the locked dependencies and parent resource guard; one heavy job, Cargo/Rayon two workers. The source archives retain the initial generator and exact measured sources. Production acceptance paths, bundled keys and phone measurements are outside this candidate.
