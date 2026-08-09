import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16GapIdCompareChunk15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem gapId_compare (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.relation rho) :
    ∀ j, j < 253 → pmBit j = false → (idBits rho)[j]! * (1 - (idBits rho)[j]! - gapIdFlag rho (j + 1)) = 0 := by
  intro j hj hpm
  by_cases h0 : j < 16
  · exact gapId_compare_chunk0 rho h j (by omega) h0 hpm
  by_cases h1 : j < 32
  · exact gapId_compare_chunk1 rho h j (by omega) h1 hpm
  by_cases h2 : j < 48
  · exact gapId_compare_chunk2 rho h j (by omega) h2 hpm
  by_cases h3 : j < 64
  · exact gapId_compare_chunk3 rho h j (by omega) h3 hpm
  by_cases h4 : j < 80
  · exact gapId_compare_chunk4 rho h j (by omega) h4 hpm
  by_cases h5 : j < 96
  · exact gapId_compare_chunk5 rho h j (by omega) h5 hpm
  by_cases h6 : j < 112
  · exact gapId_compare_chunk6 rho h j (by omega) h6 hpm
  by_cases h7 : j < 128
  · exact gapId_compare_chunk7 rho h j (by omega) h7 hpm
  by_cases h8 : j < 144
  · exact gapId_compare_chunk8 rho h j (by omega) h8 hpm
  by_cases h9 : j < 160
  · exact gapId_compare_chunk9 rho h j (by omega) h9 hpm
  by_cases h10 : j < 176
  · exact gapId_compare_chunk10 rho h j (by omega) h10 hpm
  by_cases h11 : j < 192
  · exact gapId_compare_chunk11 rho h j (by omega) h11 hpm
  by_cases h12 : j < 208
  · exact gapId_compare_chunk12 rho h j (by omega) h12 hpm
  by_cases h13 : j < 224
  · exact gapId_compare_chunk13 rho h j (by omega) h13 hpm
  by_cases h14 : j < 240
  · exact gapId_compare_chunk14 rho h j (by omega) h14 hpm
  exact gapId_compare_chunk15 rho h j (by omega) hj hpm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
