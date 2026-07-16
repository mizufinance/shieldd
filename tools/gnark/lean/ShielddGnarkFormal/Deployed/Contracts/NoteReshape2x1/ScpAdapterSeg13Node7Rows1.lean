import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node7_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2891 : Seg13.relationRow2891 rho)
    (r2892 : Seg13.relationRow2892 rho)
    (r2893 : Seg13.relationRow2893 rho)
    (r2894 : Seg13.relationRow2894 rho)
    (r2895 : Seg13.relationRow2895 rho)
    (tail : next (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070) (rho 10075) (rho 10080)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg10 (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070) (rho 10075) next := by
  exact ⟨rho 10076, rho 10077, rho 10078, rho 10079, rho 10080, r2891, r2892, r2893, r2894, r2895, tail⟩

theorem seg13_scp_node7_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2896 : Seg13.relationRow2896 rho)
    (r2897 : Seg13.relationRow2897 rho)
    (r2898 : Seg13.relationRow2898 rho)
    (r2899 : Seg13.relationRow2899 rho)
    (r2900 : Seg13.relationRow2900 rho)
    (tail : next (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070) (rho 10075) (rho 10080) (rho 10085)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg11 (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070) (rho 10075) (rho 10080) next := by
  exact ⟨rho 10081, rho 10082, rho 10083, rho 10084, rho 10085, r2896, r2897, r2898, r2899, r2900, tail⟩

theorem seg13_scp_node7_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2901 : Seg13.relationRow2901 rho)
    (r2902 : Seg13.relationRow2902 rho)
    (r2903 : Seg13.relationRow2903 rho)
    (r2904 : Seg13.relationRow2904 rho)
    (r2905 : Seg13.relationRow2905 rho)
    (tail : next (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070) (rho 10075) (rho 10080) (rho 10085) (rho 10090)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg12 (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070) (rho 10075) (rho 10080) (rho 10085) next := by
  exact ⟨rho 10086, rho 10087, rho 10088, rho 10089, rho 10090, r2901, r2902, r2903, r2904, r2905, tail⟩

theorem seg13_scp_node7_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2906 : Seg13.relationRow2906 rho)
    (r2907 : Seg13.relationRow2907 rho)
    (r2908 : Seg13.relationRow2908 rho)
    (r2909 : Seg13.relationRow2909 rho)
    (r2910 : Seg13.relationRow2910 rho)
    (tail : next (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg13 (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070) (rho 10075) (rho 10080) (rho 10085) (rho 10090) next := by
  exact ⟨rho 10091, rho 10092, rho 10093, rho 10094, rho 10095, r2906, r2907, r2908, r2909, r2910, tail⟩

theorem seg13_scp_node7_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2911 : Seg13.relationRow2911 rho)
    (r2912 : Seg13.relationRow2912 rho)
    (r2913 : Seg13.relationRow2913 rho)
    (r2914 : Seg13.relationRow2914 rho)
    (r2915 : Seg13.relationRow2915 rho)
    (tail : next (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095) (rho 10100)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg14 (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095) next := by
  exact ⟨rho 10096, rho 10097, rho 10098, rho 10099, rho 10100, r2911, r2912, r2913, r2914, r2915, tail⟩

theorem seg13_scp_node7_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2916 : Seg13.relationRow2916 rho)
    (r2917 : Seg13.relationRow2917 rho)
    (r2918 : Seg13.relationRow2918 rho)
    (r2919 : Seg13.relationRow2919 rho)
    (r2920 : Seg13.relationRow2920 rho)
    (tail : next (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095) (rho 10100) (rho 10105)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg15 (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095) (rho 10100) next := by
  exact ⟨rho 10101, rho 10102, rho 10103, rho 10104, rho 10105, r2916, r2917, r2918, r2919, r2920, tail⟩

theorem seg13_scp_node7_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2921 : Seg13.relationRow2921 rho)
    (r2922 : Seg13.relationRow2922 rho)
    (r2923 : Seg13.relationRow2923 rho)
    (r2924 : Seg13.relationRow2924 rho)
    (r2925 : Seg13.relationRow2925 rho)
    (tail : next (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095) (rho 10100) (rho 10105) (rho 10110)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg16 (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095) (rho 10100) (rho 10105) next := by
  exact ⟨rho 10106, rho 10107, rho 10108, rho 10109, rho 10110, r2921, r2922, r2923, r2924, r2925, tail⟩

theorem seg13_scp_node7_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2926 : Seg13.relationRow2926 rho)
    (r2927 : Seg13.relationRow2927 rho)
    (r2928 : Seg13.relationRow2928 rho)
    (r2929 : Seg13.relationRow2929 rho)
    (r2930 : Seg13.relationRow2930 rho)
    (tail : next (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095) (rho 10100) (rho 10105) (rho 10110) (rho 10115)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg17 (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095) (rho 10100) (rho 10105) (rho 10110) next := by
  exact ⟨rho 10111, rho 10112, rho 10113, rho 10114, rho 10115, r2926, r2927, r2928, r2929, r2930, tail⟩

theorem seg13_scp_node7_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2931 : Seg13.relationRow2931 rho)
    (r2932 : Seg13.relationRow2932 rho)
    (r2933 : Seg13.relationRow2933 rho)
    (r2934 : Seg13.relationRow2934 rho)
    (r2935 : Seg13.relationRow2935 rho)
    (tail : next (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg18 (rho 10075) (rho 10080) (rho 10085) (rho 10090) (rho 10095) (rho 10100) (rho 10105) (rho 10110) (rho 10115) next := by
  exact ⟨rho 10116, rho 10117, rho 10118, rho 10119, rho 10120, r2931, r2932, r2933, r2934, r2935, tail⟩

theorem seg13_scp_node7_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2936 : Seg13.relationRow2936 rho)
    (r2937 : Seg13.relationRow2937 rho)
    (r2938 : Seg13.relationRow2938 rho)
    (r2939 : Seg13.relationRow2939 rho)
    (r2940 : Seg13.relationRow2940 rho)
    (tail : next (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) (rho 10125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg19 (rho 10100) (rho 10105) (rho 10110) (rho 10115) (rho 10120) next := by
  exact ⟨rho 10121, rho 10122, rho 10123, rho 10124, rho 10125, r2936, r2937, r2938, r2939, r2940, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

