import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep31L (rho : Nat -> Seg45.F) (r2267 : Seg45.relationRow2267 rho) :
    rho 40498 = seg45RPe32 rho * (1 - rho 39751) := by
  unfold Seg45.relationRow2267 at r2267
  unfold seg45RPe32
  linear_combination -r2267

theorem seg45RStep31IlMul (rho : Nat -> Seg45.F) (r2268 : Seg45.relationRow2268 rho) :
    rho 40499 = seg45RIl32 rho * (rho 40498) := by
  unfold Seg45.relationRow2268 at r2268
  rw [seg45RStep31IlLc rho] at r2268
  linear_combination -r2268

theorem seg45RStep31Acc (rho : Nat -> Seg45.F) :
    seg45RIl31 rho = seg45RIl32 rho + (rho 40498) - (rho 40499) := by
  have hstate : seg45RIl31 rho = seg45RIl32 rho + seg45RIlAtom116 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom116
  ring

theorem seg45RStep31Pe (rho : Nat -> Seg45.F) (r2269 : Seg45.relationRow2269 rho) :
    seg45RPe31 rho = seg45RPe32 rho * rho 39751 := by
  unfold Seg45.relationRow2269 at r2269
  unfold seg45RPe31 seg45RPe32
  linear_combination -r2269

theorem seg45RStep31 (rho : Nat -> Seg45.F) (r2267 : Seg45.relationRow2267 rho) (r2268 : Seg45.relationRow2268 rho) (r2269 : Seg45.relationRow2269 rho) :
    seg45RPe31 rho = seg45RPe32 rho * rho 39751 ∧
    seg45RIl31 rho = seg45RIl32 rho + seg45RPe32 rho * (1 - rho 39751) -
      seg45RIl32 rho * (seg45RPe32 rho * (1 - rho 39751)) := by
  constructor
  · exact seg45RStep31Pe rho r2269
  · rw [seg45RStep31Acc rho, seg45RStep31L rho r2267, seg45RStep31IlMul rho r2268, seg45RStep31L rho r2267]

theorem seg45_r_chunk31 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 32 (seg45RPeState rho 32) (seg45RIlState rho 32) := by
  have htail := seg45_r_chunk30 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2267, r2268, r2269, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 31 ≤ n → n < 32 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 31 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep31 rho r2267 r2268 r2269
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 31 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
