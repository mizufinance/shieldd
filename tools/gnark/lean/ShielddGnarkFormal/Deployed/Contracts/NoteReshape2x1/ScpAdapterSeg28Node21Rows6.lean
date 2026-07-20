import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node21_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8237 : Seg28.relationRow8237 rho)
    (r8238 : Seg28.relationRow8238 rho)
    (r8239 : Seg28.relationRow8239 rho)
    (r8240 : Seg28.relationRow8240 rho)
    (r8241 : Seg28.relationRow8241 rho)
    (tail : next (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540) (rho 27545)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg60 (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540) next := by
  exact ⟨rho 27541, rho 27542, rho 27543, rho 27544, rho 27545, r8237, r8238, r8239, r8240, r8241, tail⟩

theorem seg28_scp_node21_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8242 : Seg28.relationRow8242 rho)
    (r8243 : Seg28.relationRow8243 rho)
    (r8244 : Seg28.relationRow8244 rho)
    (r8245 : Seg28.relationRow8245 rho)
    (r8246 : Seg28.relationRow8246 rho)
    (tail : next (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540) (rho 27545) (rho 27550)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg61 (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540) (rho 27545) next := by
  exact ⟨rho 27546, rho 27547, rho 27548, rho 27549, rho 27550, r8242, r8243, r8244, r8245, r8246, tail⟩

theorem seg28_scp_node21_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8247 : Seg28.relationRow8247 rho)
    (r8248 : Seg28.relationRow8248 rho)
    (r8249 : Seg28.relationRow8249 rho)
    (r8250 : Seg28.relationRow8250 rho)
    (r8251 : Seg28.relationRow8251 rho)
    (tail : next (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540) (rho 27545) (rho 27550) (rho 27555)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg62 (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540) (rho 27545) (rho 27550) next := by
  exact ⟨rho 27551, rho 27552, rho 27553, rho 27554, rho 27555, r8247, r8248, r8249, r8250, r8251, tail⟩

theorem seg28_scp_node21_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8252 : Seg28.relationRow8252 rho)
    (r8253 : Seg28.relationRow8253 rho)
    (r8254 : Seg28.relationRow8254 rho)
    (r8255 : Seg28.relationRow8255 rho)
    (r8256 : Seg28.relationRow8256 rho)
    (tail : next (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540) (rho 27545) (rho 27550) (rho 27555) (rho 27560)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg63 (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540) (rho 27545) (rho 27550) (rho 27555) next := by
  exact ⟨rho 27556, rho 27557, rho 27558, rho 27559, rho 27560, r8252, r8253, r8254, r8255, r8256, tail⟩

theorem seg28_scp_node21_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8257 : Seg28.relationRow8257 rho)
    (r8258 : Seg28.relationRow8258 rho)
    (r8259 : Seg28.relationRow8259 rho)
    (r8260 : Seg28.relationRow8260 rho)
    (r8261 : Seg28.relationRow8261 rho)
    (tail : next (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg64 (rho 27520) (rho 27525) (rho 27530) (rho 27535) (rho 27540) (rho 27545) (rho 27550) (rho 27555) (rho 27560) next := by
  exact ⟨rho 27561, rho 27562, rho 27563, rho 27564, rho 27565, r8257, r8258, r8259, r8260, r8261, tail⟩

theorem seg28_scp_node21_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8262 : Seg28.relationRow8262 rho)
    (r8263 : Seg28.relationRow8263 rho)
    (r8264 : Seg28.relationRow8264 rho)
    (r8265 : Seg28.relationRow8265 rho)
    (r8266 : Seg28.relationRow8266 rho)
    (tail : next (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565) (rho 27570)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg65 (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565) next := by
  exact ⟨rho 27566, rho 27567, rho 27568, rho 27569, rho 27570, r8262, r8263, r8264, r8265, r8266, tail⟩

theorem seg28_scp_node21_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8267 : Seg28.relationRow8267 rho)
    (r8268 : Seg28.relationRow8268 rho)
    (r8269 : Seg28.relationRow8269 rho)
    (r8270 : Seg28.relationRow8270 rho)
    (r8271 : Seg28.relationRow8271 rho)
    (tail : next (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565) (rho 27570) (rho 27575)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg66 (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565) (rho 27570) next := by
  exact ⟨rho 27571, rho 27572, rho 27573, rho 27574, rho 27575, r8267, r8268, r8269, r8270, r8271, tail⟩

theorem seg28_scp_node21_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8272 : Seg28.relationRow8272 rho)
    (r8273 : Seg28.relationRow8273 rho)
    (r8274 : Seg28.relationRow8274 rho)
    (r8275 : Seg28.relationRow8275 rho)
    (r8276 : Seg28.relationRow8276 rho)
    (tail : next (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565) (rho 27570) (rho 27575) (rho 27580)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg67 (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565) (rho 27570) (rho 27575) next := by
  exact ⟨rho 27576, rho 27577, rho 27578, rho 27579, rho 27580, r8272, r8273, r8274, r8275, r8276, tail⟩

theorem seg28_scp_node21_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8277 : Seg28.relationRow8277 rho)
    (r8278 : Seg28.relationRow8278 rho)
    (r8279 : Seg28.relationRow8279 rho)
    (r8280 : Seg28.relationRow8280 rho)
    (r8281 : Seg28.relationRow8281 rho)
    (tail : next (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565) (rho 27570) (rho 27575) (rho 27580) (rho 27585)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg68 (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565) (rho 27570) (rho 27575) (rho 27580) next := by
  exact ⟨rho 27581, rho 27582, rho 27583, rho 27584, rho 27585, r8277, r8278, r8279, r8280, r8281, tail⟩

theorem seg28_scp_node21_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8282 : Seg28.relationRow8282 rho)
    (r8283 : Seg28.relationRow8283 rho)
    (r8284 : Seg28.relationRow8284 rho)
    (r8285 : Seg28.relationRow8285 rho)
    (r8286 : Seg28.relationRow8286 rho)
    (tail : next (rho 27570) (rho 27575) (rho 27580) (rho 27585) (rho 27590)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg69 (rho 27545) (rho 27550) (rho 27555) (rho 27560) (rho 27565) (rho 27570) (rho 27575) (rho 27580) (rho 27585) next := by
  exact ⟨rho 27586, rho 27587, rho 27588, rho 27589, rho 27590, r8282, r8283, r8284, r8285, r8286, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

