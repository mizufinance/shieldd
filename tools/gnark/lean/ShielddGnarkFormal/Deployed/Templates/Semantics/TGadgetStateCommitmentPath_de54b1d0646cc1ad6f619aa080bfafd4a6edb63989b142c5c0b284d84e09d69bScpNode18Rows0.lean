import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node18_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6845 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6845 rho)
    (r6846 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6846 rho)
    (r6847 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6847 rho)
    (r6848 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6848 rho)
    (r6849 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6849 rho)
    (tail : next (rho 6826) (rho 6829) (rho 6827) (rho 6828) (rho 6830) (rho 6831) (rho 6832) (rho 6837)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg0 (rho 6824) (rho 6826) (rho 6829) (rho 6825) (rho 6827) (rho 6828) (rho 6830) (rho 6831) (rho 6832) next := by
  exact ⟨rho 6833, rho 6834, rho 6835, rho 6836, rho 6837, r6845, r6846, r6847, r6848, r6849, tail⟩

theorem template_scp_node18_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6850 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6850 rho)
    (r6851 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6851 rho)
    (r6852 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6852 rho)
    (r6853 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6853 rho)
    (r6854 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6854 rho)
    (tail : next (rho 6826) (rho 6829) (rho 6830) (rho 6831) (rho 6832) (rho 6837) (rho 6842)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg1 (rho 6826) (rho 6829) (rho 6827) (rho 6828) (rho 6830) (rho 6831) (rho 6832) (rho 6837) next := by
  exact ⟨rho 6838, rho 6839, rho 6840, rho 6841, rho 6842, r6850, r6851, r6852, r6853, r6854, tail⟩

theorem template_scp_node18_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6855 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6855 rho)
    (r6856 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6856 rho)
    (r6857 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6857 rho)
    (r6858 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6858 rho)
    (r6859 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6859 rho)
    (tail : next (rho 6829) (rho 6832) (rho 6837) (rho 6842) (rho 6847)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg2 (rho 6826) (rho 6829) (rho 6830) (rho 6831) (rho 6832) (rho 6837) (rho 6842) next := by
  exact ⟨rho 6843, rho 6844, rho 6845, rho 6846, rho 6847, r6855, r6856, r6857, r6858, r6859, tail⟩

theorem template_scp_node18_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r6860 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6860 rho)
    (r6861 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6861 rho)
    (r6862 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6862 rho)
    (r6863 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6863 rho)
    (r6864 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6864 rho)
    (tail : next (rho 6837) (rho 6842) (rho 6847) (rho 6852)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg3 (rho 6829) (rho 6832) (rho 6837) (rho 6842) (rho 6847) next := by
  exact ⟨rho 6848, rho 6849, rho 6850, rho 6851, rho 6852, r6860, r6861, r6862, r6863, r6864, tail⟩

theorem template_scp_node18_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6865 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6865 rho)
    (r6866 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6866 rho)
    (r6867 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6867 rho)
    (r6868 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6868 rho)
    (r6869 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6869 rho)
    (tail : next (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg4 (rho 6837) (rho 6842) (rho 6847) (rho 6852) next := by
  exact ⟨rho 6853, rho 6854, rho 6855, rho 6856, rho 6857, r6865, r6866, r6867, r6868, r6869, tail⟩

theorem template_scp_node18_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6870 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6870 rho)
    (r6871 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6871 rho)
    (r6872 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6872 rho)
    (r6873 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6873 rho)
    (r6874 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6874 rho)
    (tail : next (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg5 (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) next := by
  exact ⟨rho 6858, rho 6859, rho 6860, rho 6861, rho 6862, r6870, r6871, r6872, r6873, r6874, tail⟩

theorem template_scp_node18_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6875 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6875 rho)
    (r6876 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6876 rho)
    (r6877 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6877 rho)
    (r6878 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6878 rho)
    (r6879 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6879 rho)
    (tail : next (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg6 (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) next := by
  exact ⟨rho 6863, rho 6864, rho 6865, rho 6866, rho 6867, r6875, r6876, r6877, r6878, r6879, tail⟩

theorem template_scp_node18_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6880 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6880 rho)
    (r6881 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6881 rho)
    (r6882 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6882 rho)
    (r6883 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6883 rho)
    (r6884 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6884 rho)
    (tail : next (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg7 (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) next := by
  exact ⟨rho 6868, rho 6869, rho 6870, rho 6871, rho 6872, r6880, r6881, r6882, r6883, r6884, tail⟩

theorem template_scp_node18_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6885 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6885 rho)
    (r6886 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6886 rho)
    (r6887 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6887 rho)
    (r6888 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6888 rho)
    (r6889 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6889 rho)
    (tail : next (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg8 (rho 6837) (rho 6842) (rho 6847) (rho 6852) (rho 6857) (rho 6862) (rho 6867) (rho 6872) next := by
  exact ⟨rho 6873, rho 6874, rho 6875, rho 6876, rho 6877, r6885, r6886, r6887, r6888, r6889, tail⟩

theorem template_scp_node18_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6890 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6890 rho)
    (r6891 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6891 rho)
    (r6892 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6892 rho)
    (r6893 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6893 rho)
    (r6894 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6894 rho)
    (tail : next (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) (rho 6882)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg9 (rho 6857) (rho 6862) (rho 6867) (rho 6872) (rho 6877) next := by
  exact ⟨rho 6878, rho 6879, rho 6880, rho 6881, rho 6882, r6890, r6891, r6892, r6893, r6894, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
