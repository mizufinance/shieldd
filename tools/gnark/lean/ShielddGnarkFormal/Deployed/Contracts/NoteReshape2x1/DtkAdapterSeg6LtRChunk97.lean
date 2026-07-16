import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk96

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep97L (rho : Nat -> Seg6.F) (r2125 : Seg6.relationRow2125 rho) :
    rho 2526 = seg6RPe98 rho * (1 - rho 1987) := by
  unfold Seg6.relationRow2125 at r2125
  unfold seg6RPe98
  linear_combination -r2125

theorem seg6RStep97IlMul (rho : Nat -> Seg6.F) (r2126 : Seg6.relationRow2126 rho) :
    rho 2527 = seg6RIl98 rho * (rho 2526) := by
  unfold Seg6.relationRow2126 at r2126
  rw [seg6RStep97IlLc rho] at r2126
  linear_combination -r2126

theorem seg6RStep97Acc (rho : Nat -> Seg6.F) :
    seg6RIl97 rho = seg6RIl98 rho + (rho 2526) - (rho 2527) := by
  have hstate : seg6RIl97 rho = seg6RIl98 rho + seg6RIlAtom76 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom76
  ring

theorem seg6RStep97Pe (rho : Nat -> Seg6.F) (r2127 : Seg6.relationRow2127 rho) :
    seg6RPe97 rho = seg6RPe98 rho * rho 1987 := by
  unfold Seg6.relationRow2127 at r2127
  unfold seg6RPe97 seg6RPe98
  linear_combination -r2127

theorem seg6RStep97 (rho : Nat -> Seg6.F) (r2125 : Seg6.relationRow2125 rho) (r2126 : Seg6.relationRow2126 rho) (r2127 : Seg6.relationRow2127 rho) :
    seg6RPe97 rho = seg6RPe98 rho * rho 1987 ∧
    seg6RIl97 rho = seg6RIl98 rho + seg6RPe98 rho * (1 - rho 1987) -
      seg6RIl98 rho * (seg6RPe98 rho * (1 - rho 1987)) := by
  constructor
  · exact seg6RStep97Pe rho r2127
  · rw [seg6RStep97Acc rho, seg6RStep97L rho r2125, seg6RStep97IlMul rho r2126, seg6RStep97L rho r2125]

theorem seg6_r_chunk97 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 98 (seg6RPeState rho 98) (seg6RIlState rho 98) := by
  have htail := seg6_r_chunk96 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2125, r2126, r2127, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 97 ≤ n → n < 98 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 97 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep97 rho r2125 r2126 r2127
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 97 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
