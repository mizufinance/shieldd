# ZK Circuit Threat Model

The adversary is a malicious prover trying to make an invalid statement verify
under a valid proof and accepted transaction body. Constraint-level verification
is out of scope here; this fixture names the semantic obligations that the
circuits, public-input extraction, and action handlers must jointly enforce.

| Circuit family | Prover goal that must be prevented |
| --- | --- |
| Transfer | Spend notes without ownership, admit a zero reduced IVK or identity-class authorization/generator/transmission point for either sender or receiver, double-spend nullifiers, create value, misroute compliance ciphertexts, or claim the wrong public statement hash. |
| NoteReshape | Merge or split notes without ownership, admit a zero reduced IVK or identity-class authorization/shared generator/transmission point, bypass padded dummy-slot checks, hide a mismatched commitment, alter balance, or change nullifiers after signing. |
| Shielded ICS-20 withdrawal | Withdraw without owning inputs, admit a zero reduced IVK or identity-class authorization/sender generator/transmission point, change the external withdrawal effect hash, bypass registry status, or create untracked change. |

Accepted-language soundness also depends on checks outside the circuit:
nonidentity fixed-slot RKs and their authorization signatures, a nonidentity
aggregate BvK and authorization-hash binding signature for every proof-bearing
transaction, nullifier freshness, anchor freshness, timestamp freshness, proof
verification, and withdrawal-effect extraction. Identity-BvK sentinel mode is
reserved for transactions with no shielded proofs.
Owner uniqueness additionally depends on collision resistance of the exact
`Poseidon377::hash_2(... ) mod r` IVK map; raw field-hash collision resistance
alone does not cover distinct outputs that are congruent modulo `r`.
