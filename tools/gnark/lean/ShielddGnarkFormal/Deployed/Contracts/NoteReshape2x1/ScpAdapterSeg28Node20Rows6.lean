import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node20_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7873 : Seg28.relationRow7873 rho)
    (r7874 : Seg28.relationRow7874 rho)
    (r7875 : Seg28.relationRow7875 rho)
    (r7876 : Seg28.relationRow7876 rho)
    (r7877 : Seg28.relationRow7877 rho)
    (tail : next (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180) (rho 27185)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg60 (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180) next := by
  exact ⟨rho 27181, rho 27182, rho 27183, rho 27184, rho 27185, r7873, r7874, r7875, r7876, r7877, tail⟩

theorem seg28_scp_node20_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7878 : Seg28.relationRow7878 rho)
    (r7879 : Seg28.relationRow7879 rho)
    (r7880 : Seg28.relationRow7880 rho)
    (r7881 : Seg28.relationRow7881 rho)
    (r7882 : Seg28.relationRow7882 rho)
    (tail : next (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180) (rho 27185) (rho 27190)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg61 (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180) (rho 27185) next := by
  exact ⟨rho 27186, rho 27187, rho 27188, rho 27189, rho 27190, r7878, r7879, r7880, r7881, r7882, tail⟩

theorem seg28_scp_node20_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7883 : Seg28.relationRow7883 rho)
    (r7884 : Seg28.relationRow7884 rho)
    (r7885 : Seg28.relationRow7885 rho)
    (r7886 : Seg28.relationRow7886 rho)
    (r7887 : Seg28.relationRow7887 rho)
    (tail : next (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180) (rho 27185) (rho 27190) (rho 27195)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg62 (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180) (rho 27185) (rho 27190) next := by
  exact ⟨rho 27191, rho 27192, rho 27193, rho 27194, rho 27195, r7883, r7884, r7885, r7886, r7887, tail⟩

theorem seg28_scp_node20_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7888 : Seg28.relationRow7888 rho)
    (r7889 : Seg28.relationRow7889 rho)
    (r7890 : Seg28.relationRow7890 rho)
    (r7891 : Seg28.relationRow7891 rho)
    (r7892 : Seg28.relationRow7892 rho)
    (tail : next (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180) (rho 27185) (rho 27190) (rho 27195) (rho 27200)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg63 (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180) (rho 27185) (rho 27190) (rho 27195) next := by
  exact ⟨rho 27196, rho 27197, rho 27198, rho 27199, rho 27200, r7888, r7889, r7890, r7891, r7892, tail⟩

theorem seg28_scp_node20_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7893 : Seg28.relationRow7893 rho)
    (r7894 : Seg28.relationRow7894 rho)
    (r7895 : Seg28.relationRow7895 rho)
    (r7896 : Seg28.relationRow7896 rho)
    (r7897 : Seg28.relationRow7897 rho)
    (tail : next (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg64 (rho 27160) (rho 27165) (rho 27170) (rho 27175) (rho 27180) (rho 27185) (rho 27190) (rho 27195) (rho 27200) next := by
  exact ⟨rho 27201, rho 27202, rho 27203, rho 27204, rho 27205, r7893, r7894, r7895, r7896, r7897, tail⟩

theorem seg28_scp_node20_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7898 : Seg28.relationRow7898 rho)
    (r7899 : Seg28.relationRow7899 rho)
    (r7900 : Seg28.relationRow7900 rho)
    (r7901 : Seg28.relationRow7901 rho)
    (r7902 : Seg28.relationRow7902 rho)
    (tail : next (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205) (rho 27210)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg65 (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205) next := by
  exact ⟨rho 27206, rho 27207, rho 27208, rho 27209, rho 27210, r7898, r7899, r7900, r7901, r7902, tail⟩

theorem seg28_scp_node20_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7903 : Seg28.relationRow7903 rho)
    (r7904 : Seg28.relationRow7904 rho)
    (r7905 : Seg28.relationRow7905 rho)
    (r7906 : Seg28.relationRow7906 rho)
    (r7907 : Seg28.relationRow7907 rho)
    (tail : next (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205) (rho 27210) (rho 27215)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg66 (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205) (rho 27210) next := by
  exact ⟨rho 27211, rho 27212, rho 27213, rho 27214, rho 27215, r7903, r7904, r7905, r7906, r7907, tail⟩

theorem seg28_scp_node20_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7908 : Seg28.relationRow7908 rho)
    (r7909 : Seg28.relationRow7909 rho)
    (r7910 : Seg28.relationRow7910 rho)
    (r7911 : Seg28.relationRow7911 rho)
    (r7912 : Seg28.relationRow7912 rho)
    (tail : next (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205) (rho 27210) (rho 27215) (rho 27220)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg67 (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205) (rho 27210) (rho 27215) next := by
  exact ⟨rho 27216, rho 27217, rho 27218, rho 27219, rho 27220, r7908, r7909, r7910, r7911, r7912, tail⟩

theorem seg28_scp_node20_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7913 : Seg28.relationRow7913 rho)
    (r7914 : Seg28.relationRow7914 rho)
    (r7915 : Seg28.relationRow7915 rho)
    (r7916 : Seg28.relationRow7916 rho)
    (r7917 : Seg28.relationRow7917 rho)
    (tail : next (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205) (rho 27210) (rho 27215) (rho 27220) (rho 27225)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg68 (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205) (rho 27210) (rho 27215) (rho 27220) next := by
  exact ⟨rho 27221, rho 27222, rho 27223, rho 27224, rho 27225, r7913, r7914, r7915, r7916, r7917, tail⟩

theorem seg28_scp_node20_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7918 : Seg28.relationRow7918 rho)
    (r7919 : Seg28.relationRow7919 rho)
    (r7920 : Seg28.relationRow7920 rho)
    (r7921 : Seg28.relationRow7921 rho)
    (r7922 : Seg28.relationRow7922 rho)
    (tail : next (rho 27210) (rho 27215) (rho 27220) (rho 27225) (rho 27230)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg69 (rho 27185) (rho 27190) (rho 27195) (rho 27200) (rho 27205) (rho 27210) (rho 27215) (rho 27220) (rho 27225) next := by
  exact ⟨rho 27226, rho 27227, rho 27228, rho 27229, rho 27230, r7918, r7919, r7920, r7921, r7922, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

