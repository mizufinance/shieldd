import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk167

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep168L (rho : Nat -> Seg45.F) (r1988 : Seg45.relationRow1988 rho) :
    rho 40219 = seg45RPe169 rho * (1 - rho 39888) := by
  unfold Seg45.relationRow1988 at r1988
  unfold seg45RPe169
  linear_combination -r1988

theorem seg45RStep168IlMul (rho : Nat -> Seg45.F) (r1989 : Seg45.relationRow1989 rho) :
    rho 40220 = seg45RIl169 rho * (rho 40219) := by
  unfold Seg45.relationRow1989 at r1989
  rw [seg45RStep168IlLc rho] at r1989
  linear_combination -r1989

theorem seg45RStep168Acc (rho : Nat -> Seg45.F) :
    seg45RIl168 rho = seg45RIl169 rho + (rho 40219) - (rho 40220) := by
  have hstate : seg45RIl168 rho = seg45RIl169 rho + seg45RIlAtom41 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom41
  ring

theorem seg45RStep168Pe (rho : Nat -> Seg45.F) (r1990 : Seg45.relationRow1990 rho) :
    seg45RPe168 rho = seg45RPe169 rho * rho 39888 := by
  unfold Seg45.relationRow1990 at r1990
  unfold seg45RPe168 seg45RPe169
  linear_combination -r1990

theorem seg45RStep168 (rho : Nat -> Seg45.F) (r1988 : Seg45.relationRow1988 rho) (r1989 : Seg45.relationRow1989 rho) (r1990 : Seg45.relationRow1990 rho) :
    seg45RPe168 rho = seg45RPe169 rho * rho 39888 ∧
    seg45RIl168 rho = seg45RIl169 rho + seg45RPe169 rho * (1 - rho 39888) -
      seg45RIl169 rho * (seg45RPe169 rho * (1 - rho 39888)) := by
  constructor
  · exact seg45RStep168Pe rho r1990
  · rw [seg45RStep168Acc rho, seg45RStep168L rho r1988, seg45RStep168IlMul rho r1989, seg45RStep168L rho r1988]

theorem seg45_r_chunk168 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 169 (seg45RPeState rho 169) (seg45RIlState rho 169) := by
  have htail := seg45_r_chunk167 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1988, r1989, r1990, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 168 ≤ n → n < 169 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 168 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep168 rho r1988 r1989 r1990
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 168 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
