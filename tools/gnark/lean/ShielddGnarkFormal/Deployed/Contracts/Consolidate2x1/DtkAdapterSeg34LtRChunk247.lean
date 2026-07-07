import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk246

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep247L (rho : Nat -> Seg34.F) (r1833 : Seg34.relationRow1833 rho) :
    rho 33108 = seg34RPe248 rho * (1 - rho 33011) := by
  unfold Seg34.relationRow1833 at r1833
  unfold seg34RPe248
  linear_combination -r1833

theorem seg34RStep247IlMul (rho : Nat -> Seg34.F) (r1834 : Seg34.relationRow1834 rho) :
    rho 33109 = seg34RIl248 rho * (rho 33108) := by
  unfold Seg34.relationRow1834 at r1834
  rw [seg34RIl248Atoms rho]
  unfold seg34RIlAtom0
  linear_combination -r1834

theorem seg34RStep247Acc (rho : Nat -> Seg34.F) :
    seg34RIl247 rho = seg34RIl248 rho + (rho 33108) - (rho 33109) := by
  have hstate : seg34RIl247 rho = seg34RIl248 rho + seg34RIlAtom1 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom1
  ring

theorem seg34RStep247Pe (rho : Nat -> Seg34.F) (r1835 : Seg34.relationRow1835 rho) :
    seg34RPe247 rho = seg34RPe248 rho * rho 33011 := by
  unfold Seg34.relationRow1835 at r1835
  unfold seg34RPe247 seg34RPe248
  linear_combination -r1835

theorem seg34RStep247 (rho : Nat -> Seg34.F) (r1833 : Seg34.relationRow1833 rho) (r1834 : Seg34.relationRow1834 rho) (r1835 : Seg34.relationRow1835 rho) :
    seg34RPe247 rho = seg34RPe248 rho * rho 33011 ∧
    seg34RIl247 rho = seg34RIl248 rho + seg34RPe248 rho * (1 - rho 33011) -
      seg34RIl248 rho * (seg34RPe248 rho * (1 - rho 33011)) := by
  constructor
  · exact seg34RStep247Pe rho r1835
  · rw [seg34RStep247Acc rho, seg34RStep247L rho r1833, seg34RStep247IlMul rho r1834, seg34RStep247L rho r1833]

theorem seg34_r_chunk247 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 248 (seg34RPeState rho 248) (seg34RIlState rho 248) := by
  have htail := seg34_r_chunk246 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1833, r1834, r1835, _, _, _, _⟩
  have hsteps : ∀ n, 247 ≤ n → n < 248 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 247 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep247 rho r1833 r1834 r1835
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 247 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
