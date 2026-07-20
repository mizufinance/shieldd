import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk141

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep142L (rho : Nat -> Seg6.F) (r2042 : Seg6.relationRow2042 rho) :
    rho 2437 = seg6RPe143 rho * (1 - rho 2026) := by
  unfold Seg6.relationRow2042 at r2042
  unfold seg6RPe143
  linear_combination -r2042

theorem seg6RStep142IlMul (rho : Nat -> Seg6.F) (r2043 : Seg6.relationRow2043 rho) :
    rho 2438 = seg6RIl143 rho * (rho 2437) := by
  unfold Seg6.relationRow2043 at r2043
  rw [seg6RStep142IlLc rho] at r2043
  linear_combination -r2043

theorem seg6RStep142Acc (rho : Nat -> Seg6.F) :
    seg6RIl142 rho = seg6RIl143 rho + (rho 2437) - (rho 2438) := by
  have hstate : seg6RIl142 rho = seg6RIl143 rho + seg6RIlAtom56 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom56
  ring

theorem seg6RStep142Pe (rho : Nat -> Seg6.F) (r2044 : Seg6.relationRow2044 rho) :
    seg6RPe142 rho = seg6RPe143 rho * rho 2026 := by
  unfold Seg6.relationRow2044 at r2044
  unfold seg6RPe142 seg6RPe143
  linear_combination -r2044

theorem seg6RStep142 (rho : Nat -> Seg6.F) (r2042 : Seg6.relationRow2042 rho) (r2043 : Seg6.relationRow2043 rho) (r2044 : Seg6.relationRow2044 rho) :
    seg6RPe142 rho = seg6RPe143 rho * rho 2026 ∧
    seg6RIl142 rho = seg6RIl143 rho + seg6RPe143 rho * (1 - rho 2026) -
      seg6RIl143 rho * (seg6RPe143 rho * (1 - rho 2026)) := by
  constructor
  · exact seg6RStep142Pe rho r2044
  · rw [seg6RStep142Acc rho, seg6RStep142L rho r2042, seg6RStep142IlMul rho r2043, seg6RStep142L rho r2042]

theorem seg6_r_chunk142 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 143 (seg6RPeState rho 143) (seg6RIlState rho 143) := by
  have htail := seg6_r_chunk141 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2042, r2043, r2044, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 142 ≤ n → n < 143 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 142 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep142 rho r2042 r2043 r2044
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 142 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
