import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk67

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep68L (rho : Nat -> Seg45.F) (r2184 : Seg45.relationRow2184 rho) :
    rho 40415 = seg45RPe69 rho * (1 - rho 39788) := by
  unfold Seg45.relationRow2184 at r2184
  unfold seg45RPe69
  linear_combination -r2184

theorem seg45RStep68IlMul (rho : Nat -> Seg45.F) (r2185 : Seg45.relationRow2185 rho) :
    rho 40416 = seg45RIl69 rho * (rho 40415) := by
  unfold Seg45.relationRow2185 at r2185
  rw [seg45RStep68IlLc rho] at r2185
  linear_combination -r2185

theorem seg45RStep68Acc (rho : Nat -> Seg45.F) :
    seg45RIl68 rho = seg45RIl69 rho + (rho 40415) - (rho 40416) := by
  have hstate : seg45RIl68 rho = seg45RIl69 rho + seg45RIlAtom92 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom92
  ring

theorem seg45RStep68Pe (rho : Nat -> Seg45.F) (r2186 : Seg45.relationRow2186 rho) :
    seg45RPe68 rho = seg45RPe69 rho * rho 39788 := by
  unfold Seg45.relationRow2186 at r2186
  unfold seg45RPe68 seg45RPe69
  linear_combination -r2186

theorem seg45RStep68 (rho : Nat -> Seg45.F) (r2184 : Seg45.relationRow2184 rho) (r2185 : Seg45.relationRow2185 rho) (r2186 : Seg45.relationRow2186 rho) :
    seg45RPe68 rho = seg45RPe69 rho * rho 39788 ∧
    seg45RIl68 rho = seg45RIl69 rho + seg45RPe69 rho * (1 - rho 39788) -
      seg45RIl69 rho * (seg45RPe69 rho * (1 - rho 39788)) := by
  constructor
  · exact seg45RStep68Pe rho r2186
  · rw [seg45RStep68Acc rho, seg45RStep68L rho r2184, seg45RStep68IlMul rho r2185, seg45RStep68L rho r2184]

theorem seg45_r_chunk68 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 69 (seg45RPeState rho 69) (seg45RIlState rho 69) := by
  have htail := seg45_r_chunk67 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2184, r2185, r2186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 68 ≤ n → n < 69 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 68 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep68 rho r2184 r2185 r2186
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 68 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
