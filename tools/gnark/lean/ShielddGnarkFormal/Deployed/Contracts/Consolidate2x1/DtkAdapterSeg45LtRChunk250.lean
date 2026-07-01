import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk249

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep250L (rho : Nat -> Seg45.F) (r1829 : Seg45.relationRow1829 rho) :
    rho 40060 = seg45RPe251 rho * (1 - rho 39970) := by
  unfold Seg45.relationRow1829 at r1829
  unfold seg45RPe251
  linear_combination -r1829

theorem seg45RStep250IlMul (rho : Nat -> Seg45.F)  :
    (0 : Seg45.F) = seg45RIl251 rho * (rho 40060) := by
  rw [seg45RIl251Atoms rho]
  ring

theorem seg45RStep250Acc (rho : Nat -> Seg45.F) :
    seg45RIl250 rho = seg45RIl251 rho + (rho 40060) - ((0 : Seg45.F)) := by
  have hstate : seg45RIl250 rho = seg45RIl251 rho + seg45RIlAtom0 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom0
  ring

theorem seg45RStep250Pe (rho : Nat -> Seg45.F) (r1830 : Seg45.relationRow1830 rho) :
    seg45RPe250 rho = seg45RPe251 rho * rho 39970 := by
  unfold Seg45.relationRow1830 at r1830
  unfold seg45RPe250 seg45RPe251
  linear_combination -r1830

theorem seg45RStep250 (rho : Nat -> Seg45.F) (r1829 : Seg45.relationRow1829 rho) (r1830 : Seg45.relationRow1830 rho) :
    seg45RPe250 rho = seg45RPe251 rho * rho 39970 ∧
    seg45RIl250 rho = seg45RIl251 rho + seg45RPe251 rho * (1 - rho 39970) -
      seg45RIl251 rho * (seg45RPe251 rho * (1 - rho 39970)) := by
  constructor
  · exact seg45RStep250Pe rho r1830
  · rw [seg45RStep250Acc rho, seg45RStep250L rho r1829, seg45RStep250IlMul rho, seg45RStep250L rho r1829]

theorem seg45_r_chunk250 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 251 (seg45RPeState rho 251) (seg45RIlState rho 251) := by
  have htail := seg45_r_chunk249 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1829, r1830, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 250 ≤ n → n < 251 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 250 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep250 rho r1829 r1830
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 250 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
