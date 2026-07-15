import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node7_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2891 : Seg28.relationRow2891 rho)
    (r2892 : Seg28.relationRow2892 rho)
    (r2893 : Seg28.relationRow2893 rho)
    (r2894 : Seg28.relationRow2894 rho)
    (r2895 : Seg28.relationRow2895 rho)
    (tail : next (rho 22231) (rho 22236) (rho 22241) (rho 22246) (rho 22251) (rho 22256) (rho 22261)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg10 (rho 22231) (rho 22236) (rho 22241) (rho 22246) (rho 22251) (rho 22256) next := by
  exact ⟨rho 22257, rho 22258, rho 22259, rho 22260, rho 22261, r2891, r2892, r2893, r2894, r2895, tail⟩

theorem seg28_scp_node7_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2896 : Seg28.relationRow2896 rho)
    (r2897 : Seg28.relationRow2897 rho)
    (r2898 : Seg28.relationRow2898 rho)
    (r2899 : Seg28.relationRow2899 rho)
    (r2900 : Seg28.relationRow2900 rho)
    (tail : next (rho 22231) (rho 22236) (rho 22241) (rho 22246) (rho 22251) (rho 22256) (rho 22261) (rho 22266)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg11 (rho 22231) (rho 22236) (rho 22241) (rho 22246) (rho 22251) (rho 22256) (rho 22261) next := by
  exact ⟨rho 22262, rho 22263, rho 22264, rho 22265, rho 22266, r2896, r2897, r2898, r2899, r2900, tail⟩

theorem seg28_scp_node7_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2901 : Seg28.relationRow2901 rho)
    (r2902 : Seg28.relationRow2902 rho)
    (r2903 : Seg28.relationRow2903 rho)
    (r2904 : Seg28.relationRow2904 rho)
    (r2905 : Seg28.relationRow2905 rho)
    (tail : next (rho 22231) (rho 22236) (rho 22241) (rho 22246) (rho 22251) (rho 22256) (rho 22261) (rho 22266) (rho 22271)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg12 (rho 22231) (rho 22236) (rho 22241) (rho 22246) (rho 22251) (rho 22256) (rho 22261) (rho 22266) next := by
  exact ⟨rho 22267, rho 22268, rho 22269, rho 22270, rho 22271, r2901, r2902, r2903, r2904, r2905, tail⟩

theorem seg28_scp_node7_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2906 : Seg28.relationRow2906 rho)
    (r2907 : Seg28.relationRow2907 rho)
    (r2908 : Seg28.relationRow2908 rho)
    (r2909 : Seg28.relationRow2909 rho)
    (r2910 : Seg28.relationRow2910 rho)
    (tail : next (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg13 (rho 22231) (rho 22236) (rho 22241) (rho 22246) (rho 22251) (rho 22256) (rho 22261) (rho 22266) (rho 22271) next := by
  exact ⟨rho 22272, rho 22273, rho 22274, rho 22275, rho 22276, r2906, r2907, r2908, r2909, r2910, tail⟩

theorem seg28_scp_node7_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2911 : Seg28.relationRow2911 rho)
    (r2912 : Seg28.relationRow2912 rho)
    (r2913 : Seg28.relationRow2913 rho)
    (r2914 : Seg28.relationRow2914 rho)
    (r2915 : Seg28.relationRow2915 rho)
    (tail : next (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276) (rho 22281)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg14 (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276) next := by
  exact ⟨rho 22277, rho 22278, rho 22279, rho 22280, rho 22281, r2911, r2912, r2913, r2914, r2915, tail⟩

theorem seg28_scp_node7_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2916 : Seg28.relationRow2916 rho)
    (r2917 : Seg28.relationRow2917 rho)
    (r2918 : Seg28.relationRow2918 rho)
    (r2919 : Seg28.relationRow2919 rho)
    (r2920 : Seg28.relationRow2920 rho)
    (tail : next (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276) (rho 22281) (rho 22286)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg15 (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276) (rho 22281) next := by
  exact ⟨rho 22282, rho 22283, rho 22284, rho 22285, rho 22286, r2916, r2917, r2918, r2919, r2920, tail⟩

theorem seg28_scp_node7_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2921 : Seg28.relationRow2921 rho)
    (r2922 : Seg28.relationRow2922 rho)
    (r2923 : Seg28.relationRow2923 rho)
    (r2924 : Seg28.relationRow2924 rho)
    (r2925 : Seg28.relationRow2925 rho)
    (tail : next (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276) (rho 22281) (rho 22286) (rho 22291)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg16 (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276) (rho 22281) (rho 22286) next := by
  exact ⟨rho 22287, rho 22288, rho 22289, rho 22290, rho 22291, r2921, r2922, r2923, r2924, r2925, tail⟩

theorem seg28_scp_node7_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2926 : Seg28.relationRow2926 rho)
    (r2927 : Seg28.relationRow2927 rho)
    (r2928 : Seg28.relationRow2928 rho)
    (r2929 : Seg28.relationRow2929 rho)
    (r2930 : Seg28.relationRow2930 rho)
    (tail : next (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276) (rho 22281) (rho 22286) (rho 22291) (rho 22296)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg17 (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276) (rho 22281) (rho 22286) (rho 22291) next := by
  exact ⟨rho 22292, rho 22293, rho 22294, rho 22295, rho 22296, r2926, r2927, r2928, r2929, r2930, tail⟩

theorem seg28_scp_node7_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2931 : Seg28.relationRow2931 rho)
    (r2932 : Seg28.relationRow2932 rho)
    (r2933 : Seg28.relationRow2933 rho)
    (r2934 : Seg28.relationRow2934 rho)
    (r2935 : Seg28.relationRow2935 rho)
    (tail : next (rho 22281) (rho 22286) (rho 22291) (rho 22296) (rho 22301)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg18 (rho 22256) (rho 22261) (rho 22266) (rho 22271) (rho 22276) (rho 22281) (rho 22286) (rho 22291) (rho 22296) next := by
  exact ⟨rho 22297, rho 22298, rho 22299, rho 22300, rho 22301, r2931, r2932, r2933, r2934, r2935, tail⟩

theorem seg28_scp_node7_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2936 : Seg28.relationRow2936 rho)
    (r2937 : Seg28.relationRow2937 rho)
    (r2938 : Seg28.relationRow2938 rho)
    (r2939 : Seg28.relationRow2939 rho)
    (r2940 : Seg28.relationRow2940 rho)
    (tail : next (rho 22281) (rho 22286) (rho 22291) (rho 22296) (rho 22301) (rho 22306)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg19 (rho 22281) (rho 22286) (rho 22291) (rho 22296) (rho 22301) next := by
  exact ⟨rho 22302, rho 22303, rho 22304, rho 22305, rho 22306, r2936, r2937, r2938, r2939, r2940, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

