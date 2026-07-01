import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk153

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep154L (rho : Nat -> Seg16.F) (r2016 : Seg16.relationRow2016 rho) :
    rho 14591 = seg16RPe155 rho * (1 - rho 14218) := by
  unfold Seg16.relationRow2016 at r2016
  unfold seg16RPe155
  linear_combination -r2016

theorem seg16RStep154IlMul (rho : Nat -> Seg16.F) (r2017 : Seg16.relationRow2017 rho) :
    rho 14592 = seg16RIl155 rho * (rho 14591) := by
  unfold Seg16.relationRow2017 at r2017
  rw [seg16RStep154IlLc rho] at r2017
  linear_combination -r2017

theorem seg16RStep154Acc (rho : Nat -> Seg16.F) :
    seg16RIl154 rho = seg16RIl155 rho + (rho 14591) - (rho 14592) := by
  have hstate : seg16RIl154 rho = seg16RIl155 rho + seg16RIlAtom48 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom48
  ring

theorem seg16RStep154Pe (rho : Nat -> Seg16.F) (r2018 : Seg16.relationRow2018 rho) :
    seg16RPe154 rho = seg16RPe155 rho * rho 14218 := by
  unfold Seg16.relationRow2018 at r2018
  unfold seg16RPe154 seg16RPe155
  linear_combination -r2018

theorem seg16RStep154 (rho : Nat -> Seg16.F) (r2016 : Seg16.relationRow2016 rho) (r2017 : Seg16.relationRow2017 rho) (r2018 : Seg16.relationRow2018 rho) :
    seg16RPe154 rho = seg16RPe155 rho * rho 14218 ∧
    seg16RIl154 rho = seg16RIl155 rho + seg16RPe155 rho * (1 - rho 14218) -
      seg16RIl155 rho * (seg16RPe155 rho * (1 - rho 14218)) := by
  constructor
  · exact seg16RStep154Pe rho r2018
  · rw [seg16RStep154Acc rho, seg16RStep154L rho r2016, seg16RStep154IlMul rho r2017, seg16RStep154L rho r2016]

theorem seg16_r_chunk154 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 155 (seg16RPeState rho 155) (seg16RIlState rho 155) := by
  have htail := seg16_r_chunk153 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2016, r2017, r2018, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 154 ≤ n → n < 155 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 154 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep154 rho r2016 r2017 r2018
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 154 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
