import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon1TrueChunk15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_flag_step (rho : Nat -> Seg6.F) (h : Seg6.relation rho) :
    ∀ m, m < 253 → seg6Canon1Flag rho m = trueFactor (seg6Canon1Bits rho) m * seg6Canon1Flag rho (m + 1) := by
  intro m hm
  by_cases h0 : m < 16
  · exact seg6Canon1_flag_step_chunk0 rho h m (by omega) h0
  by_cases h1 : m < 32
  · exact seg6Canon1_flag_step_chunk1 rho h m (by omega) h1
  by_cases h2 : m < 48
  · exact seg6Canon1_flag_step_chunk2 rho h m (by omega) h2
  by_cases h3 : m < 64
  · exact seg6Canon1_flag_step_chunk3 rho h m (by omega) h3
  by_cases h4 : m < 80
  · exact seg6Canon1_flag_step_chunk4 rho h m (by omega) h4
  by_cases h5 : m < 96
  · exact seg6Canon1_flag_step_chunk5 rho h m (by omega) h5
  by_cases h6 : m < 112
  · exact seg6Canon1_flag_step_chunk6 rho h m (by omega) h6
  by_cases h7 : m < 128
  · exact seg6Canon1_flag_step_chunk7 rho h m (by omega) h7
  by_cases h8 : m < 144
  · exact seg6Canon1_flag_step_chunk8 rho h m (by omega) h8
  by_cases h9 : m < 160
  · exact seg6Canon1_flag_step_chunk9 rho h m (by omega) h9
  by_cases h10 : m < 176
  · exact seg6Canon1_flag_step_chunk10 rho h m (by omega) h10
  by_cases h11 : m < 192
  · exact seg6Canon1_flag_step_chunk11 rho h m (by omega) h11
  by_cases h12 : m < 208
  · exact seg6Canon1_flag_step_chunk12 rho h m (by omega) h12
  by_cases h13 : m < 224
  · exact seg6Canon1_flag_step_chunk13 rho h m (by omega) h13
  by_cases h14 : m < 240
  · exact seg6Canon1_flag_step_chunk14 rho h m (by omega) h14
  exact seg6Canon1_flag_step_chunk15 rho h m (by omega) hm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
