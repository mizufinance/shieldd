import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep47L (rho : Nat -> Seg5.F) (r2231 : Seg5.relationRow2231 rho) :
    rho 1929 = seg5RPe48 rho * (1 - rho 1234) := by
  unfold Seg5.relationRow2231 at r2231
  unfold seg5RPe48
  linear_combination -r2231

theorem seg5RStep47IlMul (rho : Nat -> Seg5.F) (r2232 : Seg5.relationRow2232 rho) :
    rho 1930 = seg5RIl48 rho * (rho 1929) := by
  unfold Seg5.relationRow2232 at r2232
  rw [seg5RStep47IlLc rho] at r2232
  linear_combination -r2232

theorem seg5RStep47Acc (rho : Nat -> Seg5.F) :
    seg5RIl47 rho = seg5RIl48 rho + (rho 1929) - (rho 1930) := by
  have hstate : seg5RIl47 rho = seg5RIl48 rho + seg5RIlAtom106 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom106
  ring

theorem seg5RStep47Pe (rho : Nat -> Seg5.F) (r2233 : Seg5.relationRow2233 rho) :
    seg5RPe47 rho = seg5RPe48 rho * rho 1234 := by
  unfold Seg5.relationRow2233 at r2233
  unfold seg5RPe47 seg5RPe48
  linear_combination -r2233

theorem seg5RStep47 (rho : Nat -> Seg5.F) (r2231 : Seg5.relationRow2231 rho) (r2232 : Seg5.relationRow2232 rho) (r2233 : Seg5.relationRow2233 rho) :
    seg5RPe47 rho = seg5RPe48 rho * rho 1234 ∧
    seg5RIl47 rho = seg5RIl48 rho + seg5RPe48 rho * (1 - rho 1234) -
      seg5RIl48 rho * (seg5RPe48 rho * (1 - rho 1234)) := by
  constructor
  · exact seg5RStep47Pe rho r2233
  · rw [seg5RStep47Acc rho, seg5RStep47L rho r2231, seg5RStep47IlMul rho r2232, seg5RStep47L rho r2231]

theorem seg5_r_chunk47 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 48 (seg5RPeState rho 48) (seg5RIlState rho 48) := by
  have htail := seg5_r_chunk46 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2231, r2232, r2233, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep47 rho r2231 r2232 r2233
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 47 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
