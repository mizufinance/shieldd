import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node18_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6895 : Seg13.relationRow6895 rho)
    (r6896 : Seg13.relationRow6896 rho)
    (r6897 : Seg13.relationRow6897 rho)
    (r6898 : Seg13.relationRow6898 rho)
    (r6899 : Seg13.relationRow6899 rho)
    (tail : next (rho 14004) (rho 14009) (rho 14014) (rho 14019) (rho 14024) (rho 14029) (rho 14034)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg10 (rho 14004) (rho 14009) (rho 14014) (rho 14019) (rho 14024) (rho 14029) next := by
  exact ⟨rho 14030, rho 14031, rho 14032, rho 14033, rho 14034, r6895, r6896, r6897, r6898, r6899, tail⟩

theorem seg13_scp_node18_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6900 : Seg13.relationRow6900 rho)
    (r6901 : Seg13.relationRow6901 rho)
    (r6902 : Seg13.relationRow6902 rho)
    (r6903 : Seg13.relationRow6903 rho)
    (r6904 : Seg13.relationRow6904 rho)
    (tail : next (rho 14004) (rho 14009) (rho 14014) (rho 14019) (rho 14024) (rho 14029) (rho 14034) (rho 14039)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg11 (rho 14004) (rho 14009) (rho 14014) (rho 14019) (rho 14024) (rho 14029) (rho 14034) next := by
  exact ⟨rho 14035, rho 14036, rho 14037, rho 14038, rho 14039, r6900, r6901, r6902, r6903, r6904, tail⟩

theorem seg13_scp_node18_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6905 : Seg13.relationRow6905 rho)
    (r6906 : Seg13.relationRow6906 rho)
    (r6907 : Seg13.relationRow6907 rho)
    (r6908 : Seg13.relationRow6908 rho)
    (r6909 : Seg13.relationRow6909 rho)
    (tail : next (rho 14004) (rho 14009) (rho 14014) (rho 14019) (rho 14024) (rho 14029) (rho 14034) (rho 14039) (rho 14044)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg12 (rho 14004) (rho 14009) (rho 14014) (rho 14019) (rho 14024) (rho 14029) (rho 14034) (rho 14039) next := by
  exact ⟨rho 14040, rho 14041, rho 14042, rho 14043, rho 14044, r6905, r6906, r6907, r6908, r6909, tail⟩

theorem seg13_scp_node18_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6910 : Seg13.relationRow6910 rho)
    (r6911 : Seg13.relationRow6911 rho)
    (r6912 : Seg13.relationRow6912 rho)
    (r6913 : Seg13.relationRow6913 rho)
    (r6914 : Seg13.relationRow6914 rho)
    (tail : next (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg13 (rho 14004) (rho 14009) (rho 14014) (rho 14019) (rho 14024) (rho 14029) (rho 14034) (rho 14039) (rho 14044) next := by
  exact ⟨rho 14045, rho 14046, rho 14047, rho 14048, rho 14049, r6910, r6911, r6912, r6913, r6914, tail⟩

theorem seg13_scp_node18_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6915 : Seg13.relationRow6915 rho)
    (r6916 : Seg13.relationRow6916 rho)
    (r6917 : Seg13.relationRow6917 rho)
    (r6918 : Seg13.relationRow6918 rho)
    (r6919 : Seg13.relationRow6919 rho)
    (tail : next (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049) (rho 14054)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg14 (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049) next := by
  exact ⟨rho 14050, rho 14051, rho 14052, rho 14053, rho 14054, r6915, r6916, r6917, r6918, r6919, tail⟩

theorem seg13_scp_node18_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6920 : Seg13.relationRow6920 rho)
    (r6921 : Seg13.relationRow6921 rho)
    (r6922 : Seg13.relationRow6922 rho)
    (r6923 : Seg13.relationRow6923 rho)
    (r6924 : Seg13.relationRow6924 rho)
    (tail : next (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049) (rho 14054) (rho 14059)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg15 (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049) (rho 14054) next := by
  exact ⟨rho 14055, rho 14056, rho 14057, rho 14058, rho 14059, r6920, r6921, r6922, r6923, r6924, tail⟩

theorem seg13_scp_node18_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6925 : Seg13.relationRow6925 rho)
    (r6926 : Seg13.relationRow6926 rho)
    (r6927 : Seg13.relationRow6927 rho)
    (r6928 : Seg13.relationRow6928 rho)
    (r6929 : Seg13.relationRow6929 rho)
    (tail : next (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049) (rho 14054) (rho 14059) (rho 14064)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg16 (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049) (rho 14054) (rho 14059) next := by
  exact ⟨rho 14060, rho 14061, rho 14062, rho 14063, rho 14064, r6925, r6926, r6927, r6928, r6929, tail⟩

theorem seg13_scp_node18_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6930 : Seg13.relationRow6930 rho)
    (r6931 : Seg13.relationRow6931 rho)
    (r6932 : Seg13.relationRow6932 rho)
    (r6933 : Seg13.relationRow6933 rho)
    (r6934 : Seg13.relationRow6934 rho)
    (tail : next (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049) (rho 14054) (rho 14059) (rho 14064) (rho 14069)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg17 (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049) (rho 14054) (rho 14059) (rho 14064) next := by
  exact ⟨rho 14065, rho 14066, rho 14067, rho 14068, rho 14069, r6930, r6931, r6932, r6933, r6934, tail⟩

theorem seg13_scp_node18_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6935 : Seg13.relationRow6935 rho)
    (r6936 : Seg13.relationRow6936 rho)
    (r6937 : Seg13.relationRow6937 rho)
    (r6938 : Seg13.relationRow6938 rho)
    (r6939 : Seg13.relationRow6939 rho)
    (tail : next (rho 14054) (rho 14059) (rho 14064) (rho 14069) (rho 14074)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg18 (rho 14029) (rho 14034) (rho 14039) (rho 14044) (rho 14049) (rho 14054) (rho 14059) (rho 14064) (rho 14069) next := by
  exact ⟨rho 14070, rho 14071, rho 14072, rho 14073, rho 14074, r6935, r6936, r6937, r6938, r6939, tail⟩

theorem seg13_scp_node18_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6940 : Seg13.relationRow6940 rho)
    (r6941 : Seg13.relationRow6941 rho)
    (r6942 : Seg13.relationRow6942 rho)
    (r6943 : Seg13.relationRow6943 rho)
    (r6944 : Seg13.relationRow6944 rho)
    (tail : next (rho 14054) (rho 14059) (rho 14064) (rho 14069) (rho 14074) (rho 14079)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg19 (rho 14054) (rho 14059) (rho 14064) (rho 14069) (rho 14074) next := by
  exact ⟨rho 14075, rho 14076, rho 14077, rho 14078, rho 14079, r6940, r6941, r6942, r6943, r6944, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

