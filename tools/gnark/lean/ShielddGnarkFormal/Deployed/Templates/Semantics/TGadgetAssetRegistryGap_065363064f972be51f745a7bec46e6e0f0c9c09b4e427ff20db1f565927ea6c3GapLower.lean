import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3GapLowerChunk126
import ShielddGnarkFormal.ImtGapBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem lowerGadget (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3.relation rho)
    (k : Shieldd.GnarkFormal.Extracted.ImtGap.F → Prop)
    (tail : k (lowerIlImt rho 253)) :
    Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_253_253
      (leafBitsImt rho) (idBitsImt rho) k := by
  apply (Shieldd.GnarkFormal.Extracted.ImtGap.lexLess253Gadget_eq_ltRec
    (leafBitsImt rho) (idBitsImt rho) k).mpr
  have htail : Shieldd.GnarkFormal.Extracted.ImtGap.ltRec
      (leafBitsImt rho) (idBitsImt rho) k
      0 (lowerPeImt rho 253) (lowerIlImt rho 253) := by
    simpa [Shieldd.GnarkFormal.Extracted.ImtGap.ltRec] using tail
  simpa [lowerPeImt, lowerIlImt, lowerPe, lowerIl,
    toImtF_one, toImtF_zero] using lowerRange0 rho h k (lowerRange1 rho h k (lowerRange2 rho h k (lowerRange3 rho h k (lowerRange4 rho h k (lowerRange5 rho h k (lowerRange6 rho h k (lowerRange7 rho h k (lowerRange8 rho h k (lowerRange9 rho h k (lowerRange10 rho h k (lowerRange11 rho h k (lowerRange12 rho h k (lowerRange13 rho h k (lowerRange14 rho h k (lowerRange15 rho h k (lowerRange16 rho h k (lowerRange17 rho h k (lowerRange18 rho h k (lowerRange19 rho h k (lowerRange20 rho h k (lowerRange21 rho h k (lowerRange22 rho h k (lowerRange23 rho h k (lowerRange24 rho h k (lowerRange25 rho h k (lowerRange26 rho h k (lowerRange27 rho h k (lowerRange28 rho h k (lowerRange29 rho h k (lowerRange30 rho h k (lowerRange31 rho h k (lowerRange32 rho h k (lowerRange33 rho h k (lowerRange34 rho h k (lowerRange35 rho h k (lowerRange36 rho h k (lowerRange37 rho h k (lowerRange38 rho h k (lowerRange39 rho h k (lowerRange40 rho h k (lowerRange41 rho h k (lowerRange42 rho h k (lowerRange43 rho h k (lowerRange44 rho h k (lowerRange45 rho h k (lowerRange46 rho h k (lowerRange47 rho h k (lowerRange48 rho h k (lowerRange49 rho h k (lowerRange50 rho h k (lowerRange51 rho h k (lowerRange52 rho h k (lowerRange53 rho h k (lowerRange54 rho h k (lowerRange55 rho h k (lowerRange56 rho h k (lowerRange57 rho h k (lowerRange58 rho h k (lowerRange59 rho h k (lowerRange60 rho h k (lowerRange61 rho h k (lowerRange62 rho h k (lowerRange63 rho h k (lowerRange64 rho h k (lowerRange65 rho h k (lowerRange66 rho h k (lowerRange67 rho h k (lowerRange68 rho h k (lowerRange69 rho h k (lowerRange70 rho h k (lowerRange71 rho h k (lowerRange72 rho h k (lowerRange73 rho h k (lowerRange74 rho h k (lowerRange75 rho h k (lowerRange76 rho h k (lowerRange77 rho h k (lowerRange78 rho h k (lowerRange79 rho h k (lowerRange80 rho h k (lowerRange81 rho h k (lowerRange82 rho h k (lowerRange83 rho h k (lowerRange84 rho h k (lowerRange85 rho h k (lowerRange86 rho h k (lowerRange87 rho h k (lowerRange88 rho h k (lowerRange89 rho h k (lowerRange90 rho h k (lowerRange91 rho h k (lowerRange92 rho h k (lowerRange93 rho h k (lowerRange94 rho h k (lowerRange95 rho h k (lowerRange96 rho h k (lowerRange97 rho h k (lowerRange98 rho h k (lowerRange99 rho h k (lowerRange100 rho h k (lowerRange101 rho h k (lowerRange102 rho h k (lowerRange103 rho h k (lowerRange104 rho h k (lowerRange105 rho h k (lowerRange106 rho h k (lowerRange107 rho h k (lowerRange108 rho h k (lowerRange109 rho h k (lowerRange110 rho h k (lowerRange111 rho h k (lowerRange112 rho h k (lowerRange113 rho h k (lowerRange114 rho h k (lowerRange115 rho h k (lowerRange116 rho h k (lowerRange117 rho h k (lowerRange118 rho h k (lowerRange119 rho h k (lowerRange120 rho h k (lowerRange121 rho h k (lowerRange122 rho h k (lowerRange123 rho h k (lowerRange124 rho h k (lowerRange125 rho h k (lowerRange126 rho h k (htail)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3
