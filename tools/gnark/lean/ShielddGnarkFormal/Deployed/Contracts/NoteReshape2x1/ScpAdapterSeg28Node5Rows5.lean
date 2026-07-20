import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node5_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2363 : Seg28.relationRow2363 rho)
    (r2364 : Seg28.relationRow2364 rho)
    (r2365 : Seg28.relationRow2365 rho)
    (r2366 : Seg28.relationRow2366 rho)
    (r2367 : Seg28.relationRow2367 rho)
    (tail : next (rho 21555) (rho 21560) (rho 21565) (rho 21570) (rho 21575) (rho 21580) (rho 21585) (rho 21590) (rho 21595) (rho 21600) (rho 21605) (rho 21610) (rho 21615) (rho 21620) (rho 21625) (rho 21630) (rho 21635) (rho 21640) (rho 21645) (rho 21650) (rho 21655) (rho 21660) (rho 21665) (rho 21670) (rho 21675) (rho 21680) (rho 21685) (rho 21690) (rho 21695) (rho 21700) (rho 21705) (rho 21710) (rho 21715) (rho 21720) (rho 21725) (rho 21730) (rho 21735)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg50 (rho 21555) (rho 21560) (rho 21565) (rho 21570) (rho 21575) (rho 21580) (rho 21585) (rho 21590) (rho 21595) (rho 21600) (rho 21605) (rho 21610) (rho 21615) (rho 21620) (rho 21625) (rho 21630) (rho 21635) (rho 21640) (rho 21645) (rho 21650) (rho 21655) (rho 21660) (rho 21665) (rho 21670) (rho 21675) (rho 21680) (rho 21685) (rho 21690) (rho 21695) (rho 21700) (rho 21705) (rho 21710) (rho 21715) (rho 21720) (rho 21725) (rho 21730) next := by
  exact ⟨rho 21731, rho 21732, rho 21733, rho 21734, rho 21735, r2363, r2364, r2365, r2366, r2367, tail⟩

theorem seg28_scp_node5_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2368 : Seg28.relationRow2368 rho)
    (r2369 : Seg28.relationRow2369 rho)
    (r2370 : Seg28.relationRow2370 rho)
    (r2371 : Seg28.relationRow2371 rho)
    (r2372 : Seg28.relationRow2372 rho)
    (tail : next (rho 21555) (rho 21560) (rho 21565) (rho 21570) (rho 21575) (rho 21580) (rho 21585) (rho 21590) (rho 21595) (rho 21600) (rho 21605) (rho 21610) (rho 21615) (rho 21620) (rho 21625) (rho 21630) (rho 21635) (rho 21640) (rho 21645) (rho 21650) (rho 21655) (rho 21660) (rho 21665) (rho 21670) (rho 21675) (rho 21680) (rho 21685) (rho 21690) (rho 21695) (rho 21700) (rho 21705) (rho 21710) (rho 21715) (rho 21720) (rho 21725) (rho 21730) (rho 21735) (rho 21740)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg51 (rho 21555) (rho 21560) (rho 21565) (rho 21570) (rho 21575) (rho 21580) (rho 21585) (rho 21590) (rho 21595) (rho 21600) (rho 21605) (rho 21610) (rho 21615) (rho 21620) (rho 21625) (rho 21630) (rho 21635) (rho 21640) (rho 21645) (rho 21650) (rho 21655) (rho 21660) (rho 21665) (rho 21670) (rho 21675) (rho 21680) (rho 21685) (rho 21690) (rho 21695) (rho 21700) (rho 21705) (rho 21710) (rho 21715) (rho 21720) (rho 21725) (rho 21730) (rho 21735) next := by
  exact ⟨rho 21736, rho 21737, rho 21738, rho 21739, rho 21740, r2368, r2369, r2370, r2371, r2372, tail⟩

theorem seg28_scp_node5_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2373 : Seg28.relationRow2373 rho)
    (r2374 : Seg28.relationRow2374 rho)
    (r2375 : Seg28.relationRow2375 rho)
    (r2376 : Seg28.relationRow2376 rho)
    (r2377 : Seg28.relationRow2377 rho)
    (tail : next (rho 21555) (rho 21560) (rho 21565) (rho 21570) (rho 21575) (rho 21580) (rho 21585) (rho 21590) (rho 21595) (rho 21600) (rho 21605) (rho 21610) (rho 21615) (rho 21620) (rho 21625) (rho 21630) (rho 21635) (rho 21640) (rho 21645) (rho 21650) (rho 21655) (rho 21660) (rho 21665) (rho 21670) (rho 21675) (rho 21680) (rho 21685) (rho 21690) (rho 21695) (rho 21700) (rho 21705) (rho 21710) (rho 21715) (rho 21720) (rho 21725) (rho 21730) (rho 21735) (rho 21740) (rho 21745)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg52 (rho 21555) (rho 21560) (rho 21565) (rho 21570) (rho 21575) (rho 21580) (rho 21585) (rho 21590) (rho 21595) (rho 21600) (rho 21605) (rho 21610) (rho 21615) (rho 21620) (rho 21625) (rho 21630) (rho 21635) (rho 21640) (rho 21645) (rho 21650) (rho 21655) (rho 21660) (rho 21665) (rho 21670) (rho 21675) (rho 21680) (rho 21685) (rho 21690) (rho 21695) (rho 21700) (rho 21705) (rho 21710) (rho 21715) (rho 21720) (rho 21725) (rho 21730) (rho 21735) (rho 21740) next := by
  exact ⟨rho 21741, rho 21742, rho 21743, rho 21744, rho 21745, r2373, r2374, r2375, r2376, r2377, tail⟩

theorem seg28_scp_node5_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2378 : Seg28.relationRow2378 rho)
    (r2379 : Seg28.relationRow2379 rho)
    (r2380 : Seg28.relationRow2380 rho)
    (r2381 : Seg28.relationRow2381 rho)
    (r2382 : Seg28.relationRow2382 rho)
    (tail : next (rho 21555) (rho 21560) (rho 21565) (rho 21570) (rho 21575) (rho 21580) (rho 21585) (rho 21590) (rho 21595) (rho 21600) (rho 21605) (rho 21610) (rho 21615) (rho 21620) (rho 21625) (rho 21630) (rho 21635) (rho 21640) (rho 21645) (rho 21650) (rho 21655) (rho 21660) (rho 21665) (rho 21670) (rho 21675) (rho 21680) (rho 21685) (rho 21690) (rho 21695) (rho 21700) (rho 21705) (rho 21710) (rho 21715) (rho 21720) (rho 21725) (rho 21730) (rho 21735) (rho 21740) (rho 21745) (rho 21750)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg53 (rho 21555) (rho 21560) (rho 21565) (rho 21570) (rho 21575) (rho 21580) (rho 21585) (rho 21590) (rho 21595) (rho 21600) (rho 21605) (rho 21610) (rho 21615) (rho 21620) (rho 21625) (rho 21630) (rho 21635) (rho 21640) (rho 21645) (rho 21650) (rho 21655) (rho 21660) (rho 21665) (rho 21670) (rho 21675) (rho 21680) (rho 21685) (rho 21690) (rho 21695) (rho 21700) (rho 21705) (rho 21710) (rho 21715) (rho 21720) (rho 21725) (rho 21730) (rho 21735) (rho 21740) (rho 21745) next := by
  exact ⟨rho 21746, rho 21747, rho 21748, rho 21749, rho 21750, r2378, r2379, r2380, r2381, r2382, tail⟩

theorem seg28_scp_node5_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2383 : Seg28.relationRow2383 rho)
    (r2384 : Seg28.relationRow2384 rho)
    (r2385 : Seg28.relationRow2385 rho)
    (r2386 : Seg28.relationRow2386 rho)
    (r2387 : Seg28.relationRow2387 rho)
    (tail : next (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg54 (rho 21555) (rho 21560) (rho 21565) (rho 21570) (rho 21575) (rho 21580) (rho 21585) (rho 21590) (rho 21595) (rho 21600) (rho 21605) (rho 21610) (rho 21615) (rho 21620) (rho 21625) (rho 21630) (rho 21635) (rho 21640) (rho 21645) (rho 21650) (rho 21655) (rho 21660) (rho 21665) (rho 21670) (rho 21675) (rho 21680) (rho 21685) (rho 21690) (rho 21695) (rho 21700) (rho 21705) (rho 21710) (rho 21715) (rho 21720) (rho 21725) (rho 21730) (rho 21735) (rho 21740) (rho 21745) (rho 21750) next := by
  exact ⟨rho 21751, rho 21752, rho 21753, rho 21754, rho 21755, r2383, r2384, r2385, r2386, r2387, tail⟩

theorem seg28_scp_node5_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2388 : Seg28.relationRow2388 rho)
    (r2389 : Seg28.relationRow2389 rho)
    (r2390 : Seg28.relationRow2390 rho)
    (r2391 : Seg28.relationRow2391 rho)
    (r2392 : Seg28.relationRow2392 rho)
    (tail : next (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755) (rho 21760)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg55 (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755) next := by
  exact ⟨rho 21756, rho 21757, rho 21758, rho 21759, rho 21760, r2388, r2389, r2390, r2391, r2392, tail⟩

theorem seg28_scp_node5_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2393 : Seg28.relationRow2393 rho)
    (r2394 : Seg28.relationRow2394 rho)
    (r2395 : Seg28.relationRow2395 rho)
    (r2396 : Seg28.relationRow2396 rho)
    (r2397 : Seg28.relationRow2397 rho)
    (tail : next (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755) (rho 21760) (rho 21765)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg56 (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755) (rho 21760) next := by
  exact ⟨rho 21761, rho 21762, rho 21763, rho 21764, rho 21765, r2393, r2394, r2395, r2396, r2397, tail⟩

theorem seg28_scp_node5_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2398 : Seg28.relationRow2398 rho)
    (r2399 : Seg28.relationRow2399 rho)
    (r2400 : Seg28.relationRow2400 rho)
    (r2401 : Seg28.relationRow2401 rho)
    (r2402 : Seg28.relationRow2402 rho)
    (tail : next (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755) (rho 21760) (rho 21765) (rho 21770)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg57 (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755) (rho 21760) (rho 21765) next := by
  exact ⟨rho 21766, rho 21767, rho 21768, rho 21769, rho 21770, r2398, r2399, r2400, r2401, r2402, tail⟩

theorem seg28_scp_node5_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2403 : Seg28.relationRow2403 rho)
    (r2404 : Seg28.relationRow2404 rho)
    (r2405 : Seg28.relationRow2405 rho)
    (r2406 : Seg28.relationRow2406 rho)
    (r2407 : Seg28.relationRow2407 rho)
    (tail : next (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755) (rho 21760) (rho 21765) (rho 21770) (rho 21775)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg58 (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755) (rho 21760) (rho 21765) (rho 21770) next := by
  exact ⟨rho 21771, rho 21772, rho 21773, rho 21774, rho 21775, r2403, r2404, r2405, r2406, r2407, tail⟩

theorem seg28_scp_node5_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2408 : Seg28.relationRow2408 rho)
    (r2409 : Seg28.relationRow2409 rho)
    (r2410 : Seg28.relationRow2410 rho)
    (r2411 : Seg28.relationRow2411 rho)
    (r2412 : Seg28.relationRow2412 rho)
    (tail : next (rho 21760) (rho 21765) (rho 21770) (rho 21775) (rho 21780)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode5350_de57b1.seg59 (rho 21735) (rho 21740) (rho 21745) (rho 21750) (rho 21755) (rho 21760) (rho 21765) (rho 21770) (rho 21775) next := by
  exact ⟨rho 21776, rho 21777, rho 21778, rho 21779, rho 21780, r2408, r2409, r2410, r2411, r2412, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

