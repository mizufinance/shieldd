import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node21_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7987 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7987 rho)
    (r7988 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7988 rho)
    (r7989 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7989 rho)
    (r7990 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7990 rho)
    (r7991 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7991 rho)
    (tail : next (rho 7947) (rho 7952) (rho 7957) (rho 7962) (rho 7967) (rho 7972) (rho 7977)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg10 (rho 7947) (rho 7952) (rho 7957) (rho 7962) (rho 7967) (rho 7972) next := by
  exact ⟨rho 7973, rho 7974, rho 7975, rho 7976, rho 7977, r7987, r7988, r7989, r7990, r7991, tail⟩

theorem template_scp_node21_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7992 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7992 rho)
    (r7993 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7993 rho)
    (r7994 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7994 rho)
    (r7995 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7995 rho)
    (r7996 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7996 rho)
    (tail : next (rho 7947) (rho 7952) (rho 7957) (rho 7962) (rho 7967) (rho 7972) (rho 7977) (rho 7982)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg11 (rho 7947) (rho 7952) (rho 7957) (rho 7962) (rho 7967) (rho 7972) (rho 7977) next := by
  exact ⟨rho 7978, rho 7979, rho 7980, rho 7981, rho 7982, r7992, r7993, r7994, r7995, r7996, tail⟩

theorem template_scp_node21_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r7997 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7997 rho)
    (r7998 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7998 rho)
    (r7999 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow7999 rho)
    (r8000 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8000 rho)
    (r8001 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8001 rho)
    (tail : next (rho 7947) (rho 7952) (rho 7957) (rho 7962) (rho 7967) (rho 7972) (rho 7977) (rho 7982) (rho 7987)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg12 (rho 7947) (rho 7952) (rho 7957) (rho 7962) (rho 7967) (rho 7972) (rho 7977) (rho 7982) next := by
  exact ⟨rho 7983, rho 7984, rho 7985, rho 7986, rho 7987, r7997, r7998, r7999, r8000, r8001, tail⟩

theorem template_scp_node21_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8002 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8002 rho)
    (r8003 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8003 rho)
    (r8004 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8004 rho)
    (r8005 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8005 rho)
    (r8006 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8006 rho)
    (tail : next (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg13 (rho 7947) (rho 7952) (rho 7957) (rho 7962) (rho 7967) (rho 7972) (rho 7977) (rho 7982) (rho 7987) next := by
  exact ⟨rho 7988, rho 7989, rho 7990, rho 7991, rho 7992, r8002, r8003, r8004, r8005, r8006, tail⟩

theorem template_scp_node21_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8007 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8007 rho)
    (r8008 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8008 rho)
    (r8009 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8009 rho)
    (r8010 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8010 rho)
    (r8011 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8011 rho)
    (tail : next (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992) (rho 7997)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg14 (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992) next := by
  exact ⟨rho 7993, rho 7994, rho 7995, rho 7996, rho 7997, r8007, r8008, r8009, r8010, r8011, tail⟩

theorem template_scp_node21_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8012 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8012 rho)
    (r8013 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8013 rho)
    (r8014 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8014 rho)
    (r8015 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8015 rho)
    (r8016 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8016 rho)
    (tail : next (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992) (rho 7997) (rho 8002)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg15 (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992) (rho 7997) next := by
  exact ⟨rho 7998, rho 7999, rho 8000, rho 8001, rho 8002, r8012, r8013, r8014, r8015, r8016, tail⟩

theorem template_scp_node21_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8017 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8017 rho)
    (r8018 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8018 rho)
    (r8019 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8019 rho)
    (r8020 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8020 rho)
    (r8021 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8021 rho)
    (tail : next (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992) (rho 7997) (rho 8002) (rho 8007)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg16 (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992) (rho 7997) (rho 8002) next := by
  exact ⟨rho 8003, rho 8004, rho 8005, rho 8006, rho 8007, r8017, r8018, r8019, r8020, r8021, tail⟩

theorem template_scp_node21_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8022 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8022 rho)
    (r8023 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8023 rho)
    (r8024 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8024 rho)
    (r8025 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8025 rho)
    (r8026 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8026 rho)
    (tail : next (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992) (rho 7997) (rho 8002) (rho 8007) (rho 8012)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg17 (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992) (rho 7997) (rho 8002) (rho 8007) next := by
  exact ⟨rho 8008, rho 8009, rho 8010, rho 8011, rho 8012, r8022, r8023, r8024, r8025, r8026, tail⟩

theorem template_scp_node21_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8027 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8027 rho)
    (r8028 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8028 rho)
    (r8029 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8029 rho)
    (r8030 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8030 rho)
    (r8031 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8031 rho)
    (tail : next (rho 7997) (rho 8002) (rho 8007) (rho 8012) (rho 8017)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg18 (rho 7972) (rho 7977) (rho 7982) (rho 7987) (rho 7992) (rho 7997) (rho 8002) (rho 8007) (rho 8012) next := by
  exact ⟨rho 8013, rho 8014, rho 8015, rho 8016, rho 8017, r8027, r8028, r8029, r8030, r8031, tail⟩

theorem template_scp_node21_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8032 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8032 rho)
    (r8033 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8033 rho)
    (r8034 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8034 rho)
    (r8035 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8035 rho)
    (r8036 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8036 rho)
    (tail : next (rho 7997) (rho 8002) (rho 8007) (rho 8012) (rho 8017) (rho 8022)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg19 (rho 7997) (rho 8002) (rho 8007) (rho 8012) (rho 8017) next := by
  exact ⟨rho 8018, rho 8019, rho 8020, rho 8021, rho 8022, r8032, r8033, r8034, r8035, r8036, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
