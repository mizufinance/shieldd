import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk53

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep54L (rho : Nat -> Seg34.F) (r2216 : Seg34.relationRow2216 rho) :
    rho 33491 = seg34RPe55 rho * (1 - rho 32818) := by
  unfold Seg34.relationRow2216 at r2216
  unfold seg34RPe55
  linear_combination -r2216

theorem seg34RStep54IlMul (rho : Nat -> Seg34.F) (r2217 : Seg34.relationRow2217 rho) :
    rho 33492 = seg34RIl55 rho * (rho 33491) := by
  unfold Seg34.relationRow2217 at r2217
  rw [seg34RStep54IlLc rho] at r2217
  linear_combination -r2217

theorem seg34RStep54Acc (rho : Nat -> Seg34.F) :
    seg34RIl54 rho = seg34RIl55 rho + (rho 33491) - (rho 33492) := by
  have hstate : seg34RIl54 rho = seg34RIl55 rho + seg34RIlAtom101 rho + (-1 : Seg34.F) * seg34RIlAtom102 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom101 seg34RIlAtom102
  ring

theorem seg34RStep54Pe (rho : Nat -> Seg34.F) (r2218 : Seg34.relationRow2218 rho) :
    seg34RPe54 rho = seg34RPe55 rho * rho 32818 := by
  unfold Seg34.relationRow2218 at r2218
  unfold seg34RPe54 seg34RPe55
  linear_combination -r2218

theorem seg34RStep54 (rho : Nat -> Seg34.F) (r2216 : Seg34.relationRow2216 rho) (r2217 : Seg34.relationRow2217 rho) (r2218 : Seg34.relationRow2218 rho) :
    seg34RPe54 rho = seg34RPe55 rho * rho 32818 ∧
    seg34RIl54 rho = seg34RIl55 rho + seg34RPe55 rho * (1 - rho 32818) -
      seg34RIl55 rho * (seg34RPe55 rho * (1 - rho 32818)) := by
  constructor
  · exact seg34RStep54Pe rho r2218
  · rw [seg34RStep54Acc rho, seg34RStep54L rho r2216, seg34RStep54IlMul rho r2217, seg34RStep54L rho r2216]

theorem seg34_r_chunk54 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 55 (seg34RPeState rho 55) (seg34RIlState rho 55) := by
  have htail := seg34_r_chunk53 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2216, r2217, r2218, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 54 ≤ n → n < 55 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 54 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep54 rho r2216 r2217 r2218
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 54 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
