import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node7_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3091 : Seg13.relationRow3091 rho)
    (r3092 : Seg13.relationRow3092 rho)
    (r3093 : Seg13.relationRow3093 rho)
    (r3094 : Seg13.relationRow3094 rho)
    (r3095 : Seg13.relationRow3095 rho)
    (tail : next (rho 10094) (rho 10099) (rho 10104) (rho 10109) (rho 10114) (rho 10119) (rho 10124) (rho 10129) (rho 10134) (rho 10139) (rho 10144) (rho 10149) (rho 10154) (rho 10159) (rho 10164) (rho 10169) (rho 10174) (rho 10179) (rho 10184) (rho 10189) (rho 10194) (rho 10199) (rho 10204) (rho 10209) (rho 10214) (rho 10219) (rho 10224) (rho 10229) (rho 10234) (rho 10239) (rho 10244) (rho 10249) (rho 10254) (rho 10259) (rho 10264) (rho 10269) (rho 10274)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg50 (rho 10094) (rho 10099) (rho 10104) (rho 10109) (rho 10114) (rho 10119) (rho 10124) (rho 10129) (rho 10134) (rho 10139) (rho 10144) (rho 10149) (rho 10154) (rho 10159) (rho 10164) (rho 10169) (rho 10174) (rho 10179) (rho 10184) (rho 10189) (rho 10194) (rho 10199) (rho 10204) (rho 10209) (rho 10214) (rho 10219) (rho 10224) (rho 10229) (rho 10234) (rho 10239) (rho 10244) (rho 10249) (rho 10254) (rho 10259) (rho 10264) (rho 10269) next := by
  exact ⟨rho 10270, rho 10271, rho 10272, rho 10273, rho 10274, r3091, r3092, r3093, r3094, r3095, tail⟩

theorem seg13_scp_node7_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3096 : Seg13.relationRow3096 rho)
    (r3097 : Seg13.relationRow3097 rho)
    (r3098 : Seg13.relationRow3098 rho)
    (r3099 : Seg13.relationRow3099 rho)
    (r3100 : Seg13.relationRow3100 rho)
    (tail : next (rho 10094) (rho 10099) (rho 10104) (rho 10109) (rho 10114) (rho 10119) (rho 10124) (rho 10129) (rho 10134) (rho 10139) (rho 10144) (rho 10149) (rho 10154) (rho 10159) (rho 10164) (rho 10169) (rho 10174) (rho 10179) (rho 10184) (rho 10189) (rho 10194) (rho 10199) (rho 10204) (rho 10209) (rho 10214) (rho 10219) (rho 10224) (rho 10229) (rho 10234) (rho 10239) (rho 10244) (rho 10249) (rho 10254) (rho 10259) (rho 10264) (rho 10269) (rho 10274) (rho 10279)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg51 (rho 10094) (rho 10099) (rho 10104) (rho 10109) (rho 10114) (rho 10119) (rho 10124) (rho 10129) (rho 10134) (rho 10139) (rho 10144) (rho 10149) (rho 10154) (rho 10159) (rho 10164) (rho 10169) (rho 10174) (rho 10179) (rho 10184) (rho 10189) (rho 10194) (rho 10199) (rho 10204) (rho 10209) (rho 10214) (rho 10219) (rho 10224) (rho 10229) (rho 10234) (rho 10239) (rho 10244) (rho 10249) (rho 10254) (rho 10259) (rho 10264) (rho 10269) (rho 10274) next := by
  exact ⟨rho 10275, rho 10276, rho 10277, rho 10278, rho 10279, r3096, r3097, r3098, r3099, r3100, tail⟩

theorem seg13_scp_node7_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3101 : Seg13.relationRow3101 rho)
    (r3102 : Seg13.relationRow3102 rho)
    (r3103 : Seg13.relationRow3103 rho)
    (r3104 : Seg13.relationRow3104 rho)
    (r3105 : Seg13.relationRow3105 rho)
    (tail : next (rho 10094) (rho 10099) (rho 10104) (rho 10109) (rho 10114) (rho 10119) (rho 10124) (rho 10129) (rho 10134) (rho 10139) (rho 10144) (rho 10149) (rho 10154) (rho 10159) (rho 10164) (rho 10169) (rho 10174) (rho 10179) (rho 10184) (rho 10189) (rho 10194) (rho 10199) (rho 10204) (rho 10209) (rho 10214) (rho 10219) (rho 10224) (rho 10229) (rho 10234) (rho 10239) (rho 10244) (rho 10249) (rho 10254) (rho 10259) (rho 10264) (rho 10269) (rho 10274) (rho 10279) (rho 10284)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg52 (rho 10094) (rho 10099) (rho 10104) (rho 10109) (rho 10114) (rho 10119) (rho 10124) (rho 10129) (rho 10134) (rho 10139) (rho 10144) (rho 10149) (rho 10154) (rho 10159) (rho 10164) (rho 10169) (rho 10174) (rho 10179) (rho 10184) (rho 10189) (rho 10194) (rho 10199) (rho 10204) (rho 10209) (rho 10214) (rho 10219) (rho 10224) (rho 10229) (rho 10234) (rho 10239) (rho 10244) (rho 10249) (rho 10254) (rho 10259) (rho 10264) (rho 10269) (rho 10274) (rho 10279) next := by
  exact ⟨rho 10280, rho 10281, rho 10282, rho 10283, rho 10284, r3101, r3102, r3103, r3104, r3105, tail⟩

theorem seg13_scp_node7_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3106 : Seg13.relationRow3106 rho)
    (r3107 : Seg13.relationRow3107 rho)
    (r3108 : Seg13.relationRow3108 rho)
    (r3109 : Seg13.relationRow3109 rho)
    (r3110 : Seg13.relationRow3110 rho)
    (tail : next (rho 10094) (rho 10099) (rho 10104) (rho 10109) (rho 10114) (rho 10119) (rho 10124) (rho 10129) (rho 10134) (rho 10139) (rho 10144) (rho 10149) (rho 10154) (rho 10159) (rho 10164) (rho 10169) (rho 10174) (rho 10179) (rho 10184) (rho 10189) (rho 10194) (rho 10199) (rho 10204) (rho 10209) (rho 10214) (rho 10219) (rho 10224) (rho 10229) (rho 10234) (rho 10239) (rho 10244) (rho 10249) (rho 10254) (rho 10259) (rho 10264) (rho 10269) (rho 10274) (rho 10279) (rho 10284) (rho 10289)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg53 (rho 10094) (rho 10099) (rho 10104) (rho 10109) (rho 10114) (rho 10119) (rho 10124) (rho 10129) (rho 10134) (rho 10139) (rho 10144) (rho 10149) (rho 10154) (rho 10159) (rho 10164) (rho 10169) (rho 10174) (rho 10179) (rho 10184) (rho 10189) (rho 10194) (rho 10199) (rho 10204) (rho 10209) (rho 10214) (rho 10219) (rho 10224) (rho 10229) (rho 10234) (rho 10239) (rho 10244) (rho 10249) (rho 10254) (rho 10259) (rho 10264) (rho 10269) (rho 10274) (rho 10279) (rho 10284) next := by
  exact ⟨rho 10285, rho 10286, rho 10287, rho 10288, rho 10289, r3106, r3107, r3108, r3109, r3110, tail⟩

theorem seg13_scp_node7_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3111 : Seg13.relationRow3111 rho)
    (r3112 : Seg13.relationRow3112 rho)
    (r3113 : Seg13.relationRow3113 rho)
    (r3114 : Seg13.relationRow3114 rho)
    (r3115 : Seg13.relationRow3115 rho)
    (tail : next (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg54 (rho 10094) (rho 10099) (rho 10104) (rho 10109) (rho 10114) (rho 10119) (rho 10124) (rho 10129) (rho 10134) (rho 10139) (rho 10144) (rho 10149) (rho 10154) (rho 10159) (rho 10164) (rho 10169) (rho 10174) (rho 10179) (rho 10184) (rho 10189) (rho 10194) (rho 10199) (rho 10204) (rho 10209) (rho 10214) (rho 10219) (rho 10224) (rho 10229) (rho 10234) (rho 10239) (rho 10244) (rho 10249) (rho 10254) (rho 10259) (rho 10264) (rho 10269) (rho 10274) (rho 10279) (rho 10284) (rho 10289) next := by
  exact ⟨rho 10290, rho 10291, rho 10292, rho 10293, rho 10294, r3111, r3112, r3113, r3114, r3115, tail⟩

theorem seg13_scp_node7_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3116 : Seg13.relationRow3116 rho)
    (r3117 : Seg13.relationRow3117 rho)
    (r3118 : Seg13.relationRow3118 rho)
    (r3119 : Seg13.relationRow3119 rho)
    (r3120 : Seg13.relationRow3120 rho)
    (tail : next (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294) (rho 10299)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg55 (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294) next := by
  exact ⟨rho 10295, rho 10296, rho 10297, rho 10298, rho 10299, r3116, r3117, r3118, r3119, r3120, tail⟩

theorem seg13_scp_node7_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3121 : Seg13.relationRow3121 rho)
    (r3122 : Seg13.relationRow3122 rho)
    (r3123 : Seg13.relationRow3123 rho)
    (r3124 : Seg13.relationRow3124 rho)
    (r3125 : Seg13.relationRow3125 rho)
    (tail : next (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294) (rho 10299) (rho 10304)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg56 (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294) (rho 10299) next := by
  exact ⟨rho 10300, rho 10301, rho 10302, rho 10303, rho 10304, r3121, r3122, r3123, r3124, r3125, tail⟩

theorem seg13_scp_node7_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3126 : Seg13.relationRow3126 rho)
    (r3127 : Seg13.relationRow3127 rho)
    (r3128 : Seg13.relationRow3128 rho)
    (r3129 : Seg13.relationRow3129 rho)
    (r3130 : Seg13.relationRow3130 rho)
    (tail : next (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294) (rho 10299) (rho 10304) (rho 10309)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg57 (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294) (rho 10299) (rho 10304) next := by
  exact ⟨rho 10305, rho 10306, rho 10307, rho 10308, rho 10309, r3126, r3127, r3128, r3129, r3130, tail⟩

theorem seg13_scp_node7_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3131 : Seg13.relationRow3131 rho)
    (r3132 : Seg13.relationRow3132 rho)
    (r3133 : Seg13.relationRow3133 rho)
    (r3134 : Seg13.relationRow3134 rho)
    (r3135 : Seg13.relationRow3135 rho)
    (tail : next (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294) (rho 10299) (rho 10304) (rho 10309) (rho 10314)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg58 (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294) (rho 10299) (rho 10304) (rho 10309) next := by
  exact ⟨rho 10310, rho 10311, rho 10312, rho 10313, rho 10314, r3131, r3132, r3133, r3134, r3135, tail⟩

theorem seg13_scp_node7_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3136 : Seg13.relationRow3136 rho)
    (r3137 : Seg13.relationRow3137 rho)
    (r3138 : Seg13.relationRow3138 rho)
    (r3139 : Seg13.relationRow3139 rho)
    (r3140 : Seg13.relationRow3140 rho)
    (tail : next (rho 10299) (rho 10304) (rho 10309) (rho 10314) (rho 10319)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg59 (rho 10274) (rho 10279) (rho 10284) (rho 10289) (rho 10294) (rho 10299) (rho 10304) (rho 10309) (rho 10314) next := by
  exact ⟨rho 10315, rho 10316, rho 10317, rho 10318, rho 10319, r3136, r3137, r3138, r3139, r3140, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

