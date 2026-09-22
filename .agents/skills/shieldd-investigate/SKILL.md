---
name: shieldd-investigate
description: Investigate substantial Shieldd behavior questions, ambiguous failures, performance hypotheses or upstream dependency claims using source evidence and bounded experiments. Routine file lookup does not need this workflow.
---

# Investigate Shieldd behavior

Use the [task map](../../../docs/README.md) to choose the relevant source and
current specification. Preserve the user's question and existing authorization.

## Establish what is being investigated

Identify the branch, dirty baseline and relevant dependency pin. A commit alone
does not identify an uncommitted circuit or benchmark variant. Follow definitions,
callers and tests across the actual boundary before relying on a comment or report.
Historical reviews provide evidence and rationale, not current operating rules.

For an uncertain fact, identify competing explanations and a check that separates
them. For uncertain product intent, explain the consequence and ask a focused
question; continue work that does not depend on that choice. Repeated failures
should change the hypothesis or observation, not merely repeat the command.

## Evidence at Shieldd boundaries

- **Commonware:** distinguish the pinned implementation, an upstream prototype,
  and a maintainer's stated plan. Inspect the actual call path and feature set;
  “native” does not establish which upstream optimizations are included. Use the
  [source policy](../../../third_party/commonware-patches/README.md) for the pin
  and patch boundaries. Verify changing upstream claims with primary sources.
- **Orbis:** distinguish local codecs/adapters, cryptographic verification, host
  authorization and a deployed external service. Start with the
  [external contract](../../../docs/jubjub-external-contract.md) and runtime lock.
  Successful decoding does not establish PET, PRE authorization or chain acceptance.
- **Proof cost:** identify relation and registry, compiler changes, profile,
  hardware, workload and concurrency. Separate setup, proving, proof verification
  and full application execution. Do not compare different relations as a paired
  optimization experiment or extrapolate small batches into measured TPS.
- **State:** distinguish committed facts from local projections, caches and
  retained history. Trace which validation makes a record admissible, and how
  stale workers, restart and cancellation affect it.

## Test the explanation

Use the smallest useful reproduction with the [verification recipes](../../../docs/development.md).
Honor the shared heavy-job limit; never bypass Cargo's lock with another target
directory. Capture source identity before temporary variants and verify restoration.
Keep private witnesses, keys and secret-bearing environment values out of logs.

Answer with the verified behavior and sources, then identify inference and
remaining uncertainty. Record substantial experiments in the task report with
commands, identities and useful evidence. If a result remains unsettled, state
which observation would settle it; do not manufacture certainty or an upstream promise.
