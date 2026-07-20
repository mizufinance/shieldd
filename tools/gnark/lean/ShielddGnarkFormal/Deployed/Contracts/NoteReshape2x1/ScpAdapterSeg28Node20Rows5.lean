import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node20_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7823 : Seg28.relationRow7823 rho)
    (r7824 : Seg28.relationRow7824 rho)
    (r7825 : Seg28.relationRow7825 rho)
    (r7826 : Seg28.relationRow7826 rho)
    (r7827 : Seg28.relationRow7827 rho)
    (tail : next (rho 26955) (rho 26960) (rho 26965) (rho 26970) (rho 26975) (rho 26980) (rho 26985) (rho 26990) (rho 26995) (rho 27000) (rho 27005) (rho 27010) (rho 27015) (rho 27020) (rho 27025) (rho 27030) (rho 27035) (rho 27040) (rho 27045) (rho 27050) (rho 27055) (rho 27060) (rho 27065) (rho 27070) (rho 27075) (rho 27080) (rho 27085) (rho 27090) (rho 27095) (rho 27100) (rho 27105) (rho 27110) (rho 27115) (rho 27120) (rho 27125) (rho 27130) (rho 27135)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg50 (rho 26955) (rho 26960) (rho 26965) (rho 26970) (rho 26975) (rho 26980) (rho 26985) (rho 26990) (rho 26995) (rho 27000) (rho 27005) (rho 27010) (rho 27015) (rho 27020) (rho 27025) (rho 27030) (rho 27035) (rho 27040) (rho 27045) (rho 27050) (rho 27055) (rho 27060) (rho 27065) (rho 27070) (rho 27075) (rho 27080) (rho 27085) (rho 27090) (rho 27095) (rho 27100) (rho 27105) (rho 27110) (rho 27115) (rho 27120) (rho 27125) (rho 27130) next := by
  exact ⟨rho 27131, rho 27132, rho 27133, rho 27134, rho 27135, r7823, r7824, r7825, r7826, r7827, tail⟩

theorem seg28_scp_node20_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7828 : Seg28.relationRow7828 rho)
    (r7829 : Seg28.relationRow7829 rho)
    (r7830 : Seg28.relationRow7830 rho)
    (r7831 : Seg28.relationRow7831 rho)
    (r7832 : Seg28.relationRow7832 rho)
    (tail : next (rho 26955) (rho 26960) (rho 26965) (rho 26970) (rho 26975) (rho 26980) (rho 26985) (rho 26990) (rho 26995) (rho 27000) (rho 27005) (rho 27010) (rho 27015) (rho 27020) (rho 27025) (rho 27030) (rho 27035) (rho 27040) (rho 27045) (rho 27050) (rho 27055) (rho 27060) (rho 27065) (rho 27070) (rho 27075) (rho 27080) (rho 27085) (rho 27090) (rho 27095) (rho 27100) (rho 27105) (rho 27110) (rho 27115) (rho 27120) (rho 27125) (rho 27130) (rho 27135) (rho 27140)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg51 (rho 26955) (rho 26960) (rho 26965) (rho 26970) (rho 26975) (rho 26980) (rho 26985) (rho 26990) (rho 26995) (rho 27000) (rho 27005) (rho 27010) (rho 27015) (rho 27020) (rho 27025) (rho 27030) (rho 27035) (rho 27040) (rho 27045) (rho 27050) (rho 27055) (rho 27060) (rho 27065) (rho 27070) (rho 27075) (rho 27080) (rho 27085) (rho 27090) (rho 27095) (rho 27100) (rho 27105) (rho 27110) (rho 27115) (rho 27120) (rho 27125) (rho 27130) (rho 27135) next := by
  exact ⟨rho 27136, rho 27137, rho 27138, rho 27139, rho 27140, r7828, r7829, r7830, r7831, r7832, tail⟩

theorem seg28_scp_node20_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7833 : Seg28.relationRow7833 rho)
    (r7834 : Seg28.relationRow7834 rho)
    (r7835 : Seg28.relationRow7835 rho)
    (r7836 : Seg28.relationRow7836 rho)
    (r7837 : Seg28.relationRow7837 rho)
    (tail : next (rho 26955) (rho 26960) (rho 26965) (rho 26970) (rho 26975) (rho 26980) (rho 26985) (rho 26990) (rho 26995) (rho 27000) (rho 27005) (rho 27010) (rho 27015) (rho 27020) (rho 27025) (rho 27030) (rho 27035) (rho 27040) (rho 27045) (rho 27050) (rho 27055) (rho 27060) (rho 27065) (rho 27070) (rho 27075) (rho 27080) (rho 27085) (rho 27090) (rho 27095) (rho 27100) (rho 27105) (rho 27110) (rho 27115) (rho 27120) (rho 27125) (rho 27130) (rho 27135) (rho 27140) (rho 27145)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg52 (rho 26955) (rho 26960) (rho 26965) (rho 26970) (rho 26975) (rho 26980) (rho 26985) (rho 26990) (rho 26995) (rho 27000) (rho 27005) (rho 27010) (rho 27015) (rho 27020) (rho 27025) (rho 27030) (rho 27035) (rho 27040) (rho 27045) (rho 27050) (rho 27055) (rho 27060) (rho 27065) (rho 27070) (rho 27075) (rho 27080) (rho 27085) (rho 27090) (rho 27095) (rho 27100) (rho 27105) (rho 27110) (rho 27115) (rho 27120) (rho 27125) (rho 27130) (rho 27135) (rho 27140) next := by
  exact ⟨rho 27141, rho 27142, rho 27143, rho 27144, rho 27145, r7833, r7834, r7835, r7836, r7837, tail⟩

theorem seg28_scp_node20_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7838 : Seg28.relationRow7838 rho)
    (r7839 : Seg28.relationRow7839 rho)
    (r7840 : Seg28.relationRow7840 rho)
    (r7841 : Seg28.relationRow7841 rho)
    (r7842 : Seg28.relationRow7842 rho)
    (tail : next (rho 26955) (rho 26960) (rho 26965) (rho 26970) (rho 26975) (rho 26980) (rho 26985) (rho 26990) (rho 26995) (rho 27000) (rho 27005) (rho 27010) (rho 27015) (rho 27020) (rho 27025) (rho 27030) (rho 27035) (rho 27040) (rho 27045) (rho 27050) (rho 27055) (rho 27060) (rho 27065) (rho 27070) (rho 27075) (rho 27080) (rho 27085) (rho 27090) (rho 27095) (rho 27100) (rho 27105) (rho 27110) (rho 27115) (rho 27120) (rho 27125) (rho 27130) (rho 27135) (rho 27140) (rho 27145) (rho 27150)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg53 (rho 26955) (rho 26960) (rho 26965) (rho 26970) (rho 26975) (rho 26980) (rho 26985) (rho 26990) (rho 26995) (rho 27000) (rho 27005) (rho 27010) (rho 27015) (rho 27020) (rho 27025) (rho 27030) (rho 27035) (rho 27040) (rho 27045) (rho 27050) (rho 27055) (rho 27060) (rho 27065) (rho 27070) (rho 27075) (rho 27080) (rho 27085) (rho 27090) (rho 27095) (rho 27100) (rho 27105) (rho 27110) (rho 27115) (rho 27120) (rho 27125) (rho 27130) (rho 27135) (rho 27140) (rho 27145) next := by
  exact ⟨rho 27146, rho 27147, rho 27148, rho 27149, rho 27150, r7838, r7839, r7840, r7841, r7842, tail⟩

theorem seg28_scp_node20_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7843 : Seg28.relationRow7843 rho)
    (r7844 : Seg28.relationRow7844 rho)
    (r7845 : Seg28.relationRow7845 rho)
    (r7846 : Seg28.relationRow7846 rho)
    (r7847 : Seg28.relationRow7847 rho)
    (tail : next (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg54 (rho 26955) (rho 26960) (rho 26965) (rho 26970) (rho 26975) (rho 26980) (rho 26985) (rho 26990) (rho 26995) (rho 27000) (rho 27005) (rho 27010) (rho 27015) (rho 27020) (rho 27025) (rho 27030) (rho 27035) (rho 27040) (rho 27045) (rho 27050) (rho 27055) (rho 27060) (rho 27065) (rho 27070) (rho 27075) (rho 27080) (rho 27085) (rho 27090) (rho 27095) (rho 27100) (rho 27105) (rho 27110) (rho 27115) (rho 27120) (rho 27125) (rho 27130) (rho 27135) (rho 27140) (rho 27145) (rho 27150) next := by
  exact ⟨rho 27151, rho 27152, rho 27153, rho 27154, rho 27155, r7843, r7844, r7845, r7846, r7847, tail⟩

theorem seg28_scp_node20_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7848 : Seg28.relationRow7848 rho)
    (r7849 : Seg28.relationRow7849 rho)
    (r7850 : Seg28.relationRow7850 rho)
    (r7851 : Seg28.relationRow7851 rho)
    (r7852 : Seg28.relationRow7852 rho)
    (tail : next (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155) (rho 27160)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg55 (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155) next := by
  exact ⟨rho 27156, rho 27157, rho 27158, rho 27159, rho 27160, r7848, r7849, r7850, r7851, r7852, tail⟩

theorem seg28_scp_node20_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7853 : Seg28.relationRow7853 rho)
    (r7854 : Seg28.relationRow7854 rho)
    (r7855 : Seg28.relationRow7855 rho)
    (r7856 : Seg28.relationRow7856 rho)
    (r7857 : Seg28.relationRow7857 rho)
    (tail : next (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155) (rho 27160) (rho 27165)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg56 (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155) (rho 27160) next := by
  exact ⟨rho 27161, rho 27162, rho 27163, rho 27164, rho 27165, r7853, r7854, r7855, r7856, r7857, tail⟩

theorem seg28_scp_node20_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7858 : Seg28.relationRow7858 rho)
    (r7859 : Seg28.relationRow7859 rho)
    (r7860 : Seg28.relationRow7860 rho)
    (r7861 : Seg28.relationRow7861 rho)
    (r7862 : Seg28.relationRow7862 rho)
    (tail : next (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155) (rho 27160) (rho 27165) (rho 27170)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg57 (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155) (rho 27160) (rho 27165) next := by
  exact ⟨rho 27166, rho 27167, rho 27168, rho 27169, rho 27170, r7858, r7859, r7860, r7861, r7862, tail⟩

theorem seg28_scp_node20_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7863 : Seg28.relationRow7863 rho)
    (r7864 : Seg28.relationRow7864 rho)
    (r7865 : Seg28.relationRow7865 rho)
    (r7866 : Seg28.relationRow7866 rho)
    (r7867 : Seg28.relationRow7867 rho)
    (tail : next (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155) (rho 27160) (rho 27165) (rho 27170) (rho 27175)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg58 (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155) (rho 27160) (rho 27165) (rho 27170) next := by
  exact ⟨rho 27171, rho 27172, rho 27173, rho 27174, rho 27175, r7863, r7864, r7865, r7866, r7867, tail⟩

theorem seg28_scp_node20_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7868 : Seg28.relationRow7868 rho)
    (r7869 : Seg28.relationRow7869 rho)
    (r7870 : Seg28.relationRow7870 rho)
    (r7871 : Seg28.relationRow7871 rho)
    (r7872 : Seg28.relationRow7872 rho)
    (tail : next (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg59 (rho 27135) (rho 27140) (rho 27145) (rho 27150) (rho 27155) (rho 27160) (rho 27165) (rho 27170) (rho 27175) next := by
  exact ⟨rho 27176, rho 27177, rho 27178, rho 27179, rho 27180, r7868, r7869, r7870, r7871, r7872, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

