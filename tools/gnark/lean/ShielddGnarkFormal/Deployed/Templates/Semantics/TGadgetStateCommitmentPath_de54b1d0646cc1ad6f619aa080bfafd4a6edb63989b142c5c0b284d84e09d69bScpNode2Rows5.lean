import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node2_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1271 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1271 rho)
    (r1272 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1272 rho)
    (r1273 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1273 rho)
    (r1274 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1274 rho)
    (r1275 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1275 rho)
    (tail : next (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169) (rho 1174) (rho 1179) (rho 1184) (rho 1189) (rho 1194) (rho 1199) (rho 1204) (rho 1209) (rho 1214) (rho 1219) (rho 1224) (rho 1229) (rho 1234) (rho 1239) (rho 1244) (rho 1249) (rho 1254) (rho 1259) (rho 1264) (rho 1269) (rho 1274) (rho 1279)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg50 (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169) (rho 1174) (rho 1179) (rho 1184) (rho 1189) (rho 1194) (rho 1199) (rho 1204) (rho 1209) (rho 1214) (rho 1219) (rho 1224) (rho 1229) (rho 1234) (rho 1239) (rho 1244) (rho 1249) (rho 1254) (rho 1259) (rho 1264) (rho 1269) (rho 1274) next := by
  exact ⟨rho 1275, rho 1276, rho 1277, rho 1278, rho 1279, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1271 at r1271; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc26, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc26Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc26Part1] at r1271; linear_combination r1271), r1272, r1273, r1274, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1275 at r1275; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc26, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc26Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc26Part1] at r1275; linear_combination r1275), tail⟩

theorem template_scp_node2_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1276 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1276 rho)
    (r1277 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1277 rho)
    (r1278 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1278 rho)
    (r1279 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1279 rho)
    (r1280 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1280 rho)
    (tail : next (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169) (rho 1174) (rho 1179) (rho 1184) (rho 1189) (rho 1194) (rho 1199) (rho 1204) (rho 1209) (rho 1214) (rho 1219) (rho 1224) (rho 1229) (rho 1234) (rho 1239) (rho 1244) (rho 1249) (rho 1254) (rho 1259) (rho 1264) (rho 1269) (rho 1274) (rho 1279) (rho 1284)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg51 (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169) (rho 1174) (rho 1179) (rho 1184) (rho 1189) (rho 1194) (rho 1199) (rho 1204) (rho 1209) (rho 1214) (rho 1219) (rho 1224) (rho 1229) (rho 1234) (rho 1239) (rho 1244) (rho 1249) (rho 1254) (rho 1259) (rho 1264) (rho 1269) (rho 1274) (rho 1279) next := by
  exact ⟨rho 1280, rho 1281, rho 1282, rho 1283, rho 1284, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1276 at r1276; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc27, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc27Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc27Part1] at r1276; linear_combination r1276), r1277, r1278, r1279, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1280 at r1280; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc27, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc27Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc27Part1] at r1280; linear_combination r1280), tail⟩

theorem template_scp_node2_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1281 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1281 rho)
    (r1282 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1282 rho)
    (r1283 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1283 rho)
    (r1284 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1284 rho)
    (r1285 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1285 rho)
    (tail : next (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169) (rho 1174) (rho 1179) (rho 1184) (rho 1189) (rho 1194) (rho 1199) (rho 1204) (rho 1209) (rho 1214) (rho 1219) (rho 1224) (rho 1229) (rho 1234) (rho 1239) (rho 1244) (rho 1249) (rho 1254) (rho 1259) (rho 1264) (rho 1269) (rho 1274) (rho 1279) (rho 1284) (rho 1289)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg52 (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169) (rho 1174) (rho 1179) (rho 1184) (rho 1189) (rho 1194) (rho 1199) (rho 1204) (rho 1209) (rho 1214) (rho 1219) (rho 1224) (rho 1229) (rho 1234) (rho 1239) (rho 1244) (rho 1249) (rho 1254) (rho 1259) (rho 1264) (rho 1269) (rho 1274) (rho 1279) (rho 1284) next := by
  exact ⟨rho 1285, rho 1286, rho 1287, rho 1288, rho 1289, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1281 at r1281; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc28, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc28Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc28Part1] at r1281; linear_combination r1281), r1282, r1283, r1284, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1285 at r1285; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc28, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc28Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc28Part1] at r1285; linear_combination r1285), tail⟩

theorem template_scp_node2_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r1286 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1286 rho)
    (r1287 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1287 rho)
    (r1288 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1288 rho)
    (r1289 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1289 rho)
    (r1290 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1290 rho)
    (tail : next (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169) (rho 1174) (rho 1179) (rho 1184) (rho 1189) (rho 1194) (rho 1199) (rho 1204) (rho 1209) (rho 1214) (rho 1219) (rho 1224) (rho 1229) (rho 1234) (rho 1239) (rho 1244) (rho 1249) (rho 1254) (rho 1259) (rho 1264) (rho 1269) (rho 1274) (rho 1279) (rho 1284) (rho 1289) (rho 1294)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg53 (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169) (rho 1174) (rho 1179) (rho 1184) (rho 1189) (rho 1194) (rho 1199) (rho 1204) (rho 1209) (rho 1214) (rho 1219) (rho 1224) (rho 1229) (rho 1234) (rho 1239) (rho 1244) (rho 1249) (rho 1254) (rho 1259) (rho 1264) (rho 1269) (rho 1274) (rho 1279) (rho 1284) (rho 1289) next := by
  exact ⟨rho 1290, rho 1291, rho 1292, rho 1293, rho 1294, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1286 at r1286; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc29, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc29Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc29Part1] at r1286; linear_combination r1286), r1287, r1288, r1289, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1290 at r1290; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc29, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc29Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc29Part1] at r1290; linear_combination r1290), tail⟩

theorem template_scp_node2_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1291 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1291 rho)
    (r1292 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1292 rho)
    (r1293 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1293 rho)
    (r1294 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1294 rho)
    (r1295 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1295 rho)
    (tail : next (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg54 (rho 1099) (rho 1104) (rho 1109) (rho 1114) (rho 1119) (rho 1124) (rho 1129) (rho 1134) (rho 1139) (rho 1144) (rho 1149) (rho 1154) (rho 1159) (rho 1164) (rho 1169) (rho 1174) (rho 1179) (rho 1184) (rho 1189) (rho 1194) (rho 1199) (rho 1204) (rho 1209) (rho 1214) (rho 1219) (rho 1224) (rho 1229) (rho 1234) (rho 1239) (rho 1244) (rho 1249) (rho 1254) (rho 1259) (rho 1264) (rho 1269) (rho 1274) (rho 1279) (rho 1284) (rho 1289) (rho 1294) next := by
  exact ⟨rho 1295, rho 1296, rho 1297, rho 1298, rho 1299, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1291 at r1291; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc30, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc30Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc30Part1] at r1291; linear_combination r1291), r1292, r1293, r1294, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1295 at r1295; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc30, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc30Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc30Part1] at r1295; linear_combination r1295), tail⟩

theorem template_scp_node2_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r1296 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1296 rho)
    (r1297 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1297 rho)
    (r1298 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1298 rho)
    (r1299 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1299 rho)
    (r1300 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1300 rho)
    (tail : next (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299) (rho 1304)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg55 (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299) next := by
  exact ⟨rho 1300, rho 1301, rho 1302, rho 1303, rho 1304, r1296, r1297, r1298, r1299, r1300, tail⟩

theorem template_scp_node2_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r1301 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1301 rho)
    (r1302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1302 rho)
    (r1303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1303 rho)
    (r1304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1304 rho)
    (r1305 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1305 rho)
    (tail : next (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299) (rho 1304) (rho 1309)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg56 (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299) (rho 1304) next := by
  exact ⟨rho 1305, rho 1306, rho 1307, rho 1308, rho 1309, r1301, r1302, r1303, r1304, r1305, tail⟩

theorem template_scp_node2_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r1306 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1306 rho)
    (r1307 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1307 rho)
    (r1308 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1308 rho)
    (r1309 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1309 rho)
    (r1310 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1310 rho)
    (tail : next (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299) (rho 1304) (rho 1309) (rho 1314)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg57 (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299) (rho 1304) (rho 1309) next := by
  exact ⟨rho 1310, rho 1311, rho 1312, rho 1313, rho 1314, r1306, r1307, r1308, r1309, r1310, tail⟩

theorem template_scp_node2_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r1311 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1311 rho)
    (r1312 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1312 rho)
    (r1313 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1313 rho)
    (r1314 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1314 rho)
    (r1315 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1315 rho)
    (tail : next (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299) (rho 1304) (rho 1309) (rho 1314) (rho 1319)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg58 (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299) (rho 1304) (rho 1309) (rho 1314) next := by
  exact ⟨rho 1315, rho 1316, rho 1317, rho 1318, rho 1319, r1311, r1312, r1313, r1314, r1315, tail⟩

theorem template_scp_node2_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r1316 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1316 rho)
    (r1317 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1317 rho)
    (r1318 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1318 rho)
    (r1319 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1319 rho)
    (r1320 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow1320 rho)
    (tail : next (rho 1304) (rho 1309) (rho 1314) (rho 1319) (rho 1324)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg59 (rho 1279) (rho 1284) (rho 1289) (rho 1294) (rho 1299) (rho 1304) (rho 1309) (rho 1314) (rho 1319) next := by
  exact ⟨rho 1320, rho 1321, rho 1322, rho 1323, rho 1324, r1316, r1317, r1318, r1319, r1320, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
