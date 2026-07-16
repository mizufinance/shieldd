import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node19_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7259 : Seg28.relationRow7259 rho)
    (r7260 : Seg28.relationRow7260 rho)
    (r7261 : Seg28.relationRow7261 rho)
    (r7262 : Seg28.relationRow7262 rho)
    (r7263 : Seg28.relationRow7263 rho)
    (tail : next (rho 26551) (rho 26556) (rho 26561) (rho 26566) (rho 26571) (rho 26576) (rho 26581)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg10 (rho 26551) (rho 26556) (rho 26561) (rho 26566) (rho 26571) (rho 26576) next := by
  exact ⟨rho 26577, rho 26578, rho 26579, rho 26580, rho 26581, r7259, r7260, r7261, r7262, r7263, tail⟩

theorem seg28_scp_node19_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7264 : Seg28.relationRow7264 rho)
    (r7265 : Seg28.relationRow7265 rho)
    (r7266 : Seg28.relationRow7266 rho)
    (r7267 : Seg28.relationRow7267 rho)
    (r7268 : Seg28.relationRow7268 rho)
    (tail : next (rho 26551) (rho 26556) (rho 26561) (rho 26566) (rho 26571) (rho 26576) (rho 26581) (rho 26586)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg11 (rho 26551) (rho 26556) (rho 26561) (rho 26566) (rho 26571) (rho 26576) (rho 26581) next := by
  exact ⟨rho 26582, rho 26583, rho 26584, rho 26585, rho 26586, r7264, r7265, r7266, r7267, r7268, tail⟩

theorem seg28_scp_node19_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7269 : Seg28.relationRow7269 rho)
    (r7270 : Seg28.relationRow7270 rho)
    (r7271 : Seg28.relationRow7271 rho)
    (r7272 : Seg28.relationRow7272 rho)
    (r7273 : Seg28.relationRow7273 rho)
    (tail : next (rho 26551) (rho 26556) (rho 26561) (rho 26566) (rho 26571) (rho 26576) (rho 26581) (rho 26586) (rho 26591)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg12 (rho 26551) (rho 26556) (rho 26561) (rho 26566) (rho 26571) (rho 26576) (rho 26581) (rho 26586) next := by
  exact ⟨rho 26587, rho 26588, rho 26589, rho 26590, rho 26591, r7269, r7270, r7271, r7272, r7273, tail⟩

theorem seg28_scp_node19_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7274 : Seg28.relationRow7274 rho)
    (r7275 : Seg28.relationRow7275 rho)
    (r7276 : Seg28.relationRow7276 rho)
    (r7277 : Seg28.relationRow7277 rho)
    (r7278 : Seg28.relationRow7278 rho)
    (tail : next (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg13 (rho 26551) (rho 26556) (rho 26561) (rho 26566) (rho 26571) (rho 26576) (rho 26581) (rho 26586) (rho 26591) next := by
  exact ⟨rho 26592, rho 26593, rho 26594, rho 26595, rho 26596, r7274, r7275, r7276, r7277, r7278, tail⟩

theorem seg28_scp_node19_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7279 : Seg28.relationRow7279 rho)
    (r7280 : Seg28.relationRow7280 rho)
    (r7281 : Seg28.relationRow7281 rho)
    (r7282 : Seg28.relationRow7282 rho)
    (r7283 : Seg28.relationRow7283 rho)
    (tail : next (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596) (rho 26601)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg14 (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596) next := by
  exact ⟨rho 26597, rho 26598, rho 26599, rho 26600, rho 26601, r7279, r7280, r7281, r7282, r7283, tail⟩

theorem seg28_scp_node19_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7284 : Seg28.relationRow7284 rho)
    (r7285 : Seg28.relationRow7285 rho)
    (r7286 : Seg28.relationRow7286 rho)
    (r7287 : Seg28.relationRow7287 rho)
    (r7288 : Seg28.relationRow7288 rho)
    (tail : next (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596) (rho 26601) (rho 26606)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg15 (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596) (rho 26601) next := by
  exact ⟨rho 26602, rho 26603, rho 26604, rho 26605, rho 26606, r7284, r7285, r7286, r7287, r7288, tail⟩

theorem seg28_scp_node19_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7289 : Seg28.relationRow7289 rho)
    (r7290 : Seg28.relationRow7290 rho)
    (r7291 : Seg28.relationRow7291 rho)
    (r7292 : Seg28.relationRow7292 rho)
    (r7293 : Seg28.relationRow7293 rho)
    (tail : next (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596) (rho 26601) (rho 26606) (rho 26611)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg16 (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596) (rho 26601) (rho 26606) next := by
  exact ⟨rho 26607, rho 26608, rho 26609, rho 26610, rho 26611, r7289, r7290, r7291, r7292, r7293, tail⟩

theorem seg28_scp_node19_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7294 : Seg28.relationRow7294 rho)
    (r7295 : Seg28.relationRow7295 rho)
    (r7296 : Seg28.relationRow7296 rho)
    (r7297 : Seg28.relationRow7297 rho)
    (r7298 : Seg28.relationRow7298 rho)
    (tail : next (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596) (rho 26601) (rho 26606) (rho 26611) (rho 26616)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg17 (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596) (rho 26601) (rho 26606) (rho 26611) next := by
  exact ⟨rho 26612, rho 26613, rho 26614, rho 26615, rho 26616, r7294, r7295, r7296, r7297, r7298, tail⟩

theorem seg28_scp_node19_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7299 : Seg28.relationRow7299 rho)
    (r7300 : Seg28.relationRow7300 rho)
    (r7301 : Seg28.relationRow7301 rho)
    (r7302 : Seg28.relationRow7302 rho)
    (r7303 : Seg28.relationRow7303 rho)
    (tail : next (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg18 (rho 26576) (rho 26581) (rho 26586) (rho 26591) (rho 26596) (rho 26601) (rho 26606) (rho 26611) (rho 26616) next := by
  exact ⟨rho 26617, rho 26618, rho 26619, rho 26620, rho 26621, r7299, r7300, r7301, r7302, r7303, tail⟩

theorem seg28_scp_node19_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7304 : Seg28.relationRow7304 rho)
    (r7305 : Seg28.relationRow7305 rho)
    (r7306 : Seg28.relationRow7306 rho)
    (r7307 : Seg28.relationRow7307 rho)
    (r7308 : Seg28.relationRow7308 rho)
    (tail : next (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) (rho 26626)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg19 (rho 26601) (rho 26606) (rho 26611) (rho 26616) (rho 26621) next := by
  exact ⟨rho 26622, rho 26623, rho 26624, rho 26625, rho 26626, r7304, r7305, r7306, r7307, r7308, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

