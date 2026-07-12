import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk67

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep68L (rho : Nat -> Seg6.F) (r2184 : Seg6.relationRow2184 rho) :
    rho 2585 = seg6RPe69 rho * (1 - rho 1958) := by
  unfold Seg6.relationRow2184 at r2184
  unfold seg6RPe69
  linear_combination -r2184

theorem seg6RStep68IlMul (rho : Nat -> Seg6.F) (r2185 : Seg6.relationRow2185 rho) :
    rho 2586 = seg6RIl69 rho * (rho 2585) := by
  unfold Seg6.relationRow2185 at r2185
  rw [seg6RStep68IlLc rho] at r2185
  linear_combination -r2185

theorem seg6RStep68Acc (rho : Nat -> Seg6.F) :
    seg6RIl68 rho = seg6RIl69 rho + (rho 2585) - (rho 2586) := by
  have hstate : seg6RIl68 rho = seg6RIl69 rho + seg6RIlAtom92 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom92
  ring

theorem seg6RStep68Pe (rho : Nat -> Seg6.F) (r2186 : Seg6.relationRow2186 rho) :
    seg6RPe68 rho = seg6RPe69 rho * rho 1958 := by
  unfold Seg6.relationRow2186 at r2186
  unfold seg6RPe68 seg6RPe69
  linear_combination -r2186

theorem seg6RStep68 (rho : Nat -> Seg6.F) (r2184 : Seg6.relationRow2184 rho) (r2185 : Seg6.relationRow2185 rho) (r2186 : Seg6.relationRow2186 rho) :
    seg6RPe68 rho = seg6RPe69 rho * rho 1958 ∧
    seg6RIl68 rho = seg6RIl69 rho + seg6RPe69 rho * (1 - rho 1958) -
      seg6RIl69 rho * (seg6RPe69 rho * (1 - rho 1958)) := by
  constructor
  · exact seg6RStep68Pe rho r2186
  · rw [seg6RStep68Acc rho, seg6RStep68L rho r2184, seg6RStep68IlMul rho r2185, seg6RStep68L rho r2184]

theorem seg6_r_chunk68 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 69 (seg6RPeState rho 69) (seg6RIlState rho 69) := by
  have htail := seg6_r_chunk67 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2184, r2185, r2186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 68 ≤ n → n < 69 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 68 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep68 rho r2184 r2185 r2186
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 68 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
