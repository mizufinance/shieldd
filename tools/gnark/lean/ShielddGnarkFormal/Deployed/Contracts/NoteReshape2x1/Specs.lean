import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Core
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Compress
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.NoteCommitment
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Nullifier
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Rvk
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Dtk
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Nb
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Scp
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Specs.Glue

/-! # Hand-authored deployed-segment specs for note_reshape2x1

Aggregator re-export. Each `deployedSpec{N} rho` is the Layer-2 semantic
endpoint of segment `N`, projected onto the deployed slice's wire seating (the
rho→named-input mapping pinned by `wire_role_sha256`). The generated contract
`Seg{N}.lean` sets its `spec` field to the matching def; the `inst{N}_bound`
wrapper discharges `relation rho → deployedSpec{N} rho`.

The definitions live in per-family submodules under `Specs/` so that editing one
family's endpoint does not re-elaborate the whole adapter forest. `Core` holds
`DeployedF`/`onCurveAt`; every family imports only `Core` plus its own bridges,
so touching e.g. `Specs.Scp` leaves `Specs.Dtk`-derived adapters replayable.
Adapters and generators should import the narrowest family submodule; this file
exists only for callers that want every endpoint at once. -/
