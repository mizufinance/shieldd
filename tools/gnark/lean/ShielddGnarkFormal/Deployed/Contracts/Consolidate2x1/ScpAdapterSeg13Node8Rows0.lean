import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node8_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3205 : Seg13.relationRow3205 rho)
    (r3206 : Seg13.relationRow3206 rho)
    (r3207 : Seg13.relationRow3207 rho)
    (r3208 : Seg13.relationRow3208 rho)
    (r3209 : Seg13.relationRow3209 rho)
    (tail : next (rho 71) (rho 72) (rho 10381) (rho 10382) (rho 10383) (rho 10384) (rho 10385) (rho 10390)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg0 (rho 70) (rho 71) (rho 72) (rho 10380) (rho 10381) (rho 10382) (rho 10383) (rho 10384) (rho 10385) next := by
  exact ⟨rho 10386, rho 10387, rho 10388, rho 10389, rho 10390, r3205, r3206, r3207, r3208, r3209, tail⟩

theorem seg13_scp_node8_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3210 : Seg13.relationRow3210 rho)
    (r3211 : Seg13.relationRow3211 rho)
    (r3212 : Seg13.relationRow3212 rho)
    (r3213 : Seg13.relationRow3213 rho)
    (r3214 : Seg13.relationRow3214 rho)
    (tail : next (rho 71) (rho 72) (rho 10383) (rho 10384) (rho 10385) (rho 10390) (rho 10395)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg1 (rho 71) (rho 72) (rho 10381) (rho 10382) (rho 10383) (rho 10384) (rho 10385) (rho 10390) next := by
  exact ⟨rho 10391, rho 10392, rho 10393, rho 10394, rho 10395, r3210, r3211, r3212, r3213, r3214, tail⟩

theorem seg13_scp_node8_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3215 : Seg13.relationRow3215 rho)
    (r3216 : Seg13.relationRow3216 rho)
    (r3217 : Seg13.relationRow3217 rho)
    (r3218 : Seg13.relationRow3218 rho)
    (r3219 : Seg13.relationRow3219 rho)
    (tail : next (rho 72) (rho 10385) (rho 10390) (rho 10395) (rho 10400)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg2 (rho 71) (rho 72) (rho 10383) (rho 10384) (rho 10385) (rho 10390) (rho 10395) next := by
  exact ⟨rho 10396, rho 10397, rho 10398, rho 10399, rho 10400, r3215, r3216, r3217, r3218, r3219, tail⟩

theorem seg13_scp_node8_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3220 : Seg13.relationRow3220 rho)
    (r3221 : Seg13.relationRow3221 rho)
    (r3222 : Seg13.relationRow3222 rho)
    (r3223 : Seg13.relationRow3223 rho)
    (r3224 : Seg13.relationRow3224 rho)
    (tail : next (rho 10390) (rho 10395) (rho 10400) (rho 10405)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg3 (rho 72) (rho 10385) (rho 10390) (rho 10395) (rho 10400) next := by
  exact ⟨rho 10401, rho 10402, rho 10403, rho 10404, rho 10405, r3220, r3221, r3222, r3223, r3224, tail⟩

theorem seg13_scp_node8_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3225 : Seg13.relationRow3225 rho)
    (r3226 : Seg13.relationRow3226 rho)
    (r3227 : Seg13.relationRow3227 rho)
    (r3228 : Seg13.relationRow3228 rho)
    (r3229 : Seg13.relationRow3229 rho)
    (tail : next (rho 10390) (rho 10395) (rho 10400) (rho 10405) (rho 10410)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg4 (rho 10390) (rho 10395) (rho 10400) (rho 10405) next := by
  exact ⟨rho 10406, rho 10407, rho 10408, rho 10409, rho 10410, r3225, r3226, r3227, r3228, r3229, tail⟩

theorem seg13_scp_node8_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3230 : Seg13.relationRow3230 rho)
    (r3231 : Seg13.relationRow3231 rho)
    (r3232 : Seg13.relationRow3232 rho)
    (r3233 : Seg13.relationRow3233 rho)
    (r3234 : Seg13.relationRow3234 rho)
    (tail : next (rho 10390) (rho 10395) (rho 10400) (rho 10405) (rho 10410) (rho 10415)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg5 (rho 10390) (rho 10395) (rho 10400) (rho 10405) (rho 10410) next := by
  exact ⟨rho 10411, rho 10412, rho 10413, rho 10414, rho 10415, r3230, r3231, r3232, r3233, r3234, tail⟩

theorem seg13_scp_node8_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3235 : Seg13.relationRow3235 rho)
    (r3236 : Seg13.relationRow3236 rho)
    (r3237 : Seg13.relationRow3237 rho)
    (r3238 : Seg13.relationRow3238 rho)
    (r3239 : Seg13.relationRow3239 rho)
    (tail : next (rho 10390) (rho 10395) (rho 10400) (rho 10405) (rho 10410) (rho 10415) (rho 10420)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg6 (rho 10390) (rho 10395) (rho 10400) (rho 10405) (rho 10410) (rho 10415) next := by
  exact ⟨rho 10416, rho 10417, rho 10418, rho 10419, rho 10420, r3235, r3236, r3237, r3238, r3239, tail⟩

theorem seg13_scp_node8_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3240 : Seg13.relationRow3240 rho)
    (r3241 : Seg13.relationRow3241 rho)
    (r3242 : Seg13.relationRow3242 rho)
    (r3243 : Seg13.relationRow3243 rho)
    (r3244 : Seg13.relationRow3244 rho)
    (tail : next (rho 10390) (rho 10395) (rho 10400) (rho 10405) (rho 10410) (rho 10415) (rho 10420) (rho 10425)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg7 (rho 10390) (rho 10395) (rho 10400) (rho 10405) (rho 10410) (rho 10415) (rho 10420) next := by
  exact ⟨rho 10421, rho 10422, rho 10423, rho 10424, rho 10425, r3240, r3241, r3242, r3243, r3244, tail⟩

theorem seg13_scp_node8_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3245 : Seg13.relationRow3245 rho)
    (r3246 : Seg13.relationRow3246 rho)
    (r3247 : Seg13.relationRow3247 rho)
    (r3248 : Seg13.relationRow3248 rho)
    (r3249 : Seg13.relationRow3249 rho)
    (tail : next (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg8 (rho 10390) (rho 10395) (rho 10400) (rho 10405) (rho 10410) (rho 10415) (rho 10420) (rho 10425) next := by
  exact ⟨rho 10426, rho 10427, rho 10428, rho 10429, rho 10430, r3245, r3246, r3247, r3248, r3249, tail⟩

theorem seg13_scp_node8_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3250 : Seg13.relationRow3250 rho)
    (r3251 : Seg13.relationRow3251 rho)
    (r3252 : Seg13.relationRow3252 rho)
    (r3253 : Seg13.relationRow3253 rho)
    (r3254 : Seg13.relationRow3254 rho)
    (tail : next (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430) (rho 10435)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg9 (rho 10410) (rho 10415) (rho 10420) (rho 10425) (rho 10430) next := by
  exact ⟨rho 10431, rho 10432, rho 10433, rho 10434, rho 10435, r3250, r3251, r3252, r3253, r3254, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

