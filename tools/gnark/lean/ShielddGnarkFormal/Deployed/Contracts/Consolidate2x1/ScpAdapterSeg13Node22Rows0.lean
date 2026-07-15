import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node22_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8301 : Seg13.relationRow8301 rho)
    (r8302 : Seg13.relationRow8302 rho)
    (r8303 : Seg13.relationRow8303 rho)
    (r8304 : Seg13.relationRow8304 rho)
    (r8305 : Seg13.relationRow8305 rho)
    (tail : next (rho 29) (rho 30) (rho 15421) (rho 15422) (rho 15423) (rho 15424) (rho 15425) (rho 15430)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg0 (rho 28) (rho 29) (rho 30) (rho 15420) (rho 15421) (rho 15422) (rho 15423) (rho 15424) (rho 15425) next := by
  exact ⟨rho 15426, rho 15427, rho 15428, rho 15429, rho 15430, r8301, r8302, r8303, r8304, r8305, tail⟩

theorem seg13_scp_node22_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8306 : Seg13.relationRow8306 rho)
    (r8307 : Seg13.relationRow8307 rho)
    (r8308 : Seg13.relationRow8308 rho)
    (r8309 : Seg13.relationRow8309 rho)
    (r8310 : Seg13.relationRow8310 rho)
    (tail : next (rho 29) (rho 30) (rho 15423) (rho 15424) (rho 15425) (rho 15430) (rho 15435)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg1 (rho 29) (rho 30) (rho 15421) (rho 15422) (rho 15423) (rho 15424) (rho 15425) (rho 15430) next := by
  exact ⟨rho 15431, rho 15432, rho 15433, rho 15434, rho 15435, r8306, r8307, r8308, r8309, r8310, tail⟩

theorem seg13_scp_node22_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8311 : Seg13.relationRow8311 rho)
    (r8312 : Seg13.relationRow8312 rho)
    (r8313 : Seg13.relationRow8313 rho)
    (r8314 : Seg13.relationRow8314 rho)
    (r8315 : Seg13.relationRow8315 rho)
    (tail : next (rho 30) (rho 15425) (rho 15430) (rho 15435) (rho 15440)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg2 (rho 29) (rho 30) (rho 15423) (rho 15424) (rho 15425) (rho 15430) (rho 15435) next := by
  exact ⟨rho 15436, rho 15437, rho 15438, rho 15439, rho 15440, r8311, r8312, r8313, r8314, r8315, tail⟩

theorem seg13_scp_node22_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8316 : Seg13.relationRow8316 rho)
    (r8317 : Seg13.relationRow8317 rho)
    (r8318 : Seg13.relationRow8318 rho)
    (r8319 : Seg13.relationRow8319 rho)
    (r8320 : Seg13.relationRow8320 rho)
    (tail : next (rho 15430) (rho 15435) (rho 15440) (rho 15445)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg3 (rho 30) (rho 15425) (rho 15430) (rho 15435) (rho 15440) next := by
  exact ⟨rho 15441, rho 15442, rho 15443, rho 15444, rho 15445, r8316, r8317, r8318, r8319, r8320, tail⟩

theorem seg13_scp_node22_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8321 : Seg13.relationRow8321 rho)
    (r8322 : Seg13.relationRow8322 rho)
    (r8323 : Seg13.relationRow8323 rho)
    (r8324 : Seg13.relationRow8324 rho)
    (r8325 : Seg13.relationRow8325 rho)
    (tail : next (rho 15430) (rho 15435) (rho 15440) (rho 15445) (rho 15450)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg4 (rho 15430) (rho 15435) (rho 15440) (rho 15445) next := by
  exact ⟨rho 15446, rho 15447, rho 15448, rho 15449, rho 15450, r8321, r8322, r8323, r8324, r8325, tail⟩

theorem seg13_scp_node22_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8326 : Seg13.relationRow8326 rho)
    (r8327 : Seg13.relationRow8327 rho)
    (r8328 : Seg13.relationRow8328 rho)
    (r8329 : Seg13.relationRow8329 rho)
    (r8330 : Seg13.relationRow8330 rho)
    (tail : next (rho 15430) (rho 15435) (rho 15440) (rho 15445) (rho 15450) (rho 15455)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg5 (rho 15430) (rho 15435) (rho 15440) (rho 15445) (rho 15450) next := by
  exact ⟨rho 15451, rho 15452, rho 15453, rho 15454, rho 15455, r8326, r8327, r8328, r8329, r8330, tail⟩

theorem seg13_scp_node22_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8331 : Seg13.relationRow8331 rho)
    (r8332 : Seg13.relationRow8332 rho)
    (r8333 : Seg13.relationRow8333 rho)
    (r8334 : Seg13.relationRow8334 rho)
    (r8335 : Seg13.relationRow8335 rho)
    (tail : next (rho 15430) (rho 15435) (rho 15440) (rho 15445) (rho 15450) (rho 15455) (rho 15460)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg6 (rho 15430) (rho 15435) (rho 15440) (rho 15445) (rho 15450) (rho 15455) next := by
  exact ⟨rho 15456, rho 15457, rho 15458, rho 15459, rho 15460, r8331, r8332, r8333, r8334, r8335, tail⟩

theorem seg13_scp_node22_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8336 : Seg13.relationRow8336 rho)
    (r8337 : Seg13.relationRow8337 rho)
    (r8338 : Seg13.relationRow8338 rho)
    (r8339 : Seg13.relationRow8339 rho)
    (r8340 : Seg13.relationRow8340 rho)
    (tail : next (rho 15430) (rho 15435) (rho 15440) (rho 15445) (rho 15450) (rho 15455) (rho 15460) (rho 15465)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg7 (rho 15430) (rho 15435) (rho 15440) (rho 15445) (rho 15450) (rho 15455) (rho 15460) next := by
  exact ⟨rho 15461, rho 15462, rho 15463, rho 15464, rho 15465, r8336, r8337, r8338, r8339, r8340, tail⟩

theorem seg13_scp_node22_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8341 : Seg13.relationRow8341 rho)
    (r8342 : Seg13.relationRow8342 rho)
    (r8343 : Seg13.relationRow8343 rho)
    (r8344 : Seg13.relationRow8344 rho)
    (r8345 : Seg13.relationRow8345 rho)
    (tail : next (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg8 (rho 15430) (rho 15435) (rho 15440) (rho 15445) (rho 15450) (rho 15455) (rho 15460) (rho 15465) next := by
  exact ⟨rho 15466, rho 15467, rho 15468, rho 15469, rho 15470, r8341, r8342, r8343, r8344, r8345, tail⟩

theorem seg13_scp_node22_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8346 : Seg13.relationRow8346 rho)
    (r8347 : Seg13.relationRow8347 rho)
    (r8348 : Seg13.relationRow8348 rho)
    (r8349 : Seg13.relationRow8349 rho)
    (r8350 : Seg13.relationRow8350 rho)
    (tail : next (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470) (rho 15475)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg9 (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470) next := by
  exact ⟨rho 15471, rho 15472, rho 15473, rho 15474, rho 15475, r8346, r8347, r8348, r8349, r8350, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

