import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep95L (rho : Nat -> Seg6.F) (r2131 : Seg6.relationRow2131 rho) :
    rho 2526 = seg6RPe96 rho * (1 - rho 1979) := by
  unfold Seg6.relationRow2131 at r2131
  unfold seg6RPe96
  linear_combination -r2131

theorem seg6RStep95IlMul (rho : Nat -> Seg6.F) (r2132 : Seg6.relationRow2132 rho) :
    rho 2527 = seg6RIl96 rho * (rho 2526) := by
  unfold Seg6.relationRow2132 at r2132
  rw [seg6RStep95IlLc rho] at r2132
  linear_combination -r2132

theorem seg6RStep95Acc (rho : Nat -> Seg6.F) :
    seg6RIl95 rho = seg6RIl96 rho + (rho 2526) - (rho 2527) := by
  have hstate : seg6RIl95 rho = seg6RIl96 rho + seg6RIlAtom78 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom78
  ring

theorem seg6RStep95Pe (rho : Nat -> Seg6.F) (r2133 : Seg6.relationRow2133 rho) :
    seg6RPe95 rho = seg6RPe96 rho * rho 1979 := by
  unfold Seg6.relationRow2133 at r2133
  unfold seg6RPe95 seg6RPe96
  linear_combination -r2133

theorem seg6RStep95 (rho : Nat -> Seg6.F) (r2131 : Seg6.relationRow2131 rho) (r2132 : Seg6.relationRow2132 rho) (r2133 : Seg6.relationRow2133 rho) :
    seg6RPe95 rho = seg6RPe96 rho * rho 1979 ∧
    seg6RIl95 rho = seg6RIl96 rho + seg6RPe96 rho * (1 - rho 1979) -
      seg6RIl96 rho * (seg6RPe96 rho * (1 - rho 1979)) := by
  constructor
  · exact seg6RStep95Pe rho r2133
  · rw [seg6RStep95Acc rho, seg6RStep95L rho r2131, seg6RStep95IlMul rho r2132, seg6RStep95L rho r2131]

theorem seg6_r_chunk95 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 96 (seg6RPeState rho 96) (seg6RIlState rho 96) := by
  have htail := seg6_r_chunk94 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2131, r2132, r2133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 95 ≤ n → n < 96 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 95 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep95 rho r2131 r2132 r2133
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 95 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
