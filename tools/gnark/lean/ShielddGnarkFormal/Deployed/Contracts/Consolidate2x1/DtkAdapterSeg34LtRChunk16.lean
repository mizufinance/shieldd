import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep16L (rho : Nat -> Seg34.F) (r2300 : Seg34.relationRow2300 rho) :
    rho 33575 = seg34RPe17 rho * (1 - rho 32780) := by
  unfold Seg34.relationRow2300 at r2300
  unfold seg34RPe17
  linear_combination -r2300

theorem seg34RStep16IlMul (rho : Nat -> Seg34.F) (r2301 : Seg34.relationRow2301 rho) :
    rho 33576 = seg34RIl17 rho * (rho 33575) := by
  unfold Seg34.relationRow2301 at r2301
  rw [seg34RStep16IlLc rho] at r2301
  linear_combination -r2301

theorem seg34RStep16Acc (rho : Nat -> Seg34.F) :
    seg34RIl16 rho = seg34RIl17 rho + (rho 33575) - (rho 33576) := by
  have hstate : seg34RIl16 rho = seg34RIl17 rho + seg34RIlAtom126 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom126
  ring

theorem seg34RStep16Pe (rho : Nat -> Seg34.F) (r2302 : Seg34.relationRow2302 rho) :
    seg34RPe16 rho = seg34RPe17 rho * rho 32780 := by
  unfold Seg34.relationRow2302 at r2302
  unfold seg34RPe16 seg34RPe17
  linear_combination -r2302

theorem seg34RStep16 (rho : Nat -> Seg34.F) (r2300 : Seg34.relationRow2300 rho) (r2301 : Seg34.relationRow2301 rho) (r2302 : Seg34.relationRow2302 rho) :
    seg34RPe16 rho = seg34RPe17 rho * rho 32780 ∧
    seg34RIl16 rho = seg34RIl17 rho + seg34RPe17 rho * (1 - rho 32780) -
      seg34RIl17 rho * (seg34RPe17 rho * (1 - rho 32780)) := by
  constructor
  · exact seg34RStep16Pe rho r2302
  · rw [seg34RStep16Acc rho, seg34RStep16L rho r2300, seg34RStep16IlMul rho r2301, seg34RStep16L rho r2300]

theorem seg34_r_chunk16 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 17 (seg34RPeState rho 17) (seg34RIlState rho 17) := by
  have htail := seg34_r_chunk15 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2300, r2301, r2302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 16 ≤ n → n < 17 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 16 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep16 rho r2300 r2301 r2302
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 16 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
