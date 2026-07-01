import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk42

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep43L (rho : Nat -> Seg45.F) (r2241 : Seg45.relationRow2241 rho) :
    rho 40472 = seg45RPe44 rho * (1 - rho 39763) := by
  unfold Seg45.relationRow2241 at r2241
  unfold seg45RPe44
  linear_combination -r2241

theorem seg45RStep43IlMul (rho : Nat -> Seg45.F) (r2242 : Seg45.relationRow2242 rho) :
    rho 40473 = seg45RIl44 rho * (rho 40472) := by
  unfold Seg45.relationRow2242 at r2242
  rw [seg45RStep43IlLc rho] at r2242
  linear_combination -r2242

theorem seg45RStep43Acc (rho : Nat -> Seg45.F) :
    seg45RIl43 rho = seg45RIl44 rho + (rho 40472) - (rho 40473) := by
  have hstate : seg45RIl43 rho = seg45RIl44 rho + seg45RIlAtom109 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom109
  ring

theorem seg45RStep43Pe (rho : Nat -> Seg45.F) (r2243 : Seg45.relationRow2243 rho) :
    seg45RPe43 rho = seg45RPe44 rho * rho 39763 := by
  unfold Seg45.relationRow2243 at r2243
  unfold seg45RPe43 seg45RPe44
  linear_combination -r2243

theorem seg45RStep43 (rho : Nat -> Seg45.F) (r2241 : Seg45.relationRow2241 rho) (r2242 : Seg45.relationRow2242 rho) (r2243 : Seg45.relationRow2243 rho) :
    seg45RPe43 rho = seg45RPe44 rho * rho 39763 ∧
    seg45RIl43 rho = seg45RIl44 rho + seg45RPe44 rho * (1 - rho 39763) -
      seg45RIl44 rho * (seg45RPe44 rho * (1 - rho 39763)) := by
  constructor
  · exact seg45RStep43Pe rho r2243
  · rw [seg45RStep43Acc rho, seg45RStep43L rho r2241, seg45RStep43IlMul rho r2242, seg45RStep43L rho r2241]

theorem seg45_r_chunk43 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 44 (seg45RPeState rho 44) (seg45RIlState rho 44) := by
  have htail := seg45_r_chunk42 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, r2241, r2242, r2243, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 43 ≤ n → n < 44 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 43 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep43 rho r2241 r2242 r2243
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 43 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
