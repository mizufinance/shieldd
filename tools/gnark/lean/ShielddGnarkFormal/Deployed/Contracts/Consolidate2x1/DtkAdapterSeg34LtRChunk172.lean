import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk171

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep172L (rho : Nat -> Seg34.F) (r1980 : Seg34.relationRow1980 rho) :
    rho 33255 = seg34RPe173 rho * (1 - rho 32936) := by
  unfold Seg34.relationRow1980 at r1980
  unfold seg34RPe173
  linear_combination -r1980

theorem seg34RStep172IlMul (rho : Nat -> Seg34.F) (r1981 : Seg34.relationRow1981 rho) :
    rho 33256 = seg34RIl173 rho * (rho 33255) := by
  unfold Seg34.relationRow1981 at r1981
  rw [seg34RStep172IlLc rho] at r1981
  linear_combination -r1981

theorem seg34RStep172Acc (rho : Nat -> Seg34.F) :
    seg34RIl172 rho = seg34RIl173 rho + (rho 33255) - (rho 33256) := by
  have hstate : seg34RIl172 rho = seg34RIl173 rho + seg34RIlAtom39 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom39
  ring

theorem seg34RStep172Pe (rho : Nat -> Seg34.F) (r1982 : Seg34.relationRow1982 rho) :
    seg34RPe172 rho = seg34RPe173 rho * rho 32936 := by
  unfold Seg34.relationRow1982 at r1982
  unfold seg34RPe172 seg34RPe173
  linear_combination -r1982

theorem seg34RStep172 (rho : Nat -> Seg34.F) (r1980 : Seg34.relationRow1980 rho) (r1981 : Seg34.relationRow1981 rho) (r1982 : Seg34.relationRow1982 rho) :
    seg34RPe172 rho = seg34RPe173 rho * rho 32936 ∧
    seg34RIl172 rho = seg34RIl173 rho + seg34RPe173 rho * (1 - rho 32936) -
      seg34RIl173 rho * (seg34RPe173 rho * (1 - rho 32936)) := by
  constructor
  · exact seg34RStep172Pe rho r1982
  · rw [seg34RStep172Acc rho, seg34RStep172L rho r1980, seg34RStep172IlMul rho r1981, seg34RStep172L rho r1980]

theorem seg34_r_chunk172 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 173 (seg34RPeState rho 173) (seg34RIlState rho 173) := by
  have htail := seg34_r_chunk171 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1980, r1981, r1982, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 172 ≤ n → n < 173 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 172 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep172 rho r1980 r1981 r1982
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 172 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
