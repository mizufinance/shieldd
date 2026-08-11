import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node15_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5853 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5853 rho)
    (r5854 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5854 rho)
    (r5855 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5855 rho)
    (r5856 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5856 rho)
    (r5857 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5857 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg20 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) next := by
  exact ⟨rho 5845, rho 5846, rho 5847, rho 5848, rho 5849, r5853, r5854, r5855, r5856, r5857, tail⟩

theorem template_scp_node15_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5858 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5858 rho)
    (r5859 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5859 rho)
    (r5860 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5860 rho)
    (r5861 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5861 rho)
    (r5862 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5862 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg21 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) next := by
  exact ⟨rho 5850, rho 5851, rho 5852, rho 5853, rho 5854, r5858, r5859, r5860, r5861, r5862, tail⟩

theorem template_scp_node15_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5863 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5863 rho)
    (r5864 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5864 rho)
    (r5865 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5865 rho)
    (r5866 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5866 rho)
    (r5867 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5867 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg22 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) next := by
  exact ⟨rho 5855, rho 5856, rho 5857, rho 5858, rho 5859, r5863, r5864, r5865, r5866, r5867, tail⟩

theorem template_scp_node15_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r5868 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5868 rho)
    (r5869 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5869 rho)
    (r5870 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5870 rho)
    (r5871 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5871 rho)
    (r5872 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5872 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg23 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) next := by
  exact ⟨rho 5860, rho 5861, rho 5862, rho 5863, rho 5864, r5868, r5869, r5870, r5871, r5872, tail⟩

theorem template_scp_node15_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5873 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5873 rho)
    (r5874 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5874 rho)
    (r5875 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5875 rho)
    (r5876 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5876 rho)
    (r5877 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5877 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg24 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) next := by
  exact ⟨rho 5865, rho 5866, rho 5867, rho 5868, rho 5869, r5873, r5874, r5875, r5876, r5877, tail⟩

theorem template_scp_node15_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5878 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5878 rho)
    (r5879 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5879 rho)
    (r5880 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5880 rho)
    (r5881 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5881 rho)
    (r5882 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5882 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg25 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) next := by
  exact ⟨rho 5870, rho 5871, rho 5872, rho 5873, rho 5874, r5878, r5879, r5880, r5881, r5882, tail⟩

theorem template_scp_node15_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5883 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5883 rho)
    (r5884 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5884 rho)
    (r5885 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5885 rho)
    (r5886 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5886 rho)
    (r5887 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5887 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg26 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) next := by
  exact ⟨rho 5875, rho 5876, rho 5877, rho 5878, rho 5879, r5883, r5884, r5885, r5886, r5887, tail⟩

theorem template_scp_node15_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5888 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5888 rho)
    (r5889 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5889 rho)
    (r5890 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5890 rho)
    (r5891 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5891 rho)
    (r5892 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5892 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg27 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) next := by
  exact ⟨rho 5880, rho 5881, rho 5882, rho 5883, rho 5884, r5888, r5889, r5890, r5891, r5892, tail⟩

theorem template_scp_node15_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5893 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5893 rho)
    (r5894 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5894 rho)
    (r5895 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5895 rho)
    (r5896 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5896 rho)
    (r5897 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5897 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg28 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) next := by
  exact ⟨rho 5885, rho 5886, rho 5887, rho 5888, rho 5889, r5893, r5894, r5895, r5896, r5897, tail⟩

theorem template_scp_node15_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5898 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5898 rho)
    (r5899 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5899 rho)
    (r5900 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5900 rho)
    (r5901 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5901 rho)
    (r5902 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow5902 rho)
    (tail : next (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) (rho 5894)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_83acd9.seg29 (rho 5819) (rho 5824) (rho 5829) (rho 5834) (rho 5839) (rho 5844) (rho 5849) (rho 5854) (rho 5859) (rho 5864) (rho 5869) (rho 5874) (rho 5879) (rho 5884) (rho 5889) next := by
  exact ⟨rho 5890, rho 5891, rho 5892, rho 5893, rho 5894, r5898, r5899, r5900, r5901, r5902, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
