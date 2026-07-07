import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk249

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep250L (rho : Nat -> Seg16.F) (r1829 : Seg16.relationRow1829 rho) :
    rho 14404 = seg16RPe251 rho * (1 - rho 14314) := by
  unfold Seg16.relationRow1829 at r1829
  unfold seg16RPe251
  linear_combination -r1829

theorem seg16RStep250IlMul (rho : Nat -> Seg16.F)  :
    (0 : Seg16.F) = seg16RIl251 rho * (rho 14404) := by
  rw [seg16RIl251Atoms rho]
  ring

theorem seg16RStep250Acc (rho : Nat -> Seg16.F) :
    seg16RIl250 rho = seg16RIl251 rho + (rho 14404) - ((0 : Seg16.F)) := by
  have hstate : seg16RIl250 rho = seg16RIl251 rho + seg16RIlAtom0 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom0
  ring

theorem seg16RStep250Pe (rho : Nat -> Seg16.F) (r1830 : Seg16.relationRow1830 rho) :
    seg16RPe250 rho = seg16RPe251 rho * rho 14314 := by
  unfold Seg16.relationRow1830 at r1830
  unfold seg16RPe250 seg16RPe251
  linear_combination -r1830

theorem seg16RStep250 (rho : Nat -> Seg16.F) (r1829 : Seg16.relationRow1829 rho) (r1830 : Seg16.relationRow1830 rho) :
    seg16RPe250 rho = seg16RPe251 rho * rho 14314 ∧
    seg16RIl250 rho = seg16RIl251 rho + seg16RPe251 rho * (1 - rho 14314) -
      seg16RIl251 rho * (seg16RPe251 rho * (1 - rho 14314)) := by
  constructor
  · exact seg16RStep250Pe rho r1830
  · rw [seg16RStep250Acc rho, seg16RStep250L rho r1829, seg16RStep250IlMul rho, seg16RStep250L rho r1829]

theorem seg16_r_chunk250 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 251 (seg16RPeState rho 251) (seg16RIlState rho 251) := by
  have htail := seg16_r_chunk249 rho h k hq4
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
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1829, r1830, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 250 ≤ n → n < 251 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 250 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep250 rho r1829 r1830
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 250 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
