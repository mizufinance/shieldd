import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkLtRDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

theorem dtkRStep0L (rho : Nat -> F) (r2342 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2342 rho) :
    rho 1836 = dtkRPe1 rho * (1 - rho 983) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2342 at r2342
  unfold dtkRPe1
  linear_combination -r2342

theorem dtkRStep0IlMul (rho : Nat -> F) (r2343 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2343 rho) :
    rho 1837 = dtkRIl1 rho * (rho 1836) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2343 at r2343
  rw [dtkRStep0IlLc rho] at r2343
  linear_combination -r2343

theorem dtkRStep0Acc (rho : Nat -> F) :
    dtkRIl0 rho = dtkRIl1 rho + (rho 1836) - (rho 1837) := by
  have hstate : dtkRIl0 rho = dtkRIl1 rho + dtkRIlAtom140 rho := by rfl
  rw [hstate]
  unfold dtkRIlAtom140
  ring

theorem dtkRStep0Pe (rho : Nat -> F) (r2344 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2344 rho) :
    dtkRPe0 rho = dtkRPe1 rho * rho 983 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2344 at r2344
  unfold dtkRPe0 dtkRPe1
  linear_combination -r2344

theorem dtkRStep0 (rho : Nat -> F) (r2342 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2342 rho) (r2343 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2343 rho) (r2344 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2344 rho) :
    dtkRPe0 rho = dtkRPe1 rho * rho 983 ∧
    dtkRIl0 rho = dtkRIl1 rho + dtkRPe1 rho * (1 - rho 983) -
      dtkRIl1 rho * (dtkRPe1 rho * (1 - rho 983)) := by
  constructor
  · exact dtkRStep0Pe rho r2344
  · rw [dtkRStep0Acc rho, dtkRStep0L rho r2342, dtkRStep0IlMul rho r2343, dtkRStep0L rho r2342]

theorem dtkRFinal (rho : Nat -> F) (r2345 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2345 rho) : dtkRIl0 rho = 1 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2345 at r2345
  rw [dtkRTerminalIlLc rho] at r2345
  linear_combination r2345

theorem dtk_r_chunk0 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : F) (0 : F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 10) k) 1 (dtkRPeState rho 1) (dtkRIlState rho 1) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2342, r2343, r2344, r2345, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hfinal := dtkRFinal rho r2345
  have htailCont : Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 10) k (dtkRIl0 rho) := ⟨hfinal, hq4⟩
  have htail : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 10) k) 0 (dtkRPeState rho 0) (dtkRIlState rho 0) := by
    simpa only [Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec] using htailCont
  have hsteps : ∀ n, 0 ≤ n → n < 1 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        dtkRPeState rho n = dtkRPeState rho (n + 1) * rho (983 + n) ∧
        dtkRIlState rho n = dtkRIlState rho (n + 1) + dtkRPeState rho (n + 1) * (1 - rho (983 + n)) -
          dtkRIlState rho (n + 1) * (dtkRPeState rho (n + 1) * (1 - rho (983 + n)))
      else
        dtkRPeState rho n = dtkRPeState rho (n + 1) * (1 - rho (983 + n)) ∧
        dtkRIlState rho n = dtkRIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 0 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact dtkRStep0 rho r2342 r2343 r2344
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 10) k)
    (dtkRPeState rho) (dtkRIlState rho) 0 1
    (by intro n hnlo hnhi; have key := dtkIvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
