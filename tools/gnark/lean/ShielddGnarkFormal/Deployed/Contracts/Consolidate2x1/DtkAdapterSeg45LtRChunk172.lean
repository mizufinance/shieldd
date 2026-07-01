import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk171

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep172L (rho : Nat -> Seg45.F) (r1980 : Seg45.relationRow1980 rho) :
    rho 40211 = seg45RPe173 rho * (1 - rho 39892) := by
  unfold Seg45.relationRow1980 at r1980
  unfold seg45RPe173
  linear_combination -r1980

theorem seg45RStep172IlMul (rho : Nat -> Seg45.F) (r1981 : Seg45.relationRow1981 rho) :
    rho 40212 = seg45RIl173 rho * (rho 40211) := by
  unfold Seg45.relationRow1981 at r1981
  rw [seg45RStep172IlLc rho] at r1981
  linear_combination -r1981

theorem seg45RStep172Acc (rho : Nat -> Seg45.F) :
    seg45RIl172 rho = seg45RIl173 rho + (rho 40211) - (rho 40212) := by
  have hstate : seg45RIl172 rho = seg45RIl173 rho + seg45RIlAtom39 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom39
  ring

theorem seg45RStep172Pe (rho : Nat -> Seg45.F) (r1982 : Seg45.relationRow1982 rho) :
    seg45RPe172 rho = seg45RPe173 rho * rho 39892 := by
  unfold Seg45.relationRow1982 at r1982
  unfold seg45RPe172 seg45RPe173
  linear_combination -r1982

theorem seg45RStep172 (rho : Nat -> Seg45.F) (r1980 : Seg45.relationRow1980 rho) (r1981 : Seg45.relationRow1981 rho) (r1982 : Seg45.relationRow1982 rho) :
    seg45RPe172 rho = seg45RPe173 rho * rho 39892 ∧
    seg45RIl172 rho = seg45RIl173 rho + seg45RPe173 rho * (1 - rho 39892) -
      seg45RIl173 rho * (seg45RPe173 rho * (1 - rho 39892)) := by
  constructor
  · exact seg45RStep172Pe rho r1982
  · rw [seg45RStep172Acc rho, seg45RStep172L rho r1980, seg45RStep172IlMul rho r1981, seg45RStep172L rho r1980]

theorem seg45_r_chunk172 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 173 (seg45RPeState rho 173) (seg45RIlState rho 173) := by
  have htail := seg45_r_chunk171 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1980, r1981, r1982, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 172 ≤ n → n < 173 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 172 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep172 rho r1980 r1981 r1982
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 172 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
