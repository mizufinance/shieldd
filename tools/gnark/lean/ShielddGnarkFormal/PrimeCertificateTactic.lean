import Mathlib.Tactic.NormNum.PowMod

open Lean Meta Elab Tactic Qq
open Mathlib.Meta.NormNum

namespace Shieldd.GnarkFormal.PrimeCertificateTactic

private theorem isNatOut {a n : Nat} (h : IsNat a n) : a = n := by
  simpa only [Nat.cast_id] using h.out

private theorem powModEqOfIsNat
    {a b m rhs na nb nm nrhs result : Nat}
    (pa : IsNat a na) (pb : IsNat b nb) (pm : IsNat m nm) (prhs : IsNat rhs nrhs)
    (computed : Nat.mod (Nat.pow na nb) nm = result)
    (resultEq : result = nrhs) :
    Nat.mod (Nat.pow a b) m = rhs := by
  rw [isNatOut pa, isNatOut pb, isNatOut pm, isNatOut prhs]
  exact computed.trans resultEq

private theorem powModNeOfIsNat
    {a b m rhs na nb nm nrhs result : Nat}
    (pa : IsNat a na) (pb : IsNat b nb) (pm : IsNat m nm) (prhs : IsNat rhs nrhs)
    (computed : Nat.mod (Nat.pow na nb) nm = result)
    (resultNe : result ≠ nrhs) :
    Nat.mod (Nat.pow a b) m ≠ rhs := by
  rw [isNatOut pa, isNatOut pb, isNatOut pm, isNatOut prhs, computed]
  exact resultNe

private def deriveNatLit (e : Q(Nat)) : MetaM ((n : Q(Nat)) × Q(IsNat $e $n)) :=
  deriveNat e q(instAddMonoidWithOneNat)

private def parseNatPow (power : Q(Nat)) : MetaM (Q(Nat) × Q(Nat)) :=
  match power with
  | ~q(Nat.pow $a $b) => pure ⟨a, b⟩
  | ~q($a ^ $b) => pure ⟨a, b⟩
  | _ => throwError "prove_pow_mod could not parse {power} as a natural power"

private def parseNatMod (lhs : Q(Nat)) : MetaM (Q(Nat) × Q(Nat)) :=
  match lhs with
  | ~q(Nat.mod $value $modulus) => pure ⟨value, modulus⟩
  | ~q($value % $modulus) => pure ⟨value, modulus⟩
  | _ => throwError "prove_pow_mod could not parse {lhs} as a remainder"

/-- Prove a closed natural modular-power equality or inequality by checked binary exponentiation. -/
elab "prove_pow_mod" : tactic => do
  let goal ← getMainGoal
  let target ← instantiateMVars (← goal.getType)
  have target : Q(Prop) := target
  match target with
  | ~q(@Eq Nat $lhs $rhs) =>
      let ⟨power, m⟩ ← parseNatMod lhs
      let ⟨a, b⟩ ← parseNatPow power
      if a.isRawNatLit && b.isRawNatLit && m.isRawNatLit && rhs.isRawNatLit then
        let ⟨result, computed⟩ := evalNatPowMod a b m
        unless result.rawNatLit? = rhs.rawNatLit? do
          throwError "modular power reduced to {result.rawNatLit?}, expected {rhs.rawNatLit?}"
        goal.assign computed
        replaceMainGoal []
        return
      let ⟨na, pa⟩ ← deriveNatLit a
      let ⟨nb, pb⟩ ← deriveNatLit b
      let ⟨nm, pm⟩ ← deriveNatLit m
      let ⟨nrhs, prhs⟩ ← deriveNatLit rhs
      let ⟨result, computed⟩ := evalNatPowMod na nb nm
      unless result.natLit! = nrhs.natLit! do
        throwError "modular power reduced to {result.natLit!}, expected {nrhs.natLit!}"
      let resultEq : Q($result = $nrhs) ← mkDecideProof q($result = $nrhs)
      let proof : Q(Nat.mod (Nat.pow $a $b) $m = $rhs) :=
        q(powModEqOfIsNat $pa $pb $pm $prhs $computed $resultEq)
      goal.assign proof
      replaceMainGoal []
  | ~q(Not (@Eq Nat $lhs $rhs)) =>
      let ⟨power, m⟩ ← parseNatMod lhs
      let ⟨a, b⟩ ← parseNatPow power
      if a.isRawNatLit && b.isRawNatLit && m.isRawNatLit && rhs.isRawNatLit then
        let ⟨result, computed⟩ := evalNatPowMod a b m
        let resultNe : Q($result ≠ $rhs) ← mkDecideProof q($result ≠ $rhs)
        let proof : Q(Nat.mod (Nat.pow $a $b) $m ≠ $rhs) := q(by
          intro h
          exact $resultNe (($computed).symm.trans h))
        goal.assign proof
        replaceMainGoal []
        return
      let ⟨na, pa⟩ ← deriveNatLit a
      let ⟨nb, pb⟩ ← deriveNatLit b
      let ⟨nm, pm⟩ ← deriveNatLit m
      let ⟨nrhs, prhs⟩ ← deriveNatLit rhs
      let ⟨result, computed⟩ := evalNatPowMod na nb nm
      let resultNe : Q($result ≠ $nrhs) ← mkDecideProof q($result ≠ $nrhs)
      let proof : Q(Nat.mod (Nat.pow $a $b) $m ≠ $rhs) :=
        q(powModNeOfIsNat $pa $pb $pm $prhs $computed $resultNe)
      goal.assign proof
      replaceMainGoal []
  | _ => throwError "prove_pow_mod expects a closed Nat.pow remainder equality or inequality, got {target}"

end Shieldd.GnarkFormal.PrimeCertificateTactic
