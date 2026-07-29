import Ipp.Extracted.Groth16Verifier
import Ipp.Extracted.VerifyTippMipp

namespace Ipp.Extracted.CombinedChecks

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

noncomputable section

def clone (T : Type) : core.clone.Clone T where
  clone value := .ok value

noncomputable def partialEq (T : Type) :
    ark_ip_proofs.core.cmp.PartialEq T T where
  eq left right := by
    letI := Classical.decEq T
    exact .ok (decide (left = right))

def fromU64 (F : Type) [NatCast F] :
    ark_ip_proofs.core.convert.From F MacCampaign.U64 where
  «from» value := .ok value.val

def add (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add left right := .ok (left + right)

def sub (T : Type) [Sub T] :
    ark_ip_proofs.core.ops.arith.Sub T T T where
  sub left right := .ok (left - right)

def mul (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul left right := .ok (left * right)

def div (T : Type) [Div T] :
    ark_ip_proofs.core.ops.arith.Div T T T where
  div left right := .ok (left / right)

def one (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mul T
  one := .ok 1

noncomputable def zero (T : Type) [Zero T] [Add T] :
    ark_ip_proofs.num_traits.identities.Zero T where
  coreopsarithAddInst := add T
  zero := .ok 0
  is_zero value := by
    letI := Classical.decEq T
    exact .ok (decide (value = 0))

def smul (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.Mul G F G where
  mul point scalar := .ok (scalar • point)

def neg (G : Type) [Neg G] :
    ark_ip_proofs.core.ops.arith.Neg G G where
  neg point := .ok (-point)

def default (T : Type) [Zero T] : core.default.Default T where
  default := .ok 0

def smulAssign (F G : Type) [SMul F G] :
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

/-- The production combined-check wrapper and the leaf refinement wrapper use
    exactly the same extracted verifier and algebraic operations. -/
theorem runTipp_eq_model
    {F G1 G2 GT E FX PE : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (effects : ark_ip_proofs.applications.groth16_aggregation.TippMippEffect
      FX F G1 G2 GT GT G1 E)
    (pairingEffect : ark_ip_proofs.tipa.PairingEffect PE G1 G2 GT)
    (input : ark_ip_proofs.applications.groth16_aggregation.TippMippCoreInput
      F G1 G2 GT GT G1)
    (effect : FX) (pairing : PE) :
    runTipp effects pairingEffect input effect pairing =
      Ipp.Extracted.VerifyTippMipp.runTippModel
        effects pairingEffect input effect pairing := by
  simp only [runTipp, Ipp.Extracted.VerifyTippMipp.runTippModel,
    clone, one, add, mul, smul, sub, neg, default, smulAssign, zero,
    Ipp.Extracted.VerifyTippMipp.modelClone,
    Ipp.Extracted.VerifyTippMipp.modelOne,
    Ipp.Extracted.VerifyTippMipp.modelAdd,
    Ipp.Extracted.VerifyTippMipp.modelMul,
    Ipp.Extracted.VerifyTippMipp.modelSmul,
    Ipp.Extracted.VerifyTippMipp.modelSub,
    Ipp.Extracted.VerifyTippMipp.modelNeg,
    Ipp.Extracted.VerifyTippMipp.modelDefault,
    Ipp.Extracted.VerifyTippMipp.modelSmulAssign,
    Ipp.Extracted.VerifyTippMipp.modelZero,
    Ipp.Extracted.cloneModel, Ipp.Extracted.oneModel,
    Ipp.Extracted.addModel, Ipp.Extracted.mulModel,
    Ipp.Extracted.smulModel, Ipp.Extracted.subModel,
    Ipp.Extracted.negModel, Ipp.Extracted.defaultModel,
    Ipp.Extracted.smulAssignModel, Ipp.Extracted.zeroModel]

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
  simp [lift, MacCampaign.castUsize_self, hmismatch, roundError]

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
  simp only [Result.bind_ok, lift, MacCampaign.castUsize_self]
  simp only [if_true]
  simp [hrounds]
  change (runTipp effects tippPairing input.tipp_mipp effect tipp_pairing >>=
    fun __discr => _) = _
  rw [htipp]
  simp only [Result.bind_ok]
  change (runPpe ppeEffect input ppe_pairing >>= fun _ => _) = _
  rw [hppe]
  rfl

/-- Every accepted combined execution has passed the structural preflight and
    both verifier subcalls.  These facts are consequences of the extracted
    control flow, not premises of its refinement theorem. -/
theorem accepted_path
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
    (haccept :
      run effects tippPairing ppeEffect input effect tipp_pairing ppe_pairing =
        .ok (.Ok { checks := (true, true), tipp_mipp_effect := effect4 })) :
    ∃ expected : Usize,
      ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize ∧
      ark_ip_proofs.core.num.Usize.is_power_of_two
        (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok true ∧
      ark_ip_proofs.core.num.Usize.ilog2
        (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) = .ok expected ∧
      ark_ip_proofs.alloc.vec.Vec.len input.tipp_mipp.proof.gipa_proof =
        expected ∧
      runTipp effects tippPairing input.tipp_mipp effect tipp_pairing =
        .ok (.Ok true, effect4) ∧
      runPpe ppeEffect input ppe_pairing = .ok true := by
  have hrun := haccept
  unfold run
    ark_ip_proofs.applications.groth16_aggregation.verify_combined_checks_core at haccept
  by_cases hnonempty :
      ark_ip_proofs.alloc.vec.Vec.len input.public_inputs ≠ 0#usize
  · simp only [hnonempty, ↓reduceIte] at haccept
    cases hpower :
        ark_ip_proofs.core.num.Usize.is_power_of_two
          (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) with
    | fail error => simp [hpower] at haccept
    | div => simp [hpower] at haccept
    | ok power =>
        cases power with
        | false => simp [hpower] at haccept
        | true =>
            simp only [hpower, Result.bind_ok, if_true] at haccept
            cases hilog :
                ark_ip_proofs.core.num.Usize.ilog2
                  (ark_ip_proofs.alloc.vec.Vec.len input.public_inputs) with
            | fail error => simp [hilog] at haccept
            | div => simp [hilog] at haccept
            | ok expected =>
                simp only [hilog, Result.bind_ok, lift,
                  MacCampaign.castUsize_self] at haccept
                by_cases hrounds :
                    ark_ip_proofs.alloc.vec.Vec.len
                        input.tipp_mipp.proof.gipa_proof =
                      expected
                · simp [hrounds] at haccept
                  change
                    (runTipp effects tippPairing input.tipp_mipp effect
                        tipp_pairing >>= fun tippResult =>
                      _) =
                        .ok (ark_ip_proofs.core.result.Result.Ok
                          ({
                            checks := (true, true),
                            tipp_mipp_effect := effect4
                          } :
                            ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreOutput
                              FX)) at haccept
                  cases htipp :
                      runTipp effects tippPairing input.tipp_mipp effect
                        tipp_pairing with
                  | fail error => simp [htipp] at haccept
                  | div => simp [htipp] at haccept
                  | ok tippPair =>
                      rcases tippPair with ⟨tippResult, nextEffect⟩
                      cases tippResult with
                      | Err error =>
                          cases hppe :
                              runPpe ppeEffect input ppe_pairing with
                          | fail ppeError =>
                              have hcontradiction := hrun
                              unfold run
                                ark_ip_proofs.applications.groth16_aggregation.verify_combined_checks_core
                                at hcontradiction
                              simp only [hnonempty, ↓reduceIte] at hcontradiction
                              rw [hpower, hilog] at hcontradiction
                              simp only [Result.bind_ok, lift,
                                MacCampaign.castUsize_self] at hcontradiction
                              simp [hrounds] at hcontradiction
                              change
                                (runTipp effects tippPairing input.tipp_mipp
                                    effect tipp_pairing >>= fun _ => _) =
                                  _ at hcontradiction
                              rw [htipp] at hcontradiction
                              simp only [Result.bind_ok] at hcontradiction
                              change
                                (runPpe ppeEffect input ppe_pairing >>=
                                    fun _ => _) =
                                  _ at hcontradiction
                              rw [hppe] at hcontradiction
                              simp at hcontradiction
                          | div =>
                              have hcontradiction := hrun
                              unfold run
                                ark_ip_proofs.applications.groth16_aggregation.verify_combined_checks_core
                                at hcontradiction
                              simp only [hnonempty, ↓reduceIte] at hcontradiction
                              rw [hpower, hilog] at hcontradiction
                              simp only [Result.bind_ok, lift,
                                MacCampaign.castUsize_self] at hcontradiction
                              simp [hrounds] at hcontradiction
                              change
                                (runTipp effects tippPairing input.tipp_mipp
                                    effect tipp_pairing >>= fun _ => _) =
                                  _ at hcontradiction
                              rw [htipp] at hcontradiction
                              simp only [Result.bind_ok] at hcontradiction
                              change
                                (runPpe ppeEffect input ppe_pairing >>=
                                    fun _ => _) =
                                  _ at hcontradiction
                              rw [hppe] at hcontradiction
                              simp at hcontradiction
                          | ok ppeValid =>
                              have herr := run_tipp_error effects tippPairing
                                ppeEffect input effect nextEffect tipp_pairing
                                ppe_pairing error ppeValid expected hnonempty
                                hpower hilog hrounds htipp hppe
                              rw [hrun] at herr
                              simp at herr
                      | Ok tippValid =>
                          simp only [htipp, Result.bind_ok] at haccept
                          change
                            (runPpe ppeEffect input ppe_pairing >>=
                              fun ppeValid => _) =
                                .ok (ark_ip_proofs.core.result.Result.Ok
                                  ({
                                    checks := (true, true),
                                    tipp_mipp_effect := effect4
                                  } :
                                    ark_ip_proofs.applications.groth16_aggregation.CombinedChecksCoreOutput
                                      FX)) at haccept
                          cases hppe :
                              runPpe ppeEffect input ppe_pairing with
                          | fail error => simp [hppe] at haccept
                          | div => simp [hppe] at haccept
                          | ok ppeValid =>
                              simp only [hppe, Result.bind_ok] at haccept
                              cases tippValid <;> cases ppeValid <;>
                                simp_all [
                                  ark_ip_proofs.core.result.Result.Insts.CoreOpsTry.branch]
                · simp [hrounds] at haccept
  · have hempty :
        ark_ip_proofs.alloc.vec.Vec.len input.public_inputs = 0#usize :=
      Classical.byContradiction (fun h => hnonempty h)
    simp [hempty] at haccept

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
  simp only [Result.bind_ok, lift, MacCampaign.castUsize_self]
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

/-- Accepted extracted combined checks imply the abstract leaf and PPE
    predicates. Structural preflight, subcall success, and failure exclusion
    are recovered from `accepted_path`; only the semantic meaning of successful
    effect calls remains at the adapter boundary. -/
theorem accepted_implies_semantics
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
    (leafData ppeEquation : Prop)
    (haccept :
      run effects tippPairing ppeEffect input effect tipp_pairing ppe_pairing =
        .ok (.Ok { checks := (true, true), tipp_mipp_effect := effect4 }))
    (htipp :
      runTipp effects tippPairing input.tipp_mipp effect tipp_pairing =
        .ok (.Ok true, effect4) → leafData)
    (hppe : runPpe ppeEffect input ppe_pairing = .ok true → ppeEquation) :
    leafData ∧ ppeEquation := by
  rcases accepted_path effects tippPairing ppeEffect input effect effect4
      tipp_pairing ppe_pairing haccept with
    ⟨_, _, _, _, _, htippAccepted, hppeAccepted⟩
  exact ⟨htipp htippAccepted, hppe hppeAccepted⟩

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
#print axioms accepted_path
#print axioms run_refinement_statement
#print axioms accepted_implies_semantics
#print axioms verify_combined_checks_refinement_statement

end
end Ipp.Extracted.CombinedChecks
