import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node18_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6845 : Seg13.relationRow6845 rho)
    (r6846 : Seg13.relationRow6846 rho)
    (r6847 : Seg13.relationRow6847 rho)
    (r6848 : Seg13.relationRow6848 rho)
    (r6849 : Seg13.relationRow6849 rho)
    (tail : next (rho 41) (rho 42) (rho 13981) (rho 13982) (rho 13983) (rho 13984) (rho 13985) (rho 13990)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg0 (rho 40) (rho 41) (rho 42) (rho 13980) (rho 13981) (rho 13982) (rho 13983) (rho 13984) (rho 13985) next := by
  exact ⟨rho 13986, rho 13987, rho 13988, rho 13989, rho 13990, r6845, r6846, r6847, r6848, r6849, tail⟩

theorem seg13_scp_node18_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6850 : Seg13.relationRow6850 rho)
    (r6851 : Seg13.relationRow6851 rho)
    (r6852 : Seg13.relationRow6852 rho)
    (r6853 : Seg13.relationRow6853 rho)
    (r6854 : Seg13.relationRow6854 rho)
    (tail : next (rho 41) (rho 42) (rho 13983) (rho 13984) (rho 13985) (rho 13990) (rho 13995)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg1 (rho 41) (rho 42) (rho 13981) (rho 13982) (rho 13983) (rho 13984) (rho 13985) (rho 13990) next := by
  exact ⟨rho 13991, rho 13992, rho 13993, rho 13994, rho 13995, r6850, r6851, r6852, r6853, r6854, tail⟩

theorem seg13_scp_node18_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6855 : Seg13.relationRow6855 rho)
    (r6856 : Seg13.relationRow6856 rho)
    (r6857 : Seg13.relationRow6857 rho)
    (r6858 : Seg13.relationRow6858 rho)
    (r6859 : Seg13.relationRow6859 rho)
    (tail : next (rho 42) (rho 13985) (rho 13990) (rho 13995) (rho 14000)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg2 (rho 41) (rho 42) (rho 13983) (rho 13984) (rho 13985) (rho 13990) (rho 13995) next := by
  exact ⟨rho 13996, rho 13997, rho 13998, rho 13999, rho 14000, r6855, r6856, r6857, r6858, r6859, tail⟩

theorem seg13_scp_node18_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6860 : Seg13.relationRow6860 rho)
    (r6861 : Seg13.relationRow6861 rho)
    (r6862 : Seg13.relationRow6862 rho)
    (r6863 : Seg13.relationRow6863 rho)
    (r6864 : Seg13.relationRow6864 rho)
    (tail : next (rho 13990) (rho 13995) (rho 14000) (rho 14005)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg3 (rho 42) (rho 13985) (rho 13990) (rho 13995) (rho 14000) next := by
  exact ⟨rho 14001, rho 14002, rho 14003, rho 14004, rho 14005, r6860, r6861, r6862, r6863, r6864, tail⟩

theorem seg13_scp_node18_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6865 : Seg13.relationRow6865 rho)
    (r6866 : Seg13.relationRow6866 rho)
    (r6867 : Seg13.relationRow6867 rho)
    (r6868 : Seg13.relationRow6868 rho)
    (r6869 : Seg13.relationRow6869 rho)
    (tail : next (rho 13990) (rho 13995) (rho 14000) (rho 14005) (rho 14010)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg4 (rho 13990) (rho 13995) (rho 14000) (rho 14005) next := by
  exact ⟨rho 14006, rho 14007, rho 14008, rho 14009, rho 14010, r6865, r6866, r6867, r6868, r6869, tail⟩

theorem seg13_scp_node18_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6870 : Seg13.relationRow6870 rho)
    (r6871 : Seg13.relationRow6871 rho)
    (r6872 : Seg13.relationRow6872 rho)
    (r6873 : Seg13.relationRow6873 rho)
    (r6874 : Seg13.relationRow6874 rho)
    (tail : next (rho 13990) (rho 13995) (rho 14000) (rho 14005) (rho 14010) (rho 14015)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg5 (rho 13990) (rho 13995) (rho 14000) (rho 14005) (rho 14010) next := by
  exact ⟨rho 14011, rho 14012, rho 14013, rho 14014, rho 14015, r6870, r6871, r6872, r6873, r6874, tail⟩

theorem seg13_scp_node18_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6875 : Seg13.relationRow6875 rho)
    (r6876 : Seg13.relationRow6876 rho)
    (r6877 : Seg13.relationRow6877 rho)
    (r6878 : Seg13.relationRow6878 rho)
    (r6879 : Seg13.relationRow6879 rho)
    (tail : next (rho 13990) (rho 13995) (rho 14000) (rho 14005) (rho 14010) (rho 14015) (rho 14020)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg6 (rho 13990) (rho 13995) (rho 14000) (rho 14005) (rho 14010) (rho 14015) next := by
  exact ⟨rho 14016, rho 14017, rho 14018, rho 14019, rho 14020, r6875, r6876, r6877, r6878, r6879, tail⟩

theorem seg13_scp_node18_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6880 : Seg13.relationRow6880 rho)
    (r6881 : Seg13.relationRow6881 rho)
    (r6882 : Seg13.relationRow6882 rho)
    (r6883 : Seg13.relationRow6883 rho)
    (r6884 : Seg13.relationRow6884 rho)
    (tail : next (rho 13990) (rho 13995) (rho 14000) (rho 14005) (rho 14010) (rho 14015) (rho 14020) (rho 14025)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg7 (rho 13990) (rho 13995) (rho 14000) (rho 14005) (rho 14010) (rho 14015) (rho 14020) next := by
  exact ⟨rho 14021, rho 14022, rho 14023, rho 14024, rho 14025, r6880, r6881, r6882, r6883, r6884, tail⟩

theorem seg13_scp_node18_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6885 : Seg13.relationRow6885 rho)
    (r6886 : Seg13.relationRow6886 rho)
    (r6887 : Seg13.relationRow6887 rho)
    (r6888 : Seg13.relationRow6888 rho)
    (r6889 : Seg13.relationRow6889 rho)
    (tail : next (rho 14010) (rho 14015) (rho 14020) (rho 14025) (rho 14030)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg8 (rho 13990) (rho 13995) (rho 14000) (rho 14005) (rho 14010) (rho 14015) (rho 14020) (rho 14025) next := by
  exact ⟨rho 14026, rho 14027, rho 14028, rho 14029, rho 14030, r6885, r6886, r6887, r6888, r6889, tail⟩

theorem seg13_scp_node18_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6890 : Seg13.relationRow6890 rho)
    (r6891 : Seg13.relationRow6891 rho)
    (r6892 : Seg13.relationRow6892 rho)
    (r6893 : Seg13.relationRow6893 rho)
    (r6894 : Seg13.relationRow6894 rho)
    (tail : next (rho 14010) (rho 14015) (rho 14020) (rho 14025) (rho 14030) (rho 14035)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg9 (rho 14010) (rho 14015) (rho 14020) (rho 14025) (rho 14030) next := by
  exact ⟨rho 14031, rho 14032, rho 14033, rho 14034, rho 14035, r6890, r6891, r6892, r6893, r6894, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

