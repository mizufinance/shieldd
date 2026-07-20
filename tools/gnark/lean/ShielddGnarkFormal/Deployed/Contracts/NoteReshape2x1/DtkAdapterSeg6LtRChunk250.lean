import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk249

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep250L (rho : Nat -> Seg6.F) (r1829 : Seg6.relationRow1829 rho) :
    rho 2224 = seg6RPe251 rho * (1 - rho 2134) := by
  unfold Seg6.relationRow1829 at r1829
  unfold seg6RPe251
  linear_combination -r1829

theorem seg6RStep250IlMul (rho : Nat -> Seg6.F)  :
    (0 : Seg6.F) = seg6RIl251 rho * (rho 2224) := by
  rw [seg6RIl251Atoms rho]
  ring

theorem seg6RStep250Acc (rho : Nat -> Seg6.F) :
    seg6RIl250 rho = seg6RIl251 rho + (rho 2224) - ((0 : Seg6.F)) := by
  have hstate : seg6RIl250 rho = seg6RIl251 rho + seg6RIlAtom0 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom0
  ring

theorem seg6RStep250Pe (rho : Nat -> Seg6.F) (r1830 : Seg6.relationRow1830 rho) :
    seg6RPe250 rho = seg6RPe251 rho * rho 2134 := by
  unfold Seg6.relationRow1830 at r1830
  unfold seg6RPe250 seg6RPe251
  linear_combination -r1830

theorem seg6RStep250 (rho : Nat -> Seg6.F) (r1829 : Seg6.relationRow1829 rho) (r1830 : Seg6.relationRow1830 rho) :
    seg6RPe250 rho = seg6RPe251 rho * rho 2134 ∧
    seg6RIl250 rho = seg6RIl251 rho + seg6RPe251 rho * (1 - rho 2134) -
      seg6RIl251 rho * (seg6RPe251 rho * (1 - rho 2134)) := by
  constructor
  · exact seg6RStep250Pe rho r1830
  · rw [seg6RStep250Acc rho, seg6RStep250L rho r1829, seg6RStep250IlMul rho, seg6RStep250L rho r1829]

theorem seg6_r_chunk250 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 251 (seg6RPeState rho 251) (seg6RIlState rho 251) := by
  have htail := seg6_r_chunk249 rho h k hq4
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
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1829, r1830, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 250 ≤ n → n < 251 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 250 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep250 rho r1829 r1830
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 250 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
