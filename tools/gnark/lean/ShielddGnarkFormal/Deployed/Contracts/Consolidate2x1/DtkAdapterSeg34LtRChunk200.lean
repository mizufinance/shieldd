import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk199

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep200L (rho : Nat -> Seg34.F) (r1928 : Seg34.relationRow1928 rho) :
    rho 33203 = seg34RPe201 rho * (1 - rho 32964) := by
  unfold Seg34.relationRow1928 at r1928
  unfold seg34RPe201
  linear_combination -r1928

theorem seg34RStep200IlMul (rho : Nat -> Seg34.F) (r1929 : Seg34.relationRow1929 rho) :
    rho 33204 = seg34RIl201 rho * (rho 33203) := by
  unfold Seg34.relationRow1929 at r1929
  rw [seg34RStep200IlLc rho] at r1929
  linear_combination -r1929

theorem seg34RStep200Acc (rho : Nat -> Seg34.F) :
    seg34RIl200 rho = seg34RIl201 rho + (rho 33203) - (rho 33204) := by
  have hstate : seg34RIl200 rho = seg34RIl201 rho + seg34RIlAtom26 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom26
  ring

theorem seg34RStep200Pe (rho : Nat -> Seg34.F) (r1930 : Seg34.relationRow1930 rho) :
    seg34RPe200 rho = seg34RPe201 rho * rho 32964 := by
  unfold Seg34.relationRow1930 at r1930
  unfold seg34RPe200 seg34RPe201
  linear_combination -r1930

theorem seg34RStep200 (rho : Nat -> Seg34.F) (r1928 : Seg34.relationRow1928 rho) (r1929 : Seg34.relationRow1929 rho) (r1930 : Seg34.relationRow1930 rho) :
    seg34RPe200 rho = seg34RPe201 rho * rho 32964 ∧
    seg34RIl200 rho = seg34RIl201 rho + seg34RPe201 rho * (1 - rho 32964) -
      seg34RIl201 rho * (seg34RPe201 rho * (1 - rho 32964)) := by
  constructor
  · exact seg34RStep200Pe rho r1930
  · rw [seg34RStep200Acc rho, seg34RStep200L rho r1928, seg34RStep200IlMul rho r1929, seg34RStep200L rho r1928]

theorem seg34_r_chunk200 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 201 (seg34RPeState rho 201) (seg34RIlState rho 201) := by
  have htail := seg34_r_chunk199 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, r1928, r1929, r1930, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 200 ≤ n → n < 201 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 200 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep200 rho r1928 r1929 r1930
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 200 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
