import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node10_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3933 : Seg13.relationRow3933 rho)
    (r3934 : Seg13.relationRow3934 rho)
    (r3935 : Seg13.relationRow3935 rho)
    (r3936 : Seg13.relationRow3936 rho)
    (r3937 : Seg13.relationRow3937 rho)
    (tail : next (rho 65) (rho 66) (rho 11101) (rho 11102) (rho 11103) (rho 11104) (rho 11105) (rho 11110)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg0 (rho 64) (rho 65) (rho 66) (rho 11100) (rho 11101) (rho 11102) (rho 11103) (rho 11104) (rho 11105) next := by
  exact ⟨rho 11106, rho 11107, rho 11108, rho 11109, rho 11110, r3933, r3934, r3935, r3936, r3937, tail⟩

theorem seg13_scp_node10_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3938 : Seg13.relationRow3938 rho)
    (r3939 : Seg13.relationRow3939 rho)
    (r3940 : Seg13.relationRow3940 rho)
    (r3941 : Seg13.relationRow3941 rho)
    (r3942 : Seg13.relationRow3942 rho)
    (tail : next (rho 65) (rho 66) (rho 11103) (rho 11104) (rho 11105) (rho 11110) (rho 11115)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg1 (rho 65) (rho 66) (rho 11101) (rho 11102) (rho 11103) (rho 11104) (rho 11105) (rho 11110) next := by
  exact ⟨rho 11111, rho 11112, rho 11113, rho 11114, rho 11115, r3938, r3939, r3940, r3941, r3942, tail⟩

theorem seg13_scp_node10_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3943 : Seg13.relationRow3943 rho)
    (r3944 : Seg13.relationRow3944 rho)
    (r3945 : Seg13.relationRow3945 rho)
    (r3946 : Seg13.relationRow3946 rho)
    (r3947 : Seg13.relationRow3947 rho)
    (tail : next (rho 66) (rho 11105) (rho 11110) (rho 11115) (rho 11120)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg2 (rho 65) (rho 66) (rho 11103) (rho 11104) (rho 11105) (rho 11110) (rho 11115) next := by
  exact ⟨rho 11116, rho 11117, rho 11118, rho 11119, rho 11120, r3943, r3944, r3945, r3946, r3947, tail⟩

theorem seg13_scp_node10_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3948 : Seg13.relationRow3948 rho)
    (r3949 : Seg13.relationRow3949 rho)
    (r3950 : Seg13.relationRow3950 rho)
    (r3951 : Seg13.relationRow3951 rho)
    (r3952 : Seg13.relationRow3952 rho)
    (tail : next (rho 11110) (rho 11115) (rho 11120) (rho 11125)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg3 (rho 66) (rho 11105) (rho 11110) (rho 11115) (rho 11120) next := by
  exact ⟨rho 11121, rho 11122, rho 11123, rho 11124, rho 11125, r3948, r3949, r3950, r3951, r3952, tail⟩

theorem seg13_scp_node10_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3953 : Seg13.relationRow3953 rho)
    (r3954 : Seg13.relationRow3954 rho)
    (r3955 : Seg13.relationRow3955 rho)
    (r3956 : Seg13.relationRow3956 rho)
    (r3957 : Seg13.relationRow3957 rho)
    (tail : next (rho 11110) (rho 11115) (rho 11120) (rho 11125) (rho 11130)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg4 (rho 11110) (rho 11115) (rho 11120) (rho 11125) next := by
  exact ⟨rho 11126, rho 11127, rho 11128, rho 11129, rho 11130, r3953, r3954, r3955, r3956, r3957, tail⟩

theorem seg13_scp_node10_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3958 : Seg13.relationRow3958 rho)
    (r3959 : Seg13.relationRow3959 rho)
    (r3960 : Seg13.relationRow3960 rho)
    (r3961 : Seg13.relationRow3961 rho)
    (r3962 : Seg13.relationRow3962 rho)
    (tail : next (rho 11110) (rho 11115) (rho 11120) (rho 11125) (rho 11130) (rho 11135)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg5 (rho 11110) (rho 11115) (rho 11120) (rho 11125) (rho 11130) next := by
  exact ⟨rho 11131, rho 11132, rho 11133, rho 11134, rho 11135, r3958, r3959, r3960, r3961, r3962, tail⟩

theorem seg13_scp_node10_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3963 : Seg13.relationRow3963 rho)
    (r3964 : Seg13.relationRow3964 rho)
    (r3965 : Seg13.relationRow3965 rho)
    (r3966 : Seg13.relationRow3966 rho)
    (r3967 : Seg13.relationRow3967 rho)
    (tail : next (rho 11110) (rho 11115) (rho 11120) (rho 11125) (rho 11130) (rho 11135) (rho 11140)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg6 (rho 11110) (rho 11115) (rho 11120) (rho 11125) (rho 11130) (rho 11135) next := by
  exact ⟨rho 11136, rho 11137, rho 11138, rho 11139, rho 11140, r3963, r3964, r3965, r3966, r3967, tail⟩

theorem seg13_scp_node10_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3968 : Seg13.relationRow3968 rho)
    (r3969 : Seg13.relationRow3969 rho)
    (r3970 : Seg13.relationRow3970 rho)
    (r3971 : Seg13.relationRow3971 rho)
    (r3972 : Seg13.relationRow3972 rho)
    (tail : next (rho 11110) (rho 11115) (rho 11120) (rho 11125) (rho 11130) (rho 11135) (rho 11140) (rho 11145)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg7 (rho 11110) (rho 11115) (rho 11120) (rho 11125) (rho 11130) (rho 11135) (rho 11140) next := by
  exact ⟨rho 11141, rho 11142, rho 11143, rho 11144, rho 11145, r3968, r3969, r3970, r3971, r3972, tail⟩

theorem seg13_scp_node10_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3973 : Seg13.relationRow3973 rho)
    (r3974 : Seg13.relationRow3974 rho)
    (r3975 : Seg13.relationRow3975 rho)
    (r3976 : Seg13.relationRow3976 rho)
    (r3977 : Seg13.relationRow3977 rho)
    (tail : next (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg8 (rho 11110) (rho 11115) (rho 11120) (rho 11125) (rho 11130) (rho 11135) (rho 11140) (rho 11145) next := by
  exact ⟨rho 11146, rho 11147, rho 11148, rho 11149, rho 11150, r3973, r3974, r3975, r3976, r3977, tail⟩

theorem seg13_scp_node10_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3978 : Seg13.relationRow3978 rho)
    (r3979 : Seg13.relationRow3979 rho)
    (r3980 : Seg13.relationRow3980 rho)
    (r3981 : Seg13.relationRow3981 rho)
    (r3982 : Seg13.relationRow3982 rho)
    (tail : next (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150) (rho 11155)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg9 (rho 11130) (rho 11135) (rho 11140) (rho 11145) (rho 11150) next := by
  exact ⟨rho 11151, rho 11152, rho 11153, rho 11154, rho 11155, r3978, r3979, r3980, r3981, r3982, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

