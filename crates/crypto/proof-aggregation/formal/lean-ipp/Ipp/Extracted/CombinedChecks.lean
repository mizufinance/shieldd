import Ipp.Extracted.Groth16Verifier
import Ipp.Extracted.VerifyTippMipp

namespace Ipp.Extracted.CombinedChecks

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

noncomputable section

private def clone (T : Type) : core.clone.Clone T where
  clone value := .ok value

private noncomputable def partialEq (T : Type) :
    ark_ip_proofs.core.cmp.PartialEq T T where
  eq left right := by
    letI := Classical.decEq T
    exact .ok (decide (left = right))

private def fromU64 (F : Type) [NatCast F] :
    ark_ip_proofs.core.convert.From F Std.U64 where
  «from» value := .ok value.val

private def add (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add left right := .ok (left + right)

private def sub (T : Type) [Sub T] :
    ark_ip_proofs.core.ops.arith.Sub T T T where
  sub left right := .ok (left - right)

private def mul (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul left right := .ok (left * right)

private def div (T : Type) [Div T] :
    ark_ip_proofs.core.ops.arith.Div T T T where
  div left right := .ok (left / right)

private def one (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mul T
  one := .ok 1

private noncomputable def zero (T : Type) [Zero T] [Add T] :
    ark_ip_proofs.num_traits.identities.Zero T where
  coreopsarithAddInst := add T
  zero := .ok 0
  is_zero value := by
    letI := Classical.decEq T
    exact .ok (decide (value = 0))

private def smul (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.Mul G F G where
  mul point scalar := .ok (scalar • point)

private def neg (G : Type) [Neg G] :
    ark_ip_proofs.core.ops.arith.Neg G G where
  neg point := .ok (-point)

private def default (T : Type) [Zero T] : core.default.Default T where
  default := .ok 0

private def smulAssign (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.MulAssign G F where
  mul_assign point scalar := .ok (scalar • point)

/-- The combined extracted verifier under the algebraic adapters used by the
    landed TIPP/MIPP, public-input-fold, and PPE refinements. -/
def run
    {F G1 G2 G2Prepared GT E FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE) :=
  ark_ip_proofs.applications.groth16_aggregation.verify_combined_checks_core
    (clone F) (partialEq F) (fromU64 F) (one F) (zero F)
    (add F) (div F) (mul F) (sub F)
    (clone G1) (add G1) (smul F G1) (sub G1) (neg G1)
    (clone G2) (smul F G2) (sub G2)
    (clone G2Prepared) (clone GT) (default GT) (add GT) (smul F GT)
    (smulAssign F GT) (zero GT) (partialEq GT)
    (clone GT) (default GT) (add GT) (smulAssign F GT)
    (clone G1) (default G1) (add G1) (smulAssign F G1)
    effects tippPairing ppeEffect input effect tipp_pairing ppe_pairing

def runTipp
    {F G1 G2 GT E FX PE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.TippMippCoreInput
      F G1 G2 GT GT G1) (effect : FX) (pairing : PE) :=
  ark_ip_proofs.applications.groth16_aggregation.verify_tipp_mipp_core
    (clone F) (one F) (add F) (mul F)
    (clone G1) (smul F G1) (sub G1) (neg G1)
    (clone G2) (smul F G2) (sub G2)
    (clone GT) (default GT) (add GT) (smulAssign F GT) (zero GT)
    (clone GT) (default GT) (add GT) (smulAssign F GT)
    (clone G1) (default G1) (add G1) (smulAssign F G1)
    effects tippPairing input effect pairing

def runPpe
    {F G1 G2 G2Prepared GT PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup GT] [Module F GT]
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1) (pairing : PPE) :=
  ark_ip_proofs.applications.groth16_aggregation.verify_combined_ppe_core
    (clone F) (partialEq F) (fromU64 F) (one F) (zero F)
    (add F) (div F) (mul F) (sub F)
    (clone G1) (add G1) (smul F G1) (neg G1)
    (clone G2Prepared) (clone GT) (smul F GT) (add GT) (partialEq GT)
    ppeEffect input.ppe (ark_ip_proofs.alloc.vec.Vec.deref input.gamma_abc_g1)
    (ark_ip_proofs.alloc.vec.Vec.deref input.public_inputs) input.r pairing

private def structuralError {E : Type} :=
  ({ kind := 0#usize, actual_rounds := 0#usize,
     expected_rounds := 0#usize, tipp_mipp_error := none } :
    ark_ip_proofs.applications.groth16_aggregation.CombinedChecksError E)

private def roundError {E : Type} (actual expected : Usize) :=
  ({ kind := 1#usize, actual_rounds := actual,
     expected_rounds := expected, tipp_mipp_error := none } :
    ark_ip_proofs.applications.groth16_aggregation.CombinedChecksError E)

private def tippError {E : Type} (error : E) :=
  ({ kind := 2#usize, actual_rounds := 0#usize,
     expected_rounds := 0#usize, tipp_mipp_error := some error } :
    ark_ip_proofs.applications.groth16_aggregation.CombinedChecksError E)

/-- Empty proof batches are exactly the structural-error branch. -/
theorem run_empty
    {F G1 G2 G2Prepared GT E FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (hempty : input.public_inputs.val = []) :
    run effects tippPairing ppeEffect input effect tipp_pairing ppe_pairing =
      .ok (.Err (structuralError (E := E))) := by
  have hlen : ark_ip_proofs.alloc.vec.Vec.len input.public_inputs = 0#usize := by
    simp [ark_ip_proofs.alloc.vec.Vec.len, hempty, Usize.ofNat]
  unfold run ark_ip_proofs.applications.groth16_aggregation.verify_combined_checks_core
  rw [hlen]
  rfl

/-- A nonempty length rejected by the extracted power-of-two check is exactly
    the structural-error branch. -/
theorem run_not_power_of_two
    {F G1 G2 G2Prepared GT E FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (hnonempty : ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize)
    (hpower : ark_ip_proofs.core.num.Usize.is_power_of_two
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok false) :
    run effects tippPairing ppeEffect input effect tipp_pairing ppe_pairing =
      .ok (.Err (structuralError (E := E))) := by
  unfold run ark_ip_proofs.applications.groth16_aggregation.verify_combined_checks_core
  simp only [hnonempty, ↓reduceIte]
  rw [hpower]
  rfl

/-- A valid power-of-two batch with a mismatched proof trace is exactly the
    round-count error, retaining both observed counts. -/
theorem run_round_mismatch
    {F G1 G2 G2Prepared GT E FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (expected : Usize)
    (hnonempty : ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize)
    (hpower : ark_ip_proofs.core.num.Usize.is_power_of_two
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok true)
    (hilog : ark_ip_proofs.core.num.Usize.ilog2
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok expected)
    (hmismatch : ark_ip_proofs.alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof ≠
      expected) :
    run effects tippPairing ppeEffect input effect tipp_pairing ppe_pairing =
      .ok (.Err (roundError (E := E)
        (ark_ip_proofs.alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof)
        expected)) := by
  unfold run ark_ip_proofs.applications.groth16_aggregation.verify_combined_checks_core
  simp only [hnonempty, ↓reduceIte]
  rw [hpower, hilog]
  simp [lift, UScalar.cast, hmismatch, roundError]

/-- The TIPP/MIPP error is wrapped only after the PPE call has completed,
    matching the extracted production order. -/
theorem run_tipp_error
    {F G1 G2 G2Prepared GT E FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect effect1 : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (error : E) (ppeValid : Bool) (expected : Usize)
    (hnonempty : ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize)
    (hpower : ark_ip_proofs.core.num.Usize.is_power_of_two
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok true)
    (hilog : ark_ip_proofs.core.num.Usize.ilog2
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok expected)
    (hrounds : ark_ip_proofs.alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof =
      expected)
    (htipp : runTipp effects tippPairing input.tipp_mipp effect tipp_pairing =
      .ok (.Err error, effect1))
    (hppe : runPpe ppeEffect input ppe_pairing = .ok ppeValid) :
    run effects tippPairing ppeEffect input effect tipp_pairing ppe_pairing =
      .ok (.Err (tippError error)) := by
  unfold run ark_ip_proofs.applications.groth16_aggregation.verify_combined_checks_core
  simp only [hnonempty, ↓reduceIte]
  rw [hpower, hilog]
  simp only [Result.bind_ok, lift, UScalar.cast]
  simp only [if_true]
  simp [hrounds]
  change (runTipp effects tippPairing input.tipp_mipp effect tipp_pairing >>=
    fun __discr => _) = _
  rw [htipp]
  simp only [Result.bind_ok]
  change (runPpe ppeEffect input ppe_pairing >>= fun _ => _) = _
  rw [hppe]
  rfl

/-- Under the explicit nonempty power-of-two and round-count preconditions,
    combined acceptance is exactly leaf acceptance and the PPE predicate. -/
theorem run_refinement_statement
    {F G1 G2 G2Prepared GT E FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect effect4 : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (leafData ppeEquation : Prop) (expected : Usize)
    (hnonempty : ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize)
    (hpower : ark_ip_proofs.core.num.Usize.is_power_of_two
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok true)
    (hilog : ark_ip_proofs.core.num.Usize.ilog2
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok expected)
    (hrounds : ark_ip_proofs.alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof =
      expected)
    (htippTotal : ∃ valid nextEffect,
      runTipp effects tippPairing input.tipp_mipp effect tipp_pairing =
        .ok (.Ok valid, nextEffect))
    (hppeTotal : ∃ valid, runPpe ppeEffect input ppe_pairing = .ok valid)
    (htipp : runTipp effects tippPairing input.tipp_mipp effect tipp_pairing =
        .ok (.Ok true, effect4) ↔ leafData)
    (hppe : runPpe ppeEffect input ppe_pairing = .ok true ↔ ppeEquation) :
    run effects tippPairing ppeEffect input effect tipp_pairing ppe_pairing =
        .ok (.Ok { checks := (true, true), tipp_mipp_effect := effect4 }) ↔
      leafData ∧ ppeEquation := by
  unfold run ark_ip_proofs.applications.groth16_aggregation.verify_combined_checks_core
  simp only [hnonempty, ↓reduceIte]
  rw [hpower, hilog]
  simp only [Result.bind_ok, lift, UScalar.cast]
  simp only [if_true]
  simp [hrounds]
  change ((runTipp effects tippPairing input.tipp_mipp effect tipp_pairing >>=
    fun __discr => _) = _ ↔ _)
  rcases htippTotal with ⟨tippValid, nextEffect, htippTotal⟩
  rcases hppeTotal with ⟨ppeValid, hppeTotal⟩
  rw [htippTotal]
  simp only [Result.bind_ok]
  change ((runPpe ppeEffect input ppe_pairing >>= fun ppe => _) = _ ↔ _)
  rw [hppeTotal]
  simp only [Result.bind_ok]
  cases tippValid <;> cases ppeValid <;>
    simp_all [ark_ip_proofs.core.result.Result.Insts.CoreOpsTry.branch]

/-- The combined core accepts exactly on the SnarkPack leaf payload and the
    canonical positive-sign PPE equation. -/
theorem verify_combined_checks_refinement_statement
    {F G1 G2 G2Prepared GT E FX PE PPE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {n : Nat} (stmt : Ipp.FsStatement n F G1 G2 GT)
    (proof : Ipp.Proof n F G1 G2 GT) (transcript : Ipp.FsTranscript n F)
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (tippPairing : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (ppeEffect : ark_ip_proofs.applications.groth16_aggregation.PreparedPairingEffect
      PPE G1 G2Prepared GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreInput
      F G1 G2 G2Prepared GT GT G1)
    (effect effect4 : FX) (tipp_pairing : PE) (ppe_pairing : PPE)
    (ppeOutcome : PPE → Option Unit)
    (alpha gIC aggC : G1) (beta gamma delta : G2) (rSum : F) (ipAb : GT)
    (expected : Usize)
    (hnonempty : ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize)
    (hpower : ark_ip_proofs.core.num.Usize.is_power_of_two
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok true)
    (hilog : ark_ip_proofs.core.num.Usize.ilog2
      (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok expected)
    (hrounds : ark_ip_proofs.alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof =
      expected)
    (htippTotal : ∃ valid nextEffect,
      runTipp effects tippPairing input.tipp_mipp effect tipp_pairing =
        .ok (.Ok valid, nextEffect))
    (hppeTotal : ∃ valid, runPpe ppeEffect input ppe_pairing = .ok valid)
    (htipp : runTipp effects tippPairing input.tipp_mipp effect tipp_pairing =
        .ok (.Ok true, effect4) ↔ Ipp.LeafData stmt proof transcript)
    (hppe : runPpe ppeEffect input ppe_pairing = .ok true ↔
      ppeOutcome ppe_pairing = some () ∧
        stmt.e (rSum • alpha) beta + stmt.e gIC gamma + stmt.e aggC delta = ipAb) :
    run effects tippPairing ppeEffect input effect tipp_pairing ppe_pairing =
        .ok (.Ok { checks := (true, true), tipp_mipp_effect := effect4 }) ↔
      Ipp.LeafData stmt proof transcript ∧
        (ppeOutcome ppe_pairing = some () ∧
          stmt.e (rSum • alpha) beta + stmt.e gIC gamma +
            stmt.e aggC delta = ipAb) := by
  exact run_refinement_statement effects tippPairing ppeEffect input effect
    effect4 tipp_pairing ppe_pairing (Ipp.LeafData stmt proof transcript)
    (ppeOutcome ppe_pairing = some () ∧
      stmt.e (rSum • alpha) beta + stmt.e gIC gamma + stmt.e aggC delta = ipAb)
    expected hnonempty hpower hilog hrounds htippTotal hppeTotal htipp hppe

#print axioms run_empty
#print axioms run_not_power_of_two
#print axioms run_round_mismatch
#print axioms run_tipp_error
#print axioms run_refinement_statement
#print axioms verify_combined_checks_refinement_statement

end
end Ipp.Extracted.CombinedChecks
