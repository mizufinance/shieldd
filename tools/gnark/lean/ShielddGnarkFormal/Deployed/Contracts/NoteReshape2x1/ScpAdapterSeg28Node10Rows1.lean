import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node10_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3983 : Seg28.relationRow3983 rho)
    (r3984 : Seg28.relationRow3984 rho)
    (r3985 : Seg28.relationRow3985 rho)
    (r3986 : Seg28.relationRow3986 rho)
    (r3987 : Seg28.relationRow3987 rho)
    (tail : next (rho 23305) (rho 23310) (rho 23315) (rho 23320) (rho 23325) (rho 23330) (rho 23335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg10 (rho 23305) (rho 23310) (rho 23315) (rho 23320) (rho 23325) (rho 23330) next := by
  exact ⟨rho 23331, rho 23332, rho 23333, rho 23334, rho 23335, r3983, r3984, r3985, r3986, r3987, tail⟩

theorem seg28_scp_node10_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3988 : Seg28.relationRow3988 rho)
    (r3989 : Seg28.relationRow3989 rho)
    (r3990 : Seg28.relationRow3990 rho)
    (r3991 : Seg28.relationRow3991 rho)
    (r3992 : Seg28.relationRow3992 rho)
    (tail : next (rho 23305) (rho 23310) (rho 23315) (rho 23320) (rho 23325) (rho 23330) (rho 23335) (rho 23340)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg11 (rho 23305) (rho 23310) (rho 23315) (rho 23320) (rho 23325) (rho 23330) (rho 23335) next := by
  exact ⟨rho 23336, rho 23337, rho 23338, rho 23339, rho 23340, r3988, r3989, r3990, r3991, r3992, tail⟩

theorem seg28_scp_node10_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3993 : Seg28.relationRow3993 rho)
    (r3994 : Seg28.relationRow3994 rho)
    (r3995 : Seg28.relationRow3995 rho)
    (r3996 : Seg28.relationRow3996 rho)
    (r3997 : Seg28.relationRow3997 rho)
    (tail : next (rho 23305) (rho 23310) (rho 23315) (rho 23320) (rho 23325) (rho 23330) (rho 23335) (rho 23340) (rho 23345)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg12 (rho 23305) (rho 23310) (rho 23315) (rho 23320) (rho 23325) (rho 23330) (rho 23335) (rho 23340) next := by
  exact ⟨rho 23341, rho 23342, rho 23343, rho 23344, rho 23345, r3993, r3994, r3995, r3996, r3997, tail⟩

theorem seg28_scp_node10_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3998 : Seg28.relationRow3998 rho)
    (r3999 : Seg28.relationRow3999 rho)
    (r4000 : Seg28.relationRow4000 rho)
    (r4001 : Seg28.relationRow4001 rho)
    (r4002 : Seg28.relationRow4002 rho)
    (tail : next (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg13 (rho 23305) (rho 23310) (rho 23315) (rho 23320) (rho 23325) (rho 23330) (rho 23335) (rho 23340) (rho 23345) next := by
  exact ⟨rho 23346, rho 23347, rho 23348, rho 23349, rho 23350, r3998, r3999, r4000, r4001, r4002, tail⟩

theorem seg28_scp_node10_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4003 : Seg28.relationRow4003 rho)
    (r4004 : Seg28.relationRow4004 rho)
    (r4005 : Seg28.relationRow4005 rho)
    (r4006 : Seg28.relationRow4006 rho)
    (r4007 : Seg28.relationRow4007 rho)
    (tail : next (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350) (rho 23355)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg14 (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350) next := by
  exact ⟨rho 23351, rho 23352, rho 23353, rho 23354, rho 23355, r4003, r4004, r4005, r4006, r4007, tail⟩

theorem seg28_scp_node10_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4008 : Seg28.relationRow4008 rho)
    (r4009 : Seg28.relationRow4009 rho)
    (r4010 : Seg28.relationRow4010 rho)
    (r4011 : Seg28.relationRow4011 rho)
    (r4012 : Seg28.relationRow4012 rho)
    (tail : next (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350) (rho 23355) (rho 23360)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg15 (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350) (rho 23355) next := by
  exact ⟨rho 23356, rho 23357, rho 23358, rho 23359, rho 23360, r4008, r4009, r4010, r4011, r4012, tail⟩

theorem seg28_scp_node10_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4013 : Seg28.relationRow4013 rho)
    (r4014 : Seg28.relationRow4014 rho)
    (r4015 : Seg28.relationRow4015 rho)
    (r4016 : Seg28.relationRow4016 rho)
    (r4017 : Seg28.relationRow4017 rho)
    (tail : next (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350) (rho 23355) (rho 23360) (rho 23365)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg16 (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350) (rho 23355) (rho 23360) next := by
  exact ⟨rho 23361, rho 23362, rho 23363, rho 23364, rho 23365, r4013, r4014, r4015, r4016, r4017, tail⟩

theorem seg28_scp_node10_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4018 : Seg28.relationRow4018 rho)
    (r4019 : Seg28.relationRow4019 rho)
    (r4020 : Seg28.relationRow4020 rho)
    (r4021 : Seg28.relationRow4021 rho)
    (r4022 : Seg28.relationRow4022 rho)
    (tail : next (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350) (rho 23355) (rho 23360) (rho 23365) (rho 23370)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg17 (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350) (rho 23355) (rho 23360) (rho 23365) next := by
  exact ⟨rho 23366, rho 23367, rho 23368, rho 23369, rho 23370, r4018, r4019, r4020, r4021, r4022, tail⟩

theorem seg28_scp_node10_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4023 : Seg28.relationRow4023 rho)
    (r4024 : Seg28.relationRow4024 rho)
    (r4025 : Seg28.relationRow4025 rho)
    (r4026 : Seg28.relationRow4026 rho)
    (r4027 : Seg28.relationRow4027 rho)
    (tail : next (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg18 (rho 23330) (rho 23335) (rho 23340) (rho 23345) (rho 23350) (rho 23355) (rho 23360) (rho 23365) (rho 23370) next := by
  exact ⟨rho 23371, rho 23372, rho 23373, rho 23374, rho 23375, r4023, r4024, r4025, r4026, r4027, tail⟩

theorem seg28_scp_node10_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4028 : Seg28.relationRow4028 rho)
    (r4029 : Seg28.relationRow4029 rho)
    (r4030 : Seg28.relationRow4030 rho)
    (r4031 : Seg28.relationRow4031 rho)
    (r4032 : Seg28.relationRow4032 rho)
    (tail : next (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) (rho 23380)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode10350_98ef2c.seg19 (rho 23355) (rho 23360) (rho 23365) (rho 23370) (rho 23375) next := by
  exact ⟨rho 23376, rho 23377, rho 23378, rho 23379, rho 23380, r4028, r4029, r4030, r4031, r4032, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

