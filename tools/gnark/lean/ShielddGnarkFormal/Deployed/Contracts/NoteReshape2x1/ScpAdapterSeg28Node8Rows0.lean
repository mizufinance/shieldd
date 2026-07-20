import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node8_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3205 : Seg28.relationRow3205 rho)
    (r3206 : Seg28.relationRow3206 rho)
    (r3207 : Seg28.relationRow3207 rho)
    (r3208 : Seg28.relationRow3208 rho)
    (r3209 : Seg28.relationRow3209 rho)
    (tail : next (rho 158) (rho 159) (rho 22556) (rho 22557) (rho 22558) (rho 22559) (rho 22560) (rho 22565)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg0 (rho 157) (rho 158) (rho 159) (rho 22555) (rho 22556) (rho 22557) (rho 22558) (rho 22559) (rho 22560) next := by
  exact ⟨rho 22561, rho 22562, rho 22563, rho 22564, rho 22565, r3205, r3206, r3207, r3208, r3209, tail⟩

theorem seg28_scp_node8_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3210 : Seg28.relationRow3210 rho)
    (r3211 : Seg28.relationRow3211 rho)
    (r3212 : Seg28.relationRow3212 rho)
    (r3213 : Seg28.relationRow3213 rho)
    (r3214 : Seg28.relationRow3214 rho)
    (tail : next (rho 158) (rho 159) (rho 22558) (rho 22559) (rho 22560) (rho 22565) (rho 22570)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg1 (rho 158) (rho 159) (rho 22556) (rho 22557) (rho 22558) (rho 22559) (rho 22560) (rho 22565) next := by
  exact ⟨rho 22566, rho 22567, rho 22568, rho 22569, rho 22570, r3210, r3211, r3212, r3213, r3214, tail⟩

theorem seg28_scp_node8_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3215 : Seg28.relationRow3215 rho)
    (r3216 : Seg28.relationRow3216 rho)
    (r3217 : Seg28.relationRow3217 rho)
    (r3218 : Seg28.relationRow3218 rho)
    (r3219 : Seg28.relationRow3219 rho)
    (tail : next (rho 159) (rho 22560) (rho 22565) (rho 22570) (rho 22575)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg2 (rho 158) (rho 159) (rho 22558) (rho 22559) (rho 22560) (rho 22565) (rho 22570) next := by
  exact ⟨rho 22571, rho 22572, rho 22573, rho 22574, rho 22575, r3215, r3216, r3217, r3218, r3219, tail⟩

theorem seg28_scp_node8_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3220 : Seg28.relationRow3220 rho)
    (r3221 : Seg28.relationRow3221 rho)
    (r3222 : Seg28.relationRow3222 rho)
    (r3223 : Seg28.relationRow3223 rho)
    (r3224 : Seg28.relationRow3224 rho)
    (tail : next (rho 22565) (rho 22570) (rho 22575) (rho 22580)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg3 (rho 159) (rho 22560) (rho 22565) (rho 22570) (rho 22575) next := by
  exact ⟨rho 22576, rho 22577, rho 22578, rho 22579, rho 22580, r3220, r3221, r3222, r3223, r3224, tail⟩

theorem seg28_scp_node8_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3225 : Seg28.relationRow3225 rho)
    (r3226 : Seg28.relationRow3226 rho)
    (r3227 : Seg28.relationRow3227 rho)
    (r3228 : Seg28.relationRow3228 rho)
    (r3229 : Seg28.relationRow3229 rho)
    (tail : next (rho 22565) (rho 22570) (rho 22575) (rho 22580) (rho 22585)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg4 (rho 22565) (rho 22570) (rho 22575) (rho 22580) next := by
  exact ⟨rho 22581, rho 22582, rho 22583, rho 22584, rho 22585, r3225, r3226, r3227, r3228, r3229, tail⟩

theorem seg28_scp_node8_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3230 : Seg28.relationRow3230 rho)
    (r3231 : Seg28.relationRow3231 rho)
    (r3232 : Seg28.relationRow3232 rho)
    (r3233 : Seg28.relationRow3233 rho)
    (r3234 : Seg28.relationRow3234 rho)
    (tail : next (rho 22565) (rho 22570) (rho 22575) (rho 22580) (rho 22585) (rho 22590)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg5 (rho 22565) (rho 22570) (rho 22575) (rho 22580) (rho 22585) next := by
  exact ⟨rho 22586, rho 22587, rho 22588, rho 22589, rho 22590, r3230, r3231, r3232, r3233, r3234, tail⟩

theorem seg28_scp_node8_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3235 : Seg28.relationRow3235 rho)
    (r3236 : Seg28.relationRow3236 rho)
    (r3237 : Seg28.relationRow3237 rho)
    (r3238 : Seg28.relationRow3238 rho)
    (r3239 : Seg28.relationRow3239 rho)
    (tail : next (rho 22565) (rho 22570) (rho 22575) (rho 22580) (rho 22585) (rho 22590) (rho 22595)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg6 (rho 22565) (rho 22570) (rho 22575) (rho 22580) (rho 22585) (rho 22590) next := by
  exact ⟨rho 22591, rho 22592, rho 22593, rho 22594, rho 22595, r3235, r3236, r3237, r3238, r3239, tail⟩

theorem seg28_scp_node8_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3240 : Seg28.relationRow3240 rho)
    (r3241 : Seg28.relationRow3241 rho)
    (r3242 : Seg28.relationRow3242 rho)
    (r3243 : Seg28.relationRow3243 rho)
    (r3244 : Seg28.relationRow3244 rho)
    (tail : next (rho 22565) (rho 22570) (rho 22575) (rho 22580) (rho 22585) (rho 22590) (rho 22595) (rho 22600)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg7 (rho 22565) (rho 22570) (rho 22575) (rho 22580) (rho 22585) (rho 22590) (rho 22595) next := by
  exact ⟨rho 22596, rho 22597, rho 22598, rho 22599, rho 22600, r3240, r3241, r3242, r3243, r3244, tail⟩

theorem seg28_scp_node8_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3245 : Seg28.relationRow3245 rho)
    (r3246 : Seg28.relationRow3246 rho)
    (r3247 : Seg28.relationRow3247 rho)
    (r3248 : Seg28.relationRow3248 rho)
    (r3249 : Seg28.relationRow3249 rho)
    (tail : next (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg8 (rho 22565) (rho 22570) (rho 22575) (rho 22580) (rho 22585) (rho 22590) (rho 22595) (rho 22600) next := by
  exact ⟨rho 22601, rho 22602, rho 22603, rho 22604, rho 22605, r3245, r3246, r3247, r3248, r3249, tail⟩

theorem seg28_scp_node8_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3250 : Seg28.relationRow3250 rho)
    (r3251 : Seg28.relationRow3251 rho)
    (r3252 : Seg28.relationRow3252 rho)
    (r3253 : Seg28.relationRow3253 rho)
    (r3254 : Seg28.relationRow3254 rho)
    (tail : next (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605) (rho 22610)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg9 (rho 22585) (rho 22590) (rho 22595) (rho 22600) (rho 22605) next := by
  exact ⟨rho 22606, rho 22607, rho 22608, rho 22609, rho 22610, r3250, r3251, r3252, r3253, r3254, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

