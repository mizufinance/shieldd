import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node18_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7095 : Seg28.relationRow7095 rho)
    (r7096 : Seg28.relationRow7096 rho)
    (r7097 : Seg28.relationRow7097 rho)
    (r7098 : Seg28.relationRow7098 rho)
    (r7099 : Seg28.relationRow7099 rho)
    (tail : next (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266) (rho 26271) (rho 26276) (rho 26281) (rho 26286) (rho 26291) (rho 26296) (rho 26301) (rho 26306) (rho 26311) (rho 26316) (rho 26321) (rho 26326) (rho 26331) (rho 26336) (rho 26341) (rho 26346) (rho 26351) (rho 26356) (rho 26361) (rho 26366) (rho 26371) (rho 26376) (rho 26381) (rho 26386) (rho 26391) (rho 26396) (rho 26401) (rho 26406) (rho 26411) (rho 26416) (rho 26421)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg50 (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266) (rho 26271) (rho 26276) (rho 26281) (rho 26286) (rho 26291) (rho 26296) (rho 26301) (rho 26306) (rho 26311) (rho 26316) (rho 26321) (rho 26326) (rho 26331) (rho 26336) (rho 26341) (rho 26346) (rho 26351) (rho 26356) (rho 26361) (rho 26366) (rho 26371) (rho 26376) (rho 26381) (rho 26386) (rho 26391) (rho 26396) (rho 26401) (rho 26406) (rho 26411) (rho 26416) next := by
  exact ⟨rho 26417, rho 26418, rho 26419, rho 26420, rho 26421, r7095, r7096, r7097, r7098, r7099, tail⟩

theorem seg28_scp_node18_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7100 : Seg28.relationRow7100 rho)
    (r7101 : Seg28.relationRow7101 rho)
    (r7102 : Seg28.relationRow7102 rho)
    (r7103 : Seg28.relationRow7103 rho)
    (r7104 : Seg28.relationRow7104 rho)
    (tail : next (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266) (rho 26271) (rho 26276) (rho 26281) (rho 26286) (rho 26291) (rho 26296) (rho 26301) (rho 26306) (rho 26311) (rho 26316) (rho 26321) (rho 26326) (rho 26331) (rho 26336) (rho 26341) (rho 26346) (rho 26351) (rho 26356) (rho 26361) (rho 26366) (rho 26371) (rho 26376) (rho 26381) (rho 26386) (rho 26391) (rho 26396) (rho 26401) (rho 26406) (rho 26411) (rho 26416) (rho 26421) (rho 26426)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg51 (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266) (rho 26271) (rho 26276) (rho 26281) (rho 26286) (rho 26291) (rho 26296) (rho 26301) (rho 26306) (rho 26311) (rho 26316) (rho 26321) (rho 26326) (rho 26331) (rho 26336) (rho 26341) (rho 26346) (rho 26351) (rho 26356) (rho 26361) (rho 26366) (rho 26371) (rho 26376) (rho 26381) (rho 26386) (rho 26391) (rho 26396) (rho 26401) (rho 26406) (rho 26411) (rho 26416) (rho 26421) next := by
  exact ⟨rho 26422, rho 26423, rho 26424, rho 26425, rho 26426, r7100, r7101, r7102, r7103, r7104, tail⟩

theorem seg28_scp_node18_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7105 : Seg28.relationRow7105 rho)
    (r7106 : Seg28.relationRow7106 rho)
    (r7107 : Seg28.relationRow7107 rho)
    (r7108 : Seg28.relationRow7108 rho)
    (r7109 : Seg28.relationRow7109 rho)
    (tail : next (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266) (rho 26271) (rho 26276) (rho 26281) (rho 26286) (rho 26291) (rho 26296) (rho 26301) (rho 26306) (rho 26311) (rho 26316) (rho 26321) (rho 26326) (rho 26331) (rho 26336) (rho 26341) (rho 26346) (rho 26351) (rho 26356) (rho 26361) (rho 26366) (rho 26371) (rho 26376) (rho 26381) (rho 26386) (rho 26391) (rho 26396) (rho 26401) (rho 26406) (rho 26411) (rho 26416) (rho 26421) (rho 26426) (rho 26431)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg52 (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266) (rho 26271) (rho 26276) (rho 26281) (rho 26286) (rho 26291) (rho 26296) (rho 26301) (rho 26306) (rho 26311) (rho 26316) (rho 26321) (rho 26326) (rho 26331) (rho 26336) (rho 26341) (rho 26346) (rho 26351) (rho 26356) (rho 26361) (rho 26366) (rho 26371) (rho 26376) (rho 26381) (rho 26386) (rho 26391) (rho 26396) (rho 26401) (rho 26406) (rho 26411) (rho 26416) (rho 26421) (rho 26426) next := by
  exact ⟨rho 26427, rho 26428, rho 26429, rho 26430, rho 26431, r7105, r7106, r7107, r7108, r7109, tail⟩

theorem seg28_scp_node18_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7110 : Seg28.relationRow7110 rho)
    (r7111 : Seg28.relationRow7111 rho)
    (r7112 : Seg28.relationRow7112 rho)
    (r7113 : Seg28.relationRow7113 rho)
    (r7114 : Seg28.relationRow7114 rho)
    (tail : next (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266) (rho 26271) (rho 26276) (rho 26281) (rho 26286) (rho 26291) (rho 26296) (rho 26301) (rho 26306) (rho 26311) (rho 26316) (rho 26321) (rho 26326) (rho 26331) (rho 26336) (rho 26341) (rho 26346) (rho 26351) (rho 26356) (rho 26361) (rho 26366) (rho 26371) (rho 26376) (rho 26381) (rho 26386) (rho 26391) (rho 26396) (rho 26401) (rho 26406) (rho 26411) (rho 26416) (rho 26421) (rho 26426) (rho 26431) (rho 26436)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg53 (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266) (rho 26271) (rho 26276) (rho 26281) (rho 26286) (rho 26291) (rho 26296) (rho 26301) (rho 26306) (rho 26311) (rho 26316) (rho 26321) (rho 26326) (rho 26331) (rho 26336) (rho 26341) (rho 26346) (rho 26351) (rho 26356) (rho 26361) (rho 26366) (rho 26371) (rho 26376) (rho 26381) (rho 26386) (rho 26391) (rho 26396) (rho 26401) (rho 26406) (rho 26411) (rho 26416) (rho 26421) (rho 26426) (rho 26431) next := by
  exact ⟨rho 26432, rho 26433, rho 26434, rho 26435, rho 26436, r7110, r7111, r7112, r7113, r7114, tail⟩

theorem seg28_scp_node18_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7115 : Seg28.relationRow7115 rho)
    (r7116 : Seg28.relationRow7116 rho)
    (r7117 : Seg28.relationRow7117 rho)
    (r7118 : Seg28.relationRow7118 rho)
    (r7119 : Seg28.relationRow7119 rho)
    (tail : next (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg54 (rho 26241) (rho 26246) (rho 26251) (rho 26256) (rho 26261) (rho 26266) (rho 26271) (rho 26276) (rho 26281) (rho 26286) (rho 26291) (rho 26296) (rho 26301) (rho 26306) (rho 26311) (rho 26316) (rho 26321) (rho 26326) (rho 26331) (rho 26336) (rho 26341) (rho 26346) (rho 26351) (rho 26356) (rho 26361) (rho 26366) (rho 26371) (rho 26376) (rho 26381) (rho 26386) (rho 26391) (rho 26396) (rho 26401) (rho 26406) (rho 26411) (rho 26416) (rho 26421) (rho 26426) (rho 26431) (rho 26436) next := by
  exact ⟨rho 26437, rho 26438, rho 26439, rho 26440, rho 26441, r7115, r7116, r7117, r7118, r7119, tail⟩

theorem seg28_scp_node18_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7120 : Seg28.relationRow7120 rho)
    (r7121 : Seg28.relationRow7121 rho)
    (r7122 : Seg28.relationRow7122 rho)
    (r7123 : Seg28.relationRow7123 rho)
    (r7124 : Seg28.relationRow7124 rho)
    (tail : next (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441) (rho 26446)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg55 (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441) next := by
  exact ⟨rho 26442, rho 26443, rho 26444, rho 26445, rho 26446, r7120, r7121, r7122, r7123, r7124, tail⟩

theorem seg28_scp_node18_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7125 : Seg28.relationRow7125 rho)
    (r7126 : Seg28.relationRow7126 rho)
    (r7127 : Seg28.relationRow7127 rho)
    (r7128 : Seg28.relationRow7128 rho)
    (r7129 : Seg28.relationRow7129 rho)
    (tail : next (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441) (rho 26446) (rho 26451)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg56 (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441) (rho 26446) next := by
  exact ⟨rho 26447, rho 26448, rho 26449, rho 26450, rho 26451, r7125, r7126, r7127, r7128, r7129, tail⟩

theorem seg28_scp_node18_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7130 : Seg28.relationRow7130 rho)
    (r7131 : Seg28.relationRow7131 rho)
    (r7132 : Seg28.relationRow7132 rho)
    (r7133 : Seg28.relationRow7133 rho)
    (r7134 : Seg28.relationRow7134 rho)
    (tail : next (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441) (rho 26446) (rho 26451) (rho 26456)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg57 (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441) (rho 26446) (rho 26451) next := by
  exact ⟨rho 26452, rho 26453, rho 26454, rho 26455, rho 26456, r7130, r7131, r7132, r7133, r7134, tail⟩

theorem seg28_scp_node18_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7135 : Seg28.relationRow7135 rho)
    (r7136 : Seg28.relationRow7136 rho)
    (r7137 : Seg28.relationRow7137 rho)
    (r7138 : Seg28.relationRow7138 rho)
    (r7139 : Seg28.relationRow7139 rho)
    (tail : next (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441) (rho 26446) (rho 26451) (rho 26456) (rho 26461)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg58 (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441) (rho 26446) (rho 26451) (rho 26456) next := by
  exact ⟨rho 26457, rho 26458, rho 26459, rho 26460, rho 26461, r7135, r7136, r7137, r7138, r7139, tail⟩

theorem seg28_scp_node18_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7140 : Seg28.relationRow7140 rho)
    (r7141 : Seg28.relationRow7141 rho)
    (r7142 : Seg28.relationRow7142 rho)
    (r7143 : Seg28.relationRow7143 rho)
    (r7144 : Seg28.relationRow7144 rho)
    (tail : next (rho 26446) (rho 26451) (rho 26456) (rho 26461) (rho 26466)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg59 (rho 26421) (rho 26426) (rho 26431) (rho 26436) (rho 26441) (rho 26446) (rho 26451) (rho 26456) (rho 26461) next := by
  exact ⟨rho 26462, rho 26463, rho 26464, rho 26465, rho 26466, r7140, r7141, r7142, r7143, r7144, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

