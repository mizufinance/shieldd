import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk249

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep250L (rho : Nat -> Seg34.F) (r1829 : Seg34.relationRow1829 rho) :
    rho 33104 = seg34RPe251 rho * (1 - rho 33014) := by
  unfold Seg34.relationRow1829 at r1829
  unfold seg34RPe251
  linear_combination -r1829

theorem seg34RStep250IlMul (rho : Nat -> Seg34.F)  :
    (0 : Seg34.F) = seg34RIl251 rho * (rho 33104) := by
  rw [seg34RIl251Atoms rho]
  ring

theorem seg34RStep250Acc (rho : Nat -> Seg34.F) :
    seg34RIl250 rho = seg34RIl251 rho + (rho 33104) - ((0 : Seg34.F)) := by
  have hstate : seg34RIl250 rho = seg34RIl251 rho + seg34RIlAtom0 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom0
  ring

theorem seg34RStep250Pe (rho : Nat -> Seg34.F) (r1830 : Seg34.relationRow1830 rho) :
    seg34RPe250 rho = seg34RPe251 rho * rho 33014 := by
  unfold Seg34.relationRow1830 at r1830
  unfold seg34RPe250 seg34RPe251
  linear_combination -r1830

theorem seg34RStep250 (rho : Nat -> Seg34.F) (r1829 : Seg34.relationRow1829 rho) (r1830 : Seg34.relationRow1830 rho) :
    seg34RPe250 rho = seg34RPe251 rho * rho 33014 ∧
    seg34RIl250 rho = seg34RIl251 rho + seg34RPe251 rho * (1 - rho 33014) -
      seg34RIl251 rho * (seg34RPe251 rho * (1 - rho 33014)) := by
  constructor
  · exact seg34RStep250Pe rho r1830
  · rw [seg34RStep250Acc rho, seg34RStep250L rho r1829, seg34RStep250IlMul rho, seg34RStep250L rho r1829]

theorem seg34_r_chunk250 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 251 (seg34RPeState rho 251) (seg34RIlState rho 251) := by
  have htail := seg34_r_chunk249 rho h k hq4
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
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1829, r1830, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 250 ≤ n → n < 251 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 250 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep250 rho r1829 r1830
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 250 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
