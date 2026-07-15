import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node7_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3091 : Seg13.relationRow3091 rho)
    (r3092 : Seg13.relationRow3092 rho)
    (r3093 : Seg13.relationRow3093 rho)
    (r3094 : Seg13.relationRow3094 rho)
    (r3095 : Seg13.relationRow3095 rho)
    (tail : next (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125) (rho 10130) (rho 10135) (rho 10140) (rho 10145) (rho 10150) (rho 10155) (rho 10160) (rho 10165) (rho 10170) (rho 10175) (rho 10180) (rho 10185) (rho 10190) (rho 10195) (rho 10200) (rho 10205) (rho 10210) (rho 10215) (rho 10220) (rho 10225) (rho 10230) (rho 10235) (rho 10240) (rho 10245) (rho 10250) (rho 10255) (rho 10260) (rho 10265) (rho 10270) (rho 10275) (rho 10280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg50 (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125) (rho 10130) (rho 10135) (rho 10140) (rho 10145) (rho 10150) (rho 10155) (rho 10160) (rho 10165) (rho 10170) (rho 10175) (rho 10180) (rho 10185) (rho 10190) (rho 10195) (rho 10200) (rho 10205) (rho 10210) (rho 10215) (rho 10220) (rho 10225) (rho 10230) (rho 10235) (rho 10240) (rho 10245) (rho 10250) (rho 10255) (rho 10260) (rho 10265) (rho 10270) (rho 10275) next := by
  exact ⟨rho 10276, rho 10277, rho 10278, rho 10279, rho 10280, r3091, r3092, r3093, r3094, r3095, tail⟩

theorem seg13_scp_node7_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3096 : Seg13.relationRow3096 rho)
    (r3097 : Seg13.relationRow3097 rho)
    (r3098 : Seg13.relationRow3098 rho)
    (r3099 : Seg13.relationRow3099 rho)
    (r3100 : Seg13.relationRow3100 rho)
    (tail : next (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125) (rho 10130) (rho 10135) (rho 10140) (rho 10145) (rho 10150) (rho 10155) (rho 10160) (rho 10165) (rho 10170) (rho 10175) (rho 10180) (rho 10185) (rho 10190) (rho 10195) (rho 10200) (rho 10205) (rho 10210) (rho 10215) (rho 10220) (rho 10225) (rho 10230) (rho 10235) (rho 10240) (rho 10245) (rho 10250) (rho 10255) (rho 10260) (rho 10265) (rho 10270) (rho 10275) (rho 10280) (rho 10285)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg51 (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125) (rho 10130) (rho 10135) (rho 10140) (rho 10145) (rho 10150) (rho 10155) (rho 10160) (rho 10165) (rho 10170) (rho 10175) (rho 10180) (rho 10185) (rho 10190) (rho 10195) (rho 10200) (rho 10205) (rho 10210) (rho 10215) (rho 10220) (rho 10225) (rho 10230) (rho 10235) (rho 10240) (rho 10245) (rho 10250) (rho 10255) (rho 10260) (rho 10265) (rho 10270) (rho 10275) (rho 10280) next := by
  exact ⟨rho 10281, rho 10282, rho 10283, rho 10284, rho 10285, r3096, r3097, r3098, r3099, r3100, tail⟩

theorem seg13_scp_node7_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3101 : Seg13.relationRow3101 rho)
    (r3102 : Seg13.relationRow3102 rho)
    (r3103 : Seg13.relationRow3103 rho)
    (r3104 : Seg13.relationRow3104 rho)
    (r3105 : Seg13.relationRow3105 rho)
    (tail : next (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125) (rho 10130) (rho 10135) (rho 10140) (rho 10145) (rho 10150) (rho 10155) (rho 10160) (rho 10165) (rho 10170) (rho 10175) (rho 10180) (rho 10185) (rho 10190) (rho 10195) (rho 10200) (rho 10205) (rho 10210) (rho 10215) (rho 10220) (rho 10225) (rho 10230) (rho 10235) (rho 10240) (rho 10245) (rho 10250) (rho 10255) (rho 10260) (rho 10265) (rho 10270) (rho 10275) (rho 10280) (rho 10285) (rho 10290)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg52 (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125) (rho 10130) (rho 10135) (rho 10140) (rho 10145) (rho 10150) (rho 10155) (rho 10160) (rho 10165) (rho 10170) (rho 10175) (rho 10180) (rho 10185) (rho 10190) (rho 10195) (rho 10200) (rho 10205) (rho 10210) (rho 10215) (rho 10220) (rho 10225) (rho 10230) (rho 10235) (rho 10240) (rho 10245) (rho 10250) (rho 10255) (rho 10260) (rho 10265) (rho 10270) (rho 10275) (rho 10280) (rho 10285) next := by
  exact ⟨rho 10286, rho 10287, rho 10288, rho 10289, rho 10290, r3101, r3102, r3103, r3104, r3105, tail⟩

theorem seg13_scp_node7_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3106 : Seg13.relationRow3106 rho)
    (r3107 : Seg13.relationRow3107 rho)
    (r3108 : Seg13.relationRow3108 rho)
    (r3109 : Seg13.relationRow3109 rho)
    (r3110 : Seg13.relationRow3110 rho)
    (tail : next (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125) (rho 10130) (rho 10135) (rho 10140) (rho 10145) (rho 10150) (rho 10155) (rho 10160) (rho 10165) (rho 10170) (rho 10175) (rho 10180) (rho 10185) (rho 10190) (rho 10195) (rho 10200) (rho 10205) (rho 10210) (rho 10215) (rho 10220) (rho 10225) (rho 10230) (rho 10235) (rho 10240) (rho 10245) (rho 10250) (rho 10255) (rho 10260) (rho 10265) (rho 10270) (rho 10275) (rho 10280) (rho 10285) (rho 10290) (rho 10295)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg53 (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125) (rho 10130) (rho 10135) (rho 10140) (rho 10145) (rho 10150) (rho 10155) (rho 10160) (rho 10165) (rho 10170) (rho 10175) (rho 10180) (rho 10185) (rho 10190) (rho 10195) (rho 10200) (rho 10205) (rho 10210) (rho 10215) (rho 10220) (rho 10225) (rho 10230) (rho 10235) (rho 10240) (rho 10245) (rho 10250) (rho 10255) (rho 10260) (rho 10265) (rho 10270) (rho 10275) (rho 10280) (rho 10285) (rho 10290) next := by
  exact ⟨rho 10291, rho 10292, rho 10293, rho 10294, rho 10295, r3106, r3107, r3108, r3109, r3110, tail⟩

theorem seg13_scp_node7_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3111 : Seg13.relationRow3111 rho)
    (r3112 : Seg13.relationRow3112 rho)
    (r3113 : Seg13.relationRow3113 rho)
    (r3114 : Seg13.relationRow3114 rho)
    (r3115 : Seg13.relationRow3115 rho)
    (tail : next (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg54 (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125) (rho 10130) (rho 10135) (rho 10140) (rho 10145) (rho 10150) (rho 10155) (rho 10160) (rho 10165) (rho 10170) (rho 10175) (rho 10180) (rho 10185) (rho 10190) (rho 10195) (rho 10200) (rho 10205) (rho 10210) (rho 10215) (rho 10220) (rho 10225) (rho 10230) (rho 10235) (rho 10240) (rho 10245) (rho 10250) (rho 10255) (rho 10260) (rho 10265) (rho 10270) (rho 10275) (rho 10280) (rho 10285) (rho 10290) (rho 10295) next := by
  exact ⟨rho 10296, rho 10297, rho 10298, rho 10299, rho 10300, r3111, r3112, r3113, r3114, r3115, tail⟩

theorem seg13_scp_node7_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3116 : Seg13.relationRow3116 rho)
    (r3117 : Seg13.relationRow3117 rho)
    (r3118 : Seg13.relationRow3118 rho)
    (r3119 : Seg13.relationRow3119 rho)
    (r3120 : Seg13.relationRow3120 rho)
    (tail : next (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300) (rho 10305)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg55 (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300) next := by
  exact ⟨rho 10301, rho 10302, rho 10303, rho 10304, rho 10305, r3116, r3117, r3118, r3119, r3120, tail⟩

theorem seg13_scp_node7_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3121 : Seg13.relationRow3121 rho)
    (r3122 : Seg13.relationRow3122 rho)
    (r3123 : Seg13.relationRow3123 rho)
    (r3124 : Seg13.relationRow3124 rho)
    (r3125 : Seg13.relationRow3125 rho)
    (tail : next (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300) (rho 10305) (rho 10310)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg56 (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300) (rho 10305) next := by
  exact ⟨rho 10306, rho 10307, rho 10308, rho 10309, rho 10310, r3121, r3122, r3123, r3124, r3125, tail⟩

theorem seg13_scp_node7_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3126 : Seg13.relationRow3126 rho)
    (r3127 : Seg13.relationRow3127 rho)
    (r3128 : Seg13.relationRow3128 rho)
    (r3129 : Seg13.relationRow3129 rho)
    (r3130 : Seg13.relationRow3130 rho)
    (tail : next (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300) (rho 10305) (rho 10310) (rho 10315)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg57 (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300) (rho 10305) (rho 10310) next := by
  exact ⟨rho 10311, rho 10312, rho 10313, rho 10314, rho 10315, r3126, r3127, r3128, r3129, r3130, tail⟩

theorem seg13_scp_node7_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3131 : Seg13.relationRow3131 rho)
    (r3132 : Seg13.relationRow3132 rho)
    (r3133 : Seg13.relationRow3133 rho)
    (r3134 : Seg13.relationRow3134 rho)
    (r3135 : Seg13.relationRow3135 rho)
    (tail : next (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300) (rho 10305) (rho 10310) (rho 10315) (rho 10320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg58 (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300) (rho 10305) (rho 10310) (rho 10315) next := by
  exact ⟨rho 10316, rho 10317, rho 10318, rho 10319, rho 10320, r3131, r3132, r3133, r3134, r3135, tail⟩

theorem seg13_scp_node7_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3136 : Seg13.relationRow3136 rho)
    (r3137 : Seg13.relationRow3137 rho)
    (r3138 : Seg13.relationRow3138 rho)
    (r3139 : Seg13.relationRow3139 rho)
    (r3140 : Seg13.relationRow3140 rho)
    (tail : next (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg59 (rho 10280) (rho 10285) (rho 10290) (rho 10295) (rho 10300) (rho 10305) (rho 10310) (rho 10315) (rho 10320) next := by
  exact ⟨rho 10321, rho 10322, rho 10323, rho 10324, rho 10325, r3136, r3137, r3138, r3139, r3140, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

