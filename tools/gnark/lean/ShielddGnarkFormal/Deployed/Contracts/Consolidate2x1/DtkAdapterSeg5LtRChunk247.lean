import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk246

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep247L (rho : Nat -> Seg5.F) (r1833 : Seg5.relationRow1833 rho) :
    rho 1531 = seg5RPe248 rho * (1 - rho 1434) := by
  unfold Seg5.relationRow1833 at r1833
  unfold seg5RPe248
  linear_combination -r1833

theorem seg5RStep247IlMul (rho : Nat -> Seg5.F) (r1834 : Seg5.relationRow1834 rho) :
    rho 1532 = seg5RIl248 rho * (rho 1531) := by
  unfold Seg5.relationRow1834 at r1834
  rw [seg5RIl248Atoms rho]
  unfold seg5RIlAtom0
  linear_combination -r1834

theorem seg5RStep247Acc (rho : Nat -> Seg5.F) :
    seg5RIl247 rho = seg5RIl248 rho + (rho 1531) - (rho 1532) := by
  have hstate : seg5RIl247 rho = seg5RIl248 rho + seg5RIlAtom1 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom1
  ring

theorem seg5RStep247Pe (rho : Nat -> Seg5.F) (r1835 : Seg5.relationRow1835 rho) :
    seg5RPe247 rho = seg5RPe248 rho * rho 1434 := by
  unfold Seg5.relationRow1835 at r1835
  unfold seg5RPe247 seg5RPe248
  linear_combination -r1835

theorem seg5RStep247 (rho : Nat -> Seg5.F) (r1833 : Seg5.relationRow1833 rho) (r1834 : Seg5.relationRow1834 rho) (r1835 : Seg5.relationRow1835 rho) :
    seg5RPe247 rho = seg5RPe248 rho * rho 1434 ∧
    seg5RIl247 rho = seg5RIl248 rho + seg5RPe248 rho * (1 - rho 1434) -
      seg5RIl248 rho * (seg5RPe248 rho * (1 - rho 1434)) := by
  constructor
  · exact seg5RStep247Pe rho r1835
  · rw [seg5RStep247Acc rho, seg5RStep247L rho r1833, seg5RStep247IlMul rho r1834, seg5RStep247L rho r1833]

theorem seg5_r_chunk247 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 248 (seg5RPeState rho 248) (seg5RIlState rho 248) := by
  have htail := seg5_r_chunk246 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1833, r1834, r1835, _, _, _, _⟩
  have hsteps : ∀ n, 247 ≤ n → n < 248 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 247 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep247 rho r1833 r1834 r1835
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 247 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
