import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node9_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3869 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3869 rho)
    (r3870 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3870 rho)
    (r3871 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3871 rho)
    (r3872 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3872 rho)
    (r3873 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3873 rho)
    (tail : next (rho 3840) (rho 3845) (rho 3850) (rho 3855) (rho 3860) (rho 3865)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg60 (rho 3840) (rho 3845) (rho 3850) (rho 3855) (rho 3860) next := by
  exact ⟨rho 3861, rho 3862, rho 3863, rho 3864, rho 3865, r3869, r3870, r3871, r3872, r3873, tail⟩

theorem template_scp_node9_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3874 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3874 rho)
    (r3875 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3875 rho)
    (r3876 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3876 rho)
    (r3877 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3877 rho)
    (r3878 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3878 rho)
    (tail : next (rho 3840) (rho 3845) (rho 3850) (rho 3855) (rho 3860) (rho 3865) (rho 3870)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg61 (rho 3840) (rho 3845) (rho 3850) (rho 3855) (rho 3860) (rho 3865) next := by
  exact ⟨rho 3866, rho 3867, rho 3868, rho 3869, rho 3870, r3874, r3875, r3876, r3877, r3878, tail⟩

theorem template_scp_node9_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3879 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3879 rho)
    (r3880 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3880 rho)
    (r3881 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3881 rho)
    (r3882 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3882 rho)
    (r3883 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3883 rho)
    (tail : next (rho 3840) (rho 3845) (rho 3850) (rho 3855) (rho 3860) (rho 3865) (rho 3870) (rho 3875)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg62 (rho 3840) (rho 3845) (rho 3850) (rho 3855) (rho 3860) (rho 3865) (rho 3870) next := by
  exact ⟨rho 3871, rho 3872, rho 3873, rho 3874, rho 3875, r3879, r3880, r3881, r3882, r3883, tail⟩

theorem template_scp_node9_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3884 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3884 rho)
    (r3885 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3885 rho)
    (r3886 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3886 rho)
    (r3887 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3887 rho)
    (r3888 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3888 rho)
    (tail : next (rho 3840) (rho 3845) (rho 3850) (rho 3855) (rho 3860) (rho 3865) (rho 3870) (rho 3875) (rho 3880)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg63 (rho 3840) (rho 3845) (rho 3850) (rho 3855) (rho 3860) (rho 3865) (rho 3870) (rho 3875) next := by
  exact ⟨rho 3876, rho 3877, rho 3878, rho 3879, rho 3880, r3884, r3885, r3886, r3887, r3888, tail⟩

theorem template_scp_node9_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3889 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3889 rho)
    (r3890 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3890 rho)
    (r3891 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3891 rho)
    (r3892 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3892 rho)
    (r3893 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3893 rho)
    (tail : next (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg64 (rho 3840) (rho 3845) (rho 3850) (rho 3855) (rho 3860) (rho 3865) (rho 3870) (rho 3875) (rho 3880) next := by
  exact ⟨rho 3881, rho 3882, rho 3883, rho 3884, rho 3885, r3889, r3890, r3891, r3892, r3893, tail⟩

theorem template_scp_node9_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3894 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3894 rho)
    (r3895 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3895 rho)
    (r3896 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3896 rho)
    (r3897 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3897 rho)
    (r3898 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3898 rho)
    (tail : next (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885) (rho 3890)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg65 (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885) next := by
  exact ⟨rho 3886, rho 3887, rho 3888, rho 3889, rho 3890, r3894, r3895, r3896, r3897, r3898, tail⟩

theorem template_scp_node9_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3899 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3899 rho)
    (r3900 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3900 rho)
    (r3901 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3901 rho)
    (r3902 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3902 rho)
    (r3903 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3903 rho)
    (tail : next (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885) (rho 3890) (rho 3895)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg66 (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885) (rho 3890) next := by
  exact ⟨rho 3891, rho 3892, rho 3893, rho 3894, rho 3895, r3899, r3900, r3901, r3902, r3903, tail⟩

theorem template_scp_node9_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3904 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3904 rho)
    (r3905 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3905 rho)
    (r3906 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3906 rho)
    (r3907 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3907 rho)
    (r3908 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3908 rho)
    (tail : next (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885) (rho 3890) (rho 3895) (rho 3900)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg67 (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885) (rho 3890) (rho 3895) next := by
  exact ⟨rho 3896, rho 3897, rho 3898, rho 3899, rho 3900, r3904, r3905, r3906, r3907, r3908, tail⟩

theorem template_scp_node9_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3909 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3909 rho)
    (r3910 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3910 rho)
    (r3911 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3911 rho)
    (r3912 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3912 rho)
    (r3913 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3913 rho)
    (tail : next (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885) (rho 3890) (rho 3895) (rho 3900) (rho 3905)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg68 (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885) (rho 3890) (rho 3895) (rho 3900) next := by
  exact ⟨rho 3901, rho 3902, rho 3903, rho 3904, rho 3905, r3909, r3910, r3911, r3912, r3913, tail⟩

theorem template_scp_node9_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3914 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3914 rho)
    (r3915 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3915 rho)
    (r3916 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3916 rho)
    (r3917 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3917 rho)
    (r3918 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow3918 rho)
    (tail : next (rho 3890) (rho 3895) (rho 3900) (rho 3905) (rho 3910)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode9350_9ad617.seg69 (rho 3865) (rho 3870) (rho 3875) (rho 3880) (rho 3885) (rho 3890) (rho 3895) (rho 3900) (rho 3905) next := by
  exact ⟨rho 3906, rho 3907, rho 3908, rho 3909, rho 3910, r3914, r3915, r3916, r3917, r3918, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
