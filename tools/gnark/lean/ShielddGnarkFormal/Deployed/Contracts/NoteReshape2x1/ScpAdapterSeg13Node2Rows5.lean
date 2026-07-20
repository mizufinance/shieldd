import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node2_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1271 : Seg13.relationRow1271 rho)
    (r1272 : Seg13.relationRow1272 rho)
    (r1273 : Seg13.relationRow1273 rho)
    (r1274 : Seg13.relationRow1274 rho)
    (r1275 : Seg13.relationRow1275 rho)
    (tail : next (rho 8294) (rho 8299) (rho 8304) (rho 8309) (rho 8314) (rho 8319) (rho 8324) (rho 8329) (rho 8334) (rho 8339) (rho 8344) (rho 8349) (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg50 (rho 8294) (rho 8299) (rho 8304) (rho 8309) (rho 8314) (rho 8319) (rho 8324) (rho 8329) (rho 8334) (rho 8339) (rho 8344) (rho 8349) (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) next := by
  exact ⟨rho 8470, rho 8471, rho 8472, rho 8473, rho 8474, r1271, r1272, r1273, r1274, r1275, tail⟩

theorem seg13_scp_node2_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1276 : Seg13.relationRow1276 rho)
    (r1277 : Seg13.relationRow1277 rho)
    (r1278 : Seg13.relationRow1278 rho)
    (r1279 : Seg13.relationRow1279 rho)
    (r1280 : Seg13.relationRow1280 rho)
    (tail : next (rho 8294) (rho 8299) (rho 8304) (rho 8309) (rho 8314) (rho 8319) (rho 8324) (rho 8329) (rho 8334) (rho 8339) (rho 8344) (rho 8349) (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg51 (rho 8294) (rho 8299) (rho 8304) (rho 8309) (rho 8314) (rho 8319) (rho 8324) (rho 8329) (rho 8334) (rho 8339) (rho 8344) (rho 8349) (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) next := by
  exact ⟨rho 8475, rho 8476, rho 8477, rho 8478, rho 8479, r1276, r1277, r1278, r1279, r1280, tail⟩

theorem seg13_scp_node2_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1281 : Seg13.relationRow1281 rho)
    (r1282 : Seg13.relationRow1282 rho)
    (r1283 : Seg13.relationRow1283 rho)
    (r1284 : Seg13.relationRow1284 rho)
    (r1285 : Seg13.relationRow1285 rho)
    (tail : next (rho 8294) (rho 8299) (rho 8304) (rho 8309) (rho 8314) (rho 8319) (rho 8324) (rho 8329) (rho 8334) (rho 8339) (rho 8344) (rho 8349) (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg52 (rho 8294) (rho 8299) (rho 8304) (rho 8309) (rho 8314) (rho 8319) (rho 8324) (rho 8329) (rho 8334) (rho 8339) (rho 8344) (rho 8349) (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) next := by
  exact ⟨rho 8480, rho 8481, rho 8482, rho 8483, rho 8484, r1281, r1282, r1283, r1284, r1285, tail⟩

theorem seg13_scp_node2_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1286 : Seg13.relationRow1286 rho)
    (r1287 : Seg13.relationRow1287 rho)
    (r1288 : Seg13.relationRow1288 rho)
    (r1289 : Seg13.relationRow1289 rho)
    (r1290 : Seg13.relationRow1290 rho)
    (tail : next (rho 8294) (rho 8299) (rho 8304) (rho 8309) (rho 8314) (rho 8319) (rho 8324) (rho 8329) (rho 8334) (rho 8339) (rho 8344) (rho 8349) (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg53 (rho 8294) (rho 8299) (rho 8304) (rho 8309) (rho 8314) (rho 8319) (rho 8324) (rho 8329) (rho 8334) (rho 8339) (rho 8344) (rho 8349) (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) next := by
  exact ⟨rho 8485, rho 8486, rho 8487, rho 8488, rho 8489, r1286, r1287, r1288, r1289, r1290, tail⟩

theorem seg13_scp_node2_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1291 : Seg13.relationRow1291 rho)
    (r1292 : Seg13.relationRow1292 rho)
    (r1293 : Seg13.relationRow1293 rho)
    (r1294 : Seg13.relationRow1294 rho)
    (r1295 : Seg13.relationRow1295 rho)
    (tail : next (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg54 (rho 8294) (rho 8299) (rho 8304) (rho 8309) (rho 8314) (rho 8319) (rho 8324) (rho 8329) (rho 8334) (rho 8339) (rho 8344) (rho 8349) (rho 8354) (rho 8359) (rho 8364) (rho 8369) (rho 8374) (rho 8379) (rho 8384) (rho 8389) (rho 8394) (rho 8399) (rho 8404) (rho 8409) (rho 8414) (rho 8419) (rho 8424) (rho 8429) (rho 8434) (rho 8439) (rho 8444) (rho 8449) (rho 8454) (rho 8459) (rho 8464) (rho 8469) (rho 8474) (rho 8479) (rho 8484) (rho 8489) next := by
  exact ⟨rho 8490, rho 8491, rho 8492, rho 8493, rho 8494, r1291, r1292, r1293, r1294, r1295, tail⟩

theorem seg13_scp_node2_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1296 : Seg13.relationRow1296 rho)
    (r1297 : Seg13.relationRow1297 rho)
    (r1298 : Seg13.relationRow1298 rho)
    (r1299 : Seg13.relationRow1299 rho)
    (r1300 : Seg13.relationRow1300 rho)
    (tail : next (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg55 (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) next := by
  exact ⟨rho 8495, rho 8496, rho 8497, rho 8498, rho 8499, r1296, r1297, r1298, r1299, r1300, tail⟩

theorem seg13_scp_node2_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1301 : Seg13.relationRow1301 rho)
    (r1302 : Seg13.relationRow1302 rho)
    (r1303 : Seg13.relationRow1303 rho)
    (r1304 : Seg13.relationRow1304 rho)
    (r1305 : Seg13.relationRow1305 rho)
    (tail : next (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg56 (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) next := by
  exact ⟨rho 8500, rho 8501, rho 8502, rho 8503, rho 8504, r1301, r1302, r1303, r1304, r1305, tail⟩

theorem seg13_scp_node2_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1306 : Seg13.relationRow1306 rho)
    (r1307 : Seg13.relationRow1307 rho)
    (r1308 : Seg13.relationRow1308 rho)
    (r1309 : Seg13.relationRow1309 rho)
    (r1310 : Seg13.relationRow1310 rho)
    (tail : next (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg57 (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) next := by
  exact ⟨rho 8505, rho 8506, rho 8507, rho 8508, rho 8509, r1306, r1307, r1308, r1309, r1310, tail⟩

theorem seg13_scp_node2_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1311 : Seg13.relationRow1311 rho)
    (r1312 : Seg13.relationRow1312 rho)
    (r1313 : Seg13.relationRow1313 rho)
    (r1314 : Seg13.relationRow1314 rho)
    (r1315 : Seg13.relationRow1315 rho)
    (tail : next (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg58 (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) next := by
  exact ⟨rho 8510, rho 8511, rho 8512, rho 8513, rho 8514, r1311, r1312, r1313, r1314, r1315, tail⟩

theorem seg13_scp_node2_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r1316 : Seg13.relationRow1316 rho)
    (r1317 : Seg13.relationRow1317 rho)
    (r1318 : Seg13.relationRow1318 rho)
    (r1319 : Seg13.relationRow1319 rho)
    (r1320 : Seg13.relationRow1320 rho)
    (tail : next (rho 8499) (rho 8504) (rho 8509) (rho 8514) (rho 8519)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode2350_4f6871.seg59 (rho 8474) (rho 8479) (rho 8484) (rho 8489) (rho 8494) (rho 8499) (rho 8504) (rho 8509) (rho 8514) next := by
  exact ⟨rho 8515, rho 8516, rho 8517, rho 8518, rho 8519, r1316, r1317, r1318, r1319, r1320, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

