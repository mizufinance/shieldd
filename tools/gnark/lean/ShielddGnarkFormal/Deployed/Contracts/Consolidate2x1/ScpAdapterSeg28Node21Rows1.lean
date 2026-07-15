import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node21_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7987 : Seg28.relationRow7987 rho)
    (r7988 : Seg28.relationRow7988 rho)
    (r7989 : Seg28.relationRow7989 rho)
    (r7990 : Seg28.relationRow7990 rho)
    (r7991 : Seg28.relationRow7991 rho)
    (tail : next (rho 27271) (rho 27276) (rho 27281) (rho 27286) (rho 27291) (rho 27296) (rho 27301)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg10 (rho 27271) (rho 27276) (rho 27281) (rho 27286) (rho 27291) (rho 27296) next := by
  exact ⟨rho 27297, rho 27298, rho 27299, rho 27300, rho 27301, r7987, r7988, r7989, r7990, r7991, tail⟩

theorem seg28_scp_node21_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7992 : Seg28.relationRow7992 rho)
    (r7993 : Seg28.relationRow7993 rho)
    (r7994 : Seg28.relationRow7994 rho)
    (r7995 : Seg28.relationRow7995 rho)
    (r7996 : Seg28.relationRow7996 rho)
    (tail : next (rho 27271) (rho 27276) (rho 27281) (rho 27286) (rho 27291) (rho 27296) (rho 27301) (rho 27306)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg11 (rho 27271) (rho 27276) (rho 27281) (rho 27286) (rho 27291) (rho 27296) (rho 27301) next := by
  exact ⟨rho 27302, rho 27303, rho 27304, rho 27305, rho 27306, r7992, r7993, r7994, r7995, r7996, tail⟩

theorem seg28_scp_node21_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7997 : Seg28.relationRow7997 rho)
    (r7998 : Seg28.relationRow7998 rho)
    (r7999 : Seg28.relationRow7999 rho)
    (r8000 : Seg28.relationRow8000 rho)
    (r8001 : Seg28.relationRow8001 rho)
    (tail : next (rho 27271) (rho 27276) (rho 27281) (rho 27286) (rho 27291) (rho 27296) (rho 27301) (rho 27306) (rho 27311)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg12 (rho 27271) (rho 27276) (rho 27281) (rho 27286) (rho 27291) (rho 27296) (rho 27301) (rho 27306) next := by
  exact ⟨rho 27307, rho 27308, rho 27309, rho 27310, rho 27311, r7997, r7998, r7999, r8000, r8001, tail⟩

theorem seg28_scp_node21_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8002 : Seg28.relationRow8002 rho)
    (r8003 : Seg28.relationRow8003 rho)
    (r8004 : Seg28.relationRow8004 rho)
    (r8005 : Seg28.relationRow8005 rho)
    (r8006 : Seg28.relationRow8006 rho)
    (tail : next (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg13 (rho 27271) (rho 27276) (rho 27281) (rho 27286) (rho 27291) (rho 27296) (rho 27301) (rho 27306) (rho 27311) next := by
  exact ⟨rho 27312, rho 27313, rho 27314, rho 27315, rho 27316, r8002, r8003, r8004, r8005, r8006, tail⟩

theorem seg28_scp_node21_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8007 : Seg28.relationRow8007 rho)
    (r8008 : Seg28.relationRow8008 rho)
    (r8009 : Seg28.relationRow8009 rho)
    (r8010 : Seg28.relationRow8010 rho)
    (r8011 : Seg28.relationRow8011 rho)
    (tail : next (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316) (rho 27321)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg14 (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316) next := by
  exact ⟨rho 27317, rho 27318, rho 27319, rho 27320, rho 27321, r8007, r8008, r8009, r8010, r8011, tail⟩

theorem seg28_scp_node21_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8012 : Seg28.relationRow8012 rho)
    (r8013 : Seg28.relationRow8013 rho)
    (r8014 : Seg28.relationRow8014 rho)
    (r8015 : Seg28.relationRow8015 rho)
    (r8016 : Seg28.relationRow8016 rho)
    (tail : next (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316) (rho 27321) (rho 27326)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg15 (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316) (rho 27321) next := by
  exact ⟨rho 27322, rho 27323, rho 27324, rho 27325, rho 27326, r8012, r8013, r8014, r8015, r8016, tail⟩

theorem seg28_scp_node21_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8017 : Seg28.relationRow8017 rho)
    (r8018 : Seg28.relationRow8018 rho)
    (r8019 : Seg28.relationRow8019 rho)
    (r8020 : Seg28.relationRow8020 rho)
    (r8021 : Seg28.relationRow8021 rho)
    (tail : next (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316) (rho 27321) (rho 27326) (rho 27331)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg16 (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316) (rho 27321) (rho 27326) next := by
  exact ⟨rho 27327, rho 27328, rho 27329, rho 27330, rho 27331, r8017, r8018, r8019, r8020, r8021, tail⟩

theorem seg28_scp_node21_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8022 : Seg28.relationRow8022 rho)
    (r8023 : Seg28.relationRow8023 rho)
    (r8024 : Seg28.relationRow8024 rho)
    (r8025 : Seg28.relationRow8025 rho)
    (r8026 : Seg28.relationRow8026 rho)
    (tail : next (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316) (rho 27321) (rho 27326) (rho 27331) (rho 27336)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg17 (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316) (rho 27321) (rho 27326) (rho 27331) next := by
  exact ⟨rho 27332, rho 27333, rho 27334, rho 27335, rho 27336, r8022, r8023, r8024, r8025, r8026, tail⟩

theorem seg28_scp_node21_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8027 : Seg28.relationRow8027 rho)
    (r8028 : Seg28.relationRow8028 rho)
    (r8029 : Seg28.relationRow8029 rho)
    (r8030 : Seg28.relationRow8030 rho)
    (r8031 : Seg28.relationRow8031 rho)
    (tail : next (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg18 (rho 27296) (rho 27301) (rho 27306) (rho 27311) (rho 27316) (rho 27321) (rho 27326) (rho 27331) (rho 27336) next := by
  exact ⟨rho 27337, rho 27338, rho 27339, rho 27340, rho 27341, r8027, r8028, r8029, r8030, r8031, tail⟩

theorem seg28_scp_node21_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8032 : Seg28.relationRow8032 rho)
    (r8033 : Seg28.relationRow8033 rho)
    (r8034 : Seg28.relationRow8034 rho)
    (r8035 : Seg28.relationRow8035 rho)
    (r8036 : Seg28.relationRow8036 rho)
    (tail : next (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) (rho 27346)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg19 (rho 27321) (rho 27326) (rho 27331) (rho 27336) (rho 27341) next := by
  exact ⟨rho 27342, rho 27343, rho 27344, rho 27345, rho 27346, r8032, r8033, r8034, r8035, r8036, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

