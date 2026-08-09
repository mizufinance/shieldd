import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapUpperChunk126
import ShielddGnarkFormal.ImtGapBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem upperGadget (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : k (upperIlImt rho 253)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_253_253
      (idBitsImt rho) (nextBitsImt rho) k := by
  apply (Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_eq_ltRec
    (idBitsImt rho) (nextBitsImt rho) k).mpr
  have htail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (idBitsImt rho) (nextBitsImt rho) k
      0 (upperPeImt rho 253) (upperIlImt rho 253) := by
    simpa [Shieldd.GnarkFormal.Extracted.ImtGap.ltRec] using tail
  simpa [upperPeImt, upperIlImt, upperPe, upperIl,
    toImtF_one, toImtF_zero] using upperRange0 rho h k (upperRange1 rho h k (upperRange2 rho h k (upperRange3 rho h k (upperRange4 rho h k (upperRange5 rho h k (upperRange6 rho h k (upperRange7 rho h k (upperRange8 rho h k (upperRange9 rho h k (upperRange10 rho h k (upperRange11 rho h k (upperRange12 rho h k (upperRange13 rho h k (upperRange14 rho h k (upperRange15 rho h k (upperRange16 rho h k (upperRange17 rho h k (upperRange18 rho h k (upperRange19 rho h k (upperRange20 rho h k (upperRange21 rho h k (upperRange22 rho h k (upperRange23 rho h k (upperRange24 rho h k (upperRange25 rho h k (upperRange26 rho h k (upperRange27 rho h k (upperRange28 rho h k (upperRange29 rho h k (upperRange30 rho h k (upperRange31 rho h k (upperRange32 rho h k (upperRange33 rho h k (upperRange34 rho h k (upperRange35 rho h k (upperRange36 rho h k (upperRange37 rho h k (upperRange38 rho h k (upperRange39 rho h k (upperRange40 rho h k (upperRange41 rho h k (upperRange42 rho h k (upperRange43 rho h k (upperRange44 rho h k (upperRange45 rho h k (upperRange46 rho h k (upperRange47 rho h k (upperRange48 rho h k (upperRange49 rho h k (upperRange50 rho h k (upperRange51 rho h k (upperRange52 rho h k (upperRange53 rho h k (upperRange54 rho h k (upperRange55 rho h k (upperRange56 rho h k (upperRange57 rho h k (upperRange58 rho h k (upperRange59 rho h k (upperRange60 rho h k (upperRange61 rho h k (upperRange62 rho h k (upperRange63 rho h k (upperRange64 rho h k (upperRange65 rho h k (upperRange66 rho h k (upperRange67 rho h k (upperRange68 rho h k (upperRange69 rho h k (upperRange70 rho h k (upperRange71 rho h k (upperRange72 rho h k (upperRange73 rho h k (upperRange74 rho h k (upperRange75 rho h k (upperRange76 rho h k (upperRange77 rho h k (upperRange78 rho h k (upperRange79 rho h k (upperRange80 rho h k (upperRange81 rho h k (upperRange82 rho h k (upperRange83 rho h k (upperRange84 rho h k (upperRange85 rho h k (upperRange86 rho h k (upperRange87 rho h k (upperRange88 rho h k (upperRange89 rho h k (upperRange90 rho h k (upperRange91 rho h k (upperRange92 rho h k (upperRange93 rho h k (upperRange94 rho h k (upperRange95 rho h k (upperRange96 rho h k (upperRange97 rho h k (upperRange98 rho h k (upperRange99 rho h k (upperRange100 rho h k (upperRange101 rho h k (upperRange102 rho h k (upperRange103 rho h k (upperRange104 rho h k (upperRange105 rho h k (upperRange106 rho h k (upperRange107 rho h k (upperRange108 rho h k (upperRange109 rho h k (upperRange110 rho h k (upperRange111 rho h k (upperRange112 rho h k (upperRange113 rho h k (upperRange114 rho h k (upperRange115 rho h k (upperRange116 rho h k (upperRange117 rho h k (upperRange118 rho h k (upperRange119 rho h k (upperRange120 rho h k (upperRange121 rho h k (upperRange122 rho h k (upperRange123 rho h k (upperRange124 rho h k (upperRange125 rho h k (upperRange126 rho h k (htail)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
