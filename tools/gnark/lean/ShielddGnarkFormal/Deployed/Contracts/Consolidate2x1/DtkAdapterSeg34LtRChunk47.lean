import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep47L (rho : Nat -> Seg34.F) (r2231 : Seg34.relationRow2231 rho) :
    rho 33506 = seg34RPe48 rho * (1 - rho 32811) := by
  unfold Seg34.relationRow2231 at r2231
  unfold seg34RPe48
  linear_combination -r2231

theorem seg34RStep47IlMul (rho : Nat -> Seg34.F) (r2232 : Seg34.relationRow2232 rho) :
    rho 33507 = seg34RIl48 rho * (rho 33506) := by
  unfold Seg34.relationRow2232 at r2232
  rw [seg34RStep47IlLc rho] at r2232
  linear_combination -r2232

theorem seg34RStep47Acc (rho : Nat -> Seg34.F) :
    seg34RIl47 rho = seg34RIl48 rho + (rho 33506) - (rho 33507) := by
  have hstate : seg34RIl47 rho = seg34RIl48 rho + seg34RIlAtom106 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom106
  ring

theorem seg34RStep47Pe (rho : Nat -> Seg34.F) (r2233 : Seg34.relationRow2233 rho) :
    seg34RPe47 rho = seg34RPe48 rho * rho 32811 := by
  unfold Seg34.relationRow2233 at r2233
  unfold seg34RPe47 seg34RPe48
  linear_combination -r2233

theorem seg34RStep47 (rho : Nat -> Seg34.F) (r2231 : Seg34.relationRow2231 rho) (r2232 : Seg34.relationRow2232 rho) (r2233 : Seg34.relationRow2233 rho) :
    seg34RPe47 rho = seg34RPe48 rho * rho 32811 ∧
    seg34RIl47 rho = seg34RIl48 rho + seg34RPe48 rho * (1 - rho 32811) -
      seg34RIl48 rho * (seg34RPe48 rho * (1 - rho 32811)) := by
  constructor
  · exact seg34RStep47Pe rho r2233
  · rw [seg34RStep47Acc rho, seg34RStep47L rho r2231, seg34RStep47IlMul rho r2232, seg34RStep47L rho r2231]

theorem seg34_r_chunk47 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 48 (seg34RPeState rho 48) (seg34RIlState rho 48) := by
  have htail := seg34_r_chunk46 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2231, r2232, r2233, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep47 rho r2231 r2232 r2233
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 47 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
