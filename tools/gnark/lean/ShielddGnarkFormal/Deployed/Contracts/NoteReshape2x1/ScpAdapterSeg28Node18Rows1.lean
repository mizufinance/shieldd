import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node18_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6895 : Seg28.relationRow6895 rho)
    (r6896 : Seg28.relationRow6896 rho)
    (r6897 : Seg28.relationRow6897 rho)
    (r6898 : Seg28.relationRow6898 rho)
    (r6899 : Seg28.relationRow6899 rho)
    (tail : next (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211) (rho 26216) (rho 26221)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg10 (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211) (rho 26216) next := by
  exact ⟨rho 26217, rho 26218, rho 26219, rho 26220, rho 26221, r6895, r6896, r6897, r6898, r6899, tail⟩

theorem seg28_scp_node18_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6900 : Seg28.relationRow6900 rho)
    (r6901 : Seg28.relationRow6901 rho)
    (r6902 : Seg28.relationRow6902 rho)
    (r6903 : Seg28.relationRow6903 rho)
    (r6904 : Seg28.relationRow6904 rho)
    (tail : next (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211) (rho 26216) (rho 26221) (rho 26226)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg11 (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211) (rho 26216) (rho 26221) next := by
  exact ⟨rho 26222, rho 26223, rho 26224, rho 26225, rho 26226, r6900, r6901, r6902, r6903, r6904, tail⟩

theorem seg28_scp_node18_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6905 : Seg28.relationRow6905 rho)
    (r6906 : Seg28.relationRow6906 rho)
    (r6907 : Seg28.relationRow6907 rho)
    (r6908 : Seg28.relationRow6908 rho)
    (r6909 : Seg28.relationRow6909 rho)
    (tail : next (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211) (rho 26216) (rho 26221) (rho 26226) (rho 26231)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg12 (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211) (rho 26216) (rho 26221) (rho 26226) next := by
  exact ⟨rho 26227, rho 26228, rho 26229, rho 26230, rho 26231, r6905, r6906, r6907, r6908, r6909, tail⟩

theorem seg28_scp_node18_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6910 : Seg28.relationRow6910 rho)
    (r6911 : Seg28.relationRow6911 rho)
    (r6912 : Seg28.relationRow6912 rho)
    (r6913 : Seg28.relationRow6913 rho)
    (r6914 : Seg28.relationRow6914 rho)
    (tail : next (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg13 (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211) (rho 26216) (rho 26221) (rho 26226) (rho 26231) next := by
  exact ⟨rho 26232, rho 26233, rho 26234, rho 26235, rho 26236, r6910, r6911, r6912, r6913, r6914, tail⟩

theorem seg28_scp_node18_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6915 : Seg28.relationRow6915 rho)
    (r6916 : Seg28.relationRow6916 rho)
    (r6917 : Seg28.relationRow6917 rho)
    (r6918 : Seg28.relationRow6918 rho)
    (r6919 : Seg28.relationRow6919 rho)
    (tail : next (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236) (rho 26241)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg14 (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236) next := by
  exact ⟨rho 26237, rho 26238, rho 26239, rho 26240, rho 26241, r6915, r6916, r6917, r6918, r6919, tail⟩

theorem seg28_scp_node18_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6920 : Seg28.relationRow6920 rho)
    (r6921 : Seg28.relationRow6921 rho)
    (r6922 : Seg28.relationRow6922 rho)
    (r6923 : Seg28.relationRow6923 rho)
    (r6924 : Seg28.relationRow6924 rho)
    (tail : next (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236) (rho 26241) (rho 26246)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg15 (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236) (rho 26241) next := by
  exact ⟨rho 26242, rho 26243, rho 26244, rho 26245, rho 26246, r6920, r6921, r6922, r6923, r6924, tail⟩

theorem seg28_scp_node18_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6925 : Seg28.relationRow6925 rho)
    (r6926 : Seg28.relationRow6926 rho)
    (r6927 : Seg28.relationRow6927 rho)
    (r6928 : Seg28.relationRow6928 rho)
    (r6929 : Seg28.relationRow6929 rho)
    (tail : next (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236) (rho 26241) (rho 26246) (rho 26251)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg16 (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236) (rho 26241) (rho 26246) next := by
  exact ⟨rho 26247, rho 26248, rho 26249, rho 26250, rho 26251, r6925, r6926, r6927, r6928, r6929, tail⟩

theorem seg28_scp_node18_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6930 : Seg28.relationRow6930 rho)
    (r6931 : Seg28.relationRow6931 rho)
    (r6932 : Seg28.relationRow6932 rho)
    (r6933 : Seg28.relationRow6933 rho)
    (r6934 : Seg28.relationRow6934 rho)
    (tail : next (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236) (rho 26241) (rho 26246) (rho 26251) (rho 26256)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg17 (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236) (rho 26241) (rho 26246) (rho 26251) next := by
  exact ⟨rho 26252, rho 26253, rho 26254, rho 26255, rho 26256, r6930, r6931, r6932, r6933, r6934, tail⟩

theorem seg28_scp_node18_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6935 : Seg28.relationRow6935 rho)
    (r6936 : Seg28.relationRow6936 rho)
    (r6937 : Seg28.relationRow6937 rho)
    (r6938 : Seg28.relationRow6938 rho)
    (r6939 : Seg28.relationRow6939 rho)
    (tail : next (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg18 (rho 26216) (rho 26221) (rho 26226) (rho 26231) (rho 26236) (rho 26241) (rho 26246) (rho 26251) (rho 26256) next := by
  exact ⟨rho 26257, rho 26258, rho 26259, rho 26260, rho 26261, r6935, r6936, r6937, r6938, r6939, tail⟩

theorem seg28_scp_node18_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6940 : Seg28.relationRow6940 rho)
    (r6941 : Seg28.relationRow6941 rho)
    (r6942 : Seg28.relationRow6942 rho)
    (r6943 : Seg28.relationRow6943 rho)
    (r6944 : Seg28.relationRow6944 rho)
    (tail : next (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg19 (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) next := by
  exact ⟨rho 26262, rho 26263, rho 26264, rho 26265, rho 26266, r6940, r6941, r6942, r6943, r6944, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

