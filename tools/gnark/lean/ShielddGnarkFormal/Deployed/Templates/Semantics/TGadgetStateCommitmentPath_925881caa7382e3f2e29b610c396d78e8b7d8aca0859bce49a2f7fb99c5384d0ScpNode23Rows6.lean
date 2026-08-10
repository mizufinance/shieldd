import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node23_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8965 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8965 rho)
    (r8966 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8966 rho)
    (r8967 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8967 rho)
    (r8968 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8968 rho)
    (r8969 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8969 rho)
    (tail : next (rho 8928) (rho 8933) (rho 8938) (rho 8943) (rho 8948) (rho 8953)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg60 (rho 8928) (rho 8933) (rho 8938) (rho 8943) (rho 8948) next := by
  exact ⟨rho 8949, rho 8950, rho 8951, rho 8952, rho 8953, r8965, r8966, r8967, r8968, r8969, tail⟩

theorem template_scp_node23_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8970 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8970 rho)
    (r8971 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8971 rho)
    (r8972 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8972 rho)
    (r8973 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8973 rho)
    (r8974 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8974 rho)
    (tail : next (rho 8928) (rho 8933) (rho 8938) (rho 8943) (rho 8948) (rho 8953) (rho 8958)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg61 (rho 8928) (rho 8933) (rho 8938) (rho 8943) (rho 8948) (rho 8953) next := by
  exact ⟨rho 8954, rho 8955, rho 8956, rho 8957, rho 8958, r8970, r8971, r8972, r8973, r8974, tail⟩

theorem template_scp_node23_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8975 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8975 rho)
    (r8976 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8976 rho)
    (r8977 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8977 rho)
    (r8978 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8978 rho)
    (r8979 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8979 rho)
    (tail : next (rho 8928) (rho 8933) (rho 8938) (rho 8943) (rho 8948) (rho 8953) (rho 8958) (rho 8963)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg62 (rho 8928) (rho 8933) (rho 8938) (rho 8943) (rho 8948) (rho 8953) (rho 8958) next := by
  exact ⟨rho 8959, rho 8960, rho 8961, rho 8962, rho 8963, r8975, r8976, r8977, r8978, r8979, tail⟩

theorem template_scp_node23_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8980 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8980 rho)
    (r8981 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8981 rho)
    (r8982 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8982 rho)
    (r8983 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8983 rho)
    (r8984 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8984 rho)
    (tail : next (rho 8928) (rho 8933) (rho 8938) (rho 8943) (rho 8948) (rho 8953) (rho 8958) (rho 8963) (rho 8968)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg63 (rho 8928) (rho 8933) (rho 8938) (rho 8943) (rho 8948) (rho 8953) (rho 8958) (rho 8963) next := by
  exact ⟨rho 8964, rho 8965, rho 8966, rho 8967, rho 8968, r8980, r8981, r8982, r8983, r8984, tail⟩

theorem template_scp_node23_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8985 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8985 rho)
    (r8986 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8986 rho)
    (r8987 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8987 rho)
    (r8988 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8988 rho)
    (r8989 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8989 rho)
    (tail : next (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg64 (rho 8928) (rho 8933) (rho 8938) (rho 8943) (rho 8948) (rho 8953) (rho 8958) (rho 8963) (rho 8968) next := by
  exact ⟨rho 8969, rho 8970, rho 8971, rho 8972, rho 8973, r8985, r8986, r8987, r8988, r8989, tail⟩

theorem template_scp_node23_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8990 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8990 rho)
    (r8991 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8991 rho)
    (r8992 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8992 rho)
    (r8993 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8993 rho)
    (r8994 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8994 rho)
    (tail : next (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973) (rho 8978)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg65 (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973) next := by
  exact ⟨rho 8974, rho 8975, rho 8976, rho 8977, rho 8978, r8990, r8991, r8992, r8993, r8994, tail⟩

theorem template_scp_node23_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8995 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8995 rho)
    (r8996 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8996 rho)
    (r8997 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8997 rho)
    (r8998 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8998 rho)
    (r8999 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8999 rho)
    (tail : next (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973) (rho 8978) (rho 8983)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg66 (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973) (rho 8978) next := by
  exact ⟨rho 8979, rho 8980, rho 8981, rho 8982, rho 8983, r8995, r8996, r8997, r8998, r8999, tail⟩

theorem template_scp_node23_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r9000 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9000 rho)
    (r9001 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9001 rho)
    (r9002 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9002 rho)
    (r9003 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9003 rho)
    (r9004 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9004 rho)
    (tail : next (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973) (rho 8978) (rho 8983) (rho 8988)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg67 (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973) (rho 8978) (rho 8983) next := by
  exact ⟨rho 8984, rho 8985, rho 8986, rho 8987, rho 8988, r9000, r9001, r9002, r9003, r9004, tail⟩

theorem template_scp_node23_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r9005 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9005 rho)
    (r9006 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9006 rho)
    (r9007 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9007 rho)
    (r9008 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9008 rho)
    (r9009 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9009 rho)
    (tail : next (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973) (rho 8978) (rho 8983) (rho 8988) (rho 8993)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg68 (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973) (rho 8978) (rho 8983) (rho 8988) next := by
  exact ⟨rho 8989, rho 8990, rho 8991, rho 8992, rho 8993, r9005, r9006, r9007, r9008, r9009, tail⟩

theorem template_scp_node23_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r9010 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9010 rho)
    (r9011 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9011 rho)
    (r9012 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9012 rho)
    (r9013 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9013 rho)
    (r9014 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow9014 rho)
    (tail : next (rho 8978) (rho 8983) (rho 8988) (rho 8993) (rho 8998)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg69 (rho 8953) (rho 8958) (rho 8963) (rho 8968) (rho 8973) (rho 8978) (rho 8983) (rho 8988) (rho 8993) next := by
  exact ⟨rho 8994, rho 8995, rho 8996, rho 8997, rho 8998, r9010, r9011, r9012, r9013, r9014, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
