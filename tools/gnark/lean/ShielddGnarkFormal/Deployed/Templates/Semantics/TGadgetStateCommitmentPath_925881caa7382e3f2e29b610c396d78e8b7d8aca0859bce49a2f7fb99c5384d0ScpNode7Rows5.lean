import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node7_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3091 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3091 rho)
    (r3092 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3092 rho)
    (r3093 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3093 rho)
    (r3094 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3094 rho)
    (r3095 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3095 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990) (rho 2995) (rho 3000) (rho 3005) (rho 3010) (rho 3015) (rho 3020) (rho 3025) (rho 3030) (rho 3035) (rho 3040) (rho 3045) (rho 3050) (rho 3055) (rho 3060) (rho 3065) (rho 3070) (rho 3075) (rho 3080) (rho 3085) (rho 3090) (rho 3095)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg50 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990) (rho 2995) (rho 3000) (rho 3005) (rho 3010) (rho 3015) (rho 3020) (rho 3025) (rho 3030) (rho 3035) (rho 3040) (rho 3045) (rho 3050) (rho 3055) (rho 3060) (rho 3065) (rho 3070) (rho 3075) (rho 3080) (rho 3085) (rho 3090) next := by
  exact ⟨rho 3091, rho 3092, rho 3093, rho 3094, rho 3095, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3091 at r3091; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc71, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc71Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc71Part1] at r3091; linear_combination r3091), r3092, r3093, r3094, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3095 at r3095; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc71, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc71Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc71Part1] at r3095; linear_combination r3095), tail⟩

theorem template_scp_node7_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3096 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3096 rho)
    (r3097 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3097 rho)
    (r3098 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3098 rho)
    (r3099 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3099 rho)
    (r3100 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3100 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990) (rho 2995) (rho 3000) (rho 3005) (rho 3010) (rho 3015) (rho 3020) (rho 3025) (rho 3030) (rho 3035) (rho 3040) (rho 3045) (rho 3050) (rho 3055) (rho 3060) (rho 3065) (rho 3070) (rho 3075) (rho 3080) (rho 3085) (rho 3090) (rho 3095) (rho 3100)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg51 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990) (rho 2995) (rho 3000) (rho 3005) (rho 3010) (rho 3015) (rho 3020) (rho 3025) (rho 3030) (rho 3035) (rho 3040) (rho 3045) (rho 3050) (rho 3055) (rho 3060) (rho 3065) (rho 3070) (rho 3075) (rho 3080) (rho 3085) (rho 3090) (rho 3095) next := by
  exact ⟨rho 3096, rho 3097, rho 3098, rho 3099, rho 3100, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3096 at r3096; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc72, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc72Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc72Part1] at r3096; linear_combination r3096), r3097, r3098, r3099, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3100 at r3100; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc72, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc72Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc72Part1] at r3100; linear_combination r3100), tail⟩

theorem template_scp_node7_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3101 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3101 rho)
    (r3102 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3102 rho)
    (r3103 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3103 rho)
    (r3104 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3104 rho)
    (r3105 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3105 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990) (rho 2995) (rho 3000) (rho 3005) (rho 3010) (rho 3015) (rho 3020) (rho 3025) (rho 3030) (rho 3035) (rho 3040) (rho 3045) (rho 3050) (rho 3055) (rho 3060) (rho 3065) (rho 3070) (rho 3075) (rho 3080) (rho 3085) (rho 3090) (rho 3095) (rho 3100) (rho 3105)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg52 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990) (rho 2995) (rho 3000) (rho 3005) (rho 3010) (rho 3015) (rho 3020) (rho 3025) (rho 3030) (rho 3035) (rho 3040) (rho 3045) (rho 3050) (rho 3055) (rho 3060) (rho 3065) (rho 3070) (rho 3075) (rho 3080) (rho 3085) (rho 3090) (rho 3095) (rho 3100) next := by
  exact ⟨rho 3101, rho 3102, rho 3103, rho 3104, rho 3105, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3101 at r3101; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc73, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc73Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc73Part1] at r3101; linear_combination r3101), r3102, r3103, r3104, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3105 at r3105; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc73, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc73Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc73Part1] at r3105; linear_combination r3105), tail⟩

theorem template_scp_node7_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r3106 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3106 rho)
    (r3107 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3107 rho)
    (r3108 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3108 rho)
    (r3109 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3109 rho)
    (r3110 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3110 rho)
    (tail : next (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990) (rho 2995) (rho 3000) (rho 3005) (rho 3010) (rho 3015) (rho 3020) (rho 3025) (rho 3030) (rho 3035) (rho 3040) (rho 3045) (rho 3050) (rho 3055) (rho 3060) (rho 3065) (rho 3070) (rho 3075) (rho 3080) (rho 3085) (rho 3090) (rho 3095) (rho 3100) (rho 3105) (rho 3110)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg53 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990) (rho 2995) (rho 3000) (rho 3005) (rho 3010) (rho 3015) (rho 3020) (rho 3025) (rho 3030) (rho 3035) (rho 3040) (rho 3045) (rho 3050) (rho 3055) (rho 3060) (rho 3065) (rho 3070) (rho 3075) (rho 3080) (rho 3085) (rho 3090) (rho 3095) (rho 3100) (rho 3105) next := by
  exact ⟨rho 3106, rho 3107, rho 3108, rho 3109, rho 3110, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3106 at r3106; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc74, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc74Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc74Part1] at r3106; linear_combination r3106), r3107, r3108, r3109, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3110 at r3110; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc74, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc74Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc74Part1] at r3110; linear_combination r3110), tail⟩

theorem template_scp_node7_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3111 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3111 rho)
    (r3112 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3112 rho)
    (r3113 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3113 rho)
    (r3114 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3114 rho)
    (r3115 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3115 rho)
    (tail : next (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg54 (rho 2915) (rho 2920) (rho 2925) (rho 2930) (rho 2935) (rho 2940) (rho 2945) (rho 2950) (rho 2955) (rho 2960) (rho 2965) (rho 2970) (rho 2975) (rho 2980) (rho 2985) (rho 2990) (rho 2995) (rho 3000) (rho 3005) (rho 3010) (rho 3015) (rho 3020) (rho 3025) (rho 3030) (rho 3035) (rho 3040) (rho 3045) (rho 3050) (rho 3055) (rho 3060) (rho 3065) (rho 3070) (rho 3075) (rho 3080) (rho 3085) (rho 3090) (rho 3095) (rho 3100) (rho 3105) (rho 3110) next := by
  exact ⟨rho 3111, rho 3112, rho 3113, rho 3114, rho 3115, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3111 at r3111; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc75, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc75Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc75Part1] at r3111; linear_combination r3111), r3112, r3113, r3114, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3115 at r3115; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc75, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc75Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc75Part1] at r3115; linear_combination r3115), tail⟩

theorem template_scp_node7_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3116 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3116 rho)
    (r3117 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3117 rho)
    (r3118 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3118 rho)
    (r3119 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3119 rho)
    (r3120 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3120 rho)
    (tail : next (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115) (rho 3120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg55 (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115) next := by
  exact ⟨rho 3116, rho 3117, rho 3118, rho 3119, rho 3120, r3116, r3117, r3118, r3119, r3120, tail⟩

theorem template_scp_node7_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3121 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3121 rho)
    (r3122 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3122 rho)
    (r3123 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3123 rho)
    (r3124 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3124 rho)
    (r3125 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3125 rho)
    (tail : next (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115) (rho 3120) (rho 3125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg56 (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115) (rho 3120) next := by
  exact ⟨rho 3121, rho 3122, rho 3123, rho 3124, rho 3125, r3121, r3122, r3123, r3124, r3125, tail⟩

theorem template_scp_node7_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3126 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3126 rho)
    (r3127 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3127 rho)
    (r3128 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3128 rho)
    (r3129 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3129 rho)
    (r3130 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3130 rho)
    (tail : next (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115) (rho 3120) (rho 3125) (rho 3130)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg57 (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115) (rho 3120) (rho 3125) next := by
  exact ⟨rho 3126, rho 3127, rho 3128, rho 3129, rho 3130, r3126, r3127, r3128, r3129, r3130, tail⟩

theorem template_scp_node7_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3131 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3131 rho)
    (r3132 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3132 rho)
    (r3133 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3133 rho)
    (r3134 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3134 rho)
    (r3135 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3135 rho)
    (tail : next (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115) (rho 3120) (rho 3125) (rho 3130) (rho 3135)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg58 (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115) (rho 3120) (rho 3125) (rho 3130) next := by
  exact ⟨rho 3131, rho 3132, rho 3133, rho 3134, rho 3135, r3131, r3132, r3133, r3134, r3135, tail⟩

theorem template_scp_node7_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3136 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3136 rho)
    (r3137 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3137 rho)
    (r3138 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3138 rho)
    (r3139 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3139 rho)
    (r3140 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3140 rho)
    (tail : next (rho 3120) (rho 3125) (rho 3130) (rho 3135) (rho 3140)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg59 (rho 3095) (rho 3100) (rho 3105) (rho 3110) (rho 3115) (rho 3120) (rho 3125) (rho 3130) (rho 3135) next := by
  exact ⟨rho 3136, rho 3137, rho 3138, rho 3139, rho 3140, r3136, r3137, r3138, r3139, r3140, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
