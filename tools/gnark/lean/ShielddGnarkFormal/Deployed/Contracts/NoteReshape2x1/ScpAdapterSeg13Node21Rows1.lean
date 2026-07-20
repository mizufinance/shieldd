import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node21_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7987 : Seg13.relationRow7987 rho)
    (r7988 : Seg13.relationRow7988 rho)
    (r7989 : Seg13.relationRow7989 rho)
    (r7990 : Seg13.relationRow7990 rho)
    (r7991 : Seg13.relationRow7991 rho)
    (tail : next (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104) (rho 15109) (rho 15114)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg10 (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104) (rho 15109) next := by
  exact ⟨rho 15110, rho 15111, rho 15112, rho 15113, rho 15114, r7987, r7988, r7989, r7990, r7991, tail⟩

theorem seg13_scp_node21_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7992 : Seg13.relationRow7992 rho)
    (r7993 : Seg13.relationRow7993 rho)
    (r7994 : Seg13.relationRow7994 rho)
    (r7995 : Seg13.relationRow7995 rho)
    (r7996 : Seg13.relationRow7996 rho)
    (tail : next (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104) (rho 15109) (rho 15114) (rho 15119)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg11 (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104) (rho 15109) (rho 15114) next := by
  exact ⟨rho 15115, rho 15116, rho 15117, rho 15118, rho 15119, r7992, r7993, r7994, r7995, r7996, tail⟩

theorem seg13_scp_node21_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7997 : Seg13.relationRow7997 rho)
    (r7998 : Seg13.relationRow7998 rho)
    (r7999 : Seg13.relationRow7999 rho)
    (r8000 : Seg13.relationRow8000 rho)
    (r8001 : Seg13.relationRow8001 rho)
    (tail : next (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104) (rho 15109) (rho 15114) (rho 15119) (rho 15124)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg12 (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104) (rho 15109) (rho 15114) (rho 15119) next := by
  exact ⟨rho 15120, rho 15121, rho 15122, rho 15123, rho 15124, r7997, r7998, r7999, r8000, r8001, tail⟩

theorem seg13_scp_node21_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8002 : Seg13.relationRow8002 rho)
    (r8003 : Seg13.relationRow8003 rho)
    (r8004 : Seg13.relationRow8004 rho)
    (r8005 : Seg13.relationRow8005 rho)
    (r8006 : Seg13.relationRow8006 rho)
    (tail : next (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg13 (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104) (rho 15109) (rho 15114) (rho 15119) (rho 15124) next := by
  exact ⟨rho 15125, rho 15126, rho 15127, rho 15128, rho 15129, r8002, r8003, r8004, r8005, r8006, tail⟩

theorem seg13_scp_node21_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8007 : Seg13.relationRow8007 rho)
    (r8008 : Seg13.relationRow8008 rho)
    (r8009 : Seg13.relationRow8009 rho)
    (r8010 : Seg13.relationRow8010 rho)
    (r8011 : Seg13.relationRow8011 rho)
    (tail : next (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129) (rho 15134)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg14 (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129) next := by
  exact ⟨rho 15130, rho 15131, rho 15132, rho 15133, rho 15134, r8007, r8008, r8009, r8010, r8011, tail⟩

theorem seg13_scp_node21_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8012 : Seg13.relationRow8012 rho)
    (r8013 : Seg13.relationRow8013 rho)
    (r8014 : Seg13.relationRow8014 rho)
    (r8015 : Seg13.relationRow8015 rho)
    (r8016 : Seg13.relationRow8016 rho)
    (tail : next (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129) (rho 15134) (rho 15139)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg15 (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129) (rho 15134) next := by
  exact ⟨rho 15135, rho 15136, rho 15137, rho 15138, rho 15139, r8012, r8013, r8014, r8015, r8016, tail⟩

theorem seg13_scp_node21_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8017 : Seg13.relationRow8017 rho)
    (r8018 : Seg13.relationRow8018 rho)
    (r8019 : Seg13.relationRow8019 rho)
    (r8020 : Seg13.relationRow8020 rho)
    (r8021 : Seg13.relationRow8021 rho)
    (tail : next (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129) (rho 15134) (rho 15139) (rho 15144)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg16 (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129) (rho 15134) (rho 15139) next := by
  exact ⟨rho 15140, rho 15141, rho 15142, rho 15143, rho 15144, r8017, r8018, r8019, r8020, r8021, tail⟩

theorem seg13_scp_node21_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8022 : Seg13.relationRow8022 rho)
    (r8023 : Seg13.relationRow8023 rho)
    (r8024 : Seg13.relationRow8024 rho)
    (r8025 : Seg13.relationRow8025 rho)
    (r8026 : Seg13.relationRow8026 rho)
    (tail : next (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129) (rho 15134) (rho 15139) (rho 15144) (rho 15149)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg17 (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129) (rho 15134) (rho 15139) (rho 15144) next := by
  exact ⟨rho 15145, rho 15146, rho 15147, rho 15148, rho 15149, r8022, r8023, r8024, r8025, r8026, tail⟩

theorem seg13_scp_node21_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8027 : Seg13.relationRow8027 rho)
    (r8028 : Seg13.relationRow8028 rho)
    (r8029 : Seg13.relationRow8029 rho)
    (r8030 : Seg13.relationRow8030 rho)
    (r8031 : Seg13.relationRow8031 rho)
    (tail : next (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg18 (rho 15109) (rho 15114) (rho 15119) (rho 15124) (rho 15129) (rho 15134) (rho 15139) (rho 15144) (rho 15149) next := by
  exact ⟨rho 15150, rho 15151, rho 15152, rho 15153, rho 15154, r8027, r8028, r8029, r8030, r8031, tail⟩

theorem seg13_scp_node21_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8032 : Seg13.relationRow8032 rho)
    (r8033 : Seg13.relationRow8033 rho)
    (r8034 : Seg13.relationRow8034 rho)
    (r8035 : Seg13.relationRow8035 rho)
    (r8036 : Seg13.relationRow8036 rho)
    (tail : next (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) (rho 15159)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg19 (rho 15134) (rho 15139) (rho 15144) (rho 15149) (rho 15154) next := by
  exact ⟨rho 15155, rho 15156, rho 15157, rho 15158, rho 15159, r8032, r8033, r8034, r8035, r8036, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

