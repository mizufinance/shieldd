import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk67

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep68L (rho : Nat -> Seg34.F) (r2184 : Seg34.relationRow2184 rho) :
    rho 33459 = seg34RPe69 rho * (1 - rho 32832) := by
  unfold Seg34.relationRow2184 at r2184
  unfold seg34RPe69
  linear_combination -r2184

theorem seg34RStep68IlMul (rho : Nat -> Seg34.F) (r2185 : Seg34.relationRow2185 rho) :
    rho 33460 = seg34RIl69 rho * (rho 33459) := by
  unfold Seg34.relationRow2185 at r2185
  rw [seg34RStep68IlLc rho] at r2185
  linear_combination -r2185

theorem seg34RStep68Acc (rho : Nat -> Seg34.F) :
    seg34RIl68 rho = seg34RIl69 rho + (rho 33459) - (rho 33460) := by
  have hstate : seg34RIl68 rho = seg34RIl69 rho + seg34RIlAtom92 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom92
  ring

theorem seg34RStep68Pe (rho : Nat -> Seg34.F) (r2186 : Seg34.relationRow2186 rho) :
    seg34RPe68 rho = seg34RPe69 rho * rho 32832 := by
  unfold Seg34.relationRow2186 at r2186
  unfold seg34RPe68 seg34RPe69
  linear_combination -r2186

theorem seg34RStep68 (rho : Nat -> Seg34.F) (r2184 : Seg34.relationRow2184 rho) (r2185 : Seg34.relationRow2185 rho) (r2186 : Seg34.relationRow2186 rho) :
    seg34RPe68 rho = seg34RPe69 rho * rho 32832 ∧
    seg34RIl68 rho = seg34RIl69 rho + seg34RPe69 rho * (1 - rho 32832) -
      seg34RIl69 rho * (seg34RPe69 rho * (1 - rho 32832)) := by
  constructor
  · exact seg34RStep68Pe rho r2186
  · rw [seg34RStep68Acc rho, seg34RStep68L rho r2184, seg34RStep68IlMul rho r2185, seg34RStep68L rho r2184]

theorem seg34_r_chunk68 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 69 (seg34RPeState rho 69) (seg34RIlState rho 69) := by
  have htail := seg34_r_chunk67 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2184, r2185, r2186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 68 ≤ n → n < 69 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 68 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep68 rho r2184 r2185 r2186
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 68 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
