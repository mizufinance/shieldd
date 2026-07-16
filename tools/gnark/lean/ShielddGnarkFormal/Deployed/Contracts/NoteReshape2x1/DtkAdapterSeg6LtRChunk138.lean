import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk137

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep138L (rho : Nat -> Seg6.F) (r2052 : Seg6.relationRow2052 rho) :
    rho 2453 = seg6RPe139 rho * (1 - rho 2028) := by
  unfold Seg6.relationRow2052 at r2052
  unfold seg6RPe139
  linear_combination -r2052

theorem seg6RStep138IlMul (rho : Nat -> Seg6.F) (r2053 : Seg6.relationRow2053 rho) :
    rho 2454 = seg6RIl139 rho * (rho 2453) := by
  unfold Seg6.relationRow2053 at r2053
  rw [seg6RStep138IlLc rho] at r2053
  linear_combination -r2053

theorem seg6RStep138Acc (rho : Nat -> Seg6.F) :
    seg6RIl138 rho = seg6RIl139 rho + (rho 2453) - (rho 2454) := by
  have hstate : seg6RIl138 rho = seg6RIl139 rho + seg6RIlAtom59 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom59
  ring

theorem seg6RStep138Pe (rho : Nat -> Seg6.F) (r2054 : Seg6.relationRow2054 rho) :
    seg6RPe138 rho = seg6RPe139 rho * rho 2028 := by
  unfold Seg6.relationRow2054 at r2054
  unfold seg6RPe138 seg6RPe139
  linear_combination -r2054

theorem seg6RStep138 (rho : Nat -> Seg6.F) (r2052 : Seg6.relationRow2052 rho) (r2053 : Seg6.relationRow2053 rho) (r2054 : Seg6.relationRow2054 rho) :
    seg6RPe138 rho = seg6RPe139 rho * rho 2028 ∧
    seg6RIl138 rho = seg6RIl139 rho + seg6RPe139 rho * (1 - rho 2028) -
      seg6RIl139 rho * (seg6RPe139 rho * (1 - rho 2028)) := by
  constructor
  · exact seg6RStep138Pe rho r2054
  · rw [seg6RStep138Acc rho, seg6RStep138L rho r2052, seg6RStep138IlMul rho r2053, seg6RStep138L rho r2052]

theorem seg6_r_chunk138 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 139 (seg6RPeState rho 139) (seg6RIlState rho 139) := by
  have htail := seg6_r_chunk137 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2052, r2053, r2054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 138 ≤ n → n < 139 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 138 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep138 rho r2052 r2053 r2054
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 138 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
