import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon2CompareChunk15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon2_compare (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    ∀ j, j < 253 → pmBit j = false → (seg5Canon2Bits rho)[j]! * (1 - (seg5Canon2Bits rho)[j]! - seg5Canon2Flag rho (j + 1)) = 0 := by
  intro j hj hpm
  by_cases h0 : j < 16
  · exact seg5Canon2_compare_chunk0 rho h j (by omega) h0 hpm
  by_cases h1 : j < 32
  · exact seg5Canon2_compare_chunk1 rho h j (by omega) h1 hpm
  by_cases h2 : j < 48
  · exact seg5Canon2_compare_chunk2 rho h j (by omega) h2 hpm
  by_cases h3 : j < 64
  · exact seg5Canon2_compare_chunk3 rho h j (by omega) h3 hpm
  by_cases h4 : j < 80
  · exact seg5Canon2_compare_chunk4 rho h j (by omega) h4 hpm
  by_cases h5 : j < 96
  · exact seg5Canon2_compare_chunk5 rho h j (by omega) h5 hpm
  by_cases h6 : j < 112
  · exact seg5Canon2_compare_chunk6 rho h j (by omega) h6 hpm
  by_cases h7 : j < 128
  · exact seg5Canon2_compare_chunk7 rho h j (by omega) h7 hpm
  by_cases h8 : j < 144
  · exact seg5Canon2_compare_chunk8 rho h j (by omega) h8 hpm
  by_cases h9 : j < 160
  · exact seg5Canon2_compare_chunk9 rho h j (by omega) h9 hpm
  by_cases h10 : j < 176
  · exact seg5Canon2_compare_chunk10 rho h j (by omega) h10 hpm
  by_cases h11 : j < 192
  · exact seg5Canon2_compare_chunk11 rho h j (by omega) h11 hpm
  by_cases h12 : j < 208
  · exact seg5Canon2_compare_chunk12 rho h j (by omega) h12 hpm
  by_cases h13 : j < 224
  · exact seg5Canon2_compare_chunk13 rho h j (by omega) h13 hpm
  by_cases h14 : j < 240
  · exact seg5Canon2_compare_chunk14 rho h j (by omega) h14 hpm
  exact seg5Canon2_compare_chunk15 rho h j (by omega) hj hpm

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
