import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node7_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2841 : Seg13.relationRow2841 rho)
    (r2842 : Seg13.relationRow2842 rho)
    (r2843 : Seg13.relationRow2843 rho)
    (r2844 : Seg13.relationRow2844 rho)
    (r2845 : Seg13.relationRow2845 rho)
    (tail : next (rho 74) (rho 75) (rho 10021) (rho 10022) (rho 10023) (rho 10024) (rho 10025) (rho 10030)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg0 (rho 73) (rho 74) (rho 75) (rho 10020) (rho 10021) (rho 10022) (rho 10023) (rho 10024) (rho 10025) next := by
  exact ⟨rho 10026, rho 10027, rho 10028, rho 10029, rho 10030, r2841, r2842, r2843, r2844, r2845, tail⟩

theorem seg13_scp_node7_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2846 : Seg13.relationRow2846 rho)
    (r2847 : Seg13.relationRow2847 rho)
    (r2848 : Seg13.relationRow2848 rho)
    (r2849 : Seg13.relationRow2849 rho)
    (r2850 : Seg13.relationRow2850 rho)
    (tail : next (rho 74) (rho 75) (rho 10023) (rho 10024) (rho 10025) (rho 10030) (rho 10035)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg1 (rho 74) (rho 75) (rho 10021) (rho 10022) (rho 10023) (rho 10024) (rho 10025) (rho 10030) next := by
  exact ⟨rho 10031, rho 10032, rho 10033, rho 10034, rho 10035, r2846, r2847, r2848, r2849, r2850, tail⟩

theorem seg13_scp_node7_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2851 : Seg13.relationRow2851 rho)
    (r2852 : Seg13.relationRow2852 rho)
    (r2853 : Seg13.relationRow2853 rho)
    (r2854 : Seg13.relationRow2854 rho)
    (r2855 : Seg13.relationRow2855 rho)
    (tail : next (rho 75) (rho 10025) (rho 10030) (rho 10035) (rho 10040)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg2 (rho 74) (rho 75) (rho 10023) (rho 10024) (rho 10025) (rho 10030) (rho 10035) next := by
  exact ⟨rho 10036, rho 10037, rho 10038, rho 10039, rho 10040, r2851, r2852, r2853, r2854, r2855, tail⟩

theorem seg13_scp_node7_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2856 : Seg13.relationRow2856 rho)
    (r2857 : Seg13.relationRow2857 rho)
    (r2858 : Seg13.relationRow2858 rho)
    (r2859 : Seg13.relationRow2859 rho)
    (r2860 : Seg13.relationRow2860 rho)
    (tail : next (rho 10030) (rho 10035) (rho 10040) (rho 10045)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg3 (rho 75) (rho 10025) (rho 10030) (rho 10035) (rho 10040) next := by
  exact ⟨rho 10041, rho 10042, rho 10043, rho 10044, rho 10045, r2856, r2857, r2858, r2859, r2860, tail⟩

theorem seg13_scp_node7_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2861 : Seg13.relationRow2861 rho)
    (r2862 : Seg13.relationRow2862 rho)
    (r2863 : Seg13.relationRow2863 rho)
    (r2864 : Seg13.relationRow2864 rho)
    (r2865 : Seg13.relationRow2865 rho)
    (tail : next (rho 10030) (rho 10035) (rho 10040) (rho 10045) (rho 10050)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg4 (rho 10030) (rho 10035) (rho 10040) (rho 10045) next := by
  exact ⟨rho 10046, rho 10047, rho 10048, rho 10049, rho 10050, r2861, r2862, r2863, r2864, r2865, tail⟩

theorem seg13_scp_node7_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2866 : Seg13.relationRow2866 rho)
    (r2867 : Seg13.relationRow2867 rho)
    (r2868 : Seg13.relationRow2868 rho)
    (r2869 : Seg13.relationRow2869 rho)
    (r2870 : Seg13.relationRow2870 rho)
    (tail : next (rho 10030) (rho 10035) (rho 10040) (rho 10045) (rho 10050) (rho 10055)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg5 (rho 10030) (rho 10035) (rho 10040) (rho 10045) (rho 10050) next := by
  exact ⟨rho 10051, rho 10052, rho 10053, rho 10054, rho 10055, r2866, r2867, r2868, r2869, r2870, tail⟩

theorem seg13_scp_node7_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2871 : Seg13.relationRow2871 rho)
    (r2872 : Seg13.relationRow2872 rho)
    (r2873 : Seg13.relationRow2873 rho)
    (r2874 : Seg13.relationRow2874 rho)
    (r2875 : Seg13.relationRow2875 rho)
    (tail : next (rho 10030) (rho 10035) (rho 10040) (rho 10045) (rho 10050) (rho 10055) (rho 10060)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg6 (rho 10030) (rho 10035) (rho 10040) (rho 10045) (rho 10050) (rho 10055) next := by
  exact ⟨rho 10056, rho 10057, rho 10058, rho 10059, rho 10060, r2871, r2872, r2873, r2874, r2875, tail⟩

theorem seg13_scp_node7_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2876 : Seg13.relationRow2876 rho)
    (r2877 : Seg13.relationRow2877 rho)
    (r2878 : Seg13.relationRow2878 rho)
    (r2879 : Seg13.relationRow2879 rho)
    (r2880 : Seg13.relationRow2880 rho)
    (tail : next (rho 10030) (rho 10035) (rho 10040) (rho 10045) (rho 10050) (rho 10055) (rho 10060) (rho 10065)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg7 (rho 10030) (rho 10035) (rho 10040) (rho 10045) (rho 10050) (rho 10055) (rho 10060) next := by
  exact ⟨rho 10061, rho 10062, rho 10063, rho 10064, rho 10065, r2876, r2877, r2878, r2879, r2880, tail⟩

theorem seg13_scp_node7_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2881 : Seg13.relationRow2881 rho)
    (r2882 : Seg13.relationRow2882 rho)
    (r2883 : Seg13.relationRow2883 rho)
    (r2884 : Seg13.relationRow2884 rho)
    (r2885 : Seg13.relationRow2885 rho)
    (tail : next (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg8 (rho 10030) (rho 10035) (rho 10040) (rho 10045) (rho 10050) (rho 10055) (rho 10060) (rho 10065) next := by
  exact ⟨rho 10066, rho 10067, rho 10068, rho 10069, rho 10070, r2881, r2882, r2883, r2884, r2885, tail⟩

theorem seg13_scp_node7_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r2886 : Seg13.relationRow2886 rho)
    (r2887 : Seg13.relationRow2887 rho)
    (r2888 : Seg13.relationRow2888 rho)
    (r2889 : Seg13.relationRow2889 rho)
    (r2890 : Seg13.relationRow2890 rho)
    (tail : next (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070) (rho 10075)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode7350_80d032.seg9 (rho 10050) (rho 10055) (rho 10060) (rho 10065) (rho 10070) next := by
  exact ⟨rho 10071, rho 10072, rho 10073, rho 10074, rho 10075, r2886, r2887, r2888, r2889, r2890, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

