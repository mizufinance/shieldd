# NoteReshape obligation ledger

This reviewed ledger is the protocol-side checklist for every NoteReshape
family. Generated row facts are evidence for these obligations; they do not
define the obligations.

| ID | Obligation | Circuit fact | External fact |
|---|---|---|---|
| `NR-SHAPE` | The selected family has its exact input/output arity, minimum real-input count, and a real prefix followed by a dummy suffix. | Boolean selectors, suffix ordering, count range, fixed family arity. | Planner selects the matching family. |
| `NR-SHARED-ADDRESS` | Every committed input and output uses one asset ID, diversified generator, canonical derived transmission encoding, and clue key. | One shared context; one DTK derivation and compression fan out to every note commitment. | None. |
| `NR-INPUT-COMMITMENT` | Every real input commitment opens to its amount/blinding and the canonical shared context. Dummy slots have no commitment obligation. | Conditional real note-commitment relation. | The public action supplies the claimed commitments through membership/nullifier data. |
| `NR-MEMBERSHIP` | Every real input is a member under the public anchor; dummy membership cannot substitute for a real input. | Conditional real path equality and branch constraints. | Anchor exists in accepted state. |
| `NR-NULLIFIER` | Real nullifiers derive from the real note; dummy nullifiers derive from the dummy seed and cannot create value. | Conditional nullifier relations and dummy amount zero. | Every proof-bound nullifier is fresh. |
| `NR-AUTHORIZATION` | Each real RK is the shared AK randomized by that slot's randomizer. Every public RK, including dummy slots, has a valid external signature. | Real-branch RVK equivalence and RK transcript binding. | Signature verification for every RK. |
| `NR-OUTPUT-COMMITMENT` | Every output is an ordinary note commitment in the canonical shared context. | Note-commitment relation for every output. | Output padding to zero-value notes is planner policy only. |
| `NR-CONSERVATION` | Input and output amounts conserve the one shared asset and the balance commitment uses the action blinding. | Exact amount equality and balance-blinding commitment/equivalence. | None. |
| `NR-STATEMENT` | The single public input is the family-domain-separated hash of anchor, outputs, balance commitment, nullifiers, and RKs. | Exact transcript construction and equality. | Public action serialization supplies the same field order and domains. |
| `NR-STATE` | Acceptance consumes every fresh proof-bound input nullifier and records every output commitment only after proof and signatures verify. | The proof binds the data consumed by the transition. | State-machine preconditions and transition atomicity. |

The family-independent constructor consumes every typed circuit fact. The
spec-independence gate checks those field references explicitly. The witness
gate checks every compiled field against an exact reviewed role-to-obligation
map and requires actual polynomial influence in at least one R1CS row.
