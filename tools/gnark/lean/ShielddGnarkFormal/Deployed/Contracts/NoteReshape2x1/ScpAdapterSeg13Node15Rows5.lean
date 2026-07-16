import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node15_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6003 : Seg13.relationRow6003 rho)
    (r6004 : Seg13.relationRow6004 rho)
    (r6005 : Seg13.relationRow6005 rho)
    (r6006 : Seg13.relationRow6006 rho)
    (r6007 : Seg13.relationRow6007 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055) (rho 13060) (rho 13065) (rho 13070) (rho 13075) (rho 13080) (rho 13085) (rho 13090) (rho 13095) (rho 13100) (rho 13105) (rho 13110) (rho 13115) (rho 13120) (rho 13125) (rho 13130) (rho 13135) (rho 13140) (rho 13145) (rho 13150) (rho 13155) (rho 13160)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg50 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055) (rho 13060) (rho 13065) (rho 13070) (rho 13075) (rho 13080) (rho 13085) (rho 13090) (rho 13095) (rho 13100) (rho 13105) (rho 13110) (rho 13115) (rho 13120) (rho 13125) (rho 13130) (rho 13135) (rho 13140) (rho 13145) (rho 13150) (rho 13155) next := by
  exact ⟨rho 13156, rho 13157, rho 13158, rho 13159, rho 13160, r6003, r6004, r6005, r6006, r6007, tail⟩

theorem seg13_scp_node15_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6008 : Seg13.relationRow6008 rho)
    (r6009 : Seg13.relationRow6009 rho)
    (r6010 : Seg13.relationRow6010 rho)
    (r6011 : Seg13.relationRow6011 rho)
    (r6012 : Seg13.relationRow6012 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055) (rho 13060) (rho 13065) (rho 13070) (rho 13075) (rho 13080) (rho 13085) (rho 13090) (rho 13095) (rho 13100) (rho 13105) (rho 13110) (rho 13115) (rho 13120) (rho 13125) (rho 13130) (rho 13135) (rho 13140) (rho 13145) (rho 13150) (rho 13155) (rho 13160) (rho 13165)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg51 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055) (rho 13060) (rho 13065) (rho 13070) (rho 13075) (rho 13080) (rho 13085) (rho 13090) (rho 13095) (rho 13100) (rho 13105) (rho 13110) (rho 13115) (rho 13120) (rho 13125) (rho 13130) (rho 13135) (rho 13140) (rho 13145) (rho 13150) (rho 13155) (rho 13160) next := by
  exact ⟨rho 13161, rho 13162, rho 13163, rho 13164, rho 13165, r6008, r6009, r6010, r6011, r6012, tail⟩

theorem seg13_scp_node15_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6013 : Seg13.relationRow6013 rho)
    (r6014 : Seg13.relationRow6014 rho)
    (r6015 : Seg13.relationRow6015 rho)
    (r6016 : Seg13.relationRow6016 rho)
    (r6017 : Seg13.relationRow6017 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055) (rho 13060) (rho 13065) (rho 13070) (rho 13075) (rho 13080) (rho 13085) (rho 13090) (rho 13095) (rho 13100) (rho 13105) (rho 13110) (rho 13115) (rho 13120) (rho 13125) (rho 13130) (rho 13135) (rho 13140) (rho 13145) (rho 13150) (rho 13155) (rho 13160) (rho 13165) (rho 13170)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg52 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055) (rho 13060) (rho 13065) (rho 13070) (rho 13075) (rho 13080) (rho 13085) (rho 13090) (rho 13095) (rho 13100) (rho 13105) (rho 13110) (rho 13115) (rho 13120) (rho 13125) (rho 13130) (rho 13135) (rho 13140) (rho 13145) (rho 13150) (rho 13155) (rho 13160) (rho 13165) next := by
  exact ⟨rho 13166, rho 13167, rho 13168, rho 13169, rho 13170, r6013, r6014, r6015, r6016, r6017, tail⟩

theorem seg13_scp_node15_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6018 : Seg13.relationRow6018 rho)
    (r6019 : Seg13.relationRow6019 rho)
    (r6020 : Seg13.relationRow6020 rho)
    (r6021 : Seg13.relationRow6021 rho)
    (r6022 : Seg13.relationRow6022 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055) (rho 13060) (rho 13065) (rho 13070) (rho 13075) (rho 13080) (rho 13085) (rho 13090) (rho 13095) (rho 13100) (rho 13105) (rho 13110) (rho 13115) (rho 13120) (rho 13125) (rho 13130) (rho 13135) (rho 13140) (rho 13145) (rho 13150) (rho 13155) (rho 13160) (rho 13165) (rho 13170) (rho 13175)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg53 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055) (rho 13060) (rho 13065) (rho 13070) (rho 13075) (rho 13080) (rho 13085) (rho 13090) (rho 13095) (rho 13100) (rho 13105) (rho 13110) (rho 13115) (rho 13120) (rho 13125) (rho 13130) (rho 13135) (rho 13140) (rho 13145) (rho 13150) (rho 13155) (rho 13160) (rho 13165) (rho 13170) next := by
  exact ⟨rho 13171, rho 13172, rho 13173, rho 13174, rho 13175, r6018, r6019, r6020, r6021, r6022, tail⟩

theorem seg13_scp_node15_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6023 : Seg13.relationRow6023 rho)
    (r6024 : Seg13.relationRow6024 rho)
    (r6025 : Seg13.relationRow6025 rho)
    (r6026 : Seg13.relationRow6026 rho)
    (r6027 : Seg13.relationRow6027 rho)
    (tail : next (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg54 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055) (rho 13060) (rho 13065) (rho 13070) (rho 13075) (rho 13080) (rho 13085) (rho 13090) (rho 13095) (rho 13100) (rho 13105) (rho 13110) (rho 13115) (rho 13120) (rho 13125) (rho 13130) (rho 13135) (rho 13140) (rho 13145) (rho 13150) (rho 13155) (rho 13160) (rho 13165) (rho 13170) (rho 13175) next := by
  exact ⟨rho 13176, rho 13177, rho 13178, rho 13179, rho 13180, r6023, r6024, r6025, r6026, r6027, tail⟩

theorem seg13_scp_node15_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6028 : Seg13.relationRow6028 rho)
    (r6029 : Seg13.relationRow6029 rho)
    (r6030 : Seg13.relationRow6030 rho)
    (r6031 : Seg13.relationRow6031 rho)
    (r6032 : Seg13.relationRow6032 rho)
    (tail : next (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180) (rho 13185)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg55 (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180) next := by
  exact ⟨rho 13181, rho 13182, rho 13183, rho 13184, rho 13185, r6028, r6029, r6030, r6031, r6032, tail⟩

theorem seg13_scp_node15_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6033 : Seg13.relationRow6033 rho)
    (r6034 : Seg13.relationRow6034 rho)
    (r6035 : Seg13.relationRow6035 rho)
    (r6036 : Seg13.relationRow6036 rho)
    (r6037 : Seg13.relationRow6037 rho)
    (tail : next (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180) (rho 13185) (rho 13190)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg56 (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180) (rho 13185) next := by
  exact ⟨rho 13186, rho 13187, rho 13188, rho 13189, rho 13190, r6033, r6034, r6035, r6036, r6037, tail⟩

theorem seg13_scp_node15_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6038 : Seg13.relationRow6038 rho)
    (r6039 : Seg13.relationRow6039 rho)
    (r6040 : Seg13.relationRow6040 rho)
    (r6041 : Seg13.relationRow6041 rho)
    (r6042 : Seg13.relationRow6042 rho)
    (tail : next (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180) (rho 13185) (rho 13190) (rho 13195)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg57 (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180) (rho 13185) (rho 13190) next := by
  exact ⟨rho 13191, rho 13192, rho 13193, rho 13194, rho 13195, r6038, r6039, r6040, r6041, r6042, tail⟩

theorem seg13_scp_node15_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6043 : Seg13.relationRow6043 rho)
    (r6044 : Seg13.relationRow6044 rho)
    (r6045 : Seg13.relationRow6045 rho)
    (r6046 : Seg13.relationRow6046 rho)
    (r6047 : Seg13.relationRow6047 rho)
    (tail : next (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180) (rho 13185) (rho 13190) (rho 13195) (rho 13200)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg58 (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180) (rho 13185) (rho 13190) (rho 13195) next := by
  exact ⟨rho 13196, rho 13197, rho 13198, rho 13199, rho 13200, r6043, r6044, r6045, r6046, r6047, tail⟩

theorem seg13_scp_node15_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6048 : Seg13.relationRow6048 rho)
    (r6049 : Seg13.relationRow6049 rho)
    (r6050 : Seg13.relationRow6050 rho)
    (r6051 : Seg13.relationRow6051 rho)
    (r6052 : Seg13.relationRow6052 rho)
    (tail : next (rho 13185) (rho 13190) (rho 13195) (rho 13200) (rho 13205)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg59 (rho 13160) (rho 13165) (rho 13170) (rho 13175) (rho 13180) (rho 13185) (rho 13190) (rho 13195) (rho 13200) next := by
  exact ⟨rho 13201, rho 13202, rho 13203, rho 13204, rho 13205, r6048, r6049, r6050, r6051, r6052, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

