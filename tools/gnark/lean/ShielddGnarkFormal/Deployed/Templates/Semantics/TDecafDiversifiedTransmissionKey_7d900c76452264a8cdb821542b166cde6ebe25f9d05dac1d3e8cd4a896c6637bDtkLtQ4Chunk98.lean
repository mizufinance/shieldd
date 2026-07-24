import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkLtQ4Chunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem dtkQ4Step98L (rho : Nat -> F) (r2530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2530 rho) :
    rho 2023 = dtkQ4Pe99 rho * (1 - rho 1081) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2530 at r2530
  unfold dtkQ4Pe99
  linear_combination -r2530

theorem dtkQ4Step98IlMul (rho : Nat -> F) (r2531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2531 rho) :
    rho 2024 = dtkQ4Il99 rho * (rho 2023) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2531 at r2531
  rw [dtkQ4Il99Atoms rho]
  unfold dtkQ4IlAtom0 dtkQ4IlAtom1 dtkQ4IlAtom10 dtkQ4IlAtom11 dtkQ4IlAtom12 dtkQ4IlAtom13 dtkQ4IlAtom14 dtkQ4IlAtom15 dtkQ4IlAtom2 dtkQ4IlAtom3 dtkQ4IlAtom4 dtkQ4IlAtom5 dtkQ4IlAtom6 dtkQ4IlAtom7 dtkQ4IlAtom8 dtkQ4IlAtom9
  linear_combination -r2531

theorem dtkQ4Step98Acc (rho : Nat -> F) :
    dtkQ4Il98 rho = dtkQ4Il99 rho + (rho 2023) - (rho 2024) := by
  have hstate : dtkQ4Il98 rho = dtkQ4Il99 rho + dtkQ4IlAtom16 rho + (-1 : F) * dtkQ4IlAtom17 rho := by rfl
  rw [hstate]
  unfold dtkQ4IlAtom16 dtkQ4IlAtom17
  ring

theorem dtkQ4Step98Pe (rho : Nat -> F) (r2532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2532 rho) :
    dtkQ4Pe98 rho = dtkQ4Pe99 rho * rho 1081 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2532 at r2532
  unfold dtkQ4Pe98 dtkQ4Pe99
  linear_combination -r2532

theorem dtkQ4Step98 (rho : Nat -> F) (r2530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2530 rho) (r2531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2531 rho) (r2532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2532 rho) :
    dtkQ4Pe98 rho = dtkQ4Pe99 rho * rho 1081 ∧
    dtkQ4Il98 rho = dtkQ4Il99 rho + dtkQ4Pe99 rho * (1 - rho 1081) -
      dtkQ4Il99 rho * (dtkQ4Pe99 rho * (1 - rho 1081)) := by
  constructor
  · exact dtkQ4Step98Pe rho r2532
  · rw [dtkQ4Step98Acc rho, dtkQ4Step98L rho r2530, dtkQ4Step98IlMul rho r2531, dtkQ4Step98L rho r2530]

theorem dtk_q4_chunk98 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 978) k) 99 (dtkQ4PeState rho 99) (dtkQ4IlState rho 99) := by
  have htail := dtk_q4_chunk97 rho h k hk
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2530, r2531, r2532, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        dtkQ4PeState rho n = dtkQ4PeState rho (n + 1) * rho (983 + n) ∧
        dtkQ4IlState rho n = dtkQ4IlState rho (n + 1) + dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)) -
          dtkQ4IlState rho (n + 1) * (dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)))
      else
        dtkQ4PeState rho n = dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)) ∧
        dtkQ4IlState rho n = dtkQ4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact dtkQ4Step98 rho r2530 r2531 r2532
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 978) k)
    (dtkQ4PeState rho) (dtkQ4IlState rho) 98 1
    (by intro n hnlo hnhi; have key := dtkIvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
