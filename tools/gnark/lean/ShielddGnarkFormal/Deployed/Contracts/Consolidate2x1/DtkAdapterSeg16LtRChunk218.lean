import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk217

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep218L (rho : Nat -> Seg16.F) (r1894 : Seg16.relationRow1894 rho) :
    rho 14469 = seg16RPe219 rho * (1 - rho 14282) := by
  unfold Seg16.relationRow1894 at r1894
  unfold seg16RPe219
  linear_combination -r1894

theorem seg16RStep218IlMul (rho : Nat -> Seg16.F) (r1895 : Seg16.relationRow1895 rho) :
    rho 14470 = seg16RIl219 rho * (rho 14469) := by
  unfold Seg16.relationRow1895 at r1895
  rw [seg16RStep218IlLc rho] at r1895
  linear_combination -r1895

theorem seg16RStep218Acc (rho : Nat -> Seg16.F) :
    seg16RIl218 rho = seg16RIl219 rho + (rho 14469) - (rho 14470) := by
  have hstate : seg16RIl218 rho = seg16RIl219 rho + seg16RIlAtom18 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom18
  ring

theorem seg16RStep218Pe (rho : Nat -> Seg16.F) (r1896 : Seg16.relationRow1896 rho) :
    seg16RPe218 rho = seg16RPe219 rho * rho 14282 := by
  unfold Seg16.relationRow1896 at r1896
  unfold seg16RPe218 seg16RPe219
  linear_combination -r1896

theorem seg16RStep218 (rho : Nat -> Seg16.F) (r1894 : Seg16.relationRow1894 rho) (r1895 : Seg16.relationRow1895 rho) (r1896 : Seg16.relationRow1896 rho) :
    seg16RPe218 rho = seg16RPe219 rho * rho 14282 ∧
    seg16RIl218 rho = seg16RIl219 rho + seg16RPe219 rho * (1 - rho 14282) -
      seg16RIl219 rho * (seg16RPe219 rho * (1 - rho 14282)) := by
  constructor
  · exact seg16RStep218Pe rho r1896
  · rw [seg16RStep218Acc rho, seg16RStep218L rho r1894, seg16RStep218IlMul rho r1895, seg16RStep218L rho r1894]

theorem seg16_r_chunk218 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 219 (seg16RPeState rho 219) (seg16RIlState rho 219) := by
  have htail := seg16_r_chunk217 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1894, r1895, r1896, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 218 ≤ n → n < 219 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 218 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep218 rho r1894 r1895 r1896
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 218 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
