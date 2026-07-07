import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep7L (rho : Nat -> Seg34.F) (r2321 : Seg34.relationRow2321 rho) :
    rho 33596 = seg34RPe8 rho * (1 - rho 32771) := by
  unfold Seg34.relationRow2321 at r2321
  unfold seg34RPe8
  linear_combination -r2321

theorem seg34RStep7IlMul (rho : Nat -> Seg34.F) (r2322 : Seg34.relationRow2322 rho) :
    rho 33597 = seg34RIl8 rho * (rho 33596) := by
  unfold Seg34.relationRow2322 at r2322
  rw [seg34RStep7IlLc rho] at r2322
  linear_combination -r2322

theorem seg34RStep7Acc (rho : Nat -> Seg34.F) :
    seg34RIl7 rho = seg34RIl8 rho + (rho 33596) - (rho 33597) := by
  have hstate : seg34RIl7 rho = seg34RIl8 rho + seg34RIlAtom132 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom132
  ring

theorem seg34RStep7Pe (rho : Nat -> Seg34.F) (r2323 : Seg34.relationRow2323 rho) :
    seg34RPe7 rho = seg34RPe8 rho * rho 32771 := by
  unfold Seg34.relationRow2323 at r2323
  unfold seg34RPe7 seg34RPe8
  linear_combination -r2323

theorem seg34RStep7 (rho : Nat -> Seg34.F) (r2321 : Seg34.relationRow2321 rho) (r2322 : Seg34.relationRow2322 rho) (r2323 : Seg34.relationRow2323 rho) :
    seg34RPe7 rho = seg34RPe8 rho * rho 32771 ∧
    seg34RIl7 rho = seg34RIl8 rho + seg34RPe8 rho * (1 - rho 32771) -
      seg34RIl8 rho * (seg34RPe8 rho * (1 - rho 32771)) := by
  constructor
  · exact seg34RStep7Pe rho r2323
  · rw [seg34RStep7Acc rho, seg34RStep7L rho r2321, seg34RStep7IlMul rho r2322, seg34RStep7L rho r2321]

theorem seg34_r_chunk7 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 8 (seg34RPeState rho 8) (seg34RIlState rho 8) := by
  have htail := seg34_r_chunk6 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart29 at p29
  rcases p29 with ⟨_, r2321, r2322, r2323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 7 ≤ n → n < 8 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 7 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep7 rho r2321 r2322 r2323
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 7 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
