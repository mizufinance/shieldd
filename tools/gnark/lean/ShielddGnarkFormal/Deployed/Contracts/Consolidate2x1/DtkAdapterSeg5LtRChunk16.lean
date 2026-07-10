import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep16L (rho : Nat -> Seg5.F) (r2300 : Seg5.relationRow2300 rho) :
    rho 1998 = seg5RPe17 rho * (1 - rho 1203) := by
  unfold Seg5.relationRow2300 at r2300
  unfold seg5RPe17
  linear_combination -r2300

theorem seg5RStep16IlMul (rho : Nat -> Seg5.F) (r2301 : Seg5.relationRow2301 rho) :
    rho 1999 = seg5RIl17 rho * (rho 1998) := by
  unfold Seg5.relationRow2301 at r2301
  rw [seg5RStep16IlLc rho] at r2301
  linear_combination -r2301

theorem seg5RStep16Acc (rho : Nat -> Seg5.F) :
    seg5RIl16 rho = seg5RIl17 rho + (rho 1998) - (rho 1999) := by
  have hstate : seg5RIl16 rho = seg5RIl17 rho + seg5RIlAtom126 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom126
  ring

theorem seg5RStep16Pe (rho : Nat -> Seg5.F) (r2302 : Seg5.relationRow2302 rho) :
    seg5RPe16 rho = seg5RPe17 rho * rho 1203 := by
  unfold Seg5.relationRow2302 at r2302
  unfold seg5RPe16 seg5RPe17
  linear_combination -r2302

theorem seg5RStep16 (rho : Nat -> Seg5.F) (r2300 : Seg5.relationRow2300 rho) (r2301 : Seg5.relationRow2301 rho) (r2302 : Seg5.relationRow2302 rho) :
    seg5RPe16 rho = seg5RPe17 rho * rho 1203 ∧
    seg5RIl16 rho = seg5RIl17 rho + seg5RPe17 rho * (1 - rho 1203) -
      seg5RIl17 rho * (seg5RPe17 rho * (1 - rho 1203)) := by
  constructor
  · exact seg5RStep16Pe rho r2302
  · rw [seg5RStep16Acc rho, seg5RStep16L rho r2300, seg5RStep16IlMul rho r2301, seg5RStep16L rho r2300]

theorem seg5_r_chunk16 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 17 (seg5RPeState rho 17) (seg5RIlState rho 17) := by
  have htail := seg5_r_chunk15 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2300, r2301, r2302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 16 ≤ n → n < 17 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 16 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep16 rho r2300 r2301 r2302
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 16 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
