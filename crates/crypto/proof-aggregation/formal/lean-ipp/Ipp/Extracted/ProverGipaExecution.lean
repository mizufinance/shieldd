import Ipp.Extracted.AggregateProver

/-!
Execution refinement for the production-used prover GIPA core. Arkworks
pairing/MSM calls and challenge/inversion results are explicit effect
postconditions; split orientation and all six state folds are discharged from
the extracted Rust round function.
-/

namespace Ipp.Extracted.ProverGipaExecution

open Aeneas Aeneas.Std Result
open ark_ip_proofs

noncomputable section

abbrev Commitment (GT ABT CT : Type) :=
  applications.groth16_aggregation.TippMippCoreCommitment GT ABT CT

def cloneModel (T : Type) : core.clone.Clone T where
  clone value := .ok value

def addModel (T : Type) [Add T] :
    core.ops.arith.Add T T T where
  add left right := .ok (left + right)

def mulModel (F : Type) [Mul F] :
    core.ops.arith.Mul F F F where
  mul left right := .ok (left * right)

def rightSmulModel (F T : Type) [SMul F T] :
    core.ops.arith.Mul T F T where
  mul value scalar := .ok (scalar • value)

private def finSlice {T : Type} {n : Nat}
    (values : Fin n → T) : Slice T :=
  ⟨List.ofFn values⟩

private def finVec {T : Type} {n : Nat}
    (values : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn values⟩

/-- Exact non-algebraic results consumed during one successful shipping
prover round. These are the only round-local external facts: five
pairing/MSM commitment fields, one transcript challenge, and its field
inverse. -/
structure RoundEffectBoundary
    {F G1 G2 GT ABT CT E FX : Type}
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT ABT CT E)
    {n : Nat}
    (aLeft aRight cLeft cRight wLeft wRight : Fin n → G1)
    (bLeft bRight vLeft vRight : Fin n → G2)
    (publicLeft publicRight : Fin n → F)
    (prior : F) (effect effect' : FX)
    (left right : Commitment GT ABT CT)
    (raw inverse : F) : Prop where
  leftCommitment :
    effects.commit_round
        (finSlice aRight) (finSlice bLeft) (finSlice cRight)
        (finSlice publicLeft) (finSlice vLeft) (finSlice wRight) =
      .ok (.Ok left)
  rightCommitment :
    effects.commit_round
        (finSlice aLeft) (finSlice bRight) (finSlice cLeft)
        (finSlice publicRight) (finSlice vRight) (finSlice wLeft) =
      .ok (.Ok right)
  challenge :
    effects.derive_round effect prior left right =
      .ok (.Ok raw, effect')
  inverse :
    effects.invert_round effect' raw =
      .ok (.Ok inverse)

/-- Mathematical output of the extracted six-fold transition. -/
def expectedRoundOutput
    {F G1 G2 GT ABT CT : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    {n : Nat}
    (aLeft aRight cLeft cRight wLeft wRight : Fin n → G1)
    (bLeft bRight vLeft vRight : Fin n → G2)
    (publicLeft publicRight : Fin n → F)
    (left right : Commitment GT ABT CT)
    (raw inverse : F) :
    applications.groth16_aggregation.ProverGipaRoundOutput
      F G1 G2 GT ABT CT :=
  {
    left := left
    right := right
    raw_challenge := raw
    inv_challenge := inverse
    a := finVec (Ipp.foldMsg inverse (Fin.addCases aLeft aRight))
    b := finVec (Ipp.foldMsg raw (Fin.addCases bLeft bRight))
    c := finVec (Ipp.foldMsg inverse (Fin.addCases cLeft cRight))
    public_values :=
      finVec (Ipp.foldMsg raw (Fin.addCases publicLeft publicRight))
    ck_v := finVec (Ipp.foldMsg raw (Fin.addCases vLeft vRight))
    ck_w := finVec (Ipp.foldMsg inverse (Fin.addCases wLeft wRight))
  }

/-- One successful call of the production-used extracted round core performs
exactly the six chronological folds used by `HonestProver.honestRounds`.
There is no premise for the returned terminal vectors or commitment order. -/
theorem extracted_round_exact
    {F G1 G2 GT ABT CT E FX : Type}
    [Field F]
    [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2]
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT ABT CT E)
    {n : Nat}
    (aLeft aRight cLeft cRight wLeft wRight : Fin n → G1)
    (bLeft bRight vLeft vRight : Fin n → G2)
    (publicLeft publicRight : Fin n → F)
    (prior : F) (effect effect' : FX)
    (left right : Commitment GT ABT CT)
    (raw inverse : F)
    (boundary : RoundEffectBoundary effects
      aLeft aRight cLeft cRight wLeft wRight
      bLeft bRight vLeft vRight publicLeft publicRight
      prior effect effect' left right raw inverse) :
    applications.groth16_aggregation.prove_tipp_mipp_gipa_round_core
        (cloneModel F) (mulModel F) (addModel F)
        (cloneModel G1) (rightSmulModel F G1) (addModel G1)
        (cloneModel G2) (rightSmulModel F G2) (addModel G2)
        (cloneModel GT) (cloneModel ABT) (cloneModel CT)
        effects
        (finSlice aLeft) (finSlice aRight)
        (finSlice bLeft) (finSlice bRight)
        (finSlice cLeft) (finSlice cRight)
        (finSlice publicLeft) (finSlice publicRight)
        (finSlice vLeft) (finSlice vRight)
        (finSlice wLeft) (finSlice wRight)
        prior effect =
      .ok (.Ok (expectedRoundOutput
        aLeft aRight cLeft cRight wLeft wRight
        bLeft bRight vLeft vRight publicLeft publicRight
        left right raw inverse), effect') := by
  have ha :=
    AggregateProver.fold_vector_core_exact aRight aLeft inverse
  have hb :=
    AggregateProver.fold_vector_core_exact bRight bLeft raw
  have hc :=
    AggregateProver.fold_vector_core_exact cRight cLeft inverse
  have hpublic :=
    AggregateProver.fold_vector_core_exact publicRight publicLeft raw
  have hv :=
    AggregateProver.fold_vector_core_exact vRight vLeft raw
  have hw :=
    AggregateProver.fold_vector_core_exact wRight wLeft inverse
  unfold AggregateProver.fold_vector_refinement_statement at ha hb hc hpublic hv hw
  have ha' :
      applications.groth16_aggregation.fold_vector_core
          (cloneModel G1) (rightSmulModel F G1) (addModel G1)
          (cloneModel F) (finSlice aRight) (finSlice aLeft) inverse =
        .ok (finVec (Ipp.foldMsg inverse (Fin.addCases aLeft aRight))) := by
    simpa [cloneModel, rightSmulModel, addModel, finSlice, finVec] using ha
  have hb' :
      applications.groth16_aggregation.fold_vector_core
          (cloneModel G2) (rightSmulModel F G2) (addModel G2)
          (cloneModel F) (finSlice bRight) (finSlice bLeft) raw =
        .ok (finVec (Ipp.foldMsg raw (Fin.addCases bLeft bRight))) := by
    simpa [cloneModel, rightSmulModel, addModel, finSlice, finVec] using hb
  have hc' :
      applications.groth16_aggregation.fold_vector_core
          (cloneModel G1) (rightSmulModel F G1) (addModel G1)
          (cloneModel F) (finSlice cRight) (finSlice cLeft) inverse =
        .ok (finVec (Ipp.foldMsg inverse (Fin.addCases cLeft cRight))) := by
    simpa [cloneModel, rightSmulModel, addModel, finSlice, finVec] using hc
  have hpublicSmul' :
      applications.groth16_aggregation.fold_vector_core
          (cloneModel F) (rightSmulModel F F) (addModel F)
          (cloneModel F) (finSlice publicRight) (finSlice publicLeft) raw =
        .ok (finVec (Ipp.foldMsg raw
          (Fin.addCases publicLeft publicRight))) := by
    simpa [cloneModel, rightSmulModel, addModel, finSlice, finVec] using hpublic
  have hmulModel : mulModel F = rightSmulModel F F := by
    unfold mulModel rightSmulModel
    congr 1
    funext left right
    simp [mulModel, rightSmulModel, smul_eq_mul, mul_comm]
  have hpublic' :
      applications.groth16_aggregation.fold_vector_core
          (cloneModel F) (mulModel F) (addModel F)
          (cloneModel F) (finSlice publicRight) (finSlice publicLeft) raw =
        .ok (finVec (Ipp.foldMsg raw
          (Fin.addCases publicLeft publicRight))) := by
    rw [hmulModel]
    exact hpublicSmul'
  have hv' :
      applications.groth16_aggregation.fold_vector_core
          (cloneModel G2) (rightSmulModel F G2) (addModel G2)
          (cloneModel F) (finSlice vRight) (finSlice vLeft) raw =
        .ok (finVec (Ipp.foldMsg raw (Fin.addCases vLeft vRight))) := by
    simpa [cloneModel, rightSmulModel, addModel, finSlice, finVec] using hv
  have hw' :
      applications.groth16_aggregation.fold_vector_core
          (cloneModel G1) (rightSmulModel F G1) (addModel G1)
          (cloneModel F) (finSlice wRight) (finSlice wLeft) inverse =
        .ok (finVec (Ipp.foldMsg inverse (Fin.addCases wLeft wRight))) := by
    simpa [cloneModel, rightSmulModel, addModel, finSlice, finVec] using hw
  simp [
    applications.groth16_aggregation.prove_tipp_mipp_gipa_round_core,
    core.result.Result.map_err,
    boundary.leftCommitment,
    boundary.rightCommitment,
    boundary.challenge,
    boundary.inverse,
    ha', hb', hc', hpublic', hv', hw',
    expectedRoundOutput,
    core.result.Result.Insts.CoreOpsTry.branch,
    core.result.Result.Insts.CoreOpsTryTraitFromResidualResultInfallible.from_residual
  ]

/-- Finite successful execution trace for an extracted `while` loop.

Unlike an equality for the whole loop, this witness exposes every executed
body transition. It therefore cannot assert a terminal result without also
supplying the generated body's exact transition at each iteration. -/
inductive SuccessfulLoopTrace {State Output : Type}
    (body : State → Result (ControlFlow State Output)) :
    State → Output → Prop where
  | done {state output}
      (run : body state = .ok (.done output)) :
      SuccessfulLoopTrace body state output
  | step {state next output}
      (run : body state = .ok (.cont next))
      (tail : SuccessfulLoopTrace body next output) :
      SuccessfulLoopTrace body state output

theorem SuccessfulLoopTrace.existsFuel
    {State Output : Type}
    {body : State → Result (ControlFlow State Output)}
    {state : State} {output : Output}
    (trace : SuccessfulLoopTrace body state output) :
    ∃ fuel, loopFuel body fuel state = .ok output := by
  induction trace with
  | done run =>
      exact ⟨1, by rw [loopFuel, run]⟩
  | step run _ ih =>
      obtain ⟨fuel, hfuel⟩ := ih
      exact ⟨fuel + 1, by rw [loopFuel, run]; exact hfuel⟩

/-- A finite transition trace is sufficient to evaluate Aeneas' extracted
loop; no whole-loop result is assumed. -/
theorem SuccessfulLoopTrace.run
    {State Output : Type}
    {body : State → Result (ControlFlow State Output)}
    {state : State} {output : Output}
    (trace : SuccessfulLoopTrace body state output) :
    loop body state = .ok output := by
  obtain ⟨fuel, hfuel⟩ := trace.existsFuel
  exact loop_eq_of_fuel (by simp) hfuel

/-- Exact execution witness for the whole generated control loop. Unlike the
former fieldwise prover premise, this is one equality to the production-used
extraction root; round and terminal fields cannot be chosen independently. -/
structure SuccessfulExecution
    {F G1 G2 GT ABT CT E FX : Type}
    (cloneF : core.clone.Clone F)
    (mulF : core.ops.arith.Mul F F F)
    (addF : core.ops.arith.Add F F F)
    (cloneG1 : core.clone.Clone G1)
    (mulG1 : core.ops.arith.Mul G1 F G1)
    (addG1 : core.ops.arith.Add G1 G1 G1)
    (cloneG2 : core.clone.Clone G2)
    (mulG2 : core.ops.arith.Mul G2 F G2)
    (addG2 : core.ops.arith.Add G2 G2 G2)
    (cloneGT : core.clone.Clone GT)
    (cloneABT : core.clone.Clone ABT)
    (cloneCT : core.clone.Clone CT)
    (effects :
      applications.groth16_aggregation.ProverGipaEffect
        FX F G1 G2 GT ABT CT E)
    (input :
      applications.groth16_aggregation.ProverGipaCoreInput F G1 G2 GT)
    (initialEffect : FX) where
  output :
    applications.groth16_aggregation.ProverGipaCoreOutput
      F G1 G2 GT ABT CT
  finalEffect : FX
  run :
    applications.groth16_aggregation.prove_tipp_mipp_gipa_core
        cloneF mulF addF cloneG1 mulG1 addG1 cloneG2 mulG2 addG2
        cloneGT cloneABT cloneCT effects input initialEffect =
      .ok (.Ok output, finalEffect)

end

end Ipp.Extracted.ProverGipaExecution
