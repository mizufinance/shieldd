import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem table_and_initial (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (hbase : EdwardsBridge.onCurve (base rho)) :
    Window2ScalarMulBridge.TableRel (base rho) (twice rho) (triple rho) ∧
      Window2ScalarMulBridge.Lookup2Rel
        (scalarBits rho)[128]! (scalarBits rho)[127]!
        (base rho) (twice rho) (triple rho) (initial rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p17, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart17 at p17
  rcases p17 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1422, r1423, r1424, r1425, r1426, r1427, r1428, r1429, r1430, r1431, r1432, r1433, r1434, r1435, r1436, r1437, r1438, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1422 at r1422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1423 at r1423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1424 at r1424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1425 at r1425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1426 at r1426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1427 at r1427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1428 at r1428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1429 at r1429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1430 at r1430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1431 at r1431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1432 at r1432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1433 at r1433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1434 at r1434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1435 at r1435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1436 at r1436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1437 at r1437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1438 at r1438
  have htwice : EdwardsBridge.doubleSpec (base rho) (twice rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 598) (rho 600) (rho 1249) (rho 1250) (rho 1251) (rho 1252) (rho 1253)
      (by simpa [base] using hbase)
      (by linear_combination r1422)
      (by linear_combination r1423)
      (by linear_combination r1424)
      (by linear_combination r1425)
      (by linear_combination r1426)
    simpa [base, twice] using hraw
  have htwiceOn : EdwardsBridge.onCurve (twice rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (base rho) (twice rho)
      hbase htwice
    rw [heq]
    exact EdwardsBridge.double_onCurve (base rho) hbase
  have htriple : EdwardsBridge.addSpec (twice rho) (base rho) (triple rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1252) (rho 1253) (rho 598) (rho 600)
      (rho 1254) (rho 1255) (rho 1256) (rho 1257) (rho 1258) (rho 1259)
      (by simpa [twice] using htwiceOn)
      (by simpa [base] using hbase)
      (by linear_combination r1427)
      (by linear_combination r1428)
      (by linear_combination r1429)
      (by linear_combination r1430)
      (by linear_combination r1431)
      (by linear_combination r1432)
    simpa [twice, base, triple] using hraw
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1248) (rho 1247)
      (base rho) (twice rho) (triple rho) (initial rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1248) (rho 1247)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1261 + rho 1262, (1 : F) + rho 1264 + rho 1265⟩ := by
      constructor
      · refine ⟨(rho 1260 + (rho 1252) - (0)), rho 1261, ?_, ?_, ?_⟩
        · linear_combination r1433
        · linear_combination r1434
        · linear_combination r1435
      · refine ⟨(rho 1263 + (rho 1253) - ((1 : F))), rho 1264, ?_, ?_, ?_⟩
        · linear_combination r1436
        · linear_combination r1437
        · linear_combination r1438
    simpa [base, twice, triple, initial] using hraw
  refine ⟨⟨htwice, htriple⟩, ?_⟩
  simpa only [scalarBits_get] using hlookup

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
