import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node21_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8187 : Seg28.relationRow8187 rho)
    (r8188 : Seg28.relationRow8188 rho)
    (r8189 : Seg28.relationRow8189 rho)
    (r8190 : Seg28.relationRow8190 rho)
    (r8191 : Seg28.relationRow8191 rho)
    (tail : next (rho 27315) (rho 27320) (rho 27325) (rho 27330) (rho 27335) (rho 27340) (rho 27345) (rho 27350) (rho 27355) (rho 27360) (rho 27365) (rho 27370) (rho 27375) (rho 27380) (rho 27385) (rho 27390) (rho 27395) (rho 27400) (rho 27405) (rho 27410) (rho 27415) (rho 27420) (rho 27425) (rho 27430) (rho 27435) (rho 27440) (rho 27445) (rho 27450) (rho 27455) (rho 27460) (rho 27465) (rho 27470) (rho 27475) (rho 27480) (rho 27485) (rho 27490) (rho 27495)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg50 (rho 27315) (rho 27320) (rho 27325) (rho 27330) (rho 27335) (rho 27340) (rho 27345) (rho 27350) (rho 27355) (rho 27360) (rho 27365) (rho 27370) (rho 27375) (rho 27380) (rho 27385) (rho 27390) (rho 27395) (rho 27400) (rho 27405) (rho 27410) (rho 27415) (rho 27420) (rho 27425) (rho 27430) (rho 27435) (rho 27440) (rho 27445) (rho 27450) (rho 27455) (rho 27460) (rho 27465) (rho 27470) (rho 27475) (rho 27480) (rho 27485) (rho 27490) next := by
  exact ⟨rho 27491, rho 27492, rho 27493, rho 27494, rho 27495, r8187, r8188, r8189, r8190, r8191, tail⟩

theorem seg28_scp_node21_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8192 : Seg28.relationRow8192 rho)
    (r8193 : Seg28.relationRow8193 rho)
    (r8194 : Seg28.relationRow8194 rho)
    (r8195 : Seg28.relationRow8195 rho)
    (r8196 : Seg28.relationRow8196 rho)
    (tail : next (rho 27315) (rho 27320) (rho 27325) (rho 27330) (rho 27335) (rho 27340) (rho 27345) (rho 27350) (rho 27355) (rho 27360) (rho 27365) (rho 27370) (rho 27375) (rho 27380) (rho 27385) (rho 27390) (rho 27395) (rho 27400) (rho 27405) (rho 27410) (rho 27415) (rho 27420) (rho 27425) (rho 27430) (rho 27435) (rho 27440) (rho 27445) (rho 27450) (rho 27455) (rho 27460) (rho 27465) (rho 27470) (rho 27475) (rho 27480) (rho 27485) (rho 27490) (rho 27495) (rho 27500)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg51 (rho 27315) (rho 27320) (rho 27325) (rho 27330) (rho 27335) (rho 27340) (rho 27345) (rho 27350) (rho 27355) (rho 27360) (rho 27365) (rho 27370) (rho 27375) (rho 27380) (rho 27385) (rho 27390) (rho 27395) (rho 27400) (rho 27405) (rho 27410) (rho 27415) (rho 27420) (rho 27425) (rho 27430) (rho 27435) (rho 27440) (rho 27445) (rho 27450) (rho 27455) (rho 27460) (rho 27465) (rho 27470) (rho 27475) (rho 27480) (rho 27485) (rho 27490) (rho 27495) next := by
  exact ⟨rho 27496, rho 27497, rho 27498, rho 27499, rho 27500, r8192, r8193, r8194, r8195, r8196, tail⟩

theorem seg28_scp_node21_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8197 : Seg28.relationRow8197 rho)
    (r8198 : Seg28.relationRow8198 rho)
    (r8199 : Seg28.relationRow8199 rho)
    (r8200 : Seg28.relationRow8200 rho)
    (r8201 : Seg28.relationRow8201 rho)
    (tail : next (rho 27315) (rho 27320) (rho 27325) (rho 27330) (rho 27335) (rho 27340) (rho 27345) (rho 27350) (rho 27355) (rho 27360) (rho 27365) (rho 27370) (rho 27375) (rho 27380) (rho 27385) (rho 27390) (rho 27395) (rho 27400) (rho 27405) (rho 27410) (rho 27415) (rho 27420) (rho 27425) (rho 27430) (rho 27435) (rho 27440) (rho 27445) (rho 27450) (rho 27455) (rho 27460) (rho 27465) (rho 27470) (rho 27475) (rho 27480) (rho 27485) (rho 27490) (rho 27495) (rho 27500) (rho 27505)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg52 (rho 27315) (rho 27320) (rho 27325) (rho 27330) (rho 27335) (rho 27340) (rho 27345) (rho 27350) (rho 27355) (rho 27360) (rho 27365) (rho 27370) (rho 27375) (rho 27380) (rho 27385) (rho 27390) (rho 27395) (rho 27400) (rho 27405) (rho 27410) (rho 27415) (rho 27420) (rho 27425) (rho 27430) (rho 27435) (rho 27440) (rho 27445) (rho 27450) (rho 27455) (rho 27460) (rho 27465) (rho 27470) (rho 27475) (rho 27480) (rho 27485) (rho 27490) (rho 27495) (rho 27500) next := by
  exact ⟨rho 27501, rho 27502, rho 27503, rho 27504, rho 27505, r8197, r8198, r8199, r8200, r8201, tail⟩

theorem seg28_scp_node21_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8202 : Seg28.relationRow8202 rho)
    (r8203 : Seg28.relationRow8203 rho)
    (r8204 : Seg28.relationRow8204 rho)
    (r8205 : Seg28.relationRow8205 rho)
    (r8206 : Seg28.relationRow8206 rho)
    (tail : next (rho 27315) (rho 27320) (rho 27325) (rho 27330) (rho 27335) (rho 27340) (rho 27345) (rho 27350) (rho 27355) (rho 27360) (rho 27365) (rho 27370) (rho 27375) (rho 27380) (rho 27385) (rho 27390) (rho 27395) (rho 27400) (rho 27405) (rho 27410) (rho 27415) (rho 27420) (rho 27425) (rho 27430) (rho 27435) (rho 27440) (rho 27445) (rho 27450) (rho 27455) (rho 27460) (rho 27465) (rho 27470) (rho 27475) (rho 27480) (rho 27485) (rho 27490) (rho 27495) (rho 27500) (rho 27505) (rho 27510)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg53 (rho 27315) (rho 27320) (rho 27325) (rho 27330) (rho 27335) (rho 27340) (rho 27345) (rho 27350) (rho 27355) (rho 27360) (rho 27365) (rho 27370) (rho 27375) (rho 27380) (rho 27385) (rho 27390) (rho 27395) (rho 27400) (rho 27405) (rho 27410) (rho 27415) (rho 27420) (rho 27425) (rho 27430) (rho 27435) (rho 27440) (rho 27445) (rho 27450) (rho 27455) (rho 27460) (rho 27465) (rho 27470) (rho 27475) (rho 27480) (rho 27485) (rho 27490) (rho 27495) (rho 27500) (rho 27505) next := by
  exact ⟨rho 27506, rho 27507, rho 27508, rho 27509, rho 27510, r8202, r8203, r8204, r8205, r8206, tail⟩

theorem seg28_scp_node21_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8207 : Seg28.relationRow8207 rho)
    (r8208 : Seg28.relationRow8208 rho)
    (r8209 : Seg28.relationRow8209 rho)
    (r8210 : Seg28.relationRow8210 rho)
    (r8211 : Seg28.relationRow8211 rho)
    (tail : next (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg54 (rho 27315) (rho 27320) (rho 27325) (rho 27330) (rho 27335) (rho 27340) (rho 27345) (rho 27350) (rho 27355) (rho 27360) (rho 27365) (rho 27370) (rho 27375) (rho 27380) (rho 27385) (rho 27390) (rho 27395) (rho 27400) (rho 27405) (rho 27410) (rho 27415) (rho 27420) (rho 27425) (rho 27430) (rho 27435) (rho 27440) (rho 27445) (rho 27450) (rho 27455) (rho 27460) (rho 27465) (rho 27470) (rho 27475) (rho 27480) (rho 27485) (rho 27490) (rho 27495) (rho 27500) (rho 27505) (rho 27510) next := by
  exact ⟨rho 27511, rho 27512, rho 27513, rho 27514, rho 27515, r8207, r8208, r8209, r8210, r8211, tail⟩

theorem seg28_scp_node21_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8212 : Seg28.relationRow8212 rho)
    (r8213 : Seg28.relationRow8213 rho)
    (r8214 : Seg28.relationRow8214 rho)
    (r8215 : Seg28.relationRow8215 rho)
    (r8216 : Seg28.relationRow8216 rho)
    (tail : next (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515) (rho 27520)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg55 (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515) next := by
  exact ⟨rho 27516, rho 27517, rho 27518, rho 27519, rho 27520, r8212, r8213, r8214, r8215, r8216, tail⟩

theorem seg28_scp_node21_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8217 : Seg28.relationRow8217 rho)
    (r8218 : Seg28.relationRow8218 rho)
    (r8219 : Seg28.relationRow8219 rho)
    (r8220 : Seg28.relationRow8220 rho)
    (r8221 : Seg28.relationRow8221 rho)
    (tail : next (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515) (rho 27520) (rho 27525)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg56 (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515) (rho 27520) next := by
  exact ⟨rho 27521, rho 27522, rho 27523, rho 27524, rho 27525, r8217, r8218, r8219, r8220, r8221, tail⟩

theorem seg28_scp_node21_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8222 : Seg28.relationRow8222 rho)
    (r8223 : Seg28.relationRow8223 rho)
    (r8224 : Seg28.relationRow8224 rho)
    (r8225 : Seg28.relationRow8225 rho)
    (r8226 : Seg28.relationRow8226 rho)
    (tail : next (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515) (rho 27520) (rho 27525) (rho 27530)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg57 (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515) (rho 27520) (rho 27525) next := by
  exact ⟨rho 27526, rho 27527, rho 27528, rho 27529, rho 27530, r8222, r8223, r8224, r8225, r8226, tail⟩

theorem seg28_scp_node21_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8227 : Seg28.relationRow8227 rho)
    (r8228 : Seg28.relationRow8228 rho)
    (r8229 : Seg28.relationRow8229 rho)
    (r8230 : Seg28.relationRow8230 rho)
    (r8231 : Seg28.relationRow8231 rho)
    (tail : next (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515) (rho 27520) (rho 27525) (rho 27530) (rho 27535)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg58 (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515) (rho 27520) (rho 27525) (rho 27530) next := by
  exact ⟨rho 27531, rho 27532, rho 27533, rho 27534, rho 27535, r8227, r8228, r8229, r8230, r8231, tail⟩

theorem seg28_scp_node21_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8232 : Seg28.relationRow8232 rho)
    (r8233 : Seg28.relationRow8233 rho)
    (r8234 : Seg28.relationRow8234 rho)
    (r8235 : Seg28.relationRow8235 rho)
    (r8236 : Seg28.relationRow8236 rho)
    (tail : next (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg59 (rho 27495) (rho 27500) (rho 27505) (rho 27510) (rho 27515) (rho 27520) (rho 27525) (rho 27530) (rho 27535) next := by
  exact ⟨rho 27536, rho 27537, rho 27538, rho 27539, rho 27540, r8232, r8233, r8234, r8235, r8236, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

