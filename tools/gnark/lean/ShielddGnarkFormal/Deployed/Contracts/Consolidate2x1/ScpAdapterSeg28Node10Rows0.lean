import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node10_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3933 : Seg28.relationRow3933 rho)
    (r3934 : Seg28.relationRow3934 rho)
    (r3935 : Seg28.relationRow3935 rho)
    (r3936 : Seg28.relationRow3936 rho)
    (r3937 : Seg28.relationRow3937 rho)
    (tail : next (rho 155) (rho 156) (rho 23282) (rho 23283) (rho 23284) (rho 23285) (rho 23286) (rho 23291)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg0 (rho 154) (rho 155) (rho 156) (rho 23281) (rho 23282) (rho 23283) (rho 23284) (rho 23285) (rho 23286) next := by
  exact ⟨rho 23287, rho 23288, rho 23289, rho 23290, rho 23291, r3933, r3934, r3935, r3936, r3937, tail⟩

theorem seg28_scp_node10_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3938 : Seg28.relationRow3938 rho)
    (r3939 : Seg28.relationRow3939 rho)
    (r3940 : Seg28.relationRow3940 rho)
    (r3941 : Seg28.relationRow3941 rho)
    (r3942 : Seg28.relationRow3942 rho)
    (tail : next (rho 155) (rho 156) (rho 23284) (rho 23285) (rho 23286) (rho 23291) (rho 23296)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg1 (rho 155) (rho 156) (rho 23282) (rho 23283) (rho 23284) (rho 23285) (rho 23286) (rho 23291) next := by
  exact ⟨rho 23292, rho 23293, rho 23294, rho 23295, rho 23296, r3938, r3939, r3940, r3941, r3942, tail⟩

theorem seg28_scp_node10_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3943 : Seg28.relationRow3943 rho)
    (r3944 : Seg28.relationRow3944 rho)
    (r3945 : Seg28.relationRow3945 rho)
    (r3946 : Seg28.relationRow3946 rho)
    (r3947 : Seg28.relationRow3947 rho)
    (tail : next (rho 156) (rho 23286) (rho 23291) (rho 23296) (rho 23301)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg2 (rho 155) (rho 156) (rho 23284) (rho 23285) (rho 23286) (rho 23291) (rho 23296) next := by
  exact ⟨rho 23297, rho 23298, rho 23299, rho 23300, rho 23301, r3943, r3944, r3945, r3946, r3947, tail⟩

theorem seg28_scp_node10_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3948 : Seg28.relationRow3948 rho)
    (r3949 : Seg28.relationRow3949 rho)
    (r3950 : Seg28.relationRow3950 rho)
    (r3951 : Seg28.relationRow3951 rho)
    (r3952 : Seg28.relationRow3952 rho)
    (tail : next (rho 23291) (rho 23296) (rho 23301) (rho 23306)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg3 (rho 156) (rho 23286) (rho 23291) (rho 23296) (rho 23301) next := by
  exact ⟨rho 23302, rho 23303, rho 23304, rho 23305, rho 23306, r3948, r3949, r3950, r3951, r3952, tail⟩

theorem seg28_scp_node10_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3953 : Seg28.relationRow3953 rho)
    (r3954 : Seg28.relationRow3954 rho)
    (r3955 : Seg28.relationRow3955 rho)
    (r3956 : Seg28.relationRow3956 rho)
    (r3957 : Seg28.relationRow3957 rho)
    (tail : next (rho 23291) (rho 23296) (rho 23301) (rho 23306) (rho 23311)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg4 (rho 23291) (rho 23296) (rho 23301) (rho 23306) next := by
  exact ⟨rho 23307, rho 23308, rho 23309, rho 23310, rho 23311, r3953, r3954, r3955, r3956, r3957, tail⟩

theorem seg28_scp_node10_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3958 : Seg28.relationRow3958 rho)
    (r3959 : Seg28.relationRow3959 rho)
    (r3960 : Seg28.relationRow3960 rho)
    (r3961 : Seg28.relationRow3961 rho)
    (r3962 : Seg28.relationRow3962 rho)
    (tail : next (rho 23291) (rho 23296) (rho 23301) (rho 23306) (rho 23311) (rho 23316)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg5 (rho 23291) (rho 23296) (rho 23301) (rho 23306) (rho 23311) next := by
  exact ⟨rho 23312, rho 23313, rho 23314, rho 23315, rho 23316, r3958, r3959, r3960, r3961, r3962, tail⟩

theorem seg28_scp_node10_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3963 : Seg28.relationRow3963 rho)
    (r3964 : Seg28.relationRow3964 rho)
    (r3965 : Seg28.relationRow3965 rho)
    (r3966 : Seg28.relationRow3966 rho)
    (r3967 : Seg28.relationRow3967 rho)
    (tail : next (rho 23291) (rho 23296) (rho 23301) (rho 23306) (rho 23311) (rho 23316) (rho 23321)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg6 (rho 23291) (rho 23296) (rho 23301) (rho 23306) (rho 23311) (rho 23316) next := by
  exact ⟨rho 23317, rho 23318, rho 23319, rho 23320, rho 23321, r3963, r3964, r3965, r3966, r3967, tail⟩

theorem seg28_scp_node10_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3968 : Seg28.relationRow3968 rho)
    (r3969 : Seg28.relationRow3969 rho)
    (r3970 : Seg28.relationRow3970 rho)
    (r3971 : Seg28.relationRow3971 rho)
    (r3972 : Seg28.relationRow3972 rho)
    (tail : next (rho 23291) (rho 23296) (rho 23301) (rho 23306) (rho 23311) (rho 23316) (rho 23321) (rho 23326)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg7 (rho 23291) (rho 23296) (rho 23301) (rho 23306) (rho 23311) (rho 23316) (rho 23321) next := by
  exact ⟨rho 23322, rho 23323, rho 23324, rho 23325, rho 23326, r3968, r3969, r3970, r3971, r3972, tail⟩

theorem seg28_scp_node10_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3973 : Seg28.relationRow3973 rho)
    (r3974 : Seg28.relationRow3974 rho)
    (r3975 : Seg28.relationRow3975 rho)
    (r3976 : Seg28.relationRow3976 rho)
    (r3977 : Seg28.relationRow3977 rho)
    (tail : next (rho 23311) (rho 23316) (rho 23321) (rho 23326) (rho 23331)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg8 (rho 23291) (rho 23296) (rho 23301) (rho 23306) (rho 23311) (rho 23316) (rho 23321) (rho 23326) next := by
  exact ⟨rho 23327, rho 23328, rho 23329, rho 23330, rho 23331, r3973, r3974, r3975, r3976, r3977, tail⟩

theorem seg28_scp_node10_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3978 : Seg28.relationRow3978 rho)
    (r3979 : Seg28.relationRow3979 rho)
    (r3980 : Seg28.relationRow3980 rho)
    (r3981 : Seg28.relationRow3981 rho)
    (r3982 : Seg28.relationRow3982 rho)
    (tail : next (rho 23311) (rho 23316) (rho 23321) (rho 23326) (rho 23331) (rho 23336)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_e3b688.seg9 (rho 23311) (rho 23316) (rho 23321) (rho 23326) (rho 23331) next := by
  exact ⟨rho 23332, rho 23333, rho 23334, rho 23335, rho 23336, r3978, r3979, r3980, r3981, r3982, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

