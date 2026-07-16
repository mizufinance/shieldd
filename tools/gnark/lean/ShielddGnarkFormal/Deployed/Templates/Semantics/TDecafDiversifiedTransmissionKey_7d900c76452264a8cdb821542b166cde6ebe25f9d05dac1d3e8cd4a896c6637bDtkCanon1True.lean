import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkCanon1TrueChunk15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem dtkCanon1_flag_step (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ m, m < 253 → dtkCanon1Flag rho m = trueFactor (dtkCanon1Bits rho) m * dtkCanon1Flag rho (m + 1) := by
  intro m hm
  by_cases h0 : m < 16
  · exact dtkCanon1_flag_step_chunk0 rho h m (by omega) h0
  by_cases h1 : m < 32
  · exact dtkCanon1_flag_step_chunk1 rho h m (by omega) h1
  by_cases h2 : m < 48
  · exact dtkCanon1_flag_step_chunk2 rho h m (by omega) h2
  by_cases h3 : m < 64
  · exact dtkCanon1_flag_step_chunk3 rho h m (by omega) h3
  by_cases h4 : m < 80
  · exact dtkCanon1_flag_step_chunk4 rho h m (by omega) h4
  by_cases h5 : m < 96
  · exact dtkCanon1_flag_step_chunk5 rho h m (by omega) h5
  by_cases h6 : m < 112
  · exact dtkCanon1_flag_step_chunk6 rho h m (by omega) h6
  by_cases h7 : m < 128
  · exact dtkCanon1_flag_step_chunk7 rho h m (by omega) h7
  by_cases h8 : m < 144
  · exact dtkCanon1_flag_step_chunk8 rho h m (by omega) h8
  by_cases h9 : m < 160
  · exact dtkCanon1_flag_step_chunk9 rho h m (by omega) h9
  by_cases h10 : m < 176
  · exact dtkCanon1_flag_step_chunk10 rho h m (by omega) h10
  by_cases h11 : m < 192
  · exact dtkCanon1_flag_step_chunk11 rho h m (by omega) h11
  by_cases h12 : m < 208
  · exact dtkCanon1_flag_step_chunk12 rho h m (by omega) h12
  by_cases h13 : m < 224
  · exact dtkCanon1_flag_step_chunk13 rho h m (by omega) h13
  by_cases h14 : m < 240
  · exact dtkCanon1_flag_step_chunk14 rho h m (by omega) h14
  exact dtkCanon1_flag_step_chunk15 rho h m (by omega) hm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
