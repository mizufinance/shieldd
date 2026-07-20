import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node7_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3091 : Seg28.relationRow3091 rho)
    (r3092 : Seg28.relationRow3092 rho)
    (r3093 : Seg28.relationRow3093 rho)
    (r3094 : Seg28.relationRow3094 rho)
    (r3095 : Seg28.relationRow3095 rho)
    (tail : next (rho 22275) (rho 22280) (rho 22285) (rho 22290) (rho 22295) (rho 22300) (rho 22305) (rho 22310) (rho 22315) (rho 22320) (rho 22325) (rho 22330) (rho 22335) (rho 22340) (rho 22345) (rho 22350) (rho 22355) (rho 22360) (rho 22365) (rho 22370) (rho 22375) (rho 22380) (rho 22385) (rho 22390) (rho 22395) (rho 22400) (rho 22405) (rho 22410) (rho 22415) (rho 22420) (rho 22425) (rho 22430) (rho 22435) (rho 22440) (rho 22445) (rho 22450) (rho 22455)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg50 (rho 22275) (rho 22280) (rho 22285) (rho 22290) (rho 22295) (rho 22300) (rho 22305) (rho 22310) (rho 22315) (rho 22320) (rho 22325) (rho 22330) (rho 22335) (rho 22340) (rho 22345) (rho 22350) (rho 22355) (rho 22360) (rho 22365) (rho 22370) (rho 22375) (rho 22380) (rho 22385) (rho 22390) (rho 22395) (rho 22400) (rho 22405) (rho 22410) (rho 22415) (rho 22420) (rho 22425) (rho 22430) (rho 22435) (rho 22440) (rho 22445) (rho 22450) next := by
  exact ⟨rho 22451, rho 22452, rho 22453, rho 22454, rho 22455, r3091, r3092, r3093, r3094, r3095, tail⟩

theorem seg28_scp_node7_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3096 : Seg28.relationRow3096 rho)
    (r3097 : Seg28.relationRow3097 rho)
    (r3098 : Seg28.relationRow3098 rho)
    (r3099 : Seg28.relationRow3099 rho)
    (r3100 : Seg28.relationRow3100 rho)
    (tail : next (rho 22275) (rho 22280) (rho 22285) (rho 22290) (rho 22295) (rho 22300) (rho 22305) (rho 22310) (rho 22315) (rho 22320) (rho 22325) (rho 22330) (rho 22335) (rho 22340) (rho 22345) (rho 22350) (rho 22355) (rho 22360) (rho 22365) (rho 22370) (rho 22375) (rho 22380) (rho 22385) (rho 22390) (rho 22395) (rho 22400) (rho 22405) (rho 22410) (rho 22415) (rho 22420) (rho 22425) (rho 22430) (rho 22435) (rho 22440) (rho 22445) (rho 22450) (rho 22455) (rho 22460)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg51 (rho 22275) (rho 22280) (rho 22285) (rho 22290) (rho 22295) (rho 22300) (rho 22305) (rho 22310) (rho 22315) (rho 22320) (rho 22325) (rho 22330) (rho 22335) (rho 22340) (rho 22345) (rho 22350) (rho 22355) (rho 22360) (rho 22365) (rho 22370) (rho 22375) (rho 22380) (rho 22385) (rho 22390) (rho 22395) (rho 22400) (rho 22405) (rho 22410) (rho 22415) (rho 22420) (rho 22425) (rho 22430) (rho 22435) (rho 22440) (rho 22445) (rho 22450) (rho 22455) next := by
  exact ⟨rho 22456, rho 22457, rho 22458, rho 22459, rho 22460, r3096, r3097, r3098, r3099, r3100, tail⟩

theorem seg28_scp_node7_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3101 : Seg28.relationRow3101 rho)
    (r3102 : Seg28.relationRow3102 rho)
    (r3103 : Seg28.relationRow3103 rho)
    (r3104 : Seg28.relationRow3104 rho)
    (r3105 : Seg28.relationRow3105 rho)
    (tail : next (rho 22275) (rho 22280) (rho 22285) (rho 22290) (rho 22295) (rho 22300) (rho 22305) (rho 22310) (rho 22315) (rho 22320) (rho 22325) (rho 22330) (rho 22335) (rho 22340) (rho 22345) (rho 22350) (rho 22355) (rho 22360) (rho 22365) (rho 22370) (rho 22375) (rho 22380) (rho 22385) (rho 22390) (rho 22395) (rho 22400) (rho 22405) (rho 22410) (rho 22415) (rho 22420) (rho 22425) (rho 22430) (rho 22435) (rho 22440) (rho 22445) (rho 22450) (rho 22455) (rho 22460) (rho 22465)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg52 (rho 22275) (rho 22280) (rho 22285) (rho 22290) (rho 22295) (rho 22300) (rho 22305) (rho 22310) (rho 22315) (rho 22320) (rho 22325) (rho 22330) (rho 22335) (rho 22340) (rho 22345) (rho 22350) (rho 22355) (rho 22360) (rho 22365) (rho 22370) (rho 22375) (rho 22380) (rho 22385) (rho 22390) (rho 22395) (rho 22400) (rho 22405) (rho 22410) (rho 22415) (rho 22420) (rho 22425) (rho 22430) (rho 22435) (rho 22440) (rho 22445) (rho 22450) (rho 22455) (rho 22460) next := by
  exact ⟨rho 22461, rho 22462, rho 22463, rho 22464, rho 22465, r3101, r3102, r3103, r3104, r3105, tail⟩

theorem seg28_scp_node7_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3106 : Seg28.relationRow3106 rho)
    (r3107 : Seg28.relationRow3107 rho)
    (r3108 : Seg28.relationRow3108 rho)
    (r3109 : Seg28.relationRow3109 rho)
    (r3110 : Seg28.relationRow3110 rho)
    (tail : next (rho 22275) (rho 22280) (rho 22285) (rho 22290) (rho 22295) (rho 22300) (rho 22305) (rho 22310) (rho 22315) (rho 22320) (rho 22325) (rho 22330) (rho 22335) (rho 22340) (rho 22345) (rho 22350) (rho 22355) (rho 22360) (rho 22365) (rho 22370) (rho 22375) (rho 22380) (rho 22385) (rho 22390) (rho 22395) (rho 22400) (rho 22405) (rho 22410) (rho 22415) (rho 22420) (rho 22425) (rho 22430) (rho 22435) (rho 22440) (rho 22445) (rho 22450) (rho 22455) (rho 22460) (rho 22465) (rho 22470)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg53 (rho 22275) (rho 22280) (rho 22285) (rho 22290) (rho 22295) (rho 22300) (rho 22305) (rho 22310) (rho 22315) (rho 22320) (rho 22325) (rho 22330) (rho 22335) (rho 22340) (rho 22345) (rho 22350) (rho 22355) (rho 22360) (rho 22365) (rho 22370) (rho 22375) (rho 22380) (rho 22385) (rho 22390) (rho 22395) (rho 22400) (rho 22405) (rho 22410) (rho 22415) (rho 22420) (rho 22425) (rho 22430) (rho 22435) (rho 22440) (rho 22445) (rho 22450) (rho 22455) (rho 22460) (rho 22465) next := by
  exact ⟨rho 22466, rho 22467, rho 22468, rho 22469, rho 22470, r3106, r3107, r3108, r3109, r3110, tail⟩

theorem seg28_scp_node7_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3111 : Seg28.relationRow3111 rho)
    (r3112 : Seg28.relationRow3112 rho)
    (r3113 : Seg28.relationRow3113 rho)
    (r3114 : Seg28.relationRow3114 rho)
    (r3115 : Seg28.relationRow3115 rho)
    (tail : next (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg54 (rho 22275) (rho 22280) (rho 22285) (rho 22290) (rho 22295) (rho 22300) (rho 22305) (rho 22310) (rho 22315) (rho 22320) (rho 22325) (rho 22330) (rho 22335) (rho 22340) (rho 22345) (rho 22350) (rho 22355) (rho 22360) (rho 22365) (rho 22370) (rho 22375) (rho 22380) (rho 22385) (rho 22390) (rho 22395) (rho 22400) (rho 22405) (rho 22410) (rho 22415) (rho 22420) (rho 22425) (rho 22430) (rho 22435) (rho 22440) (rho 22445) (rho 22450) (rho 22455) (rho 22460) (rho 22465) (rho 22470) next := by
  exact ⟨rho 22471, rho 22472, rho 22473, rho 22474, rho 22475, r3111, r3112, r3113, r3114, r3115, tail⟩

theorem seg28_scp_node7_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3116 : Seg28.relationRow3116 rho)
    (r3117 : Seg28.relationRow3117 rho)
    (r3118 : Seg28.relationRow3118 rho)
    (r3119 : Seg28.relationRow3119 rho)
    (r3120 : Seg28.relationRow3120 rho)
    (tail : next (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475) (rho 22480)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg55 (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475) next := by
  exact ⟨rho 22476, rho 22477, rho 22478, rho 22479, rho 22480, r3116, r3117, r3118, r3119, r3120, tail⟩

theorem seg28_scp_node7_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3121 : Seg28.relationRow3121 rho)
    (r3122 : Seg28.relationRow3122 rho)
    (r3123 : Seg28.relationRow3123 rho)
    (r3124 : Seg28.relationRow3124 rho)
    (r3125 : Seg28.relationRow3125 rho)
    (tail : next (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475) (rho 22480) (rho 22485)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg56 (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475) (rho 22480) next := by
  exact ⟨rho 22481, rho 22482, rho 22483, rho 22484, rho 22485, r3121, r3122, r3123, r3124, r3125, tail⟩

theorem seg28_scp_node7_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3126 : Seg28.relationRow3126 rho)
    (r3127 : Seg28.relationRow3127 rho)
    (r3128 : Seg28.relationRow3128 rho)
    (r3129 : Seg28.relationRow3129 rho)
    (r3130 : Seg28.relationRow3130 rho)
    (tail : next (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475) (rho 22480) (rho 22485) (rho 22490)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg57 (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475) (rho 22480) (rho 22485) next := by
  exact ⟨rho 22486, rho 22487, rho 22488, rho 22489, rho 22490, r3126, r3127, r3128, r3129, r3130, tail⟩

theorem seg28_scp_node7_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3131 : Seg28.relationRow3131 rho)
    (r3132 : Seg28.relationRow3132 rho)
    (r3133 : Seg28.relationRow3133 rho)
    (r3134 : Seg28.relationRow3134 rho)
    (r3135 : Seg28.relationRow3135 rho)
    (tail : next (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475) (rho 22480) (rho 22485) (rho 22490) (rho 22495)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg58 (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475) (rho 22480) (rho 22485) (rho 22490) next := by
  exact ⟨rho 22491, rho 22492, rho 22493, rho 22494, rho 22495, r3131, r3132, r3133, r3134, r3135, tail⟩

theorem seg28_scp_node7_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3136 : Seg28.relationRow3136 rho)
    (r3137 : Seg28.relationRow3137 rho)
    (r3138 : Seg28.relationRow3138 rho)
    (r3139 : Seg28.relationRow3139 rho)
    (r3140 : Seg28.relationRow3140 rho)
    (tail : next (rho 22480) (rho 22485) (rho 22490) (rho 22495) (rho 22500)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg59 (rho 22455) (rho 22460) (rho 22465) (rho 22470) (rho 22475) (rho 22480) (rho 22485) (rho 22490) (rho 22495) next := by
  exact ⟨rho 22496, rho 22497, rho 22498, rho 22499, rho 22500, r3136, r3137, r3138, r3139, r3140, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

