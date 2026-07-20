import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node7_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2841 : Seg28.relationRow2841 rho)
    (r2842 : Seg28.relationRow2842 rho)
    (r2843 : Seg28.relationRow2843 rho)
    (r2844 : Seg28.relationRow2844 rho)
    (r2845 : Seg28.relationRow2845 rho)
    (tail : next (rho 161) (rho 162) (rho 22196) (rho 22197) (rho 22198) (rho 22199) (rho 22200) (rho 22205)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg0 (rho 160) (rho 161) (rho 162) (rho 22195) (rho 22196) (rho 22197) (rho 22198) (rho 22199) (rho 22200) next := by
  exact ⟨rho 22201, rho 22202, rho 22203, rho 22204, rho 22205, r2841, r2842, r2843, r2844, r2845, tail⟩

theorem seg28_scp_node7_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2846 : Seg28.relationRow2846 rho)
    (r2847 : Seg28.relationRow2847 rho)
    (r2848 : Seg28.relationRow2848 rho)
    (r2849 : Seg28.relationRow2849 rho)
    (r2850 : Seg28.relationRow2850 rho)
    (tail : next (rho 161) (rho 162) (rho 22198) (rho 22199) (rho 22200) (rho 22205) (rho 22210)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg1 (rho 161) (rho 162) (rho 22196) (rho 22197) (rho 22198) (rho 22199) (rho 22200) (rho 22205) next := by
  exact ⟨rho 22206, rho 22207, rho 22208, rho 22209, rho 22210, r2846, r2847, r2848, r2849, r2850, tail⟩

theorem seg28_scp_node7_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2851 : Seg28.relationRow2851 rho)
    (r2852 : Seg28.relationRow2852 rho)
    (r2853 : Seg28.relationRow2853 rho)
    (r2854 : Seg28.relationRow2854 rho)
    (r2855 : Seg28.relationRow2855 rho)
    (tail : next (rho 162) (rho 22200) (rho 22205) (rho 22210) (rho 22215)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg2 (rho 161) (rho 162) (rho 22198) (rho 22199) (rho 22200) (rho 22205) (rho 22210) next := by
  exact ⟨rho 22211, rho 22212, rho 22213, rho 22214, rho 22215, r2851, r2852, r2853, r2854, r2855, tail⟩

theorem seg28_scp_node7_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2856 : Seg28.relationRow2856 rho)
    (r2857 : Seg28.relationRow2857 rho)
    (r2858 : Seg28.relationRow2858 rho)
    (r2859 : Seg28.relationRow2859 rho)
    (r2860 : Seg28.relationRow2860 rho)
    (tail : next (rho 22205) (rho 22210) (rho 22215) (rho 22220)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg3 (rho 162) (rho 22200) (rho 22205) (rho 22210) (rho 22215) next := by
  exact ⟨rho 22216, rho 22217, rho 22218, rho 22219, rho 22220, r2856, r2857, r2858, r2859, r2860, tail⟩

theorem seg28_scp_node7_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2861 : Seg28.relationRow2861 rho)
    (r2862 : Seg28.relationRow2862 rho)
    (r2863 : Seg28.relationRow2863 rho)
    (r2864 : Seg28.relationRow2864 rho)
    (r2865 : Seg28.relationRow2865 rho)
    (tail : next (rho 22205) (rho 22210) (rho 22215) (rho 22220) (rho 22225)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg4 (rho 22205) (rho 22210) (rho 22215) (rho 22220) next := by
  exact ⟨rho 22221, rho 22222, rho 22223, rho 22224, rho 22225, r2861, r2862, r2863, r2864, r2865, tail⟩

theorem seg28_scp_node7_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2866 : Seg28.relationRow2866 rho)
    (r2867 : Seg28.relationRow2867 rho)
    (r2868 : Seg28.relationRow2868 rho)
    (r2869 : Seg28.relationRow2869 rho)
    (r2870 : Seg28.relationRow2870 rho)
    (tail : next (rho 22205) (rho 22210) (rho 22215) (rho 22220) (rho 22225) (rho 22230)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg5 (rho 22205) (rho 22210) (rho 22215) (rho 22220) (rho 22225) next := by
  exact ⟨rho 22226, rho 22227, rho 22228, rho 22229, rho 22230, r2866, r2867, r2868, r2869, r2870, tail⟩

theorem seg28_scp_node7_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2871 : Seg28.relationRow2871 rho)
    (r2872 : Seg28.relationRow2872 rho)
    (r2873 : Seg28.relationRow2873 rho)
    (r2874 : Seg28.relationRow2874 rho)
    (r2875 : Seg28.relationRow2875 rho)
    (tail : next (rho 22205) (rho 22210) (rho 22215) (rho 22220) (rho 22225) (rho 22230) (rho 22235)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg6 (rho 22205) (rho 22210) (rho 22215) (rho 22220) (rho 22225) (rho 22230) next := by
  exact ⟨rho 22231, rho 22232, rho 22233, rho 22234, rho 22235, r2871, r2872, r2873, r2874, r2875, tail⟩

theorem seg28_scp_node7_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2876 : Seg28.relationRow2876 rho)
    (r2877 : Seg28.relationRow2877 rho)
    (r2878 : Seg28.relationRow2878 rho)
    (r2879 : Seg28.relationRow2879 rho)
    (r2880 : Seg28.relationRow2880 rho)
    (tail : next (rho 22205) (rho 22210) (rho 22215) (rho 22220) (rho 22225) (rho 22230) (rho 22235) (rho 22240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg7 (rho 22205) (rho 22210) (rho 22215) (rho 22220) (rho 22225) (rho 22230) (rho 22235) next := by
  exact ⟨rho 22236, rho 22237, rho 22238, rho 22239, rho 22240, r2876, r2877, r2878, r2879, r2880, tail⟩

theorem seg28_scp_node7_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2881 : Seg28.relationRow2881 rho)
    (r2882 : Seg28.relationRow2882 rho)
    (r2883 : Seg28.relationRow2883 rho)
    (r2884 : Seg28.relationRow2884 rho)
    (r2885 : Seg28.relationRow2885 rho)
    (tail : next (rho 22225) (rho 22230) (rho 22235) (rho 22240) (rho 22245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg8 (rho 22205) (rho 22210) (rho 22215) (rho 22220) (rho 22225) (rho 22230) (rho 22235) (rho 22240) next := by
  exact ⟨rho 22241, rho 22242, rho 22243, rho 22244, rho 22245, r2881, r2882, r2883, r2884, r2885, tail⟩

theorem seg28_scp_node7_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2886 : Seg28.relationRow2886 rho)
    (r2887 : Seg28.relationRow2887 rho)
    (r2888 : Seg28.relationRow2888 rho)
    (r2889 : Seg28.relationRow2889 rho)
    (r2890 : Seg28.relationRow2890 rho)
    (tail : next (rho 22225) (rho 22230) (rho 22235) (rho 22240) (rho 22245) (rho 22250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_9f6242.seg9 (rho 22225) (rho 22230) (rho 22235) (rho 22240) (rho 22245) next := by
  exact ⟨rho 22246, rho 22247, rho 22248, rho 22249, rho 22250, r2886, r2887, r2888, r2889, r2890, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

