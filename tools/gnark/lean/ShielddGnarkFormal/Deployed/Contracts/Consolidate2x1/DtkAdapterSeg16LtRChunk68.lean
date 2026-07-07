import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk67

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep68L (rho : Nat -> Seg16.F) (r2184 : Seg16.relationRow2184 rho) :
    rho 14759 = seg16RPe69 rho * (1 - rho 14132) := by
  unfold Seg16.relationRow2184 at r2184
  unfold seg16RPe69
  linear_combination -r2184

theorem seg16RStep68IlMul (rho : Nat -> Seg16.F) (r2185 : Seg16.relationRow2185 rho) :
    rho 14760 = seg16RIl69 rho * (rho 14759) := by
  unfold Seg16.relationRow2185 at r2185
  rw [seg16RStep68IlLc rho] at r2185
  linear_combination -r2185

theorem seg16RStep68Acc (rho : Nat -> Seg16.F) :
    seg16RIl68 rho = seg16RIl69 rho + (rho 14759) - (rho 14760) := by
  have hstate : seg16RIl68 rho = seg16RIl69 rho + seg16RIlAtom92 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom92
  ring

theorem seg16RStep68Pe (rho : Nat -> Seg16.F) (r2186 : Seg16.relationRow2186 rho) :
    seg16RPe68 rho = seg16RPe69 rho * rho 14132 := by
  unfold Seg16.relationRow2186 at r2186
  unfold seg16RPe68 seg16RPe69
  linear_combination -r2186

theorem seg16RStep68 (rho : Nat -> Seg16.F) (r2184 : Seg16.relationRow2184 rho) (r2185 : Seg16.relationRow2185 rho) (r2186 : Seg16.relationRow2186 rho) :
    seg16RPe68 rho = seg16RPe69 rho * rho 14132 ∧
    seg16RIl68 rho = seg16RIl69 rho + seg16RPe69 rho * (1 - rho 14132) -
      seg16RIl69 rho * (seg16RPe69 rho * (1 - rho 14132)) := by
  constructor
  · exact seg16RStep68Pe rho r2186
  · rw [seg16RStep68Acc rho, seg16RStep68L rho r2184, seg16RStep68IlMul rho r2185, seg16RStep68L rho r2184]

theorem seg16_r_chunk68 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 69 (seg16RPeState rho 69) (seg16RIlState rho 69) := by
  have htail := seg16_r_chunk67 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2184, r2185, r2186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 68 ≤ n → n < 69 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 68 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep68 rho r2184 r2185 r2186
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 68 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
