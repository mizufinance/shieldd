import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk246

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep247L (rho : Nat -> Seg6.F) (r1833 : Seg6.relationRow1833 rho) :
    rho 2228 = seg6RPe248 rho * (1 - rho 2131) := by
  unfold Seg6.relationRow1833 at r1833
  unfold seg6RPe248
  linear_combination -r1833

theorem seg6RStep247IlMul (rho : Nat -> Seg6.F) (r1834 : Seg6.relationRow1834 rho) :
    rho 2229 = seg6RIl248 rho * (rho 2228) := by
  unfold Seg6.relationRow1834 at r1834
  rw [seg6RIl248Atoms rho]
  unfold seg6RIlAtom0
  linear_combination -r1834

theorem seg6RStep247Acc (rho : Nat -> Seg6.F) :
    seg6RIl247 rho = seg6RIl248 rho + (rho 2228) - (rho 2229) := by
  have hstate : seg6RIl247 rho = seg6RIl248 rho + seg6RIlAtom1 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom1
  ring

theorem seg6RStep247Pe (rho : Nat -> Seg6.F) (r1835 : Seg6.relationRow1835 rho) :
    seg6RPe247 rho = seg6RPe248 rho * rho 2131 := by
  unfold Seg6.relationRow1835 at r1835
  unfold seg6RPe247 seg6RPe248
  linear_combination -r1835

theorem seg6RStep247 (rho : Nat -> Seg6.F) (r1833 : Seg6.relationRow1833 rho) (r1834 : Seg6.relationRow1834 rho) (r1835 : Seg6.relationRow1835 rho) :
    seg6RPe247 rho = seg6RPe248 rho * rho 2131 ∧
    seg6RIl247 rho = seg6RIl248 rho + seg6RPe248 rho * (1 - rho 2131) -
      seg6RIl248 rho * (seg6RPe248 rho * (1 - rho 2131)) := by
  constructor
  · exact seg6RStep247Pe rho r1835
  · rw [seg6RStep247Acc rho, seg6RStep247L rho r1833, seg6RStep247IlMul rho r1834, seg6RStep247L rho r1833]

theorem seg6_r_chunk247 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 248 (seg6RPeState rho 248) (seg6RIlState rho 248) := by
  have htail := seg6_r_chunk246 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1833, r1834, r1835, _, _, _, _⟩
  have hsteps : ∀ n, 247 ≤ n → n < 248 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 247 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep247 rho r1833 r1834 r1835
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 247 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
