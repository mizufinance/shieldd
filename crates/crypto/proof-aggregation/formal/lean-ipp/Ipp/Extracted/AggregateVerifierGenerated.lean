-- Closed S2-36 extraction of the associated-type-free aggregate-verifier core.
-- Vendored from the pinned WSL Charon/Aeneas output; runtime glue is executable.
import Ipp.Extracted.CombinedChecksGenerated

open Aeneas Aeneas.Std Result ControlFlow Error
set_option linter.unusedVariables false
set_option maxHeartbeats 1000000
set_option maxRecDepth 2048

noncomputable section

namespace ark_ip_proofs

structure applications.groth16_aggregation.AggregateVerifierEffect (Self :
  Type) (F : Type) (E : Type) where
  derive_randomizer : Self → Std.U64 → Result ((core.result.Result (Option
    F) E) × Self)
  verify_combined : Self → F → Result ((core.result.Result (Bool × Bool)
    E) × Self)

structure applications.groth16_aggregation.AggregateVerifierCoreOutput (F :
  Type) (FX : Type) where
  randomizer : F
  checks : (Bool × Bool)
  accepted : Bool
  effect : FX

def applications.groth16_aggregation.verify_aggregate_proof_core_loop.body
  {F : Type} {E : Type} {FX : Type} (corecmpPartialEqInst : core.cmp.PartialEq
  F F) (num_traitsidentitiesZeroInst : num_traits.identities.Zero F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (AggregateVerifierEffectInst :
  applications.groth16_aggregation.AggregateVerifierEffect FX F E)
  (effect : FX) (nonce : Std.U64) :
  Result (ControlFlow (FX × Std.U64) (core.result.Result
    (applications.groth16_aggregation.AggregateVerifierCoreOutput F FX) E)) := do
  let (r, effect1) ←
    AggregateVerifierEffectInst.derive_randomizer effect nonce
  let cf ← core.result.Result.Insts.CoreOpsTry.branch r
  match cf with
  | core.ops.control_flow.ControlFlow.Continue val =>
    match val with
    | none => let nonce1 ← nonce + 1#usize
              ok (cont (effect1, nonce1))
    | some randomizer =>
      let t ← num_traitsidentitiesZeroInst.zero
      let b ← corecmpPartialEqInst.ne randomizer t
      if b then
        let t1 ← num_traitsidentitiesOneInst.one
        let b1 ← corecmpPartialEqInst.ne randomizer t1
        if b1 then
          let (r1, effect2) ←
            AggregateVerifierEffectInst.verify_combined effect1 randomizer
          let cf1 ← core.result.Result.Insts.CoreOpsTry.branch r1
          match cf1 with
          | core.ops.control_flow.ControlFlow.Continue val1 =>
            let (b2, b3) := val1
            if b2 then
              ok (done (core.result.Result.Ok
                { randomizer, checks := val1, accepted := b3, effect := effect2 }))
            else
              ok (done (core.result.Result.Ok
                { randomizer, checks := val1, accepted := false, effect := effect2 }))
          | core.ops.control_flow.ControlFlow.Break residual =>
            let r2 ←
              core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
                (applications.groth16_aggregation.AggregateVerifierCoreOutput F FX)
                (core.convert.FromSame E) residual
            ok (done r2)
        else let nonce1 ← nonce + 1#usize
             ok (cont (effect1, nonce1))
      else let nonce1 ← nonce + 1#usize
           ok (cont (effect1, nonce1))
  | core.ops.control_flow.ControlFlow.Break residual =>
    let r1 ←
      core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
        (applications.groth16_aggregation.AggregateVerifierCoreOutput F FX)
        (core.convert.FromSame E) residual
    ok (done r1)

def applications.groth16_aggregation.verify_aggregate_proof_core_loop
  {F : Type} {E : Type} {FX : Type} (corecmpPartialEqInst : core.cmp.PartialEq
  F F) (num_traitsidentitiesZeroInst : num_traits.identities.Zero F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (AggregateVerifierEffectInst :
  applications.groth16_aggregation.AggregateVerifierEffect FX F E)
  (effect : FX) (nonce : Std.U64) :
  Result (core.result.Result
    (applications.groth16_aggregation.AggregateVerifierCoreOutput F FX) E) := do
  loop
    (fun (effect1, nonce1) =>
      applications.groth16_aggregation.verify_aggregate_proof_core_loop.body
      corecmpPartialEqInst num_traitsidentitiesZeroInst
      num_traitsidentitiesOneInst AggregateVerifierEffectInst effect1 nonce1)
    (effect, nonce)

@[reducible]
def applications.groth16_aggregation.verify_aggregate_proof_core
  {F : Type} {E : Type} {FX : Type} (corecmpPartialEqInst : core.cmp.PartialEq
  F F) (num_traitsidentitiesZeroInst : num_traits.identities.Zero F)
  (num_traitsidentitiesOneInst : num_traits.identities.One F)
  (AggregateVerifierEffectInst :
  applications.groth16_aggregation.AggregateVerifierEffect FX F E)
  (effect : FX) :
  Result (core.result.Result
    (applications.groth16_aggregation.AggregateVerifierCoreOutput F FX) E) := do
  applications.groth16_aggregation.verify_aggregate_proof_core_loop
    corecmpPartialEqInst num_traitsidentitiesZeroInst
    num_traitsidentitiesOneInst AggregateVerifierEffectInst effect 0#usize

end ark_ip_proofs
