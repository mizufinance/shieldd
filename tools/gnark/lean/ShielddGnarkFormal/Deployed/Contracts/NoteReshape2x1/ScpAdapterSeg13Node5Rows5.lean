import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node5_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2363 : Seg13.relationRow2363 rho)
    (r2364 : Seg13.relationRow2364 rho)
    (r2365 : Seg13.relationRow2365 rho)
    (r2366 : Seg13.relationRow2366 rho)
    (r2367 : Seg13.relationRow2367 rho)
    (tail : next (rho 9380) (rho 9385) (rho 9390) (rho 9395) (rho 9400) (rho 9405) (rho 9410) (rho 9415) (rho 9420) (rho 9425) (rho 9430) (rho 9435) (rho 9440) (rho 9445) (rho 9450) (rho 9455) (rho 9460) (rho 9465) (rho 9470) (rho 9475) (rho 9480) (rho 9485) (rho 9490) (rho 9495) (rho 9500) (rho 9505) (rho 9510) (rho 9515) (rho 9520) (rho 9525) (rho 9530) (rho 9535) (rho 9540) (rho 9545) (rho 9550) (rho 9555) (rho 9560)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg50 (rho 9380) (rho 9385) (rho 9390) (rho 9395) (rho 9400) (rho 9405) (rho 9410) (rho 9415) (rho 9420) (rho 9425) (rho 9430) (rho 9435) (rho 9440) (rho 9445) (rho 9450) (rho 9455) (rho 9460) (rho 9465) (rho 9470) (rho 9475) (rho 9480) (rho 9485) (rho 9490) (rho 9495) (rho 9500) (rho 9505) (rho 9510) (rho 9515) (rho 9520) (rho 9525) (rho 9530) (rho 9535) (rho 9540) (rho 9545) (rho 9550) (rho 9555) next := by
  exact ⟨rho 9556, rho 9557, rho 9558, rho 9559, rho 9560, r2363, r2364, r2365, r2366, r2367, tail⟩

theorem seg13_scp_node5_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2368 : Seg13.relationRow2368 rho)
    (r2369 : Seg13.relationRow2369 rho)
    (r2370 : Seg13.relationRow2370 rho)
    (r2371 : Seg13.relationRow2371 rho)
    (r2372 : Seg13.relationRow2372 rho)
    (tail : next (rho 9380) (rho 9385) (rho 9390) (rho 9395) (rho 9400) (rho 9405) (rho 9410) (rho 9415) (rho 9420) (rho 9425) (rho 9430) (rho 9435) (rho 9440) (rho 9445) (rho 9450) (rho 9455) (rho 9460) (rho 9465) (rho 9470) (rho 9475) (rho 9480) (rho 9485) (rho 9490) (rho 9495) (rho 9500) (rho 9505) (rho 9510) (rho 9515) (rho 9520) (rho 9525) (rho 9530) (rho 9535) (rho 9540) (rho 9545) (rho 9550) (rho 9555) (rho 9560) (rho 9565)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg51 (rho 9380) (rho 9385) (rho 9390) (rho 9395) (rho 9400) (rho 9405) (rho 9410) (rho 9415) (rho 9420) (rho 9425) (rho 9430) (rho 9435) (rho 9440) (rho 9445) (rho 9450) (rho 9455) (rho 9460) (rho 9465) (rho 9470) (rho 9475) (rho 9480) (rho 9485) (rho 9490) (rho 9495) (rho 9500) (rho 9505) (rho 9510) (rho 9515) (rho 9520) (rho 9525) (rho 9530) (rho 9535) (rho 9540) (rho 9545) (rho 9550) (rho 9555) (rho 9560) next := by
  exact ⟨rho 9561, rho 9562, rho 9563, rho 9564, rho 9565, r2368, r2369, r2370, r2371, r2372, tail⟩

theorem seg13_scp_node5_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2373 : Seg13.relationRow2373 rho)
    (r2374 : Seg13.relationRow2374 rho)
    (r2375 : Seg13.relationRow2375 rho)
    (r2376 : Seg13.relationRow2376 rho)
    (r2377 : Seg13.relationRow2377 rho)
    (tail : next (rho 9380) (rho 9385) (rho 9390) (rho 9395) (rho 9400) (rho 9405) (rho 9410) (rho 9415) (rho 9420) (rho 9425) (rho 9430) (rho 9435) (rho 9440) (rho 9445) (rho 9450) (rho 9455) (rho 9460) (rho 9465) (rho 9470) (rho 9475) (rho 9480) (rho 9485) (rho 9490) (rho 9495) (rho 9500) (rho 9505) (rho 9510) (rho 9515) (rho 9520) (rho 9525) (rho 9530) (rho 9535) (rho 9540) (rho 9545) (rho 9550) (rho 9555) (rho 9560) (rho 9565) (rho 9570)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg52 (rho 9380) (rho 9385) (rho 9390) (rho 9395) (rho 9400) (rho 9405) (rho 9410) (rho 9415) (rho 9420) (rho 9425) (rho 9430) (rho 9435) (rho 9440) (rho 9445) (rho 9450) (rho 9455) (rho 9460) (rho 9465) (rho 9470) (rho 9475) (rho 9480) (rho 9485) (rho 9490) (rho 9495) (rho 9500) (rho 9505) (rho 9510) (rho 9515) (rho 9520) (rho 9525) (rho 9530) (rho 9535) (rho 9540) (rho 9545) (rho 9550) (rho 9555) (rho 9560) (rho 9565) next := by
  exact ⟨rho 9566, rho 9567, rho 9568, rho 9569, rho 9570, r2373, r2374, r2375, r2376, r2377, tail⟩

theorem seg13_scp_node5_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2378 : Seg13.relationRow2378 rho)
    (r2379 : Seg13.relationRow2379 rho)
    (r2380 : Seg13.relationRow2380 rho)
    (r2381 : Seg13.relationRow2381 rho)
    (r2382 : Seg13.relationRow2382 rho)
    (tail : next (rho 9380) (rho 9385) (rho 9390) (rho 9395) (rho 9400) (rho 9405) (rho 9410) (rho 9415) (rho 9420) (rho 9425) (rho 9430) (rho 9435) (rho 9440) (rho 9445) (rho 9450) (rho 9455) (rho 9460) (rho 9465) (rho 9470) (rho 9475) (rho 9480) (rho 9485) (rho 9490) (rho 9495) (rho 9500) (rho 9505) (rho 9510) (rho 9515) (rho 9520) (rho 9525) (rho 9530) (rho 9535) (rho 9540) (rho 9545) (rho 9550) (rho 9555) (rho 9560) (rho 9565) (rho 9570) (rho 9575)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg53 (rho 9380) (rho 9385) (rho 9390) (rho 9395) (rho 9400) (rho 9405) (rho 9410) (rho 9415) (rho 9420) (rho 9425) (rho 9430) (rho 9435) (rho 9440) (rho 9445) (rho 9450) (rho 9455) (rho 9460) (rho 9465) (rho 9470) (rho 9475) (rho 9480) (rho 9485) (rho 9490) (rho 9495) (rho 9500) (rho 9505) (rho 9510) (rho 9515) (rho 9520) (rho 9525) (rho 9530) (rho 9535) (rho 9540) (rho 9545) (rho 9550) (rho 9555) (rho 9560) (rho 9565) (rho 9570) next := by
  exact ⟨rho 9571, rho 9572, rho 9573, rho 9574, rho 9575, r2378, r2379, r2380, r2381, r2382, tail⟩

theorem seg13_scp_node5_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2383 : Seg13.relationRow2383 rho)
    (r2384 : Seg13.relationRow2384 rho)
    (r2385 : Seg13.relationRow2385 rho)
    (r2386 : Seg13.relationRow2386 rho)
    (r2387 : Seg13.relationRow2387 rho)
    (tail : next (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg54 (rho 9380) (rho 9385) (rho 9390) (rho 9395) (rho 9400) (rho 9405) (rho 9410) (rho 9415) (rho 9420) (rho 9425) (rho 9430) (rho 9435) (rho 9440) (rho 9445) (rho 9450) (rho 9455) (rho 9460) (rho 9465) (rho 9470) (rho 9475) (rho 9480) (rho 9485) (rho 9490) (rho 9495) (rho 9500) (rho 9505) (rho 9510) (rho 9515) (rho 9520) (rho 9525) (rho 9530) (rho 9535) (rho 9540) (rho 9545) (rho 9550) (rho 9555) (rho 9560) (rho 9565) (rho 9570) (rho 9575) next := by
  exact ⟨rho 9576, rho 9577, rho 9578, rho 9579, rho 9580, r2383, r2384, r2385, r2386, r2387, tail⟩

theorem seg13_scp_node5_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2388 : Seg13.relationRow2388 rho)
    (r2389 : Seg13.relationRow2389 rho)
    (r2390 : Seg13.relationRow2390 rho)
    (r2391 : Seg13.relationRow2391 rho)
    (r2392 : Seg13.relationRow2392 rho)
    (tail : next (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580) (rho 9585)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg55 (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580) next := by
  exact ⟨rho 9581, rho 9582, rho 9583, rho 9584, rho 9585, r2388, r2389, r2390, r2391, r2392, tail⟩

theorem seg13_scp_node5_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2393 : Seg13.relationRow2393 rho)
    (r2394 : Seg13.relationRow2394 rho)
    (r2395 : Seg13.relationRow2395 rho)
    (r2396 : Seg13.relationRow2396 rho)
    (r2397 : Seg13.relationRow2397 rho)
    (tail : next (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580) (rho 9585) (rho 9590)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg56 (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580) (rho 9585) next := by
  exact ⟨rho 9586, rho 9587, rho 9588, rho 9589, rho 9590, r2393, r2394, r2395, r2396, r2397, tail⟩

theorem seg13_scp_node5_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2398 : Seg13.relationRow2398 rho)
    (r2399 : Seg13.relationRow2399 rho)
    (r2400 : Seg13.relationRow2400 rho)
    (r2401 : Seg13.relationRow2401 rho)
    (r2402 : Seg13.relationRow2402 rho)
    (tail : next (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580) (rho 9585) (rho 9590) (rho 9595)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg57 (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580) (rho 9585) (rho 9590) next := by
  exact ⟨rho 9591, rho 9592, rho 9593, rho 9594, rho 9595, r2398, r2399, r2400, r2401, r2402, tail⟩

theorem seg13_scp_node5_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2403 : Seg13.relationRow2403 rho)
    (r2404 : Seg13.relationRow2404 rho)
    (r2405 : Seg13.relationRow2405 rho)
    (r2406 : Seg13.relationRow2406 rho)
    (r2407 : Seg13.relationRow2407 rho)
    (tail : next (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580) (rho 9585) (rho 9590) (rho 9595) (rho 9600)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg58 (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580) (rho 9585) (rho 9590) (rho 9595) next := by
  exact ⟨rho 9596, rho 9597, rho 9598, rho 9599, rho 9600, r2403, r2404, r2405, r2406, r2407, tail⟩

theorem seg13_scp_node5_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2408 : Seg13.relationRow2408 rho)
    (r2409 : Seg13.relationRow2409 rho)
    (r2410 : Seg13.relationRow2410 rho)
    (r2411 : Seg13.relationRow2411 rho)
    (r2412 : Seg13.relationRow2412 rho)
    (tail : next (rho 9585) (rho 9590) (rho 9595) (rho 9600) (rho 9605)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_0e649b.seg59 (rho 9560) (rho 9565) (rho 9570) (rho 9575) (rho 9580) (rho 9585) (rho 9590) (rho 9595) (rho 9600) next := by
  exact ⟨rho 9601, rho 9602, rho 9603, rho 9604, rho 9605, r2408, r2409, r2410, r2411, r2412, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

