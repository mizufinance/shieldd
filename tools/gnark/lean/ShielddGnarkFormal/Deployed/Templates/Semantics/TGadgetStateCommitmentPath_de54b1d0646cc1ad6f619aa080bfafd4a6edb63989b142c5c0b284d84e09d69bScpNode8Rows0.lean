import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node8_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3205 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3205 rho)
    (r3206 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3206 rho)
    (r3207 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3207 rho)
    (r3208 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3208 rho)
    (r3209 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3209 rho)
    (tail : next (rho 3196) (rho 3199) (rho 3197) (rho 3198) (rho 3200) (rho 3201) (rho 3202) (rho 3207)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg0 (rho 3194) (rho 3196) (rho 3199) (rho 3195) (rho 3197) (rho 3198) (rho 3200) (rho 3201) (rho 3202) next := by
  exact ⟨rho 3203, rho 3204, rho 3205, rho 3206, rho 3207, r3205, r3206, r3207, r3208, r3209, tail⟩

theorem template_scp_node8_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3210 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3210 rho)
    (r3211 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3211 rho)
    (r3212 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3212 rho)
    (r3213 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3213 rho)
    (r3214 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3214 rho)
    (tail : next (rho 3196) (rho 3199) (rho 3200) (rho 3201) (rho 3202) (rho 3207) (rho 3212)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg1 (rho 3196) (rho 3199) (rho 3197) (rho 3198) (rho 3200) (rho 3201) (rho 3202) (rho 3207) next := by
  exact ⟨rho 3208, rho 3209, rho 3210, rho 3211, rho 3212, r3210, r3211, r3212, r3213, r3214, tail⟩

theorem template_scp_node8_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3215 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3215 rho)
    (r3216 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3216 rho)
    (r3217 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3217 rho)
    (r3218 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3218 rho)
    (r3219 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3219 rho)
    (tail : next (rho 3199) (rho 3202) (rho 3207) (rho 3212) (rho 3217)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg2 (rho 3196) (rho 3199) (rho 3200) (rho 3201) (rho 3202) (rho 3207) (rho 3212) next := by
  exact ⟨rho 3213, rho 3214, rho 3215, rho 3216, rho 3217, r3215, r3216, r3217, r3218, r3219, tail⟩

theorem template_scp_node8_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r3220 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3220 rho)
    (r3221 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3221 rho)
    (r3222 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3222 rho)
    (r3223 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3223 rho)
    (r3224 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3224 rho)
    (tail : next (rho 3207) (rho 3212) (rho 3217) (rho 3222)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg3 (rho 3199) (rho 3202) (rho 3207) (rho 3212) (rho 3217) next := by
  exact ⟨rho 3218, rho 3219, rho 3220, rho 3221, rho 3222, r3220, r3221, r3222, r3223, r3224, tail⟩

theorem template_scp_node8_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3225 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3225 rho)
    (r3226 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3226 rho)
    (r3227 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3227 rho)
    (r3228 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3228 rho)
    (r3229 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3229 rho)
    (tail : next (rho 3207) (rho 3212) (rho 3217) (rho 3222) (rho 3227)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg4 (rho 3207) (rho 3212) (rho 3217) (rho 3222) next := by
  exact ⟨rho 3223, rho 3224, rho 3225, rho 3226, rho 3227, r3225, r3226, r3227, r3228, r3229, tail⟩

theorem template_scp_node8_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3230 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3230 rho)
    (r3231 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3231 rho)
    (r3232 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3232 rho)
    (r3233 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3233 rho)
    (r3234 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3234 rho)
    (tail : next (rho 3207) (rho 3212) (rho 3217) (rho 3222) (rho 3227) (rho 3232)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg5 (rho 3207) (rho 3212) (rho 3217) (rho 3222) (rho 3227) next := by
  exact ⟨rho 3228, rho 3229, rho 3230, rho 3231, rho 3232, r3230, r3231, r3232, r3233, r3234, tail⟩

theorem template_scp_node8_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3235 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3235 rho)
    (r3236 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3236 rho)
    (r3237 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3237 rho)
    (r3238 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3238 rho)
    (r3239 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3239 rho)
    (tail : next (rho 3207) (rho 3212) (rho 3217) (rho 3222) (rho 3227) (rho 3232) (rho 3237)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg6 (rho 3207) (rho 3212) (rho 3217) (rho 3222) (rho 3227) (rho 3232) next := by
  exact ⟨rho 3233, rho 3234, rho 3235, rho 3236, rho 3237, r3235, r3236, r3237, r3238, r3239, tail⟩

theorem template_scp_node8_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3240 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3240 rho)
    (r3241 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3241 rho)
    (r3242 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3242 rho)
    (r3243 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3243 rho)
    (r3244 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3244 rho)
    (tail : next (rho 3207) (rho 3212) (rho 3217) (rho 3222) (rho 3227) (rho 3232) (rho 3237) (rho 3242)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg7 (rho 3207) (rho 3212) (rho 3217) (rho 3222) (rho 3227) (rho 3232) (rho 3237) next := by
  exact ⟨rho 3238, rho 3239, rho 3240, rho 3241, rho 3242, r3240, r3241, r3242, r3243, r3244, tail⟩

theorem template_scp_node8_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3245 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3245 rho)
    (r3246 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3246 rho)
    (r3247 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3247 rho)
    (r3248 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3248 rho)
    (r3249 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3249 rho)
    (tail : next (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg8 (rho 3207) (rho 3212) (rho 3217) (rho 3222) (rho 3227) (rho 3232) (rho 3237) (rho 3242) next := by
  exact ⟨rho 3243, rho 3244, rho 3245, rho 3246, rho 3247, r3245, r3246, r3247, r3248, r3249, tail⟩

theorem template_scp_node8_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3250 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3250 rho)
    (r3251 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3251 rho)
    (r3252 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3252 rho)
    (r3253 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3253 rho)
    (r3254 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow3254 rho)
    (tail : next (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247) (rho 3252)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg9 (rho 3227) (rho 3232) (rho 3237) (rho 3242) (rho 3247) next := by
  exact ⟨rho 3248, rho 3249, rho 3250, rho 3251, rho 3252, r3250, r3251, r3252, r3253, r3254, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
