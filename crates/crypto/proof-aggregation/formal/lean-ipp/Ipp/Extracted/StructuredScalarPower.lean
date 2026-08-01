import Ipp.Extracted.StructuredScalarPowerGenerated
import Ipp.FsGame

/-!
Exact refinement of the scalar-power loop used by the shipping aggregate
prover. The production function is intentionally specified only for nonempty
vectors: SnarkPack calls it with `2^μ`, while its legacy zero-length behavior
returns the initialized singleton.
-/

namespace Ipp.Extracted.StructuredScalarPower

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

noncomputable section

def cloneModel (T : Type) : core.clone.Clone T where
  clone value := .ok value

def mulModel (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul left right := .ok (left * right)

def oneModel (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mulModel T
  one := .ok 1

def finVec {T : Type} {n : Nat}
    (values : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn values⟩

private def powerPrefix {F : Type} [Monoid F] (s : F) (n : Nat) : List F :=
  List.ofFn (fun i : Fin n => s ^ (i : Nat))

private theorem powerPrefix_succ {F : Type} [Monoid F]
    (s : F) (n : Nat) :
    powerPrefix s (n + 1) = powerPrefix s n ++ [s ^ n] := by
  simpa [powerPrefix, List.concat_eq_append] using
    (List.ofFn_succ'
      (fun i : Fin (Nat.succ n) => s ^ (i : Nat)))

private theorem usizeSub (left right : Usize) (h : right.val ≤ left.val) :
    (left - right : Result Usize) = .ok ⟨left.val - right.val⟩ := by
  change (if right.val ≤ left.val then
      Result.ok ({ val := left.val - right.val } : Usize)
    else Result.fail .integerOverflow) = _
  simp [h]

private def powerBody {F : Type} [Field F] (s : F) :
    (core.ops.range.Range × alloc.vec.Vec F) →
      Result (ControlFlow
        (core.ops.range.Range × alloc.vec.Vec F)
        (alloc.vec.Vec F)) :=
  fun (iter, powers) =>
    ark_ip_proofs.tipa.structured_scalar_message.structured_scalar_power_loop.body
      (cloneModel F) (mulModel F) s iter powers

private theorem powerFuel {F : Type} [Field F]
    (s : F) (start remaining : Nat) (hstart : 0 < start) :
    loopFuel (powerBody s) (remaining + 1)
      ({ start := ⟨start⟩, «end» := ⟨start + remaining⟩ },
        ⟨powerPrefix s start⟩) =
      .ok ⟨powerPrefix s (start + remaining)⟩ := by
  induction remaining generalizing start with
  | zero =>
      rw [loopFuel]
      simp [powerBody,
        ark_ip_proofs.tipa.structured_scalar_message.structured_scalar_power_loop.body,
        core.iter.range.IteratorRange.next]
  | succ remaining ih =>
      have hlt : start < start + (remaining + 1) := by omega
      have hpred : start - 1 < start := by omega
      rw [loopFuel]
      simp only [powerBody,
        ark_ip_proofs.tipa.structured_scalar_message.structured_scalar_power_loop.body,
        core.iter.range.IteratorRange.next, hlt, ↓reduceIte,
        Result.bind_ok, Usize.ofNat]
      rw [usizeSub ⟨start⟩ (⟨1⟩ : Usize) (by simp; omega)]
      simp only [Result.bind_ok]
      simp only [ark_ip_proofs.alloc.vec.Vec.index]
      rw [show
        (powerPrefix s start)[start - 1]? = some (s ^ (start - 1)) by
          simp [powerPrefix, List.getElem?_ofFn, hpred]]
      simp only [cloneModel, mulModel, Result.bind_ok,
        alloc.vec.Vec.push]
      have hpow : s ^ (start - 1) * s = s ^ start := by
        rw [← pow_succ]
        congr
        omega
      rw [hpow, ← powerPrefix_succ]
      have hend :
          start + (remaining + 1) = (start + 1) + remaining := by
        omega
      rw [hend]
      exact ih (start + 1) (by omega)

private theorem powerLoop {F : Type} [Field F]
    (s : F) (start remaining : Nat) (hstart : 0 < start) :
    ark_ip_proofs.tipa.structured_scalar_message.structured_scalar_power_loop
        (cloneModel F) (mulModel F)
        { start := ⟨start⟩, «end» := ⟨start + remaining⟩ }
        s ⟨powerPrefix s start⟩ =
      .ok ⟨powerPrefix s (start + remaining)⟩ := by
  unfold ark_ip_proofs.tipa.structured_scalar_message.structured_scalar_power_loop
  apply loop_eq_of_fuel (fuel := remaining + 1) (by simp)
  exact powerFuel s start remaining hstart

/-- The exact production call returns `[1,r,…,r^(n-1)]` for every nonempty
proof vector. -/
theorem structured_scalar_power_exact
    {F : Type} [Field F] {n : Nat} (hn : 0 < n) (r : F) :
    ark_ip_proofs.tipa.structured_scalar_message.structured_scalar_power
        (cloneModel F) (oneModel F) (mulModel F) ⟨n⟩ r =
      .ok (finVec (fun i : Fin n => r ^ (i : Nat))) := by
  unfold ark_ip_proofs.tipa.structured_scalar_message.structured_scalar_power
  simp [oneModel, cloneModel, lift, ark_ip_proofs.Array.make,
    ark_ip_proofs.Std.Array.to_slice,
    ark_ip_proofs.alloc.slice.Slice.into_vec]
  have hloop := powerLoop r 1 (n - 1) (by omega)
  have hsum : 1 + (n - 1) = n := by omega
  rw [hsum] at hloop
  simpa [powerPrefix, finVec] using hloop

/-- SnarkPack's proof count is always nonempty. -/
theorem shipping_randomizer_powers_exact
    {F : Type} [Field F] (μ : Nat) (r : F) :
    ark_ip_proofs.tipa.structured_scalar_message.structured_scalar_power
        (cloneModel F) (oneModel F) (mulModel F) ⟨2 ^ μ⟩ r =
      .ok (finVec (fun i : Fin (2 ^ μ) => r ^ (i : Nat))) :=
  structured_scalar_power_exact (pow_pos (by decide) μ) r

#print axioms shipping_randomizer_powers_exact

end

end Ipp.Extracted.StructuredScalarPower
