import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node16_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6367 : Seg28.relationRow6367 rho)
    (r6368 : Seg28.relationRow6368 rho)
    (r6369 : Seg28.relationRow6369 rho)
    (r6370 : Seg28.relationRow6370 rho)
    (r6371 : Seg28.relationRow6371 rho)
    (tail : next (rho 25515) (rho 25520) (rho 25525) (rho 25530) (rho 25535) (rho 25540) (rho 25545) (rho 25550) (rho 25555) (rho 25560) (rho 25565) (rho 25570) (rho 25575) (rho 25580) (rho 25585) (rho 25590) (rho 25595) (rho 25600) (rho 25605) (rho 25610) (rho 25615) (rho 25620) (rho 25625) (rho 25630) (rho 25635) (rho 25640) (rho 25645) (rho 25650) (rho 25655) (rho 25660) (rho 25665) (rho 25670) (rho 25675) (rho 25680) (rho 25685) (rho 25690) (rho 25695)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg50 (rho 25515) (rho 25520) (rho 25525) (rho 25530) (rho 25535) (rho 25540) (rho 25545) (rho 25550) (rho 25555) (rho 25560) (rho 25565) (rho 25570) (rho 25575) (rho 25580) (rho 25585) (rho 25590) (rho 25595) (rho 25600) (rho 25605) (rho 25610) (rho 25615) (rho 25620) (rho 25625) (rho 25630) (rho 25635) (rho 25640) (rho 25645) (rho 25650) (rho 25655) (rho 25660) (rho 25665) (rho 25670) (rho 25675) (rho 25680) (rho 25685) (rho 25690) next := by
  exact ⟨rho 25691, rho 25692, rho 25693, rho 25694, rho 25695, r6367, r6368, r6369, r6370, r6371, tail⟩

theorem seg28_scp_node16_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6372 : Seg28.relationRow6372 rho)
    (r6373 : Seg28.relationRow6373 rho)
    (r6374 : Seg28.relationRow6374 rho)
    (r6375 : Seg28.relationRow6375 rho)
    (r6376 : Seg28.relationRow6376 rho)
    (tail : next (rho 25515) (rho 25520) (rho 25525) (rho 25530) (rho 25535) (rho 25540) (rho 25545) (rho 25550) (rho 25555) (rho 25560) (rho 25565) (rho 25570) (rho 25575) (rho 25580) (rho 25585) (rho 25590) (rho 25595) (rho 25600) (rho 25605) (rho 25610) (rho 25615) (rho 25620) (rho 25625) (rho 25630) (rho 25635) (rho 25640) (rho 25645) (rho 25650) (rho 25655) (rho 25660) (rho 25665) (rho 25670) (rho 25675) (rho 25680) (rho 25685) (rho 25690) (rho 25695) (rho 25700)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg51 (rho 25515) (rho 25520) (rho 25525) (rho 25530) (rho 25535) (rho 25540) (rho 25545) (rho 25550) (rho 25555) (rho 25560) (rho 25565) (rho 25570) (rho 25575) (rho 25580) (rho 25585) (rho 25590) (rho 25595) (rho 25600) (rho 25605) (rho 25610) (rho 25615) (rho 25620) (rho 25625) (rho 25630) (rho 25635) (rho 25640) (rho 25645) (rho 25650) (rho 25655) (rho 25660) (rho 25665) (rho 25670) (rho 25675) (rho 25680) (rho 25685) (rho 25690) (rho 25695) next := by
  exact ⟨rho 25696, rho 25697, rho 25698, rho 25699, rho 25700, r6372, r6373, r6374, r6375, r6376, tail⟩

theorem seg28_scp_node16_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6377 : Seg28.relationRow6377 rho)
    (r6378 : Seg28.relationRow6378 rho)
    (r6379 : Seg28.relationRow6379 rho)
    (r6380 : Seg28.relationRow6380 rho)
    (r6381 : Seg28.relationRow6381 rho)
    (tail : next (rho 25515) (rho 25520) (rho 25525) (rho 25530) (rho 25535) (rho 25540) (rho 25545) (rho 25550) (rho 25555) (rho 25560) (rho 25565) (rho 25570) (rho 25575) (rho 25580) (rho 25585) (rho 25590) (rho 25595) (rho 25600) (rho 25605) (rho 25610) (rho 25615) (rho 25620) (rho 25625) (rho 25630) (rho 25635) (rho 25640) (rho 25645) (rho 25650) (rho 25655) (rho 25660) (rho 25665) (rho 25670) (rho 25675) (rho 25680) (rho 25685) (rho 25690) (rho 25695) (rho 25700) (rho 25705)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg52 (rho 25515) (rho 25520) (rho 25525) (rho 25530) (rho 25535) (rho 25540) (rho 25545) (rho 25550) (rho 25555) (rho 25560) (rho 25565) (rho 25570) (rho 25575) (rho 25580) (rho 25585) (rho 25590) (rho 25595) (rho 25600) (rho 25605) (rho 25610) (rho 25615) (rho 25620) (rho 25625) (rho 25630) (rho 25635) (rho 25640) (rho 25645) (rho 25650) (rho 25655) (rho 25660) (rho 25665) (rho 25670) (rho 25675) (rho 25680) (rho 25685) (rho 25690) (rho 25695) (rho 25700) next := by
  exact ⟨rho 25701, rho 25702, rho 25703, rho 25704, rho 25705, r6377, r6378, r6379, r6380, r6381, tail⟩

theorem seg28_scp_node16_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6382 : Seg28.relationRow6382 rho)
    (r6383 : Seg28.relationRow6383 rho)
    (r6384 : Seg28.relationRow6384 rho)
    (r6385 : Seg28.relationRow6385 rho)
    (r6386 : Seg28.relationRow6386 rho)
    (tail : next (rho 25515) (rho 25520) (rho 25525) (rho 25530) (rho 25535) (rho 25540) (rho 25545) (rho 25550) (rho 25555) (rho 25560) (rho 25565) (rho 25570) (rho 25575) (rho 25580) (rho 25585) (rho 25590) (rho 25595) (rho 25600) (rho 25605) (rho 25610) (rho 25615) (rho 25620) (rho 25625) (rho 25630) (rho 25635) (rho 25640) (rho 25645) (rho 25650) (rho 25655) (rho 25660) (rho 25665) (rho 25670) (rho 25675) (rho 25680) (rho 25685) (rho 25690) (rho 25695) (rho 25700) (rho 25705) (rho 25710)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg53 (rho 25515) (rho 25520) (rho 25525) (rho 25530) (rho 25535) (rho 25540) (rho 25545) (rho 25550) (rho 25555) (rho 25560) (rho 25565) (rho 25570) (rho 25575) (rho 25580) (rho 25585) (rho 25590) (rho 25595) (rho 25600) (rho 25605) (rho 25610) (rho 25615) (rho 25620) (rho 25625) (rho 25630) (rho 25635) (rho 25640) (rho 25645) (rho 25650) (rho 25655) (rho 25660) (rho 25665) (rho 25670) (rho 25675) (rho 25680) (rho 25685) (rho 25690) (rho 25695) (rho 25700) (rho 25705) next := by
  exact ⟨rho 25706, rho 25707, rho 25708, rho 25709, rho 25710, r6382, r6383, r6384, r6385, r6386, tail⟩

theorem seg28_scp_node16_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6387 : Seg28.relationRow6387 rho)
    (r6388 : Seg28.relationRow6388 rho)
    (r6389 : Seg28.relationRow6389 rho)
    (r6390 : Seg28.relationRow6390 rho)
    (r6391 : Seg28.relationRow6391 rho)
    (tail : next (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg54 (rho 25515) (rho 25520) (rho 25525) (rho 25530) (rho 25535) (rho 25540) (rho 25545) (rho 25550) (rho 25555) (rho 25560) (rho 25565) (rho 25570) (rho 25575) (rho 25580) (rho 25585) (rho 25590) (rho 25595) (rho 25600) (rho 25605) (rho 25610) (rho 25615) (rho 25620) (rho 25625) (rho 25630) (rho 25635) (rho 25640) (rho 25645) (rho 25650) (rho 25655) (rho 25660) (rho 25665) (rho 25670) (rho 25675) (rho 25680) (rho 25685) (rho 25690) (rho 25695) (rho 25700) (rho 25705) (rho 25710) next := by
  exact ⟨rho 25711, rho 25712, rho 25713, rho 25714, rho 25715, r6387, r6388, r6389, r6390, r6391, tail⟩

theorem seg28_scp_node16_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6392 : Seg28.relationRow6392 rho)
    (r6393 : Seg28.relationRow6393 rho)
    (r6394 : Seg28.relationRow6394 rho)
    (r6395 : Seg28.relationRow6395 rho)
    (r6396 : Seg28.relationRow6396 rho)
    (tail : next (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715) (rho 25720)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg55 (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715) next := by
  exact ⟨rho 25716, rho 25717, rho 25718, rho 25719, rho 25720, r6392, r6393, r6394, r6395, r6396, tail⟩

theorem seg28_scp_node16_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6397 : Seg28.relationRow6397 rho)
    (r6398 : Seg28.relationRow6398 rho)
    (r6399 : Seg28.relationRow6399 rho)
    (r6400 : Seg28.relationRow6400 rho)
    (r6401 : Seg28.relationRow6401 rho)
    (tail : next (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715) (rho 25720) (rho 25725)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg56 (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715) (rho 25720) next := by
  exact ⟨rho 25721, rho 25722, rho 25723, rho 25724, rho 25725, r6397, r6398, r6399, r6400, r6401, tail⟩

theorem seg28_scp_node16_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6402 : Seg28.relationRow6402 rho)
    (r6403 : Seg28.relationRow6403 rho)
    (r6404 : Seg28.relationRow6404 rho)
    (r6405 : Seg28.relationRow6405 rho)
    (r6406 : Seg28.relationRow6406 rho)
    (tail : next (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715) (rho 25720) (rho 25725) (rho 25730)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg57 (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715) (rho 25720) (rho 25725) next := by
  exact ⟨rho 25726, rho 25727, rho 25728, rho 25729, rho 25730, r6402, r6403, r6404, r6405, r6406, tail⟩

theorem seg28_scp_node16_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6407 : Seg28.relationRow6407 rho)
    (r6408 : Seg28.relationRow6408 rho)
    (r6409 : Seg28.relationRow6409 rho)
    (r6410 : Seg28.relationRow6410 rho)
    (r6411 : Seg28.relationRow6411 rho)
    (tail : next (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715) (rho 25720) (rho 25725) (rho 25730) (rho 25735)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg58 (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715) (rho 25720) (rho 25725) (rho 25730) next := by
  exact ⟨rho 25731, rho 25732, rho 25733, rho 25734, rho 25735, r6407, r6408, r6409, r6410, r6411, tail⟩

theorem seg28_scp_node16_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6412 : Seg28.relationRow6412 rho)
    (r6413 : Seg28.relationRow6413 rho)
    (r6414 : Seg28.relationRow6414 rho)
    (r6415 : Seg28.relationRow6415 rho)
    (r6416 : Seg28.relationRow6416 rho)
    (tail : next (rho 25720) (rho 25725) (rho 25730) (rho 25735) (rho 25740)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg59 (rho 25695) (rho 25700) (rho 25705) (rho 25710) (rho 25715) (rho 25720) (rho 25725) (rho 25730) (rho 25735) next := by
  exact ⟨rho 25736, rho 25737, rho 25738, rho 25739, rho 25740, r6412, r6413, r6414, r6415, r6416, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

