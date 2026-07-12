import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep31L (rho : Nat -> Seg6.F) (r2267 : Seg6.relationRow2267 rho) :
    rho 2668 = seg6RPe32 rho * (1 - rho 1921) := by
  unfold Seg6.relationRow2267 at r2267
  unfold seg6RPe32
  linear_combination -r2267

theorem seg6RStep31IlMul (rho : Nat -> Seg6.F) (r2268 : Seg6.relationRow2268 rho) :
    rho 2669 = seg6RIl32 rho * (rho 2668) := by
  unfold Seg6.relationRow2268 at r2268
  rw [seg6RStep31IlLc rho] at r2268
  linear_combination -r2268

theorem seg6RStep31Acc (rho : Nat -> Seg6.F) :
    seg6RIl31 rho = seg6RIl32 rho + (rho 2668) - (rho 2669) := by
  have hstate : seg6RIl31 rho = seg6RIl32 rho + seg6RIlAtom116 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom116
  ring

theorem seg6RStep31Pe (rho : Nat -> Seg6.F) (r2269 : Seg6.relationRow2269 rho) :
    seg6RPe31 rho = seg6RPe32 rho * rho 1921 := by
  unfold Seg6.relationRow2269 at r2269
  unfold seg6RPe31 seg6RPe32
  linear_combination -r2269

theorem seg6RStep31 (rho : Nat -> Seg6.F) (r2267 : Seg6.relationRow2267 rho) (r2268 : Seg6.relationRow2268 rho) (r2269 : Seg6.relationRow2269 rho) :
    seg6RPe31 rho = seg6RPe32 rho * rho 1921 ∧
    seg6RIl31 rho = seg6RIl32 rho + seg6RPe32 rho * (1 - rho 1921) -
      seg6RIl32 rho * (seg6RPe32 rho * (1 - rho 1921)) := by
  constructor
  · exact seg6RStep31Pe rho r2269
  · rw [seg6RStep31Acc rho, seg6RStep31L rho r2267, seg6RStep31IlMul rho r2268, seg6RStep31L rho r2267]

theorem seg6_r_chunk31 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 32 (seg6RPeState rho 32) (seg6RIlState rho 32) := by
  have htail := seg6_r_chunk30 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2267, r2268, r2269, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 31 ≤ n → n < 32 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 31 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep31 rho r2267 r2268 r2269
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 31 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
