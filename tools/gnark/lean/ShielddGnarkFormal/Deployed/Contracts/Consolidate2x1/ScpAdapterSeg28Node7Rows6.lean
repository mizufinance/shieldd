import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node7_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3141 : Seg28.relationRow3141 rho)
    (r3142 : Seg28.relationRow3142 rho)
    (r3143 : Seg28.relationRow3143 rho)
    (r3144 : Seg28.relationRow3144 rho)
    (r3145 : Seg28.relationRow3145 rho)
    (tail : next (rho 22486) (rho 22491) (rho 22496) (rho 22501) (rho 22506) (rho 22511)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg60 (rho 22486) (rho 22491) (rho 22496) (rho 22501) (rho 22506) next := by
  exact ⟨rho 22507, rho 22508, rho 22509, rho 22510, rho 22511, r3141, r3142, r3143, r3144, r3145, tail⟩

theorem seg28_scp_node7_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3146 : Seg28.relationRow3146 rho)
    (r3147 : Seg28.relationRow3147 rho)
    (r3148 : Seg28.relationRow3148 rho)
    (r3149 : Seg28.relationRow3149 rho)
    (r3150 : Seg28.relationRow3150 rho)
    (tail : next (rho 22486) (rho 22491) (rho 22496) (rho 22501) (rho 22506) (rho 22511) (rho 22516)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg61 (rho 22486) (rho 22491) (rho 22496) (rho 22501) (rho 22506) (rho 22511) next := by
  exact ⟨rho 22512, rho 22513, rho 22514, rho 22515, rho 22516, r3146, r3147, r3148, r3149, r3150, tail⟩

theorem seg28_scp_node7_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3151 : Seg28.relationRow3151 rho)
    (r3152 : Seg28.relationRow3152 rho)
    (r3153 : Seg28.relationRow3153 rho)
    (r3154 : Seg28.relationRow3154 rho)
    (r3155 : Seg28.relationRow3155 rho)
    (tail : next (rho 22486) (rho 22491) (rho 22496) (rho 22501) (rho 22506) (rho 22511) (rho 22516) (rho 22521)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg62 (rho 22486) (rho 22491) (rho 22496) (rho 22501) (rho 22506) (rho 22511) (rho 22516) next := by
  exact ⟨rho 22517, rho 22518, rho 22519, rho 22520, rho 22521, r3151, r3152, r3153, r3154, r3155, tail⟩

theorem seg28_scp_node7_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3156 : Seg28.relationRow3156 rho)
    (r3157 : Seg28.relationRow3157 rho)
    (r3158 : Seg28.relationRow3158 rho)
    (r3159 : Seg28.relationRow3159 rho)
    (r3160 : Seg28.relationRow3160 rho)
    (tail : next (rho 22486) (rho 22491) (rho 22496) (rho 22501) (rho 22506) (rho 22511) (rho 22516) (rho 22521) (rho 22526)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg63 (rho 22486) (rho 22491) (rho 22496) (rho 22501) (rho 22506) (rho 22511) (rho 22516) (rho 22521) next := by
  exact ⟨rho 22522, rho 22523, rho 22524, rho 22525, rho 22526, r3156, r3157, r3158, r3159, r3160, tail⟩

theorem seg28_scp_node7_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3161 : Seg28.relationRow3161 rho)
    (r3162 : Seg28.relationRow3162 rho)
    (r3163 : Seg28.relationRow3163 rho)
    (r3164 : Seg28.relationRow3164 rho)
    (r3165 : Seg28.relationRow3165 rho)
    (tail : next (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg64 (rho 22486) (rho 22491) (rho 22496) (rho 22501) (rho 22506) (rho 22511) (rho 22516) (rho 22521) (rho 22526) next := by
  exact ⟨rho 22527, rho 22528, rho 22529, rho 22530, rho 22531, r3161, r3162, r3163, r3164, r3165, tail⟩

theorem seg28_scp_node7_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3166 : Seg28.relationRow3166 rho)
    (r3167 : Seg28.relationRow3167 rho)
    (r3168 : Seg28.relationRow3168 rho)
    (r3169 : Seg28.relationRow3169 rho)
    (r3170 : Seg28.relationRow3170 rho)
    (tail : next (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531) (rho 22536)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg65 (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531) next := by
  exact ⟨rho 22532, rho 22533, rho 22534, rho 22535, rho 22536, r3166, r3167, r3168, r3169, r3170, tail⟩

theorem seg28_scp_node7_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3171 : Seg28.relationRow3171 rho)
    (r3172 : Seg28.relationRow3172 rho)
    (r3173 : Seg28.relationRow3173 rho)
    (r3174 : Seg28.relationRow3174 rho)
    (r3175 : Seg28.relationRow3175 rho)
    (tail : next (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531) (rho 22536) (rho 22541)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg66 (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531) (rho 22536) next := by
  exact ⟨rho 22537, rho 22538, rho 22539, rho 22540, rho 22541, r3171, r3172, r3173, r3174, r3175, tail⟩

theorem seg28_scp_node7_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3176 : Seg28.relationRow3176 rho)
    (r3177 : Seg28.relationRow3177 rho)
    (r3178 : Seg28.relationRow3178 rho)
    (r3179 : Seg28.relationRow3179 rho)
    (r3180 : Seg28.relationRow3180 rho)
    (tail : next (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531) (rho 22536) (rho 22541) (rho 22546)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg67 (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531) (rho 22536) (rho 22541) next := by
  exact ⟨rho 22542, rho 22543, rho 22544, rho 22545, rho 22546, r3176, r3177, r3178, r3179, r3180, tail⟩

theorem seg28_scp_node7_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3181 : Seg28.relationRow3181 rho)
    (r3182 : Seg28.relationRow3182 rho)
    (r3183 : Seg28.relationRow3183 rho)
    (r3184 : Seg28.relationRow3184 rho)
    (r3185 : Seg28.relationRow3185 rho)
    (tail : next (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531) (rho 22536) (rho 22541) (rho 22546) (rho 22551)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg68 (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531) (rho 22536) (rho 22541) (rho 22546) next := by
  exact ⟨rho 22547, rho 22548, rho 22549, rho 22550, rho 22551, r3181, r3182, r3183, r3184, r3185, tail⟩

theorem seg28_scp_node7_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3186 : Seg28.relationRow3186 rho)
    (r3187 : Seg28.relationRow3187 rho)
    (r3188 : Seg28.relationRow3188 rho)
    (r3189 : Seg28.relationRow3189 rho)
    (r3190 : Seg28.relationRow3190 rho)
    (tail : next (rho 22536) (rho 22541) (rho 22546) (rho 22551) (rho 22556)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg69 (rho 22511) (rho 22516) (rho 22521) (rho 22526) (rho 22531) (rho 22536) (rho 22541) (rho 22546) (rho 22551) next := by
  exact ⟨rho 22552, rho 22553, rho 22554, rho 22555, rho 22556, r3186, r3187, r3188, r3189, r3190, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

