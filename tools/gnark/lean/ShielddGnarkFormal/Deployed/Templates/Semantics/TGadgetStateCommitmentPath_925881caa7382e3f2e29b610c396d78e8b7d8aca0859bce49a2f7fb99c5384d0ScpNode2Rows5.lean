import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node2_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1271 rho)
    (r1272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1272 rho)
    (r1273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1273 rho)
    (r1274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1274 rho)
    (r1275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1275 rho)
    (tail : next (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125) (rho 1130) (rho 1135) (rho 1140) (rho 1145) (rho 1150) (rho 1155) (rho 1160) (rho 1165) (rho 1170) (rho 1175) (rho 1180) (rho 1185) (rho 1190) (rho 1195) (rho 1200) (rho 1205) (rho 1210) (rho 1215) (rho 1220) (rho 1225) (rho 1230) (rho 1235) (rho 1240) (rho 1245) (rho 1250) (rho 1255) (rho 1260) (rho 1265) (rho 1270) (rho 1275) (rho 1280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg50 (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125) (rho 1130) (rho 1135) (rho 1140) (rho 1145) (rho 1150) (rho 1155) (rho 1160) (rho 1165) (rho 1170) (rho 1175) (rho 1180) (rho 1185) (rho 1190) (rho 1195) (rho 1200) (rho 1205) (rho 1210) (rho 1215) (rho 1220) (rho 1225) (rho 1230) (rho 1235) (rho 1240) (rho 1245) (rho 1250) (rho 1255) (rho 1260) (rho 1265) (rho 1270) (rho 1275) next := by
  exact ⟨rho 1276, rho 1277, rho 1278, rho 1279, rho 1280, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1271 at r1271; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc26, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc26Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc26Part1] at r1271; linear_combination r1271), r1272, r1273, r1274, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1275 at r1275; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc26, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc26Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc26Part1] at r1275; linear_combination r1275), tail⟩

theorem template_scp_node2_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1276 rho)
    (r1277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1277 rho)
    (r1278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1278 rho)
    (r1279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1279 rho)
    (r1280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1280 rho)
    (tail : next (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125) (rho 1130) (rho 1135) (rho 1140) (rho 1145) (rho 1150) (rho 1155) (rho 1160) (rho 1165) (rho 1170) (rho 1175) (rho 1180) (rho 1185) (rho 1190) (rho 1195) (rho 1200) (rho 1205) (rho 1210) (rho 1215) (rho 1220) (rho 1225) (rho 1230) (rho 1235) (rho 1240) (rho 1245) (rho 1250) (rho 1255) (rho 1260) (rho 1265) (rho 1270) (rho 1275) (rho 1280) (rho 1285)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg51 (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125) (rho 1130) (rho 1135) (rho 1140) (rho 1145) (rho 1150) (rho 1155) (rho 1160) (rho 1165) (rho 1170) (rho 1175) (rho 1180) (rho 1185) (rho 1190) (rho 1195) (rho 1200) (rho 1205) (rho 1210) (rho 1215) (rho 1220) (rho 1225) (rho 1230) (rho 1235) (rho 1240) (rho 1245) (rho 1250) (rho 1255) (rho 1260) (rho 1265) (rho 1270) (rho 1275) (rho 1280) next := by
  exact ⟨rho 1281, rho 1282, rho 1283, rho 1284, rho 1285, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1276 at r1276; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc27, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc27Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc27Part1] at r1276; linear_combination r1276), r1277, r1278, r1279, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1280 at r1280; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc27, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc27Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc27Part1] at r1280; linear_combination r1280), tail⟩

theorem template_scp_node2_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1281 rho)
    (r1282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1282 rho)
    (r1283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1283 rho)
    (r1284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1284 rho)
    (r1285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1285 rho)
    (tail : next (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125) (rho 1130) (rho 1135) (rho 1140) (rho 1145) (rho 1150) (rho 1155) (rho 1160) (rho 1165) (rho 1170) (rho 1175) (rho 1180) (rho 1185) (rho 1190) (rho 1195) (rho 1200) (rho 1205) (rho 1210) (rho 1215) (rho 1220) (rho 1225) (rho 1230) (rho 1235) (rho 1240) (rho 1245) (rho 1250) (rho 1255) (rho 1260) (rho 1265) (rho 1270) (rho 1275) (rho 1280) (rho 1285) (rho 1290)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg52 (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125) (rho 1130) (rho 1135) (rho 1140) (rho 1145) (rho 1150) (rho 1155) (rho 1160) (rho 1165) (rho 1170) (rho 1175) (rho 1180) (rho 1185) (rho 1190) (rho 1195) (rho 1200) (rho 1205) (rho 1210) (rho 1215) (rho 1220) (rho 1225) (rho 1230) (rho 1235) (rho 1240) (rho 1245) (rho 1250) (rho 1255) (rho 1260) (rho 1265) (rho 1270) (rho 1275) (rho 1280) (rho 1285) next := by
  exact ⟨rho 1286, rho 1287, rho 1288, rho 1289, rho 1290, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1281 at r1281; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc28, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc28Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc28Part1] at r1281; linear_combination r1281), r1282, r1283, r1284, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1285 at r1285; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc28, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc28Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc28Part1] at r1285; linear_combination r1285), tail⟩

theorem template_scp_node2_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1286 rho)
    (r1287 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1287 rho)
    (r1288 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1288 rho)
    (r1289 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1289 rho)
    (r1290 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1290 rho)
    (tail : next (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125) (rho 1130) (rho 1135) (rho 1140) (rho 1145) (rho 1150) (rho 1155) (rho 1160) (rho 1165) (rho 1170) (rho 1175) (rho 1180) (rho 1185) (rho 1190) (rho 1195) (rho 1200) (rho 1205) (rho 1210) (rho 1215) (rho 1220) (rho 1225) (rho 1230) (rho 1235) (rho 1240) (rho 1245) (rho 1250) (rho 1255) (rho 1260) (rho 1265) (rho 1270) (rho 1275) (rho 1280) (rho 1285) (rho 1290) (rho 1295)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg53 (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125) (rho 1130) (rho 1135) (rho 1140) (rho 1145) (rho 1150) (rho 1155) (rho 1160) (rho 1165) (rho 1170) (rho 1175) (rho 1180) (rho 1185) (rho 1190) (rho 1195) (rho 1200) (rho 1205) (rho 1210) (rho 1215) (rho 1220) (rho 1225) (rho 1230) (rho 1235) (rho 1240) (rho 1245) (rho 1250) (rho 1255) (rho 1260) (rho 1265) (rho 1270) (rho 1275) (rho 1280) (rho 1285) (rho 1290) next := by
  exact ⟨rho 1291, rho 1292, rho 1293, rho 1294, rho 1295, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1286 at r1286; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc29, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc29Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc29Part1] at r1286; linear_combination r1286), r1287, r1288, r1289, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1290 at r1290; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc29, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc29Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc29Part1] at r1290; linear_combination r1290), tail⟩

theorem template_scp_node2_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1291 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1291 rho)
    (r1292 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1292 rho)
    (r1293 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1293 rho)
    (r1294 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1294 rho)
    (r1295 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1295 rho)
    (tail : next (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg54 (rho 1100) (rho 1105) (rho 1110) (rho 1115) (rho 1120) (rho 1125) (rho 1130) (rho 1135) (rho 1140) (rho 1145) (rho 1150) (rho 1155) (rho 1160) (rho 1165) (rho 1170) (rho 1175) (rho 1180) (rho 1185) (rho 1190) (rho 1195) (rho 1200) (rho 1205) (rho 1210) (rho 1215) (rho 1220) (rho 1225) (rho 1230) (rho 1235) (rho 1240) (rho 1245) (rho 1250) (rho 1255) (rho 1260) (rho 1265) (rho 1270) (rho 1275) (rho 1280) (rho 1285) (rho 1290) (rho 1295) next := by
  exact ⟨rho 1296, rho 1297, rho 1298, rho 1299, rho 1300, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1291 at r1291; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc30, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc30Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc30Part1] at r1291; linear_combination r1291), r1292, r1293, r1294, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1295 at r1295; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc30, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc30Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationLc30Part1] at r1295; linear_combination r1295), tail⟩

theorem template_scp_node2_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1296 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1296 rho)
    (r1297 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1297 rho)
    (r1298 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1298 rho)
    (r1299 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1299 rho)
    (r1300 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1300 rho)
    (tail : next (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300) (rho 1305)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg55 (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300) next := by
  exact ⟨rho 1301, rho 1302, rho 1303, rho 1304, rho 1305, r1296, r1297, r1298, r1299, r1300, tail⟩

theorem template_scp_node2_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1301 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1301 rho)
    (r1302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1302 rho)
    (r1303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1303 rho)
    (r1304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1304 rho)
    (r1305 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1305 rho)
    (tail : next (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300) (rho 1305) (rho 1310)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg56 (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300) (rho 1305) next := by
  exact ⟨rho 1306, rho 1307, rho 1308, rho 1309, rho 1310, r1301, r1302, r1303, r1304, r1305, tail⟩

theorem template_scp_node2_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1306 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1306 rho)
    (r1307 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1307 rho)
    (r1308 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1308 rho)
    (r1309 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1309 rho)
    (r1310 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1310 rho)
    (tail : next (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300) (rho 1305) (rho 1310) (rho 1315)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg57 (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300) (rho 1305) (rho 1310) next := by
  exact ⟨rho 1311, rho 1312, rho 1313, rho 1314, rho 1315, r1306, r1307, r1308, r1309, r1310, tail⟩

theorem template_scp_node2_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1311 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1311 rho)
    (r1312 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1312 rho)
    (r1313 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1313 rho)
    (r1314 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1314 rho)
    (r1315 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1315 rho)
    (tail : next (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300) (rho 1305) (rho 1310) (rho 1315) (rho 1320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg58 (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300) (rho 1305) (rho 1310) (rho 1315) next := by
  exact ⟨rho 1316, rho 1317, rho 1318, rho 1319, rho 1320, r1311, r1312, r1313, r1314, r1315, tail⟩

theorem template_scp_node2_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1316 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1316 rho)
    (r1317 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1317 rho)
    (r1318 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1318 rho)
    (r1319 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1319 rho)
    (r1320 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow1320 rho)
    (tail : next (rho 1305) (rho 1310) (rho 1315) (rho 1320) (rho 1325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg59 (rho 1280) (rho 1285) (rho 1290) (rho 1295) (rho 1300) (rho 1305) (rho 1310) (rho 1315) (rho 1320) next := by
  exact ⟨rho 1321, rho 1322, rho 1323, rho 1324, rho 1325, r1316, r1317, r1318, r1319, r1320, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
