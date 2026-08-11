import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node20_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7873 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7873 rho)
    (r7874 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7874 rho)
    (r7875 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7875 rho)
    (r7876 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7876 rho)
    (r7877 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7877 rho)
    (tail : next (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853) (rho 7858)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg60 (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853) next := by
  exact ⟨rho 7854, rho 7855, rho 7856, rho 7857, rho 7858, r7873, r7874, r7875, r7876, r7877, tail⟩

theorem template_scp_node20_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7878 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7878 rho)
    (r7879 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7879 rho)
    (r7880 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7880 rho)
    (r7881 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7881 rho)
    (r7882 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7882 rho)
    (tail : next (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853) (rho 7858) (rho 7863)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg61 (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853) (rho 7858) next := by
  exact ⟨rho 7859, rho 7860, rho 7861, rho 7862, rho 7863, r7878, r7879, r7880, r7881, r7882, tail⟩

theorem template_scp_node20_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7883 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7883 rho)
    (r7884 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7884 rho)
    (r7885 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7885 rho)
    (r7886 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7886 rho)
    (r7887 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7887 rho)
    (tail : next (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853) (rho 7858) (rho 7863) (rho 7868)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg62 (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853) (rho 7858) (rho 7863) next := by
  exact ⟨rho 7864, rho 7865, rho 7866, rho 7867, rho 7868, r7883, r7884, r7885, r7886, r7887, tail⟩

theorem template_scp_node20_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7888 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7888 rho)
    (r7889 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7889 rho)
    (r7890 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7890 rho)
    (r7891 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7891 rho)
    (r7892 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7892 rho)
    (tail : next (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853) (rho 7858) (rho 7863) (rho 7868) (rho 7873)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg63 (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853) (rho 7858) (rho 7863) (rho 7868) next := by
  exact ⟨rho 7869, rho 7870, rho 7871, rho 7872, rho 7873, r7888, r7889, r7890, r7891, r7892, tail⟩

theorem template_scp_node20_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7893 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7893 rho)
    (r7894 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7894 rho)
    (r7895 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7895 rho)
    (r7896 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7896 rho)
    (r7897 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7897 rho)
    (tail : next (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg64 (rho 7833) (rho 7838) (rho 7843) (rho 7848) (rho 7853) (rho 7858) (rho 7863) (rho 7868) (rho 7873) next := by
  exact ⟨rho 7874, rho 7875, rho 7876, rho 7877, rho 7878, r7893, r7894, r7895, r7896, r7897, tail⟩

theorem template_scp_node20_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7898 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7898 rho)
    (r7899 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7899 rho)
    (r7900 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7900 rho)
    (r7901 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7901 rho)
    (r7902 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7902 rho)
    (tail : next (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878) (rho 7883)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg65 (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878) next := by
  exact ⟨rho 7879, rho 7880, rho 7881, rho 7882, rho 7883, r7898, r7899, r7900, r7901, r7902, tail⟩

theorem template_scp_node20_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7903 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7903 rho)
    (r7904 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7904 rho)
    (r7905 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7905 rho)
    (r7906 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7906 rho)
    (r7907 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7907 rho)
    (tail : next (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878) (rho 7883) (rho 7888)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg66 (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878) (rho 7883) next := by
  exact ⟨rho 7884, rho 7885, rho 7886, rho 7887, rho 7888, r7903, r7904, r7905, r7906, r7907, tail⟩

theorem template_scp_node20_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7908 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7908 rho)
    (r7909 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7909 rho)
    (r7910 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7910 rho)
    (r7911 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7911 rho)
    (r7912 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7912 rho)
    (tail : next (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878) (rho 7883) (rho 7888) (rho 7893)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg67 (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878) (rho 7883) (rho 7888) next := by
  exact ⟨rho 7889, rho 7890, rho 7891, rho 7892, rho 7893, r7908, r7909, r7910, r7911, r7912, tail⟩

theorem template_scp_node20_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7913 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7913 rho)
    (r7914 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7914 rho)
    (r7915 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7915 rho)
    (r7916 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7916 rho)
    (r7917 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7917 rho)
    (tail : next (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878) (rho 7883) (rho 7888) (rho 7893) (rho 7898)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg68 (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878) (rho 7883) (rho 7888) (rho 7893) next := by
  exact ⟨rho 7894, rho 7895, rho 7896, rho 7897, rho 7898, r7913, r7914, r7915, r7916, r7917, tail⟩

theorem template_scp_node20_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7918 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7918 rho)
    (r7919 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7919 rho)
    (r7920 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7920 rho)
    (r7921 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7921 rho)
    (r7922 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7922 rho)
    (tail : next (rho 7883) (rho 7888) (rho 7893) (rho 7898) (rho 7903)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_24c6fc.seg69 (rho 7858) (rho 7863) (rho 7868) (rho 7873) (rho 7878) (rho 7883) (rho 7888) (rho 7893) (rho 7898) next := by
  exact ⟨rho 7899, rho 7900, rho 7901, rho 7902, rho 7903, r7918, r7919, r7920, r7921, r7922, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
