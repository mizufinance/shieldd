# ZK Circuit Threat Model

The adversary is a malicious prover trying to make an invalid statement verify
under a valid proof and accepted transaction body. Constraint-level verification
is out of scope here; this fixture names the semantic obligations that the
circuits, public-input extraction, and action handlers must jointly enforce.

| Circuit family | Prover goal that must be prevented |
| --- | --- |
| Transfer | Spend notes without ownership, double-spend nullifiers, create value, misroute compliance ciphertexts, or claim the wrong public statement hash. |
| NoteReshape | Merge or split notes without ownership, bypass padded dummy-slot checks, hide a mismatched commitment, alter balance, or change nullifiers after signing. |
| Shielded ICS-20 withdrawal | Withdraw without owning inputs, change the external withdrawal effect hash, bypass registry status, or create untracked change. |

Accepted-language soundness also depends on checks outside the circuit:
authorization signatures, nullifier freshness, anchor freshness, timestamp
freshness, proof verification, and withdrawal-effect extraction.
