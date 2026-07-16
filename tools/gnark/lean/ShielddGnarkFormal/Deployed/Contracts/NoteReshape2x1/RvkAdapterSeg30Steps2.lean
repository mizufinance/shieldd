import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step160
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step161
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step162
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step163
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Step164

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_steps2 (rho : Nat -> Seg30.F)
    (r160 : Seg30.relationRow160 rho)
    (r1077 : Seg30.relationRow1077 rho)
    (r1078 : Seg30.relationRow1078 rho)
    (r1079 : Seg30.relationRow1079 rho)
    (r1080 : Seg30.relationRow1080 rho)
    (r1081 : Seg30.relationRow1081 rho)
    (r1082 : Seg30.relationRow1082 rho)
    (r1083 : Seg30.relationRow1083 rho)
    (r1084 : Seg30.relationRow1084 rho)
    (r161 : Seg30.relationRow161 rho)
    (r1085 : Seg30.relationRow1085 rho)
    (r1086 : Seg30.relationRow1086 rho)
    (r1087 : Seg30.relationRow1087 rho)
    (r1088 : Seg30.relationRow1088 rho)
    (r1089 : Seg30.relationRow1089 rho)
    (r1090 : Seg30.relationRow1090 rho)
    (r1091 : Seg30.relationRow1091 rho)
    (r1092 : Seg30.relationRow1092 rho)
    (r162 : Seg30.relationRow162 rho)
    (r1093 : Seg30.relationRow1093 rho)
    (r1094 : Seg30.relationRow1094 rho)
    (r1095 : Seg30.relationRow1095 rho)
    (r1096 : Seg30.relationRow1096 rho)
    (r1097 : Seg30.relationRow1097 rho)
    (r1098 : Seg30.relationRow1098 rho)
    (r1099 : Seg30.relationRow1099 rho)
    (r1100 : Seg30.relationRow1100 rho)
    (r163 : Seg30.relationRow163 rho)
    (r1101 : Seg30.relationRow1101 rho)
    (r1102 : Seg30.relationRow1102 rho)
    (r1103 : Seg30.relationRow1103 rho)
    (r1104 : Seg30.relationRow1104 rho)
    (r1105 : Seg30.relationRow1105 rho)
    (r1106 : Seg30.relationRow1106 rho)
    (r1107 : Seg30.relationRow1107 rho)
    (r1108 : Seg30.relationRow1108 rho)
    (r164 : Seg30.relationRow164 rho)
    (r1109 : Seg30.relationRow1109 rho)
    (r1110 : Seg30.relationRow1110 rho)
    (r1111 : Seg30.relationRow1111 rho)
    (r1112 : Seg30.relationRow1112 rho)
    (r1113 : Seg30.relationRow1113 rho)
    (r1114 : Seg30.relationRow1114 rho)
    (r1115 : Seg30.relationRow1115 rho)
    (r1116 : Seg30.relationRow1116 rho)
    : ∀ i, 160 ≤ i → i ≤ 164 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28317 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_step160 rho r160 r1077 r1078 r1079 r1080 r1081 r1082 r1083 r1084 hacc
  · exact seg30_step161 rho r161 r1085 r1086 r1087 r1088 r1089 r1090 r1091 r1092 hacc
  · exact seg30_step162 rho r162 r1093 r1094 r1095 r1096 r1097 r1098 r1099 r1100 hacc
  · exact seg30_step163 rho r163 r1101 r1102 r1103 r1104 r1105 r1106 r1107 r1108 hacc
  · exact seg30_step164 rho r164 r1109 r1110 r1111 r1112 r1113 r1114 r1115 r1116 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

