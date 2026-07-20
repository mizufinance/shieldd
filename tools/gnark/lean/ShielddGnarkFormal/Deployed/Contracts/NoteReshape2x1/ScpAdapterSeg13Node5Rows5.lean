import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1

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
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449) (rho 9454) (rho 9459) (rho 9464) (rho 9469) (rho 9474) (rho 9479) (rho 9484) (rho 9489) (rho 9494) (rho 9499) (rho 9504) (rho 9509) (rho 9514) (rho 9519) (rho 9524) (rho 9529) (rho 9534) (rho 9539) (rho 9544) (rho 9549) (rho 9554)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg50 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449) (rho 9454) (rho 9459) (rho 9464) (rho 9469) (rho 9474) (rho 9479) (rho 9484) (rho 9489) (rho 9494) (rho 9499) (rho 9504) (rho 9509) (rho 9514) (rho 9519) (rho 9524) (rho 9529) (rho 9534) (rho 9539) (rho 9544) (rho 9549) next := by
  exact ⟨rho 9550, rho 9551, rho 9552, rho 9553, rho 9554, r2363, r2364, r2365, r2366, r2367, tail⟩

theorem seg13_scp_node5_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2368 : Seg13.relationRow2368 rho)
    (r2369 : Seg13.relationRow2369 rho)
    (r2370 : Seg13.relationRow2370 rho)
    (r2371 : Seg13.relationRow2371 rho)
    (r2372 : Seg13.relationRow2372 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449) (rho 9454) (rho 9459) (rho 9464) (rho 9469) (rho 9474) (rho 9479) (rho 9484) (rho 9489) (rho 9494) (rho 9499) (rho 9504) (rho 9509) (rho 9514) (rho 9519) (rho 9524) (rho 9529) (rho 9534) (rho 9539) (rho 9544) (rho 9549) (rho 9554) (rho 9559)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg51 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449) (rho 9454) (rho 9459) (rho 9464) (rho 9469) (rho 9474) (rho 9479) (rho 9484) (rho 9489) (rho 9494) (rho 9499) (rho 9504) (rho 9509) (rho 9514) (rho 9519) (rho 9524) (rho 9529) (rho 9534) (rho 9539) (rho 9544) (rho 9549) (rho 9554) next := by
  exact ⟨rho 9555, rho 9556, rho 9557, rho 9558, rho 9559, r2368, r2369, r2370, r2371, r2372, tail⟩

theorem seg13_scp_node5_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2373 : Seg13.relationRow2373 rho)
    (r2374 : Seg13.relationRow2374 rho)
    (r2375 : Seg13.relationRow2375 rho)
    (r2376 : Seg13.relationRow2376 rho)
    (r2377 : Seg13.relationRow2377 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449) (rho 9454) (rho 9459) (rho 9464) (rho 9469) (rho 9474) (rho 9479) (rho 9484) (rho 9489) (rho 9494) (rho 9499) (rho 9504) (rho 9509) (rho 9514) (rho 9519) (rho 9524) (rho 9529) (rho 9534) (rho 9539) (rho 9544) (rho 9549) (rho 9554) (rho 9559) (rho 9564)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg52 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449) (rho 9454) (rho 9459) (rho 9464) (rho 9469) (rho 9474) (rho 9479) (rho 9484) (rho 9489) (rho 9494) (rho 9499) (rho 9504) (rho 9509) (rho 9514) (rho 9519) (rho 9524) (rho 9529) (rho 9534) (rho 9539) (rho 9544) (rho 9549) (rho 9554) (rho 9559) next := by
  exact ⟨rho 9560, rho 9561, rho 9562, rho 9563, rho 9564, r2373, r2374, r2375, r2376, r2377, tail⟩

theorem seg13_scp_node5_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2378 : Seg13.relationRow2378 rho)
    (r2379 : Seg13.relationRow2379 rho)
    (r2380 : Seg13.relationRow2380 rho)
    (r2381 : Seg13.relationRow2381 rho)
    (r2382 : Seg13.relationRow2382 rho)
    (tail : next (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449) (rho 9454) (rho 9459) (rho 9464) (rho 9469) (rho 9474) (rho 9479) (rho 9484) (rho 9489) (rho 9494) (rho 9499) (rho 9504) (rho 9509) (rho 9514) (rho 9519) (rho 9524) (rho 9529) (rho 9534) (rho 9539) (rho 9544) (rho 9549) (rho 9554) (rho 9559) (rho 9564) (rho 9569)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg53 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449) (rho 9454) (rho 9459) (rho 9464) (rho 9469) (rho 9474) (rho 9479) (rho 9484) (rho 9489) (rho 9494) (rho 9499) (rho 9504) (rho 9509) (rho 9514) (rho 9519) (rho 9524) (rho 9529) (rho 9534) (rho 9539) (rho 9544) (rho 9549) (rho 9554) (rho 9559) (rho 9564) next := by
  exact ⟨rho 9565, rho 9566, rho 9567, rho 9568, rho 9569, r2378, r2379, r2380, r2381, r2382, tail⟩

theorem seg13_scp_node5_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2383 : Seg13.relationRow2383 rho)
    (r2384 : Seg13.relationRow2384 rho)
    (r2385 : Seg13.relationRow2385 rho)
    (r2386 : Seg13.relationRow2386 rho)
    (r2387 : Seg13.relationRow2387 rho)
    (tail : next (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg54 (rho 9374) (rho 9379) (rho 9384) (rho 9389) (rho 9394) (rho 9399) (rho 9404) (rho 9409) (rho 9414) (rho 9419) (rho 9424) (rho 9429) (rho 9434) (rho 9439) (rho 9444) (rho 9449) (rho 9454) (rho 9459) (rho 9464) (rho 9469) (rho 9474) (rho 9479) (rho 9484) (rho 9489) (rho 9494) (rho 9499) (rho 9504) (rho 9509) (rho 9514) (rho 9519) (rho 9524) (rho 9529) (rho 9534) (rho 9539) (rho 9544) (rho 9549) (rho 9554) (rho 9559) (rho 9564) (rho 9569) next := by
  exact ⟨rho 9570, rho 9571, rho 9572, rho 9573, rho 9574, r2383, r2384, r2385, r2386, r2387, tail⟩

theorem seg13_scp_node5_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2388 : Seg13.relationRow2388 rho)
    (r2389 : Seg13.relationRow2389 rho)
    (r2390 : Seg13.relationRow2390 rho)
    (r2391 : Seg13.relationRow2391 rho)
    (r2392 : Seg13.relationRow2392 rho)
    (tail : next (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574) (rho 9579)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg55 (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574) next := by
  exact ⟨rho 9575, rho 9576, rho 9577, rho 9578, rho 9579, r2388, r2389, r2390, r2391, r2392, tail⟩

theorem seg13_scp_node5_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2393 : Seg13.relationRow2393 rho)
    (r2394 : Seg13.relationRow2394 rho)
    (r2395 : Seg13.relationRow2395 rho)
    (r2396 : Seg13.relationRow2396 rho)
    (r2397 : Seg13.relationRow2397 rho)
    (tail : next (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574) (rho 9579) (rho 9584)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg56 (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574) (rho 9579) next := by
  exact ⟨rho 9580, rho 9581, rho 9582, rho 9583, rho 9584, r2393, r2394, r2395, r2396, r2397, tail⟩

theorem seg13_scp_node5_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2398 : Seg13.relationRow2398 rho)
    (r2399 : Seg13.relationRow2399 rho)
    (r2400 : Seg13.relationRow2400 rho)
    (r2401 : Seg13.relationRow2401 rho)
    (r2402 : Seg13.relationRow2402 rho)
    (tail : next (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574) (rho 9579) (rho 9584) (rho 9589)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg57 (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574) (rho 9579) (rho 9584) next := by
  exact ⟨rho 9585, rho 9586, rho 9587, rho 9588, rho 9589, r2398, r2399, r2400, r2401, r2402, tail⟩

theorem seg13_scp_node5_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2403 : Seg13.relationRow2403 rho)
    (r2404 : Seg13.relationRow2404 rho)
    (r2405 : Seg13.relationRow2405 rho)
    (r2406 : Seg13.relationRow2406 rho)
    (r2407 : Seg13.relationRow2407 rho)
    (tail : next (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574) (rho 9579) (rho 9584) (rho 9589) (rho 9594)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg58 (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574) (rho 9579) (rho 9584) (rho 9589) next := by
  exact ⟨rho 9590, rho 9591, rho 9592, rho 9593, rho 9594, r2403, r2404, r2405, r2406, r2407, tail⟩

theorem seg13_scp_node5_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2408 : Seg13.relationRow2408 rho)
    (r2409 : Seg13.relationRow2409 rho)
    (r2410 : Seg13.relationRow2410 rho)
    (r2411 : Seg13.relationRow2411 rho)
    (r2412 : Seg13.relationRow2412 rho)
    (tail : next (rho 9579) (rho 9584) (rho 9589) (rho 9594) (rho 9599)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg59 (rho 9554) (rho 9559) (rho 9564) (rho 9569) (rho 9574) (rho 9579) (rho 9584) (rho 9589) (rho 9594) next := by
  exact ⟨rho 9595, rho 9596, rho 9597, rho 9598, rho 9599, r2408, r2409, r2410, r2411, r2412, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

