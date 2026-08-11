import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node7_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3141 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3141 rho)
    (r3142 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3142 rho)
    (r3143 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3143 rho)
    (r3144 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3144 rho)
    (r3145 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3145 rho)
    (tail : next (rho 3114) (rho 3119) (rho 3124) (rho 3129) (rho 3134) (rho 3139)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg60 (rho 3114) (rho 3119) (rho 3124) (rho 3129) (rho 3134) next := by
  exact ⟨rho 3135, rho 3136, rho 3137, rho 3138, rho 3139, r3141, r3142, r3143, r3144, r3145, tail⟩

theorem template_scp_node7_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3146 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3146 rho)
    (r3147 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3147 rho)
    (r3148 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3148 rho)
    (r3149 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3149 rho)
    (r3150 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3150 rho)
    (tail : next (rho 3114) (rho 3119) (rho 3124) (rho 3129) (rho 3134) (rho 3139) (rho 3144)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg61 (rho 3114) (rho 3119) (rho 3124) (rho 3129) (rho 3134) (rho 3139) next := by
  exact ⟨rho 3140, rho 3141, rho 3142, rho 3143, rho 3144, r3146, r3147, r3148, r3149, r3150, tail⟩

theorem template_scp_node7_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3151 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3151 rho)
    (r3152 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3152 rho)
    (r3153 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3153 rho)
    (r3154 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3154 rho)
    (r3155 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3155 rho)
    (tail : next (rho 3114) (rho 3119) (rho 3124) (rho 3129) (rho 3134) (rho 3139) (rho 3144) (rho 3149)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg62 (rho 3114) (rho 3119) (rho 3124) (rho 3129) (rho 3134) (rho 3139) (rho 3144) next := by
  exact ⟨rho 3145, rho 3146, rho 3147, rho 3148, rho 3149, r3151, r3152, r3153, r3154, r3155, tail⟩

theorem template_scp_node7_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3156 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3156 rho)
    (r3157 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3157 rho)
    (r3158 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3158 rho)
    (r3159 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3159 rho)
    (r3160 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3160 rho)
    (tail : next (rho 3114) (rho 3119) (rho 3124) (rho 3129) (rho 3134) (rho 3139) (rho 3144) (rho 3149) (rho 3154)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg63 (rho 3114) (rho 3119) (rho 3124) (rho 3129) (rho 3134) (rho 3139) (rho 3144) (rho 3149) next := by
  exact ⟨rho 3150, rho 3151, rho 3152, rho 3153, rho 3154, r3156, r3157, r3158, r3159, r3160, tail⟩

theorem template_scp_node7_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3161 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3161 rho)
    (r3162 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3162 rho)
    (r3163 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3163 rho)
    (r3164 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3164 rho)
    (r3165 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3165 rho)
    (tail : next (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg64 (rho 3114) (rho 3119) (rho 3124) (rho 3129) (rho 3134) (rho 3139) (rho 3144) (rho 3149) (rho 3154) next := by
  exact ⟨rho 3155, rho 3156, rho 3157, rho 3158, rho 3159, r3161, r3162, r3163, r3164, r3165, tail⟩

theorem template_scp_node7_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3166 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3166 rho)
    (r3167 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3167 rho)
    (r3168 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3168 rho)
    (r3169 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3169 rho)
    (r3170 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3170 rho)
    (tail : next (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159) (rho 3164)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg65 (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159) next := by
  exact ⟨rho 3160, rho 3161, rho 3162, rho 3163, rho 3164, r3166, r3167, r3168, r3169, r3170, tail⟩

theorem template_scp_node7_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3171 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3171 rho)
    (r3172 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3172 rho)
    (r3173 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3173 rho)
    (r3174 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3174 rho)
    (r3175 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3175 rho)
    (tail : next (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159) (rho 3164) (rho 3169)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg66 (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159) (rho 3164) next := by
  exact ⟨rho 3165, rho 3166, rho 3167, rho 3168, rho 3169, r3171, r3172, r3173, r3174, r3175, tail⟩

theorem template_scp_node7_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3176 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3176 rho)
    (r3177 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3177 rho)
    (r3178 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3178 rho)
    (r3179 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3179 rho)
    (r3180 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3180 rho)
    (tail : next (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159) (rho 3164) (rho 3169) (rho 3174)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg67 (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159) (rho 3164) (rho 3169) next := by
  exact ⟨rho 3170, rho 3171, rho 3172, rho 3173, rho 3174, r3176, r3177, r3178, r3179, r3180, tail⟩

theorem template_scp_node7_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3181 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3181 rho)
    (r3182 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3182 rho)
    (r3183 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3183 rho)
    (r3184 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3184 rho)
    (r3185 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3185 rho)
    (tail : next (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159) (rho 3164) (rho 3169) (rho 3174) (rho 3179)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg68 (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159) (rho 3164) (rho 3169) (rho 3174) next := by
  exact ⟨rho 3175, rho 3176, rho 3177, rho 3178, rho 3179, r3181, r3182, r3183, r3184, r3185, tail⟩

theorem template_scp_node7_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3186 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3186 rho)
    (r3187 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3187 rho)
    (r3188 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3188 rho)
    (r3189 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3189 rho)
    (r3190 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3190 rho)
    (tail : next (rho 3164) (rho 3169) (rho 3174) (rho 3179) (rho 3184)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg69 (rho 3139) (rho 3144) (rho 3149) (rho 3154) (rho 3159) (rho 3164) (rho 3169) (rho 3174) (rho 3179) next := by
  exact ⟨rho 3180, rho 3181, rho 3182, rho 3183, rho 3184, r3186, r3187, r3188, r3189, r3190, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
