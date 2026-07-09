import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk249

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep250L (rho : Nat -> Seg5.F) (r1829 : Seg5.relationRow1829 rho) :
    rho 1527 = seg5RPe251 rho * (1 - rho 1437) := by
  unfold Seg5.relationRow1829 at r1829
  unfold seg5RPe251
  linear_combination -r1829

theorem seg5RStep250IlMul (rho : Nat -> Seg5.F)  :
    (0 : Seg5.F) = seg5RIl251 rho * (rho 1527) := by
  rw [seg5RIl251Atoms rho]
  ring

theorem seg5RStep250Acc (rho : Nat -> Seg5.F) :
    seg5RIl250 rho = seg5RIl251 rho + (rho 1527) - ((0 : Seg5.F)) := by
  have hstate : seg5RIl250 rho = seg5RIl251 rho + seg5RIlAtom0 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom0
  ring

theorem seg5RStep250Pe (rho : Nat -> Seg5.F) (r1830 : Seg5.relationRow1830 rho) :
    seg5RPe250 rho = seg5RPe251 rho * rho 1437 := by
  unfold Seg5.relationRow1830 at r1830
  unfold seg5RPe250 seg5RPe251
  linear_combination -r1830

theorem seg5RStep250 (rho : Nat -> Seg5.F) (r1829 : Seg5.relationRow1829 rho) (r1830 : Seg5.relationRow1830 rho) :
    seg5RPe250 rho = seg5RPe251 rho * rho 1437 ∧
    seg5RIl250 rho = seg5RIl251 rho + seg5RPe251 rho * (1 - rho 1437) -
      seg5RIl251 rho * (seg5RPe251 rho * (1 - rho 1437)) := by
  constructor
  · exact seg5RStep250Pe rho r1830
  · rw [seg5RStep250Acc rho, seg5RStep250L rho r1829, seg5RStep250IlMul rho, seg5RStep250L rho r1829]

theorem seg5_r_chunk250 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 251 (seg5RPeState rho 251) (seg5RIlState rho 251) := by
  have htail := seg5_r_chunk249 rho h k hq4
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
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1829, r1830, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 250 ≤ n → n < 251 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 250 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep250 rho r1829 r1830
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 250 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
