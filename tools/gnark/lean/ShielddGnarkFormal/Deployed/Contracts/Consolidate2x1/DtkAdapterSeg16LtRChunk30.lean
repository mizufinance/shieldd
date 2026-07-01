import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk29

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep30L (rho : Nat -> Seg16.F) (r2270 : Seg16.relationRow2270 rho) :
    rho 14845 = seg16RPe31 rho * (1 - rho 14094) := by
  unfold Seg16.relationRow2270 at r2270
  unfold seg16RPe31
  linear_combination -r2270

theorem seg16RStep30IlMul (rho : Nat -> Seg16.F) (r2271 : Seg16.relationRow2271 rho) :
    rho 14846 = seg16RIl31 rho * (rho 14845) := by
  unfold Seg16.relationRow2271 at r2271
  rw [seg16RStep30IlLc rho] at r2271
  linear_combination -r2271

theorem seg16RStep30Acc (rho : Nat -> Seg16.F) :
    seg16RIl30 rho = seg16RIl31 rho + (rho 14845) - (rho 14846) := by
  have hstate : seg16RIl30 rho = seg16RIl31 rho + seg16RIlAtom117 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom117
  ring

theorem seg16RStep30Pe (rho : Nat -> Seg16.F) (r2272 : Seg16.relationRow2272 rho) :
    seg16RPe30 rho = seg16RPe31 rho * rho 14094 := by
  unfold Seg16.relationRow2272 at r2272
  unfold seg16RPe30 seg16RPe31
  linear_combination -r2272

theorem seg16RStep30 (rho : Nat -> Seg16.F) (r2270 : Seg16.relationRow2270 rho) (r2271 : Seg16.relationRow2271 rho) (r2272 : Seg16.relationRow2272 rho) :
    seg16RPe30 rho = seg16RPe31 rho * rho 14094 ∧
    seg16RIl30 rho = seg16RIl31 rho + seg16RPe31 rho * (1 - rho 14094) -
      seg16RIl31 rho * (seg16RPe31 rho * (1 - rho 14094)) := by
  constructor
  · exact seg16RStep30Pe rho r2272
  · rw [seg16RStep30Acc rho, seg16RStep30L rho r2270, seg16RStep30IlMul rho r2271, seg16RStep30L rho r2270]

theorem seg16_r_chunk30 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 31 (seg16RPeState rho 31) (seg16RIlState rho 31) := by
  have htail := seg16_r_chunk29 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2270, r2271, r2272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 30 ≤ n → n < 31 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 30 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep30 rho r2270 r2271 r2272
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 30 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
