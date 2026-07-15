import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node22_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8301 : Seg28.relationRow8301 rho)
    (r8302 : Seg28.relationRow8302 rho)
    (r8303 : Seg28.relationRow8303 rho)
    (r8304 : Seg28.relationRow8304 rho)
    (r8305 : Seg28.relationRow8305 rho)
    (tail : next (rho 119) (rho 120) (rho 27602) (rho 27603) (rho 27604) (rho 27605) (rho 27606) (rho 27611)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg0 (rho 118) (rho 119) (rho 120) (rho 27601) (rho 27602) (rho 27603) (rho 27604) (rho 27605) (rho 27606) next := by
  exact ⟨rho 27607, rho 27608, rho 27609, rho 27610, rho 27611, r8301, r8302, r8303, r8304, r8305, tail⟩

theorem seg28_scp_node22_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8306 : Seg28.relationRow8306 rho)
    (r8307 : Seg28.relationRow8307 rho)
    (r8308 : Seg28.relationRow8308 rho)
    (r8309 : Seg28.relationRow8309 rho)
    (r8310 : Seg28.relationRow8310 rho)
    (tail : next (rho 119) (rho 120) (rho 27604) (rho 27605) (rho 27606) (rho 27611) (rho 27616)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg1 (rho 119) (rho 120) (rho 27602) (rho 27603) (rho 27604) (rho 27605) (rho 27606) (rho 27611) next := by
  exact ⟨rho 27612, rho 27613, rho 27614, rho 27615, rho 27616, r8306, r8307, r8308, r8309, r8310, tail⟩

theorem seg28_scp_node22_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8311 : Seg28.relationRow8311 rho)
    (r8312 : Seg28.relationRow8312 rho)
    (r8313 : Seg28.relationRow8313 rho)
    (r8314 : Seg28.relationRow8314 rho)
    (r8315 : Seg28.relationRow8315 rho)
    (tail : next (rho 120) (rho 27606) (rho 27611) (rho 27616) (rho 27621)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg2 (rho 119) (rho 120) (rho 27604) (rho 27605) (rho 27606) (rho 27611) (rho 27616) next := by
  exact ⟨rho 27617, rho 27618, rho 27619, rho 27620, rho 27621, r8311, r8312, r8313, r8314, r8315, tail⟩

theorem seg28_scp_node22_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8316 : Seg28.relationRow8316 rho)
    (r8317 : Seg28.relationRow8317 rho)
    (r8318 : Seg28.relationRow8318 rho)
    (r8319 : Seg28.relationRow8319 rho)
    (r8320 : Seg28.relationRow8320 rho)
    (tail : next (rho 27611) (rho 27616) (rho 27621) (rho 27626)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg3 (rho 120) (rho 27606) (rho 27611) (rho 27616) (rho 27621) next := by
  exact ⟨rho 27622, rho 27623, rho 27624, rho 27625, rho 27626, r8316, r8317, r8318, r8319, r8320, tail⟩

theorem seg28_scp_node22_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8321 : Seg28.relationRow8321 rho)
    (r8322 : Seg28.relationRow8322 rho)
    (r8323 : Seg28.relationRow8323 rho)
    (r8324 : Seg28.relationRow8324 rho)
    (r8325 : Seg28.relationRow8325 rho)
    (tail : next (rho 27611) (rho 27616) (rho 27621) (rho 27626) (rho 27631)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg4 (rho 27611) (rho 27616) (rho 27621) (rho 27626) next := by
  exact ⟨rho 27627, rho 27628, rho 27629, rho 27630, rho 27631, r8321, r8322, r8323, r8324, r8325, tail⟩

theorem seg28_scp_node22_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8326 : Seg28.relationRow8326 rho)
    (r8327 : Seg28.relationRow8327 rho)
    (r8328 : Seg28.relationRow8328 rho)
    (r8329 : Seg28.relationRow8329 rho)
    (r8330 : Seg28.relationRow8330 rho)
    (tail : next (rho 27611) (rho 27616) (rho 27621) (rho 27626) (rho 27631) (rho 27636)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg5 (rho 27611) (rho 27616) (rho 27621) (rho 27626) (rho 27631) next := by
  exact ⟨rho 27632, rho 27633, rho 27634, rho 27635, rho 27636, r8326, r8327, r8328, r8329, r8330, tail⟩

theorem seg28_scp_node22_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8331 : Seg28.relationRow8331 rho)
    (r8332 : Seg28.relationRow8332 rho)
    (r8333 : Seg28.relationRow8333 rho)
    (r8334 : Seg28.relationRow8334 rho)
    (r8335 : Seg28.relationRow8335 rho)
    (tail : next (rho 27611) (rho 27616) (rho 27621) (rho 27626) (rho 27631) (rho 27636) (rho 27641)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg6 (rho 27611) (rho 27616) (rho 27621) (rho 27626) (rho 27631) (rho 27636) next := by
  exact ⟨rho 27637, rho 27638, rho 27639, rho 27640, rho 27641, r8331, r8332, r8333, r8334, r8335, tail⟩

theorem seg28_scp_node22_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8336 : Seg28.relationRow8336 rho)
    (r8337 : Seg28.relationRow8337 rho)
    (r8338 : Seg28.relationRow8338 rho)
    (r8339 : Seg28.relationRow8339 rho)
    (r8340 : Seg28.relationRow8340 rho)
    (tail : next (rho 27611) (rho 27616) (rho 27621) (rho 27626) (rho 27631) (rho 27636) (rho 27641) (rho 27646)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg7 (rho 27611) (rho 27616) (rho 27621) (rho 27626) (rho 27631) (rho 27636) (rho 27641) next := by
  exact ⟨rho 27642, rho 27643, rho 27644, rho 27645, rho 27646, r8336, r8337, r8338, r8339, r8340, tail⟩

theorem seg28_scp_node22_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8341 : Seg28.relationRow8341 rho)
    (r8342 : Seg28.relationRow8342 rho)
    (r8343 : Seg28.relationRow8343 rho)
    (r8344 : Seg28.relationRow8344 rho)
    (r8345 : Seg28.relationRow8345 rho)
    (tail : next (rho 27631) (rho 27636) (rho 27641) (rho 27646) (rho 27651)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg8 (rho 27611) (rho 27616) (rho 27621) (rho 27626) (rho 27631) (rho 27636) (rho 27641) (rho 27646) next := by
  exact ⟨rho 27647, rho 27648, rho 27649, rho 27650, rho 27651, r8341, r8342, r8343, r8344, r8345, tail⟩

theorem seg28_scp_node22_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8346 : Seg28.relationRow8346 rho)
    (r8347 : Seg28.relationRow8347 rho)
    (r8348 : Seg28.relationRow8348 rho)
    (r8349 : Seg28.relationRow8349 rho)
    (r8350 : Seg28.relationRow8350 rho)
    (tail : next (rho 27631) (rho 27636) (rho 27641) (rho 27646) (rho 27651) (rho 27656)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg9 (rho 27631) (rho 27636) (rho 27641) (rho 27646) (rho 27651) next := by
  exact ⟨rho 27652, rho 27653, rho 27654, rho 27655, rho 27656, r8346, r8347, r8348, r8349, r8350, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

