import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node20_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7823 : Seg13.relationRow7823 rho)
    (r7824 : Seg13.relationRow7824 rho)
    (r7825 : Seg13.relationRow7825 rho)
    (r7826 : Seg13.relationRow7826 rho)
    (r7827 : Seg13.relationRow7827 rho)
    (tail : next (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805) (rho 14810) (rho 14815) (rho 14820) (rho 14825) (rho 14830) (rho 14835) (rho 14840) (rho 14845) (rho 14850) (rho 14855) (rho 14860) (rho 14865) (rho 14870) (rho 14875) (rho 14880) (rho 14885) (rho 14890) (rho 14895) (rho 14900) (rho 14905) (rho 14910) (rho 14915) (rho 14920) (rho 14925) (rho 14930) (rho 14935) (rho 14940) (rho 14945) (rho 14950) (rho 14955) (rho 14960)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg50 (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805) (rho 14810) (rho 14815) (rho 14820) (rho 14825) (rho 14830) (rho 14835) (rho 14840) (rho 14845) (rho 14850) (rho 14855) (rho 14860) (rho 14865) (rho 14870) (rho 14875) (rho 14880) (rho 14885) (rho 14890) (rho 14895) (rho 14900) (rho 14905) (rho 14910) (rho 14915) (rho 14920) (rho 14925) (rho 14930) (rho 14935) (rho 14940) (rho 14945) (rho 14950) (rho 14955) next := by
  exact ⟨rho 14956, rho 14957, rho 14958, rho 14959, rho 14960, r7823, r7824, r7825, r7826, r7827, tail⟩

theorem seg13_scp_node20_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7828 : Seg13.relationRow7828 rho)
    (r7829 : Seg13.relationRow7829 rho)
    (r7830 : Seg13.relationRow7830 rho)
    (r7831 : Seg13.relationRow7831 rho)
    (r7832 : Seg13.relationRow7832 rho)
    (tail : next (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805) (rho 14810) (rho 14815) (rho 14820) (rho 14825) (rho 14830) (rho 14835) (rho 14840) (rho 14845) (rho 14850) (rho 14855) (rho 14860) (rho 14865) (rho 14870) (rho 14875) (rho 14880) (rho 14885) (rho 14890) (rho 14895) (rho 14900) (rho 14905) (rho 14910) (rho 14915) (rho 14920) (rho 14925) (rho 14930) (rho 14935) (rho 14940) (rho 14945) (rho 14950) (rho 14955) (rho 14960) (rho 14965)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg51 (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805) (rho 14810) (rho 14815) (rho 14820) (rho 14825) (rho 14830) (rho 14835) (rho 14840) (rho 14845) (rho 14850) (rho 14855) (rho 14860) (rho 14865) (rho 14870) (rho 14875) (rho 14880) (rho 14885) (rho 14890) (rho 14895) (rho 14900) (rho 14905) (rho 14910) (rho 14915) (rho 14920) (rho 14925) (rho 14930) (rho 14935) (rho 14940) (rho 14945) (rho 14950) (rho 14955) (rho 14960) next := by
  exact ⟨rho 14961, rho 14962, rho 14963, rho 14964, rho 14965, r7828, r7829, r7830, r7831, r7832, tail⟩

theorem seg13_scp_node20_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7833 : Seg13.relationRow7833 rho)
    (r7834 : Seg13.relationRow7834 rho)
    (r7835 : Seg13.relationRow7835 rho)
    (r7836 : Seg13.relationRow7836 rho)
    (r7837 : Seg13.relationRow7837 rho)
    (tail : next (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805) (rho 14810) (rho 14815) (rho 14820) (rho 14825) (rho 14830) (rho 14835) (rho 14840) (rho 14845) (rho 14850) (rho 14855) (rho 14860) (rho 14865) (rho 14870) (rho 14875) (rho 14880) (rho 14885) (rho 14890) (rho 14895) (rho 14900) (rho 14905) (rho 14910) (rho 14915) (rho 14920) (rho 14925) (rho 14930) (rho 14935) (rho 14940) (rho 14945) (rho 14950) (rho 14955) (rho 14960) (rho 14965) (rho 14970)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg52 (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805) (rho 14810) (rho 14815) (rho 14820) (rho 14825) (rho 14830) (rho 14835) (rho 14840) (rho 14845) (rho 14850) (rho 14855) (rho 14860) (rho 14865) (rho 14870) (rho 14875) (rho 14880) (rho 14885) (rho 14890) (rho 14895) (rho 14900) (rho 14905) (rho 14910) (rho 14915) (rho 14920) (rho 14925) (rho 14930) (rho 14935) (rho 14940) (rho 14945) (rho 14950) (rho 14955) (rho 14960) (rho 14965) next := by
  exact ⟨rho 14966, rho 14967, rho 14968, rho 14969, rho 14970, r7833, r7834, r7835, r7836, r7837, tail⟩

theorem seg13_scp_node20_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7838 : Seg13.relationRow7838 rho)
    (r7839 : Seg13.relationRow7839 rho)
    (r7840 : Seg13.relationRow7840 rho)
    (r7841 : Seg13.relationRow7841 rho)
    (r7842 : Seg13.relationRow7842 rho)
    (tail : next (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805) (rho 14810) (rho 14815) (rho 14820) (rho 14825) (rho 14830) (rho 14835) (rho 14840) (rho 14845) (rho 14850) (rho 14855) (rho 14860) (rho 14865) (rho 14870) (rho 14875) (rho 14880) (rho 14885) (rho 14890) (rho 14895) (rho 14900) (rho 14905) (rho 14910) (rho 14915) (rho 14920) (rho 14925) (rho 14930) (rho 14935) (rho 14940) (rho 14945) (rho 14950) (rho 14955) (rho 14960) (rho 14965) (rho 14970) (rho 14975)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg53 (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805) (rho 14810) (rho 14815) (rho 14820) (rho 14825) (rho 14830) (rho 14835) (rho 14840) (rho 14845) (rho 14850) (rho 14855) (rho 14860) (rho 14865) (rho 14870) (rho 14875) (rho 14880) (rho 14885) (rho 14890) (rho 14895) (rho 14900) (rho 14905) (rho 14910) (rho 14915) (rho 14920) (rho 14925) (rho 14930) (rho 14935) (rho 14940) (rho 14945) (rho 14950) (rho 14955) (rho 14960) (rho 14965) (rho 14970) next := by
  exact ⟨rho 14971, rho 14972, rho 14973, rho 14974, rho 14975, r7838, r7839, r7840, r7841, r7842, tail⟩

theorem seg13_scp_node20_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7843 : Seg13.relationRow7843 rho)
    (r7844 : Seg13.relationRow7844 rho)
    (r7845 : Seg13.relationRow7845 rho)
    (r7846 : Seg13.relationRow7846 rho)
    (r7847 : Seg13.relationRow7847 rho)
    (tail : next (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg54 (rho 14780) (rho 14785) (rho 14790) (rho 14795) (rho 14800) (rho 14805) (rho 14810) (rho 14815) (rho 14820) (rho 14825) (rho 14830) (rho 14835) (rho 14840) (rho 14845) (rho 14850) (rho 14855) (rho 14860) (rho 14865) (rho 14870) (rho 14875) (rho 14880) (rho 14885) (rho 14890) (rho 14895) (rho 14900) (rho 14905) (rho 14910) (rho 14915) (rho 14920) (rho 14925) (rho 14930) (rho 14935) (rho 14940) (rho 14945) (rho 14950) (rho 14955) (rho 14960) (rho 14965) (rho 14970) (rho 14975) next := by
  exact ⟨rho 14976, rho 14977, rho 14978, rho 14979, rho 14980, r7843, r7844, r7845, r7846, r7847, tail⟩

theorem seg13_scp_node20_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7848 : Seg13.relationRow7848 rho)
    (r7849 : Seg13.relationRow7849 rho)
    (r7850 : Seg13.relationRow7850 rho)
    (r7851 : Seg13.relationRow7851 rho)
    (r7852 : Seg13.relationRow7852 rho)
    (tail : next (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980) (rho 14985)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg55 (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980) next := by
  exact ⟨rho 14981, rho 14982, rho 14983, rho 14984, rho 14985, r7848, r7849, r7850, r7851, r7852, tail⟩

theorem seg13_scp_node20_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7853 : Seg13.relationRow7853 rho)
    (r7854 : Seg13.relationRow7854 rho)
    (r7855 : Seg13.relationRow7855 rho)
    (r7856 : Seg13.relationRow7856 rho)
    (r7857 : Seg13.relationRow7857 rho)
    (tail : next (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980) (rho 14985) (rho 14990)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg56 (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980) (rho 14985) next := by
  exact ⟨rho 14986, rho 14987, rho 14988, rho 14989, rho 14990, r7853, r7854, r7855, r7856, r7857, tail⟩

theorem seg13_scp_node20_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7858 : Seg13.relationRow7858 rho)
    (r7859 : Seg13.relationRow7859 rho)
    (r7860 : Seg13.relationRow7860 rho)
    (r7861 : Seg13.relationRow7861 rho)
    (r7862 : Seg13.relationRow7862 rho)
    (tail : next (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980) (rho 14985) (rho 14990) (rho 14995)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg57 (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980) (rho 14985) (rho 14990) next := by
  exact ⟨rho 14991, rho 14992, rho 14993, rho 14994, rho 14995, r7858, r7859, r7860, r7861, r7862, tail⟩

theorem seg13_scp_node20_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7863 : Seg13.relationRow7863 rho)
    (r7864 : Seg13.relationRow7864 rho)
    (r7865 : Seg13.relationRow7865 rho)
    (r7866 : Seg13.relationRow7866 rho)
    (r7867 : Seg13.relationRow7867 rho)
    (tail : next (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980) (rho 14985) (rho 14990) (rho 14995) (rho 15000)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg58 (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980) (rho 14985) (rho 14990) (rho 14995) next := by
  exact ⟨rho 14996, rho 14997, rho 14998, rho 14999, rho 15000, r7863, r7864, r7865, r7866, r7867, tail⟩

theorem seg13_scp_node20_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7868 : Seg13.relationRow7868 rho)
    (r7869 : Seg13.relationRow7869 rho)
    (r7870 : Seg13.relationRow7870 rho)
    (r7871 : Seg13.relationRow7871 rho)
    (r7872 : Seg13.relationRow7872 rho)
    (tail : next (rho 14985) (rho 14990) (rho 14995) (rho 15000) (rho 15005)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg59 (rho 14960) (rho 14965) (rho 14970) (rho 14975) (rho 14980) (rho 14985) (rho 14990) (rho 14995) (rho 15000) next := by
  exact ⟨rho 15001, rho 15002, rho 15003, rho 15004, rho 15005, r7868, r7869, r7870, r7871, r7872, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

