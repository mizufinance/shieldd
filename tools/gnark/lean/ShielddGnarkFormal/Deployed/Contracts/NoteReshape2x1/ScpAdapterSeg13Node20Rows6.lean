import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node20_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7873 : Seg13.relationRow7873 rho)
    (r7874 : Seg13.relationRow7874 rho)
    (r7875 : Seg13.relationRow7875 rho)
    (r7876 : Seg13.relationRow7876 rho)
    (r7877 : Seg13.relationRow7877 rho)
    (tail : next (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005) (rho 15010)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg60 (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005) next := by
  exact ⟨rho 15006, rho 15007, rho 15008, rho 15009, rho 15010, r7873, r7874, r7875, r7876, r7877, tail⟩

theorem seg13_scp_node20_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7878 : Seg13.relationRow7878 rho)
    (r7879 : Seg13.relationRow7879 rho)
    (r7880 : Seg13.relationRow7880 rho)
    (r7881 : Seg13.relationRow7881 rho)
    (r7882 : Seg13.relationRow7882 rho)
    (tail : next (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005) (rho 15010) (rho 15015)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg61 (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005) (rho 15010) next := by
  exact ⟨rho 15011, rho 15012, rho 15013, rho 15014, rho 15015, r7878, r7879, r7880, r7881, r7882, tail⟩

theorem seg13_scp_node20_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7883 : Seg13.relationRow7883 rho)
    (r7884 : Seg13.relationRow7884 rho)
    (r7885 : Seg13.relationRow7885 rho)
    (r7886 : Seg13.relationRow7886 rho)
    (r7887 : Seg13.relationRow7887 rho)
    (tail : next (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005) (rho 15010) (rho 15015) (rho 15020)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg62 (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005) (rho 15010) (rho 15015) next := by
  exact ⟨rho 15016, rho 15017, rho 15018, rho 15019, rho 15020, r7883, r7884, r7885, r7886, r7887, tail⟩

theorem seg13_scp_node20_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7888 : Seg13.relationRow7888 rho)
    (r7889 : Seg13.relationRow7889 rho)
    (r7890 : Seg13.relationRow7890 rho)
    (r7891 : Seg13.relationRow7891 rho)
    (r7892 : Seg13.relationRow7892 rho)
    (tail : next (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005) (rho 15010) (rho 15015) (rho 15020) (rho 15025)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg63 (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005) (rho 15010) (rho 15015) (rho 15020) next := by
  exact ⟨rho 15021, rho 15022, rho 15023, rho 15024, rho 15025, r7888, r7889, r7890, r7891, r7892, tail⟩

theorem seg13_scp_node20_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7893 : Seg13.relationRow7893 rho)
    (r7894 : Seg13.relationRow7894 rho)
    (r7895 : Seg13.relationRow7895 rho)
    (r7896 : Seg13.relationRow7896 rho)
    (r7897 : Seg13.relationRow7897 rho)
    (tail : next (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg64 (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005) (rho 15010) (rho 15015) (rho 15020) (rho 15025) next := by
  exact ⟨rho 15026, rho 15027, rho 15028, rho 15029, rho 15030, r7893, r7894, r7895, r7896, r7897, tail⟩

theorem seg13_scp_node20_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7898 : Seg13.relationRow7898 rho)
    (r7899 : Seg13.relationRow7899 rho)
    (r7900 : Seg13.relationRow7900 rho)
    (r7901 : Seg13.relationRow7901 rho)
    (r7902 : Seg13.relationRow7902 rho)
    (tail : next (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030) (rho 15035)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg65 (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030) next := by
  exact ⟨rho 15031, rho 15032, rho 15033, rho 15034, rho 15035, r7898, r7899, r7900, r7901, r7902, tail⟩

theorem seg13_scp_node20_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7903 : Seg13.relationRow7903 rho)
    (r7904 : Seg13.relationRow7904 rho)
    (r7905 : Seg13.relationRow7905 rho)
    (r7906 : Seg13.relationRow7906 rho)
    (r7907 : Seg13.relationRow7907 rho)
    (tail : next (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030) (rho 15035) (rho 15040)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg66 (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030) (rho 15035) next := by
  exact ⟨rho 15036, rho 15037, rho 15038, rho 15039, rho 15040, r7903, r7904, r7905, r7906, r7907, tail⟩

theorem seg13_scp_node20_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7908 : Seg13.relationRow7908 rho)
    (r7909 : Seg13.relationRow7909 rho)
    (r7910 : Seg13.relationRow7910 rho)
    (r7911 : Seg13.relationRow7911 rho)
    (r7912 : Seg13.relationRow7912 rho)
    (tail : next (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030) (rho 15035) (rho 15040) (rho 15045)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg67 (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030) (rho 15035) (rho 15040) next := by
  exact ⟨rho 15041, rho 15042, rho 15043, rho 15044, rho 15045, r7908, r7909, r7910, r7911, r7912, tail⟩

theorem seg13_scp_node20_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7913 : Seg13.relationRow7913 rho)
    (r7914 : Seg13.relationRow7914 rho)
    (r7915 : Seg13.relationRow7915 rho)
    (r7916 : Seg13.relationRow7916 rho)
    (r7917 : Seg13.relationRow7917 rho)
    (tail : next (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030) (rho 15035) (rho 15040) (rho 15045) (rho 15050)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg68 (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030) (rho 15035) (rho 15040) (rho 15045) next := by
  exact ⟨rho 15046, rho 15047, rho 15048, rho 15049, rho 15050, r7913, r7914, r7915, r7916, r7917, tail⟩

theorem seg13_scp_node20_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7918 : Seg13.relationRow7918 rho)
    (r7919 : Seg13.relationRow7919 rho)
    (r7920 : Seg13.relationRow7920 rho)
    (r7921 : Seg13.relationRow7921 rho)
    (r7922 : Seg13.relationRow7922 rho)
    (tail : next (rho 15035) (rho 15040) (rho 15045) (rho 15050) (rho 15055)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg69 (rho 15010) (rho 15015) (rho 15020) (rho 15025) (rho 15030) (rho 15035) (rho 15040) (rho 15045) (rho 15050) next := by
  exact ⟨rho 15051, rho 15052, rho 15053, rho 15054, rho 15055, r7918, r7919, r7920, r7921, r7922, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

