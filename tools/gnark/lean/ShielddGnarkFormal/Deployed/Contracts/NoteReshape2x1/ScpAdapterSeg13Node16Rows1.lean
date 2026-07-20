import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node16_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6167 : Seg13.relationRow6167 rho)
    (r6168 : Seg13.relationRow6168 rho)
    (r6169 : Seg13.relationRow6169 rho)
    (r6170 : Seg13.relationRow6170 rho)
    (r6171 : Seg13.relationRow6171 rho)
    (tail : next (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304) (rho 13309) (rho 13314)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg10 (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304) (rho 13309) next := by
  exact ⟨rho 13310, rho 13311, rho 13312, rho 13313, rho 13314, r6167, r6168, r6169, r6170, r6171, tail⟩

theorem seg13_scp_node16_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6172 : Seg13.relationRow6172 rho)
    (r6173 : Seg13.relationRow6173 rho)
    (r6174 : Seg13.relationRow6174 rho)
    (r6175 : Seg13.relationRow6175 rho)
    (r6176 : Seg13.relationRow6176 rho)
    (tail : next (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304) (rho 13309) (rho 13314) (rho 13319)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg11 (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304) (rho 13309) (rho 13314) next := by
  exact ⟨rho 13315, rho 13316, rho 13317, rho 13318, rho 13319, r6172, r6173, r6174, r6175, r6176, tail⟩

theorem seg13_scp_node16_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6177 : Seg13.relationRow6177 rho)
    (r6178 : Seg13.relationRow6178 rho)
    (r6179 : Seg13.relationRow6179 rho)
    (r6180 : Seg13.relationRow6180 rho)
    (r6181 : Seg13.relationRow6181 rho)
    (tail : next (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304) (rho 13309) (rho 13314) (rho 13319) (rho 13324)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg12 (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304) (rho 13309) (rho 13314) (rho 13319) next := by
  exact ⟨rho 13320, rho 13321, rho 13322, rho 13323, rho 13324, r6177, r6178, r6179, r6180, r6181, tail⟩

theorem seg13_scp_node16_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6182 : Seg13.relationRow6182 rho)
    (r6183 : Seg13.relationRow6183 rho)
    (r6184 : Seg13.relationRow6184 rho)
    (r6185 : Seg13.relationRow6185 rho)
    (r6186 : Seg13.relationRow6186 rho)
    (tail : next (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg13 (rho 13284) (rho 13289) (rho 13294) (rho 13299) (rho 13304) (rho 13309) (rho 13314) (rho 13319) (rho 13324) next := by
  exact ⟨rho 13325, rho 13326, rho 13327, rho 13328, rho 13329, r6182, r6183, r6184, r6185, r6186, tail⟩

theorem seg13_scp_node16_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6187 : Seg13.relationRow6187 rho)
    (r6188 : Seg13.relationRow6188 rho)
    (r6189 : Seg13.relationRow6189 rho)
    (r6190 : Seg13.relationRow6190 rho)
    (r6191 : Seg13.relationRow6191 rho)
    (tail : next (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329) (rho 13334)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg14 (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329) next := by
  exact ⟨rho 13330, rho 13331, rho 13332, rho 13333, rho 13334, r6187, r6188, r6189, r6190, r6191, tail⟩

theorem seg13_scp_node16_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6192 : Seg13.relationRow6192 rho)
    (r6193 : Seg13.relationRow6193 rho)
    (r6194 : Seg13.relationRow6194 rho)
    (r6195 : Seg13.relationRow6195 rho)
    (r6196 : Seg13.relationRow6196 rho)
    (tail : next (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329) (rho 13334) (rho 13339)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg15 (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329) (rho 13334) next := by
  exact ⟨rho 13335, rho 13336, rho 13337, rho 13338, rho 13339, r6192, r6193, r6194, r6195, r6196, tail⟩

theorem seg13_scp_node16_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6197 : Seg13.relationRow6197 rho)
    (r6198 : Seg13.relationRow6198 rho)
    (r6199 : Seg13.relationRow6199 rho)
    (r6200 : Seg13.relationRow6200 rho)
    (r6201 : Seg13.relationRow6201 rho)
    (tail : next (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329) (rho 13334) (rho 13339) (rho 13344)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg16 (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329) (rho 13334) (rho 13339) next := by
  exact ⟨rho 13340, rho 13341, rho 13342, rho 13343, rho 13344, r6197, r6198, r6199, r6200, r6201, tail⟩

theorem seg13_scp_node16_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6202 : Seg13.relationRow6202 rho)
    (r6203 : Seg13.relationRow6203 rho)
    (r6204 : Seg13.relationRow6204 rho)
    (r6205 : Seg13.relationRow6205 rho)
    (r6206 : Seg13.relationRow6206 rho)
    (tail : next (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329) (rho 13334) (rho 13339) (rho 13344) (rho 13349)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg17 (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329) (rho 13334) (rho 13339) (rho 13344) next := by
  exact ⟨rho 13345, rho 13346, rho 13347, rho 13348, rho 13349, r6202, r6203, r6204, r6205, r6206, tail⟩

theorem seg13_scp_node16_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6207 : Seg13.relationRow6207 rho)
    (r6208 : Seg13.relationRow6208 rho)
    (r6209 : Seg13.relationRow6209 rho)
    (r6210 : Seg13.relationRow6210 rho)
    (r6211 : Seg13.relationRow6211 rho)
    (tail : next (rho 13334) (rho 13339) (rho 13344) (rho 13349) (rho 13354)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg18 (rho 13309) (rho 13314) (rho 13319) (rho 13324) (rho 13329) (rho 13334) (rho 13339) (rho 13344) (rho 13349) next := by
  exact ⟨rho 13350, rho 13351, rho 13352, rho 13353, rho 13354, r6207, r6208, r6209, r6210, r6211, tail⟩

theorem seg13_scp_node16_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6212 : Seg13.relationRow6212 rho)
    (r6213 : Seg13.relationRow6213 rho)
    (r6214 : Seg13.relationRow6214 rho)
    (r6215 : Seg13.relationRow6215 rho)
    (r6216 : Seg13.relationRow6216 rho)
    (tail : next (rho 13334) (rho 13339) (rho 13344) (rho 13349) (rho 13354) (rho 13359)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode16350_d1f441.seg19 (rho 13334) (rho 13339) (rho 13344) (rho 13349) (rho 13354) next := by
  exact ⟨rho 13355, rho 13356, rho 13357, rho 13358, rho 13359, r6212, r6213, r6214, r6215, r6216, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

