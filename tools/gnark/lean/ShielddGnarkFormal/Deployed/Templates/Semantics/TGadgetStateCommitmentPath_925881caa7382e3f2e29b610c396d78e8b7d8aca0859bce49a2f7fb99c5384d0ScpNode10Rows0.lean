import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node10_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3933 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3933 rho)
    (r3934 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3934 rho)
    (r3935 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3935 rho)
    (r3936 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3936 rho)
    (r3937 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3937 rho)
    (tail : next (rho 3923) (rho 3926) (rho 3924) (rho 3925) (rho 3927) (rho 3928) (rho 3929) (rho 3934)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg0 (rho 3921) (rho 3923) (rho 3926) (rho 3922) (rho 3924) (rho 3925) (rho 3927) (rho 3928) (rho 3929) next := by
  exact ⟨rho 3930, rho 3931, rho 3932, rho 3933, rho 3934, r3933, r3934, r3935, r3936, r3937, tail⟩

theorem template_scp_node10_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3938 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3938 rho)
    (r3939 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3939 rho)
    (r3940 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3940 rho)
    (r3941 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3941 rho)
    (r3942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3942 rho)
    (tail : next (rho 3923) (rho 3926) (rho 3927) (rho 3928) (rho 3929) (rho 3934) (rho 3939)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg1 (rho 3923) (rho 3926) (rho 3924) (rho 3925) (rho 3927) (rho 3928) (rho 3929) (rho 3934) next := by
  exact ⟨rho 3935, rho 3936, rho 3937, rho 3938, rho 3939, r3938, r3939, r3940, r3941, r3942, tail⟩

theorem template_scp_node10_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3943 rho)
    (r3944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3944 rho)
    (r3945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3945 rho)
    (r3946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3946 rho)
    (r3947 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3947 rho)
    (tail : next (rho 3926) (rho 3929) (rho 3934) (rho 3939) (rho 3944)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg2 (rho 3923) (rho 3926) (rho 3927) (rho 3928) (rho 3929) (rho 3934) (rho 3939) next := by
  exact ⟨rho 3940, rho 3941, rho 3942, rho 3943, rho 3944, r3943, r3944, r3945, r3946, r3947, tail⟩

theorem template_scp_node10_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r3948 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3948 rho)
    (r3949 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3949 rho)
    (r3950 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3950 rho)
    (r3951 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3951 rho)
    (r3952 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3952 rho)
    (tail : next (rho 3934) (rho 3939) (rho 3944) (rho 3949)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg3 (rho 3926) (rho 3929) (rho 3934) (rho 3939) (rho 3944) next := by
  exact ⟨rho 3945, rho 3946, rho 3947, rho 3948, rho 3949, r3948, r3949, r3950, r3951, r3952, tail⟩

theorem template_scp_node10_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3953 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3953 rho)
    (r3954 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3954 rho)
    (r3955 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3955 rho)
    (r3956 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3956 rho)
    (r3957 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3957 rho)
    (tail : next (rho 3934) (rho 3939) (rho 3944) (rho 3949) (rho 3954)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg4 (rho 3934) (rho 3939) (rho 3944) (rho 3949) next := by
  exact ⟨rho 3950, rho 3951, rho 3952, rho 3953, rho 3954, r3953, r3954, r3955, r3956, r3957, tail⟩

theorem template_scp_node10_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3958 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3958 rho)
    (r3959 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3959 rho)
    (r3960 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3960 rho)
    (r3961 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3961 rho)
    (r3962 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3962 rho)
    (tail : next (rho 3934) (rho 3939) (rho 3944) (rho 3949) (rho 3954) (rho 3959)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg5 (rho 3934) (rho 3939) (rho 3944) (rho 3949) (rho 3954) next := by
  exact ⟨rho 3955, rho 3956, rho 3957, rho 3958, rho 3959, r3958, r3959, r3960, r3961, r3962, tail⟩

theorem template_scp_node10_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3963 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3963 rho)
    (r3964 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3964 rho)
    (r3965 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3965 rho)
    (r3966 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3966 rho)
    (r3967 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3967 rho)
    (tail : next (rho 3934) (rho 3939) (rho 3944) (rho 3949) (rho 3954) (rho 3959) (rho 3964)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg6 (rho 3934) (rho 3939) (rho 3944) (rho 3949) (rho 3954) (rho 3959) next := by
  exact ⟨rho 3960, rho 3961, rho 3962, rho 3963, rho 3964, r3963, r3964, r3965, r3966, r3967, tail⟩

theorem template_scp_node10_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3968 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3968 rho)
    (r3969 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3969 rho)
    (r3970 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3970 rho)
    (r3971 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3971 rho)
    (r3972 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3972 rho)
    (tail : next (rho 3934) (rho 3939) (rho 3944) (rho 3949) (rho 3954) (rho 3959) (rho 3964) (rho 3969)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg7 (rho 3934) (rho 3939) (rho 3944) (rho 3949) (rho 3954) (rho 3959) (rho 3964) next := by
  exact ⟨rho 3965, rho 3966, rho 3967, rho 3968, rho 3969, r3968, r3969, r3970, r3971, r3972, tail⟩

theorem template_scp_node10_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3973 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3973 rho)
    (r3974 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3974 rho)
    (r3975 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3975 rho)
    (r3976 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3976 rho)
    (r3977 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3977 rho)
    (tail : next (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg8 (rho 3934) (rho 3939) (rho 3944) (rho 3949) (rho 3954) (rho 3959) (rho 3964) (rho 3969) next := by
  exact ⟨rho 3970, rho 3971, rho 3972, rho 3973, rho 3974, r3973, r3974, r3975, r3976, r3977, tail⟩

theorem template_scp_node10_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3978 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3978 rho)
    (r3979 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3979 rho)
    (r3980 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3980 rho)
    (r3981 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3981 rho)
    (r3982 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3982 rho)
    (tail : next (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974) (rho 3979)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg9 (rho 3954) (rho 3959) (rho 3964) (rho 3969) (rho 3974) next := by
  exact ⟨rho 3975, rho 3976, rho 3977, rho 3978, rho 3979, r3978, r3979, r3980, r3981, r3982, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
