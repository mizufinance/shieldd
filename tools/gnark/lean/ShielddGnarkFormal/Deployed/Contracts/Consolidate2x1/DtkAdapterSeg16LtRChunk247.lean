import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk246

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep247L (rho : Nat -> Seg16.F) (r1833 : Seg16.relationRow1833 rho) :
    rho 14408 = seg16RPe248 rho * (1 - rho 14311) := by
  unfold Seg16.relationRow1833 at r1833
  unfold seg16RPe248
  linear_combination -r1833

theorem seg16RStep247IlMul (rho : Nat -> Seg16.F) (r1834 : Seg16.relationRow1834 rho) :
    rho 14409 = seg16RIl248 rho * (rho 14408) := by
  unfold Seg16.relationRow1834 at r1834
  rw [seg16RIl248Atoms rho]
  unfold seg16RIlAtom0
  linear_combination -r1834

theorem seg16RStep247Acc (rho : Nat -> Seg16.F) :
    seg16RIl247 rho = seg16RIl248 rho + (rho 14408) - (rho 14409) := by
  have hstate : seg16RIl247 rho = seg16RIl248 rho + seg16RIlAtom1 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom1
  ring

theorem seg16RStep247Pe (rho : Nat -> Seg16.F) (r1835 : Seg16.relationRow1835 rho) :
    seg16RPe247 rho = seg16RPe248 rho * rho 14311 := by
  unfold Seg16.relationRow1835 at r1835
  unfold seg16RPe247 seg16RPe248
  linear_combination -r1835

theorem seg16RStep247 (rho : Nat -> Seg16.F) (r1833 : Seg16.relationRow1833 rho) (r1834 : Seg16.relationRow1834 rho) (r1835 : Seg16.relationRow1835 rho) :
    seg16RPe247 rho = seg16RPe248 rho * rho 14311 ∧
    seg16RIl247 rho = seg16RIl248 rho + seg16RPe248 rho * (1 - rho 14311) -
      seg16RIl248 rho * (seg16RPe248 rho * (1 - rho 14311)) := by
  constructor
  · exact seg16RStep247Pe rho r1835
  · rw [seg16RStep247Acc rho, seg16RStep247L rho r1833, seg16RStep247IlMul rho r1834, seg16RStep247L rho r1833]

theorem seg16_r_chunk247 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 248 (seg16RPeState rho 248) (seg16RIlState rho 248) := by
  have htail := seg16_r_chunk246 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1833, r1834, r1835, _, _, _, _⟩
  have hsteps : ∀ n, 247 ≤ n → n < 248 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 247 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep247 rho r1833 r1834 r1835
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 247 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
