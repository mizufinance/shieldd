import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkLtQ4Chunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

theorem dtkQ4Step2L (rho : Nat -> F) (r2708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2708 rho) :
    rho 2201 = dtkQ4Pe3 rho * (1 - rho 985) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2708 at r2708
  unfold dtkQ4Pe3
  linear_combination -r2708

theorem dtkQ4Step2IlMul (rho : Nat -> F) (r2709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2709 rho) :
    rho 2202 = dtkQ4Il3 rho * (rho 2201) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2709 at r2709
  rw [dtkQ4Step2IlLc rho] at r2709
  linear_combination -r2709

theorem dtkQ4Step2Acc (rho : Nat -> F) :
    dtkQ4Il2 rho = dtkQ4Il3 rho + (rho 2201) - (rho 2202) := by
  have hstate : dtkQ4Il2 rho = dtkQ4Il3 rho + dtkQ4IlAtom60 rho := by rfl
  rw [hstate]
  unfold dtkQ4IlAtom60
  ring

theorem dtkQ4Step2Pe (rho : Nat -> F) (r2710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2710 rho) :
    dtkQ4Pe2 rho = dtkQ4Pe3 rho * rho 985 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2710 at r2710
  unfold dtkQ4Pe2 dtkQ4Pe3
  linear_combination -r2710

theorem dtkQ4Step2 (rho : Nat -> F) (r2708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2708 rho) (r2709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2709 rho) (r2710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2710 rho) :
    dtkQ4Pe2 rho = dtkQ4Pe3 rho * rho 985 ∧
    dtkQ4Il2 rho = dtkQ4Il3 rho + dtkQ4Pe3 rho * (1 - rho 985) -
      dtkQ4Il3 rho * (dtkQ4Pe3 rho * (1 - rho 985)) := by
  constructor
  · exact dtkQ4Step2Pe rho r2710
  · rw [dtkQ4Step2Acc rho, dtkQ4Step2L rho r2708, dtkQ4Step2IlMul rho r2709, dtkQ4Step2L rho r2708]

theorem dtk_q4_chunk2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 3 (dtkQ4PeState rho 3) (dtkQ4IlState rho 3) := by
  have htail := dtk_q4_chunk1 rho h k hk
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2708, r2709, r2710, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 2 ≤ n → n < 3 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        dtkQ4PeState rho n = dtkQ4PeState rho (n + 1) * rho (983 + n) ∧
        dtkQ4IlState rho n = dtkQ4IlState rho (n + 1) + dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)) -
          dtkQ4IlState rho (n + 1) * (dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)))
      else
        dtkQ4PeState rho n = dtkQ4PeState rho (n + 1) * (1 - rho (983 + n)) ∧
        dtkQ4IlState rho n = dtkQ4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 2 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact dtkQ4Step2 rho r2708 r2709 r2710
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (dtkQ4PeState rho) (dtkQ4IlState rho) 2 1
    (by intro n hnlo hnhi; have key := dtkIvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
