import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkLtRChunk154

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem dtkRStep155Pe (rho : Nat -> F) (r2015 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2015 rho) :
    dtkRPe155 rho = dtkRPe156 rho * (1 - rho 1138) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2015 at r2015
  unfold dtkRPe155 dtkRPe156
  linear_combination -r2015

theorem dtkRStep155 (rho : Nat -> F) (r2015 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2015 rho) :
    dtkRPe155 rho = dtkRPe156 rho * (1 - rho 1138) ∧
    dtkRIl155 rho = dtkRIl156 rho := by
  exact ⟨dtkRStep155Pe rho r2015, rfl⟩

theorem dtk_r_chunk155 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 978) k) 253 (1 : F) (0 : F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 978) k) 156 (dtkRPeState rho 156) (dtkRIlState rho 156) := by
  have htail := dtk_r_chunk154 rho h k hq4
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2015, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 155 ≤ n → n < 156 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        dtkRPeState rho n = dtkRPeState rho (n + 1) * rho (983 + n) ∧
        dtkRIlState rho n = dtkRIlState rho (n + 1) + dtkRPeState rho (n + 1) * (1 - rho (983 + n)) -
          dtkRIlState rho (n + 1) * (dtkRPeState rho (n + 1) * (1 - rho (983 + n)))
      else
        dtkRPeState rho n = dtkRPeState rho (n + 1) * (1 - rho (983 + n)) ∧
        dtkRIlState rho n = dtkRIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 155 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact dtkRStep155 rho r2015
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (dtkIvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (dtkIvkBits rho) (rho 978) k)
    (dtkRPeState rho) (dtkRIlState rho) 155 1
    (by intro n hnlo hnhi; have key := dtkIvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
