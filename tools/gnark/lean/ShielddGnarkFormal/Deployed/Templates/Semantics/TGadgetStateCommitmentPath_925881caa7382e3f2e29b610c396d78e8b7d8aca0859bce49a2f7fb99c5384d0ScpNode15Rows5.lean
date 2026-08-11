import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node15_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6003 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6003 rho)
    (r6004 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6004 rho)
    (r6005 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6005 rho)
    (r6006 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6006 rho)
    (r6007 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6007 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894) (rho 5899) (rho 5904) (rho 5909) (rho 5914) (rho 5919) (rho 5924) (rho 5929) (rho 5934) (rho 5939) (rho 5944) (rho 5949) (rho 5954) (rho 5959) (rho 5964) (rho 5969) (rho 5974) (rho 5979) (rho 5984) (rho 5989) (rho 5994) (rho 5999)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg50 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894) (rho 5899) (rho 5904) (rho 5909) (rho 5914) (rho 5919) (rho 5924) (rho 5929) (rho 5934) (rho 5939) (rho 5944) (rho 5949) (rho 5954) (rho 5959) (rho 5964) (rho 5969) (rho 5974) (rho 5979) (rho 5984) (rho 5989) (rho 5994) next := by
  exact ⟨rho 5995, rho 5996, rho 5997, rho 5998, rho 5999, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6003 at r6003; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc143, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc143Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc143Part1] at r6003; linear_combination r6003), r6004, r6005, r6006, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6007 at r6007; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc143, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc143Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc143Part1] at r6007; linear_combination r6007), tail⟩

theorem template_scp_node15_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6008 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6008 rho)
    (r6009 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6009 rho)
    (r6010 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6010 rho)
    (r6011 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6011 rho)
    (r6012 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6012 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894) (rho 5899) (rho 5904) (rho 5909) (rho 5914) (rho 5919) (rho 5924) (rho 5929) (rho 5934) (rho 5939) (rho 5944) (rho 5949) (rho 5954) (rho 5959) (rho 5964) (rho 5969) (rho 5974) (rho 5979) (rho 5984) (rho 5989) (rho 5994) (rho 5999) (rho 6004)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg51 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894) (rho 5899) (rho 5904) (rho 5909) (rho 5914) (rho 5919) (rho 5924) (rho 5929) (rho 5934) (rho 5939) (rho 5944) (rho 5949) (rho 5954) (rho 5959) (rho 5964) (rho 5969) (rho 5974) (rho 5979) (rho 5984) (rho 5989) (rho 5994) (rho 5999) next := by
  exact ⟨rho 6000, rho 6001, rho 6002, rho 6003, rho 6004, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6008 at r6008; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc144, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc144Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc144Part1] at r6008; linear_combination r6008), r6009, r6010, r6011, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6012 at r6012; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc144, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc144Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc144Part1] at r6012; linear_combination r6012), tail⟩

theorem template_scp_node15_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6013 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6013 rho)
    (r6014 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6014 rho)
    (r6015 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6015 rho)
    (r6016 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6016 rho)
    (r6017 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6017 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894) (rho 5899) (rho 5904) (rho 5909) (rho 5914) (rho 5919) (rho 5924) (rho 5929) (rho 5934) (rho 5939) (rho 5944) (rho 5949) (rho 5954) (rho 5959) (rho 5964) (rho 5969) (rho 5974) (rho 5979) (rho 5984) (rho 5989) (rho 5994) (rho 5999) (rho 6004) (rho 6009)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg52 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894) (rho 5899) (rho 5904) (rho 5909) (rho 5914) (rho 5919) (rho 5924) (rho 5929) (rho 5934) (rho 5939) (rho 5944) (rho 5949) (rho 5954) (rho 5959) (rho 5964) (rho 5969) (rho 5974) (rho 5979) (rho 5984) (rho 5989) (rho 5994) (rho 5999) (rho 6004) next := by
  exact ⟨rho 6005, rho 6006, rho 6007, rho 6008, rho 6009, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6013 at r6013; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc145, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc145Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc145Part1] at r6013; linear_combination r6013), r6014, r6015, r6016, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6017 at r6017; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc145, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc145Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc145Part1] at r6017; linear_combination r6017), tail⟩

theorem template_scp_node15_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6018 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6018 rho)
    (r6019 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6019 rho)
    (r6020 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6020 rho)
    (r6021 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6021 rho)
    (r6022 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6022 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894) (rho 5899) (rho 5904) (rho 5909) (rho 5914) (rho 5919) (rho 5924) (rho 5929) (rho 5934) (rho 5939) (rho 5944) (rho 5949) (rho 5954) (rho 5959) (rho 5964) (rho 5969) (rho 5974) (rho 5979) (rho 5984) (rho 5989) (rho 5994) (rho 5999) (rho 6004) (rho 6009) (rho 6014)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg53 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894) (rho 5899) (rho 5904) (rho 5909) (rho 5914) (rho 5919) (rho 5924) (rho 5929) (rho 5934) (rho 5939) (rho 5944) (rho 5949) (rho 5954) (rho 5959) (rho 5964) (rho 5969) (rho 5974) (rho 5979) (rho 5984) (rho 5989) (rho 5994) (rho 5999) (rho 6004) (rho 6009) next := by
  exact ⟨rho 6010, rho 6011, rho 6012, rho 6013, rho 6014, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6018 at r6018; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc146, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc146Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc146Part1] at r6018; linear_combination r6018), r6019, r6020, r6021, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6022 at r6022; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc146, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc146Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc146Part1] at r6022; linear_combination r6022), tail⟩

theorem template_scp_node15_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6023 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6023 rho)
    (r6024 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6024 rho)
    (r6025 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6025 rho)
    (r6026 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6026 rho)
    (r6027 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6027 rho)
    (tail : next (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg54 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894) (rho 5899) (rho 5904) (rho 5909) (rho 5914) (rho 5919) (rho 5924) (rho 5929) (rho 5934) (rho 5939) (rho 5944) (rho 5949) (rho 5954) (rho 5959) (rho 5964) (rho 5969) (rho 5974) (rho 5979) (rho 5984) (rho 5989) (rho 5994) (rho 5999) (rho 6004) (rho 6009) (rho 6014) next := by
  exact ⟨rho 6015, rho 6016, rho 6017, rho 6018, rho 6019, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6023 at r6023; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc147, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc147Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc147Part1] at r6023; linear_combination r6023), r6024, r6025, r6026, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6027 at r6027; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc147, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc147Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc147Part1] at r6027; linear_combination r6027), tail⟩

theorem template_scp_node15_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6028 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6028 rho)
    (r6029 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6029 rho)
    (r6030 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6030 rho)
    (r6031 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6031 rho)
    (r6032 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6032 rho)
    (tail : next (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019) (rho 6024)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg55 (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019) next := by
  exact ⟨rho 6020, rho 6021, rho 6022, rho 6023, rho 6024, r6028, r6029, r6030, r6031, r6032, tail⟩

theorem template_scp_node15_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6033 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6033 rho)
    (r6034 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6034 rho)
    (r6035 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6035 rho)
    (r6036 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6036 rho)
    (r6037 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6037 rho)
    (tail : next (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019) (rho 6024) (rho 6029)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg56 (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019) (rho 6024) next := by
  exact ⟨rho 6025, rho 6026, rho 6027, rho 6028, rho 6029, r6033, r6034, r6035, r6036, r6037, tail⟩

theorem template_scp_node15_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6038 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6038 rho)
    (r6039 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6039 rho)
    (r6040 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6040 rho)
    (r6041 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6041 rho)
    (r6042 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6042 rho)
    (tail : next (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019) (rho 6024) (rho 6029) (rho 6034)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg57 (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019) (rho 6024) (rho 6029) next := by
  exact ⟨rho 6030, rho 6031, rho 6032, rho 6033, rho 6034, r6038, r6039, r6040, r6041, r6042, tail⟩

theorem template_scp_node15_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6043 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6043 rho)
    (r6044 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6044 rho)
    (r6045 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6045 rho)
    (r6046 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6046 rho)
    (r6047 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6047 rho)
    (tail : next (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019) (rho 6024) (rho 6029) (rho 6034) (rho 6039)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg58 (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019) (rho 6024) (rho 6029) (rho 6034) next := by
  exact ⟨rho 6035, rho 6036, rho 6037, rho 6038, rho 6039, r6043, r6044, r6045, r6046, r6047, tail⟩

theorem template_scp_node15_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6048 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6048 rho)
    (r6049 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6049 rho)
    (r6050 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6050 rho)
    (r6051 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6051 rho)
    (r6052 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6052 rho)
    (tail : next (rho 6024) (rho 6029) (rho 6034) (rho 6039) (rho 6044)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg59 (rho 5999) (rho 6004) (rho 6009) (rho 6014) (rho 6019) (rho 6024) (rho 6029) (rho 6034) (rho 6039) next := by
  exact ⟨rho 6040, rho 6041, rho 6042, rho 6043, rho 6044, r6048, r6049, r6050, r6051, r6052, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
