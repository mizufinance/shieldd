# Code and documentation map

Runtime code and protocol records define the current implementation. Read only
the area relevant to the task; each topic has one authoritative document.

| Task | Code entry point | Documentation |
| --- | --- | --- |
| Execution, block lifecycle, host effects | [HostExecution](../crates/core/app/src/app/host.rs), [service](../crates/bin/shieldd/src/service.rs) | [Architecture](architecture.md) |
| Keys, notes, signing, withdrawals | [core](../crates/core), [transaction](../crates/core/transaction/src) | [Protocol](protocol.md) |
| Voluntary disclosure | [disclosure](../crates/disclosure/src/lib.rs) | [Disclosure](disclosure.md) |
| Wallet planning, scanning, history | [view](../crates/view/src) | [Wallet](wallet.md) |
| Registration, detection, audit | [compliance](../crates/core/component/compliance/src) | [Flow](compliance/flow.md), [reference](compliance/reference.md) |
| Freeze, unfreeze, seizure | [host](../crates/core/app/src/app/host.rs) | [Enforcement and seizure](compliance/enforcement-and-seizure.md) |
| Circuit relations and coverage | [native circuits](../crates/crypto/circuits/src) | [Compliance checklist](compliance/constraint-checklist.md), [Transfer checklist](transfer-circuit/constraint-checklist.md) |
| Jubjub/Pari primitives and circuit library | [primitives](../crates/crypto/primitives/src), [circuits](../crates/crypto/circuits/src) | [Interoperability contract](jubjub-external-contract.md), [Commonware source policy](../third_party/commonware-patches/README.md) |
| Authenticated trees and persistence | [SCT](../crates/core/component/sct/src), [registry](../crates/core/component/compliance/src/registry.rs) | [State](state.md), [nullifier history](nullifier-history.md) |
| Routing and privacy | [routing](../crates/core/component/shielded-pool/src) | [Routing](routing.md) |
| Proving, batching, registry | [proof registry](../crates/crypto/proof-params/src/pari.rs) | [Proof system](proof-system.md) |
| Proof performance | [benchmarks](../crates/bench) | [Native benchmarks](benchmarks.md) |
| Builds, tests, features, codegen | [justfile](../justfile), [scripts](../scripts) | [Development](development.md) |
| C ABI and relocatable artifacts | [header](../crates/bin/shieldd/include/shieldd.h), [staging](../scripts/stage_artifacts.py) | [Embedded artifacts](embedded-artifacts.md) |

Formal specifications and certification evidence live in
[shieldd-security](https://github.com/mizufinance/shieldd-security), pinned to an
exact Shieldd commit. Their gates are separate from this repository’s tests.
