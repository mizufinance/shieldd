import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node18_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7095 : Seg13.relationRow7095 rho)
    (r7096 : Seg13.relationRow7096 rho)
    (r7097 : Seg13.relationRow7097 rho)
    (r7098 : Seg13.relationRow7098 rho)
    (r7099 : Seg13.relationRow7099 rho)
    (tail : next (rho 14060) (rho 14065) (rho 14070) (rho 14075) (rho 14080) (rho 14085) (rho 14090) (rho 14095) (rho 14100) (rho 14105) (rho 14110) (rho 14115) (rho 14120) (rho 14125) (rho 14130) (rho 14135) (rho 14140) (rho 14145) (rho 14150) (rho 14155) (rho 14160) (rho 14165) (rho 14170) (rho 14175) (rho 14180) (rho 14185) (rho 14190) (rho 14195) (rho 14200) (rho 14205) (rho 14210) (rho 14215) (rho 14220) (rho 14225) (rho 14230) (rho 14235) (rho 14240)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg50 (rho 14060) (rho 14065) (rho 14070) (rho 14075) (rho 14080) (rho 14085) (rho 14090) (rho 14095) (rho 14100) (rho 14105) (rho 14110) (rho 14115) (rho 14120) (rho 14125) (rho 14130) (rho 14135) (rho 14140) (rho 14145) (rho 14150) (rho 14155) (rho 14160) (rho 14165) (rho 14170) (rho 14175) (rho 14180) (rho 14185) (rho 14190) (rho 14195) (rho 14200) (rho 14205) (rho 14210) (rho 14215) (rho 14220) (rho 14225) (rho 14230) (rho 14235) next := by
  exact ⟨rho 14236, rho 14237, rho 14238, rho 14239, rho 14240, r7095, r7096, r7097, r7098, r7099, tail⟩

theorem seg13_scp_node18_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7100 : Seg13.relationRow7100 rho)
    (r7101 : Seg13.relationRow7101 rho)
    (r7102 : Seg13.relationRow7102 rho)
    (r7103 : Seg13.relationRow7103 rho)
    (r7104 : Seg13.relationRow7104 rho)
    (tail : next (rho 14060) (rho 14065) (rho 14070) (rho 14075) (rho 14080) (rho 14085) (rho 14090) (rho 14095) (rho 14100) (rho 14105) (rho 14110) (rho 14115) (rho 14120) (rho 14125) (rho 14130) (rho 14135) (rho 14140) (rho 14145) (rho 14150) (rho 14155) (rho 14160) (rho 14165) (rho 14170) (rho 14175) (rho 14180) (rho 14185) (rho 14190) (rho 14195) (rho 14200) (rho 14205) (rho 14210) (rho 14215) (rho 14220) (rho 14225) (rho 14230) (rho 14235) (rho 14240) (rho 14245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg51 (rho 14060) (rho 14065) (rho 14070) (rho 14075) (rho 14080) (rho 14085) (rho 14090) (rho 14095) (rho 14100) (rho 14105) (rho 14110) (rho 14115) (rho 14120) (rho 14125) (rho 14130) (rho 14135) (rho 14140) (rho 14145) (rho 14150) (rho 14155) (rho 14160) (rho 14165) (rho 14170) (rho 14175) (rho 14180) (rho 14185) (rho 14190) (rho 14195) (rho 14200) (rho 14205) (rho 14210) (rho 14215) (rho 14220) (rho 14225) (rho 14230) (rho 14235) (rho 14240) next := by
  exact ⟨rho 14241, rho 14242, rho 14243, rho 14244, rho 14245, r7100, r7101, r7102, r7103, r7104, tail⟩

theorem seg13_scp_node18_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7105 : Seg13.relationRow7105 rho)
    (r7106 : Seg13.relationRow7106 rho)
    (r7107 : Seg13.relationRow7107 rho)
    (r7108 : Seg13.relationRow7108 rho)
    (r7109 : Seg13.relationRow7109 rho)
    (tail : next (rho 14060) (rho 14065) (rho 14070) (rho 14075) (rho 14080) (rho 14085) (rho 14090) (rho 14095) (rho 14100) (rho 14105) (rho 14110) (rho 14115) (rho 14120) (rho 14125) (rho 14130) (rho 14135) (rho 14140) (rho 14145) (rho 14150) (rho 14155) (rho 14160) (rho 14165) (rho 14170) (rho 14175) (rho 14180) (rho 14185) (rho 14190) (rho 14195) (rho 14200) (rho 14205) (rho 14210) (rho 14215) (rho 14220) (rho 14225) (rho 14230) (rho 14235) (rho 14240) (rho 14245) (rho 14250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg52 (rho 14060) (rho 14065) (rho 14070) (rho 14075) (rho 14080) (rho 14085) (rho 14090) (rho 14095) (rho 14100) (rho 14105) (rho 14110) (rho 14115) (rho 14120) (rho 14125) (rho 14130) (rho 14135) (rho 14140) (rho 14145) (rho 14150) (rho 14155) (rho 14160) (rho 14165) (rho 14170) (rho 14175) (rho 14180) (rho 14185) (rho 14190) (rho 14195) (rho 14200) (rho 14205) (rho 14210) (rho 14215) (rho 14220) (rho 14225) (rho 14230) (rho 14235) (rho 14240) (rho 14245) next := by
  exact ⟨rho 14246, rho 14247, rho 14248, rho 14249, rho 14250, r7105, r7106, r7107, r7108, r7109, tail⟩

theorem seg13_scp_node18_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7110 : Seg13.relationRow7110 rho)
    (r7111 : Seg13.relationRow7111 rho)
    (r7112 : Seg13.relationRow7112 rho)
    (r7113 : Seg13.relationRow7113 rho)
    (r7114 : Seg13.relationRow7114 rho)
    (tail : next (rho 14060) (rho 14065) (rho 14070) (rho 14075) (rho 14080) (rho 14085) (rho 14090) (rho 14095) (rho 14100) (rho 14105) (rho 14110) (rho 14115) (rho 14120) (rho 14125) (rho 14130) (rho 14135) (rho 14140) (rho 14145) (rho 14150) (rho 14155) (rho 14160) (rho 14165) (rho 14170) (rho 14175) (rho 14180) (rho 14185) (rho 14190) (rho 14195) (rho 14200) (rho 14205) (rho 14210) (rho 14215) (rho 14220) (rho 14225) (rho 14230) (rho 14235) (rho 14240) (rho 14245) (rho 14250) (rho 14255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg53 (rho 14060) (rho 14065) (rho 14070) (rho 14075) (rho 14080) (rho 14085) (rho 14090) (rho 14095) (rho 14100) (rho 14105) (rho 14110) (rho 14115) (rho 14120) (rho 14125) (rho 14130) (rho 14135) (rho 14140) (rho 14145) (rho 14150) (rho 14155) (rho 14160) (rho 14165) (rho 14170) (rho 14175) (rho 14180) (rho 14185) (rho 14190) (rho 14195) (rho 14200) (rho 14205) (rho 14210) (rho 14215) (rho 14220) (rho 14225) (rho 14230) (rho 14235) (rho 14240) (rho 14245) (rho 14250) next := by
  exact ⟨rho 14251, rho 14252, rho 14253, rho 14254, rho 14255, r7110, r7111, r7112, r7113, r7114, tail⟩

theorem seg13_scp_node18_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7115 : Seg13.relationRow7115 rho)
    (r7116 : Seg13.relationRow7116 rho)
    (r7117 : Seg13.relationRow7117 rho)
    (r7118 : Seg13.relationRow7118 rho)
    (r7119 : Seg13.relationRow7119 rho)
    (tail : next (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg54 (rho 14060) (rho 14065) (rho 14070) (rho 14075) (rho 14080) (rho 14085) (rho 14090) (rho 14095) (rho 14100) (rho 14105) (rho 14110) (rho 14115) (rho 14120) (rho 14125) (rho 14130) (rho 14135) (rho 14140) (rho 14145) (rho 14150) (rho 14155) (rho 14160) (rho 14165) (rho 14170) (rho 14175) (rho 14180) (rho 14185) (rho 14190) (rho 14195) (rho 14200) (rho 14205) (rho 14210) (rho 14215) (rho 14220) (rho 14225) (rho 14230) (rho 14235) (rho 14240) (rho 14245) (rho 14250) (rho 14255) next := by
  exact ⟨rho 14256, rho 14257, rho 14258, rho 14259, rho 14260, r7115, r7116, r7117, r7118, r7119, tail⟩

theorem seg13_scp_node18_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7120 : Seg13.relationRow7120 rho)
    (r7121 : Seg13.relationRow7121 rho)
    (r7122 : Seg13.relationRow7122 rho)
    (r7123 : Seg13.relationRow7123 rho)
    (r7124 : Seg13.relationRow7124 rho)
    (tail : next (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260) (rho 14265)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg55 (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260) next := by
  exact ⟨rho 14261, rho 14262, rho 14263, rho 14264, rho 14265, r7120, r7121, r7122, r7123, r7124, tail⟩

theorem seg13_scp_node18_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7125 : Seg13.relationRow7125 rho)
    (r7126 : Seg13.relationRow7126 rho)
    (r7127 : Seg13.relationRow7127 rho)
    (r7128 : Seg13.relationRow7128 rho)
    (r7129 : Seg13.relationRow7129 rho)
    (tail : next (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260) (rho 14265) (rho 14270)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg56 (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260) (rho 14265) next := by
  exact ⟨rho 14266, rho 14267, rho 14268, rho 14269, rho 14270, r7125, r7126, r7127, r7128, r7129, tail⟩

theorem seg13_scp_node18_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7130 : Seg13.relationRow7130 rho)
    (r7131 : Seg13.relationRow7131 rho)
    (r7132 : Seg13.relationRow7132 rho)
    (r7133 : Seg13.relationRow7133 rho)
    (r7134 : Seg13.relationRow7134 rho)
    (tail : next (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260) (rho 14265) (rho 14270) (rho 14275)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg57 (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260) (rho 14265) (rho 14270) next := by
  exact ⟨rho 14271, rho 14272, rho 14273, rho 14274, rho 14275, r7130, r7131, r7132, r7133, r7134, tail⟩

theorem seg13_scp_node18_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7135 : Seg13.relationRow7135 rho)
    (r7136 : Seg13.relationRow7136 rho)
    (r7137 : Seg13.relationRow7137 rho)
    (r7138 : Seg13.relationRow7138 rho)
    (r7139 : Seg13.relationRow7139 rho)
    (tail : next (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260) (rho 14265) (rho 14270) (rho 14275) (rho 14280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg58 (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260) (rho 14265) (rho 14270) (rho 14275) next := by
  exact ⟨rho 14276, rho 14277, rho 14278, rho 14279, rho 14280, r7135, r7136, r7137, r7138, r7139, tail⟩

theorem seg13_scp_node18_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7140 : Seg13.relationRow7140 rho)
    (r7141 : Seg13.relationRow7141 rho)
    (r7142 : Seg13.relationRow7142 rho)
    (r7143 : Seg13.relationRow7143 rho)
    (r7144 : Seg13.relationRow7144 rho)
    (tail : next (rho 14265) (rho 14270) (rho 14275) (rho 14280) (rho 14285)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg59 (rho 14240) (rho 14245) (rho 14250) (rho 14255) (rho 14260) (rho 14265) (rho 14270) (rho 14275) (rho 14280) next := by
  exact ⟨rho 14281, rho 14282, rho 14283, rho 14284, rho 14285, r7140, r7141, r7142, r7143, r7144, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

