import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk55

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep56L (rho : Nat -> Seg34.F) (r2212 : Seg34.relationRow2212 rho) :
    rho 33487 = seg34RPe57 rho * (1 - rho 32820) := by
  unfold Seg34.relationRow2212 at r2212
  unfold seg34RPe57
  linear_combination -r2212

theorem seg34RStep56IlMul (rho : Nat -> Seg34.F) (r2213 : Seg34.relationRow2213 rho) :
    rho 33488 = seg34RIl57 rho * (rho 33487) := by
  unfold Seg34.relationRow2213 at r2213
  rw [seg34RStep56IlLc rho] at r2213
  linear_combination -r2213

theorem seg34RStep56Acc (rho : Nat -> Seg34.F) :
    seg34RIl56 rho = seg34RIl57 rho + (rho 33487) - (rho 33488) := by
  have hstate : seg34RIl56 rho = seg34RIl57 rho + seg34RIlAtom100 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom100
  ring

theorem seg34RStep56Pe (rho : Nat -> Seg34.F) (r2214 : Seg34.relationRow2214 rho) :
    seg34RPe56 rho = seg34RPe57 rho * rho 32820 := by
  unfold Seg34.relationRow2214 at r2214
  unfold seg34RPe56 seg34RPe57
  linear_combination -r2214

theorem seg34RStep56 (rho : Nat -> Seg34.F) (r2212 : Seg34.relationRow2212 rho) (r2213 : Seg34.relationRow2213 rho) (r2214 : Seg34.relationRow2214 rho) :
    seg34RPe56 rho = seg34RPe57 rho * rho 32820 ∧
    seg34RIl56 rho = seg34RIl57 rho + seg34RPe57 rho * (1 - rho 32820) -
      seg34RIl57 rho * (seg34RPe57 rho * (1 - rho 32820)) := by
  constructor
  · exact seg34RStep56Pe rho r2214
  · rw [seg34RStep56Acc rho, seg34RStep56L rho r2212, seg34RStep56IlMul rho r2213, seg34RStep56L rho r2212]

theorem seg34_r_chunk56 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 57 (seg34RPeState rho 57) (seg34RIlState rho 57) := by
  have htail := seg34_r_chunk55 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2212, r2213, r2214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 56 ≤ n → n < 57 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 56 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep56 rho r2212 r2213 r2214
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 56 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
