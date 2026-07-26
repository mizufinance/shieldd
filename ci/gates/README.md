# CI gate applicability

Each `<gate>.json` declaration is consumed by
`scripts/ci/gate-applicability.py`. Classification is fail-closed: malformed
declarations, missing candidate bases, invalid diffs, unavailable offline Cargo
metadata, and malformed extraction manifests block the stable workflow summary.

Schema version 1 declares:

- Candidate-event conservative tiers and unconditional event tiers.
- Local Cargo dependency closures. Known workspace packages outside a closure
  are explained skips; unregistered paths remain unknown and conservative.
- Lean extraction inputs from both current and base manifests, so deleted and
  renamed inputs remain applicable.
- Explicit relevant inputs and narrow irrelevant inputs.

Non-candidate events select their unconditional tier without resolving Cargo
metadata or extraction manifests. Every unknown candidate path selects the
event's conservative tier.
