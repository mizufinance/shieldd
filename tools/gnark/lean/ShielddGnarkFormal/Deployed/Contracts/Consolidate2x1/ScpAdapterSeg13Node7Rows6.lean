import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node7_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3141 : Seg13.relationRow3141 rho)
    (r3142 : Seg13.relationRow3142 rho)
    (r3143 : Seg13.relationRow3143 rho)
    (r3144 : Seg13.relationRow3144 rho)
    (r3145 : Seg13.relationRow3145 rho)
    (tail : next (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325) (rho 10330)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg60 (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325) next := by
  exact ⟨rho 10326, rho 10327, rho 10328, rho 10329, rho 10330, r3141, r3142, r3143, r3144, r3145, tail⟩

theorem seg13_scp_node7_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3146 : Seg13.relationRow3146 rho)
    (r3147 : Seg13.relationRow3147 rho)
    (r3148 : Seg13.relationRow3148 rho)
    (r3149 : Seg13.relationRow3149 rho)
    (r3150 : Seg13.relationRow3150 rho)
    (tail : next (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325) (rho 10330) (rho 10335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg61 (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325) (rho 10330) next := by
  exact ⟨rho 10331, rho 10332, rho 10333, rho 10334, rho 10335, r3146, r3147, r3148, r3149, r3150, tail⟩

theorem seg13_scp_node7_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3151 : Seg13.relationRow3151 rho)
    (r3152 : Seg13.relationRow3152 rho)
    (r3153 : Seg13.relationRow3153 rho)
    (r3154 : Seg13.relationRow3154 rho)
    (r3155 : Seg13.relationRow3155 rho)
    (tail : next (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325) (rho 10330) (rho 10335) (rho 10340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg62 (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325) (rho 10330) (rho 10335) next := by
  exact ⟨rho 10336, rho 10337, rho 10338, rho 10339, rho 10340, r3151, r3152, r3153, r3154, r3155, tail⟩

theorem seg13_scp_node7_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3156 : Seg13.relationRow3156 rho)
    (r3157 : Seg13.relationRow3157 rho)
    (r3158 : Seg13.relationRow3158 rho)
    (r3159 : Seg13.relationRow3159 rho)
    (r3160 : Seg13.relationRow3160 rho)
    (tail : next (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325) (rho 10330) (rho 10335) (rho 10340) (rho 10345)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg63 (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325) (rho 10330) (rho 10335) (rho 10340) next := by
  exact ⟨rho 10341, rho 10342, rho 10343, rho 10344, rho 10345, r3156, r3157, r3158, r3159, r3160, tail⟩

theorem seg13_scp_node7_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3161 : Seg13.relationRow3161 rho)
    (r3162 : Seg13.relationRow3162 rho)
    (r3163 : Seg13.relationRow3163 rho)
    (r3164 : Seg13.relationRow3164 rho)
    (r3165 : Seg13.relationRow3165 rho)
    (tail : next (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg64 (rho 10305) (rho 10310) (rho 10315) (rho 10320) (rho 10325) (rho 10330) (rho 10335) (rho 10340) (rho 10345) next := by
  exact ⟨rho 10346, rho 10347, rho 10348, rho 10349, rho 10350, r3161, r3162, r3163, r3164, r3165, tail⟩

theorem seg13_scp_node7_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3166 : Seg13.relationRow3166 rho)
    (r3167 : Seg13.relationRow3167 rho)
    (r3168 : Seg13.relationRow3168 rho)
    (r3169 : Seg13.relationRow3169 rho)
    (r3170 : Seg13.relationRow3170 rho)
    (tail : next (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350) (rho 10355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg65 (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350) next := by
  exact ⟨rho 10351, rho 10352, rho 10353, rho 10354, rho 10355, r3166, r3167, r3168, r3169, r3170, tail⟩

theorem seg13_scp_node7_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3171 : Seg13.relationRow3171 rho)
    (r3172 : Seg13.relationRow3172 rho)
    (r3173 : Seg13.relationRow3173 rho)
    (r3174 : Seg13.relationRow3174 rho)
    (r3175 : Seg13.relationRow3175 rho)
    (tail : next (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350) (rho 10355) (rho 10360)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg66 (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350) (rho 10355) next := by
  exact ⟨rho 10356, rho 10357, rho 10358, rho 10359, rho 10360, r3171, r3172, r3173, r3174, r3175, tail⟩

theorem seg13_scp_node7_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3176 : Seg13.relationRow3176 rho)
    (r3177 : Seg13.relationRow3177 rho)
    (r3178 : Seg13.relationRow3178 rho)
    (r3179 : Seg13.relationRow3179 rho)
    (r3180 : Seg13.relationRow3180 rho)
    (tail : next (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350) (rho 10355) (rho 10360) (rho 10365)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg67 (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350) (rho 10355) (rho 10360) next := by
  exact ⟨rho 10361, rho 10362, rho 10363, rho 10364, rho 10365, r3176, r3177, r3178, r3179, r3180, tail⟩

theorem seg13_scp_node7_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3181 : Seg13.relationRow3181 rho)
    (r3182 : Seg13.relationRow3182 rho)
    (r3183 : Seg13.relationRow3183 rho)
    (r3184 : Seg13.relationRow3184 rho)
    (r3185 : Seg13.relationRow3185 rho)
    (tail : next (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350) (rho 10355) (rho 10360) (rho 10365) (rho 10370)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg68 (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350) (rho 10355) (rho 10360) (rho 10365) next := by
  exact ⟨rho 10366, rho 10367, rho 10368, rho 10369, rho 10370, r3181, r3182, r3183, r3184, r3185, tail⟩

theorem seg13_scp_node7_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3186 : Seg13.relationRow3186 rho)
    (r3187 : Seg13.relationRow3187 rho)
    (r3188 : Seg13.relationRow3188 rho)
    (r3189 : Seg13.relationRow3189 rho)
    (r3190 : Seg13.relationRow3190 rho)
    (tail : next (rho 10355) (rho 10360) (rho 10365) (rho 10370) (rho 10375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg69 (rho 10330) (rho 10335) (rho 10340) (rho 10345) (rho 10350) (rho 10355) (rho 10360) (rho 10365) (rho 10370) next := by
  exact ⟨rho 10371, rho 10372, rho 10373, rho 10374, rho 10375, r3186, r3187, r3188, r3189, r3190, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

