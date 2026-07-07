import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk53

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep54L (rho : Nat -> Seg16.F) (r2216 : Seg16.relationRow2216 rho) :
    rho 14791 = seg16RPe55 rho * (1 - rho 14118) := by
  unfold Seg16.relationRow2216 at r2216
  unfold seg16RPe55
  linear_combination -r2216

theorem seg16RStep54IlMul (rho : Nat -> Seg16.F) (r2217 : Seg16.relationRow2217 rho) :
    rho 14792 = seg16RIl55 rho * (rho 14791) := by
  unfold Seg16.relationRow2217 at r2217
  rw [seg16RStep54IlLc rho] at r2217
  linear_combination -r2217

theorem seg16RStep54Acc (rho : Nat -> Seg16.F) :
    seg16RIl54 rho = seg16RIl55 rho + (rho 14791) - (rho 14792) := by
  have hstate : seg16RIl54 rho = seg16RIl55 rho + seg16RIlAtom101 rho + (-1 : Seg16.F) * seg16RIlAtom102 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom101 seg16RIlAtom102
  ring

theorem seg16RStep54Pe (rho : Nat -> Seg16.F) (r2218 : Seg16.relationRow2218 rho) :
    seg16RPe54 rho = seg16RPe55 rho * rho 14118 := by
  unfold Seg16.relationRow2218 at r2218
  unfold seg16RPe54 seg16RPe55
  linear_combination -r2218

theorem seg16RStep54 (rho : Nat -> Seg16.F) (r2216 : Seg16.relationRow2216 rho) (r2217 : Seg16.relationRow2217 rho) (r2218 : Seg16.relationRow2218 rho) :
    seg16RPe54 rho = seg16RPe55 rho * rho 14118 ∧
    seg16RIl54 rho = seg16RIl55 rho + seg16RPe55 rho * (1 - rho 14118) -
      seg16RIl55 rho * (seg16RPe55 rho * (1 - rho 14118)) := by
  constructor
  · exact seg16RStep54Pe rho r2218
  · rw [seg16RStep54Acc rho, seg16RStep54L rho r2216, seg16RStep54IlMul rho r2217, seg16RStep54L rho r2216]

theorem seg16_r_chunk54 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 55 (seg16RPeState rho 55) (seg16RIlState rho 55) := by
  have htail := seg16_r_chunk53 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2216, r2217, r2218, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 54 ≤ n → n < 55 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 54 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep54 rho r2216 r2217 r2218
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 54 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
