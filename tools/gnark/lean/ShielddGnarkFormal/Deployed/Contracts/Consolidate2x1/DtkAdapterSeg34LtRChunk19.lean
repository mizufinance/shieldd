import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep19L (rho : Nat -> Seg34.F) (r2291 : Seg34.relationRow2291 rho) :
    rho 33566 = seg34RPe20 rho * (1 - rho 32783) := by
  unfold Seg34.relationRow2291 at r2291
  unfold seg34RPe20
  linear_combination -r2291

theorem seg34RStep19IlMul (rho : Nat -> Seg34.F) (r2292 : Seg34.relationRow2292 rho) :
    rho 33567 = seg34RIl20 rho * (rho 33566) := by
  unfold Seg34.relationRow2292 at r2292
  rw [seg34RStep19IlLc rho] at r2292
  linear_combination -r2292

theorem seg34RStep19Acc (rho : Nat -> Seg34.F) :
    seg34RIl19 rho = seg34RIl20 rho + (rho 33566) - (rho 33567) := by
  have hstate : seg34RIl19 rho = seg34RIl20 rho + seg34RIlAtom123 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom123
  ring

theorem seg34RStep19Pe (rho : Nat -> Seg34.F) (r2293 : Seg34.relationRow2293 rho) :
    seg34RPe19 rho = seg34RPe20 rho * rho 32783 := by
  unfold Seg34.relationRow2293 at r2293
  unfold seg34RPe19 seg34RPe20
  linear_combination -r2293

theorem seg34RStep19 (rho : Nat -> Seg34.F) (r2291 : Seg34.relationRow2291 rho) (r2292 : Seg34.relationRow2292 rho) (r2293 : Seg34.relationRow2293 rho) :
    seg34RPe19 rho = seg34RPe20 rho * rho 32783 ∧
    seg34RIl19 rho = seg34RIl20 rho + seg34RPe20 rho * (1 - rho 32783) -
      seg34RIl20 rho * (seg34RPe20 rho * (1 - rho 32783)) := by
  constructor
  · exact seg34RStep19Pe rho r2293
  · rw [seg34RStep19Acc rho, seg34RStep19L rho r2291, seg34RStep19IlMul rho r2292, seg34RStep19L rho r2291]

theorem seg34_r_chunk19 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 20 (seg34RPeState rho 20) (seg34RIlState rho 20) := by
  have htail := seg34_r_chunk18 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2291, r2292, r2293, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 19 ≤ n → n < 20 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 19 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep19 rho r2291 r2292 r2293
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 19 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
