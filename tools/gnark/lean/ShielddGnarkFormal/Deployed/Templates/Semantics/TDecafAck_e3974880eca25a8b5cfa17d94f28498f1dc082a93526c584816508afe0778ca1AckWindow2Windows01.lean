import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window6 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc6 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[236]! (scalarBits rho)[235]!
        (base rho) (twice rho) (triple rho) (acc6 rho)
        (acc7 rho) ∧
      EdwardsBridge.onCurve (acc7 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart5 at p5
  rcases p5 with ⟨_, r401, r402, r403, r404, r405, r406, r407, r408, r409, r410, r411, r412, r413, r414, r415, r416, r417, r418, r419, r420, r421, r422, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow401 at r401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow402 at r402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow403 at r403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow404 at r404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow405 at r405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow406 at r406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow407 at r407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow408 at r408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow409 at r409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow410 at r410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow411 at r411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow412 at r412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow413 at r413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow414 at r414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow415 at r415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow416 at r416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow417 at r417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow418 at r418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow419 at r419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow420 at r420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow421 at r421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow422 at r422
  have hshift1 : EdwardsBridge.doubleSpec (acc6 rho) (shiftOnce6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 402) (rho 403) (rho 404) (rho 405) (rho 406) (rho 407) (rho 408)
      (by simpa [acc6] using hacc)
      (by linear_combination r401)
      (by linear_combination r402)
      (by linear_combination r403)
      (by linear_combination r404)
      (by linear_combination r405)
    simpa [acc6, shiftOnce6] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc6 rho) (shiftOnce6 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc6 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce6 rho) (shifted6 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 407) (rho 408) (rho 409) (rho 410) (rho 411) (rho 412) (rho 413)
      (by simpa [shiftOnce6] using hshift1On)
      (by linear_combination r406)
      (by linear_combination r407)
      (by linear_combination r408)
      (by linear_combination r409)
      (by linear_combination r410)
    simpa [shiftOnce6, shifted6] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted6 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce6 rho) (shifted6 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce6 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 237) (rho 236)
      (base rho) (twice rho) (triple rho) (digit6 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 237) (rho 236)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 415 + rho 416, (1 : F) + rho 418 + rho 419⟩ := by
      constructor
      · refine ⟨(rho 414 + (rho 258) - (0)), rho 415, ?_, ?_, ?_⟩
        · linear_combination r411 - (rho 236) * order_cast_zero
        · linear_combination r412
        · linear_combination r413
      · refine ⟨(rho 417 + (rho 259) - ((1 : F))), rho 418, ?_, ?_, ?_⟩
        · linear_combination r414 - (rho 236) * order_cast_zero
        · linear_combination r415
        · linear_combination r416
    simpa [base, twice, triple, digit6] using hraw
  have hhigh : rho 237 =
      Bool.toZMod bits[236]! := by
    simpa only using rho_bit_of_map rho bits hbits 236 (by decide +kernel)
  have hlow : rho 236 =
      Bool.toZMod bits[235]! := by
    simpa only using rho_bit_of_map rho bits hbits 235 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[236]! bits[235]! (base rho) (twice rho) (triple rho)
    (digit6 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit6 rho) := by
    rw [hdigit]
    cases bits[236]! <;> cases bits[235]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted6 rho) (digit6 rho) (acc7 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 412) (rho 413) (rho 415 + rho 416) ((1 : F) + rho 418 + rho 419)
      (rho 420) (rho 421) (rho 422) (rho 423) (rho 424) (rho 425)
      (by simpa [shifted6] using hshift2On)
      (by simpa [digit6] using hdigitOn)
      (by linear_combination r417)
      (by linear_combination r418)
      (by linear_combination r419)
      (by linear_combination r420)
      (by linear_combination r421)
      (by linear_combination r422)
    simpa [shifted6, digit6, acc7] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc7 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted6 rho) (digit6 rho) (acc7 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted6 rho) (digit6 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 237) (rho 236)
      (base rho) (twice rho) (triple rho) (acc6 rho)
      (acc7 rho) :=
    ⟨shiftOnce6 rho, shifted6 rho, digit6 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window7 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc7 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[234]! (scalarBits rho)[233]!
        (base rho) (twice rho) (triple rho) (acc7 rho)
        (acc8 rho) ∧
      EdwardsBridge.onCurve (acc8 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r423, r424, r425, r426, r427, r428, r429, r430, r431, r432, r433, r434, r435, r436, r437, r438, r439, r440, r441, r442, r443, r444, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow423 at r423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow424 at r424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow425 at r425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow426 at r426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow427 at r427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow428 at r428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow429 at r429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow430 at r430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow431 at r431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow432 at r432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow433 at r433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow434 at r434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow435 at r435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow436 at r436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow437 at r437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow438 at r438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow439 at r439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow440 at r440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow441 at r441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow442 at r442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow443 at r443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow444 at r444
  have hshift1 : EdwardsBridge.doubleSpec (acc7 rho) (shiftOnce7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 424) (rho 425) (rho 426) (rho 427) (rho 428) (rho 429) (rho 430)
      (by simpa [acc7] using hacc)
      (by linear_combination r423)
      (by linear_combination r424)
      (by linear_combination r425)
      (by linear_combination r426)
      (by linear_combination r427)
    simpa [acc7, shiftOnce7] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc7 rho) (shiftOnce7 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc7 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce7 rho) (shifted7 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 429) (rho 430) (rho 431) (rho 432) (rho 433) (rho 434) (rho 435)
      (by simpa [shiftOnce7] using hshift1On)
      (by linear_combination r428)
      (by linear_combination r429)
      (by linear_combination r430)
      (by linear_combination r431)
      (by linear_combination r432)
    simpa [shiftOnce7, shifted7] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted7 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce7 rho) (shifted7 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce7 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 235) (rho 234)
      (base rho) (twice rho) (triple rho) (digit7 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 235) (rho 234)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 437 + rho 438, (1 : F) + rho 440 + rho 441⟩ := by
      constructor
      · refine ⟨(rho 436 + (rho 258) - (0)), rho 437, ?_, ?_, ?_⟩
        · linear_combination r433 - (rho 234) * order_cast_zero
        · linear_combination r434
        · linear_combination r435
      · refine ⟨(rho 439 + (rho 259) - ((1 : F))), rho 440, ?_, ?_, ?_⟩
        · linear_combination r436 - (rho 234) * order_cast_zero
        · linear_combination r437
        · linear_combination r438
    simpa [base, twice, triple, digit7] using hraw
  have hhigh : rho 235 =
      Bool.toZMod bits[234]! := by
    simpa only using rho_bit_of_map rho bits hbits 234 (by decide +kernel)
  have hlow : rho 234 =
      Bool.toZMod bits[233]! := by
    simpa only using rho_bit_of_map rho bits hbits 233 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[234]! bits[233]! (base rho) (twice rho) (triple rho)
    (digit7 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit7 rho) := by
    rw [hdigit]
    cases bits[234]! <;> cases bits[233]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted7 rho) (digit7 rho) (acc8 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 434) (rho 435) (rho 437 + rho 438) ((1 : F) + rho 440 + rho 441)
      (rho 442) (rho 443) (rho 444) (rho 445) (rho 446) (rho 447)
      (by simpa [shifted7] using hshift2On)
      (by simpa [digit7] using hdigitOn)
      (by linear_combination r439)
      (by linear_combination r440)
      (by linear_combination r441)
      (by linear_combination r442)
      (by linear_combination r443)
      (by linear_combination r444)
    simpa [shifted7, digit7, acc8] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc8 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted7 rho) (digit7 rho) (acc8 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted7 rho) (digit7 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 235) (rho 234)
      (base rho) (twice rho) (triple rho) (acc7 rho)
      (acc8 rho) :=
    ⟨shiftOnce7 rho, shifted7 rho, digit7 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window8 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc8 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[232]! (scalarBits rho)[231]!
        (base rho) (twice rho) (triple rho) (acc8 rho)
        (acc9 rho) ∧
      EdwardsBridge.onCurve (acc9 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r445, r446, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, r459, r460, r461, r462, r463, r464, r465, r466, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow445 at r445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow446 at r446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow447 at r447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow448 at r448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow449 at r449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow450 at r450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow451 at r451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow452 at r452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow453 at r453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow454 at r454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow455 at r455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow456 at r456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow457 at r457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow458 at r458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow459 at r459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow460 at r460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow461 at r461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow462 at r462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow463 at r463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow464 at r464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow465 at r465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow466 at r466
  have hshift1 : EdwardsBridge.doubleSpec (acc8 rho) (shiftOnce8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 446) (rho 447) (rho 448) (rho 449) (rho 450) (rho 451) (rho 452)
      (by simpa [acc8] using hacc)
      (by linear_combination r445)
      (by linear_combination r446)
      (by linear_combination r447)
      (by linear_combination r448)
      (by linear_combination r449)
    simpa [acc8, shiftOnce8] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc8 rho) (shiftOnce8 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc8 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce8 rho) (shifted8 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 451) (rho 452) (rho 453) (rho 454) (rho 455) (rho 456) (rho 457)
      (by simpa [shiftOnce8] using hshift1On)
      (by linear_combination r450)
      (by linear_combination r451)
      (by linear_combination r452)
      (by linear_combination r453)
      (by linear_combination r454)
    simpa [shiftOnce8, shifted8] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted8 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce8 rho) (shifted8 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce8 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 233) (rho 232)
      (base rho) (twice rho) (triple rho) (digit8 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 233) (rho 232)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 459 + rho 460, (1 : F) + rho 462 + rho 463⟩ := by
      constructor
      · refine ⟨(rho 458 + (rho 258) - (0)), rho 459, ?_, ?_, ?_⟩
        · linear_combination r455 - (rho 232) * order_cast_zero
        · linear_combination r456
        · linear_combination r457
      · refine ⟨(rho 461 + (rho 259) - ((1 : F))), rho 462, ?_, ?_, ?_⟩
        · linear_combination r458 - (rho 232) * order_cast_zero
        · linear_combination r459
        · linear_combination r460
    simpa [base, twice, triple, digit8] using hraw
  have hhigh : rho 233 =
      Bool.toZMod bits[232]! := by
    simpa only using rho_bit_of_map rho bits hbits 232 (by decide +kernel)
  have hlow : rho 232 =
      Bool.toZMod bits[231]! := by
    simpa only using rho_bit_of_map rho bits hbits 231 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[232]! bits[231]! (base rho) (twice rho) (triple rho)
    (digit8 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit8 rho) := by
    rw [hdigit]
    cases bits[232]! <;> cases bits[231]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted8 rho) (digit8 rho) (acc9 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 456) (rho 457) (rho 459 + rho 460) ((1 : F) + rho 462 + rho 463)
      (rho 464) (rho 465) (rho 466) (rho 467) (rho 468) (rho 469)
      (by simpa [shifted8] using hshift2On)
      (by simpa [digit8] using hdigitOn)
      (by linear_combination r461)
      (by linear_combination r462)
      (by linear_combination r463)
      (by linear_combination r464)
      (by linear_combination r465)
      (by linear_combination r466)
    simpa [shifted8, digit8, acc9] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc9 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted8 rho) (digit8 rho) (acc9 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted8 rho) (digit8 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 233) (rho 232)
      (base rho) (twice rho) (triple rho) (acc8 rho)
      (acc9 rho) :=
    ⟨shiftOnce8 rho, shifted8 rho, digit8 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window9 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc9 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[230]! (scalarBits rho)[229]!
        (base rho) (twice rho) (triple rho) (acc9 rho)
        (acc10 rho) ∧
      EdwardsBridge.onCurve (acc10 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r467, r468, r469, r470, r471, r472, r473, r474, r475, r476, r477, r478, r479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, r487, r488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow467 at r467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow468 at r468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow469 at r469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow470 at r470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow471 at r471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow472 at r472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow473 at r473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow474 at r474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow475 at r475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow476 at r476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow477 at r477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow478 at r478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow479 at r479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow480 at r480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow481 at r481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow482 at r482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow483 at r483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow484 at r484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow485 at r485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow486 at r486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow487 at r487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow488 at r488
  have hshift1 : EdwardsBridge.doubleSpec (acc9 rho) (shiftOnce9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 468) (rho 469) (rho 470) (rho 471) (rho 472) (rho 473) (rho 474)
      (by simpa [acc9] using hacc)
      (by linear_combination r467)
      (by linear_combination r468)
      (by linear_combination r469)
      (by linear_combination r470)
      (by linear_combination r471)
    simpa [acc9, shiftOnce9] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc9 rho) (shiftOnce9 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc9 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce9 rho) (shifted9 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 473) (rho 474) (rho 475) (rho 476) (rho 477) (rho 478) (rho 479)
      (by simpa [shiftOnce9] using hshift1On)
      (by linear_combination r472)
      (by linear_combination r473)
      (by linear_combination r474)
      (by linear_combination r475)
      (by linear_combination r476)
    simpa [shiftOnce9, shifted9] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted9 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce9 rho) (shifted9 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce9 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 231) (rho 230)
      (base rho) (twice rho) (triple rho) (digit9 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 231) (rho 230)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 481 + rho 482, (1 : F) + rho 484 + rho 485⟩ := by
      constructor
      · refine ⟨(rho 480 + (rho 258) - (0)), rho 481, ?_, ?_, ?_⟩
        · linear_combination r477 - (rho 230) * order_cast_zero
        · linear_combination r478
        · linear_combination r479
      · refine ⟨(rho 483 + (rho 259) - ((1 : F))), rho 484, ?_, ?_, ?_⟩
        · linear_combination r480 - (rho 230) * order_cast_zero
        · linear_combination r481
        · linear_combination r482
    simpa [base, twice, triple, digit9] using hraw
  have hhigh : rho 231 =
      Bool.toZMod bits[230]! := by
    simpa only using rho_bit_of_map rho bits hbits 230 (by decide +kernel)
  have hlow : rho 230 =
      Bool.toZMod bits[229]! := by
    simpa only using rho_bit_of_map rho bits hbits 229 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[230]! bits[229]! (base rho) (twice rho) (triple rho)
    (digit9 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit9 rho) := by
    rw [hdigit]
    cases bits[230]! <;> cases bits[229]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted9 rho) (digit9 rho) (acc10 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 478) (rho 479) (rho 481 + rho 482) ((1 : F) + rho 484 + rho 485)
      (rho 486) (rho 487) (rho 488) (rho 489) (rho 490) (rho 491)
      (by simpa [shifted9] using hshift2On)
      (by simpa [digit9] using hdigitOn)
      (by linear_combination r483)
      (by linear_combination r484)
      (by linear_combination r485)
      (by linear_combination r486)
      (by linear_combination r487)
      (by linear_combination r488)
    simpa [shifted9, digit9, acc10] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc10 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted9 rho) (digit9 rho) (acc10 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted9 rho) (digit9 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 231) (rho 230)
      (base rho) (twice rho) (triple rho) (acc9 rho)
      (acc10 rho) :=
    ⟨shiftOnce9 rho, shifted9 rho, digit9 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window10 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc10 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[228]! (scalarBits rho)[227]!
        (base rho) (twice rho) (triple rho) (acc10 rho)
        (acc11 rho) ∧
      EdwardsBridge.onCurve (acc11 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, r489, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, r502, r503, r504, r505, r506, r507, r508, r509, r510, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow489 at r489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow490 at r490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow491 at r491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow492 at r492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow493 at r493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow494 at r494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow495 at r495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow496 at r496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow497 at r497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow498 at r498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow499 at r499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow500 at r500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow501 at r501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow502 at r502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow503 at r503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow504 at r504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow505 at r505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow506 at r506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow507 at r507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow508 at r508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow509 at r509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow510 at r510
  have hshift1 : EdwardsBridge.doubleSpec (acc10 rho) (shiftOnce10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 490) (rho 491) (rho 492) (rho 493) (rho 494) (rho 495) (rho 496)
      (by simpa [acc10] using hacc)
      (by linear_combination r489)
      (by linear_combination r490)
      (by linear_combination r491)
      (by linear_combination r492)
      (by linear_combination r493)
    simpa [acc10, shiftOnce10] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc10 rho) (shiftOnce10 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc10 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce10 rho) (shifted10 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 495) (rho 496) (rho 497) (rho 498) (rho 499) (rho 500) (rho 501)
      (by simpa [shiftOnce10] using hshift1On)
      (by linear_combination r494)
      (by linear_combination r495)
      (by linear_combination r496)
      (by linear_combination r497)
      (by linear_combination r498)
    simpa [shiftOnce10, shifted10] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted10 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce10 rho) (shifted10 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce10 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 229) (rho 228)
      (base rho) (twice rho) (triple rho) (digit10 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 229) (rho 228)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 503 + rho 504, (1 : F) + rho 506 + rho 507⟩ := by
      constructor
      · refine ⟨(rho 502 + (rho 258) - (0)), rho 503, ?_, ?_, ?_⟩
        · linear_combination r499 - (rho 228) * order_cast_zero
        · linear_combination r500
        · linear_combination r501
      · refine ⟨(rho 505 + (rho 259) - ((1 : F))), rho 506, ?_, ?_, ?_⟩
        · linear_combination r502 - (rho 228) * order_cast_zero
        · linear_combination r503
        · linear_combination r504
    simpa [base, twice, triple, digit10] using hraw
  have hhigh : rho 229 =
      Bool.toZMod bits[228]! := by
    simpa only using rho_bit_of_map rho bits hbits 228 (by decide +kernel)
  have hlow : rho 228 =
      Bool.toZMod bits[227]! := by
    simpa only using rho_bit_of_map rho bits hbits 227 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[228]! bits[227]! (base rho) (twice rho) (triple rho)
    (digit10 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit10 rho) := by
    rw [hdigit]
    cases bits[228]! <;> cases bits[227]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted10 rho) (digit10 rho) (acc11 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 500) (rho 501) (rho 503 + rho 504) ((1 : F) + rho 506 + rho 507)
      (rho 508) (rho 509) (rho 510) (rho 511) (rho 512) (rho 513)
      (by simpa [shifted10] using hshift2On)
      (by simpa [digit10] using hdigitOn)
      (by linear_combination r505)
      (by linear_combination r506)
      (by linear_combination r507)
      (by linear_combination r508)
      (by linear_combination r509)
      (by linear_combination r510)
    simpa [shifted10, digit10, acc11] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc11 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted10 rho) (digit10 rho) (acc11 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted10 rho) (digit10 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 229) (rho 228)
      (base rho) (twice rho) (triple rho) (acc10 rho)
      (acc11 rho) :=
    ⟨shiftOnce10 rho, shifted10 rho, digit10 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window11 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc11 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[226]! (scalarBits rho)[225]!
        (base rho) (twice rho) (triple rho) (acc11 rho)
        (acc12 rho) ∧
      EdwardsBridge.onCurve (acc12 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r511, r512, r513, r514, r515, r516, r517, r518, r519, r520, r521, r522, r523, r524, r525, r526, r527, r528, r529, r530, r531, r532, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow511 at r511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow512 at r512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow513 at r513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow514 at r514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow515 at r515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow516 at r516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow517 at r517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow518 at r518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow519 at r519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow520 at r520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow521 at r521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow522 at r522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow523 at r523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow524 at r524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow525 at r525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow526 at r526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow527 at r527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow528 at r528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow529 at r529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow530 at r530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow531 at r531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow532 at r532
  have hshift1 : EdwardsBridge.doubleSpec (acc11 rho) (shiftOnce11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 512) (rho 513) (rho 514) (rho 515) (rho 516) (rho 517) (rho 518)
      (by simpa [acc11] using hacc)
      (by linear_combination r511)
      (by linear_combination r512)
      (by linear_combination r513)
      (by linear_combination r514)
      (by linear_combination r515)
    simpa [acc11, shiftOnce11] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc11 rho) (shiftOnce11 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc11 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce11 rho) (shifted11 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 517) (rho 518) (rho 519) (rho 520) (rho 521) (rho 522) (rho 523)
      (by simpa [shiftOnce11] using hshift1On)
      (by linear_combination r516)
      (by linear_combination r517)
      (by linear_combination r518)
      (by linear_combination r519)
      (by linear_combination r520)
    simpa [shiftOnce11, shifted11] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted11 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce11 rho) (shifted11 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce11 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 227) (rho 226)
      (base rho) (twice rho) (triple rho) (digit11 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 227) (rho 226)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 525 + rho 526, (1 : F) + rho 528 + rho 529⟩ := by
      constructor
      · refine ⟨(rho 524 + (rho 258) - (0)), rho 525, ?_, ?_, ?_⟩
        · linear_combination r521 - (rho 226) * order_cast_zero
        · linear_combination r522
        · linear_combination r523
      · refine ⟨(rho 527 + (rho 259) - ((1 : F))), rho 528, ?_, ?_, ?_⟩
        · linear_combination r524 - (rho 226) * order_cast_zero
        · linear_combination r525
        · linear_combination r526
    simpa [base, twice, triple, digit11] using hraw
  have hhigh : rho 227 =
      Bool.toZMod bits[226]! := by
    simpa only using rho_bit_of_map rho bits hbits 226 (by decide +kernel)
  have hlow : rho 226 =
      Bool.toZMod bits[225]! := by
    simpa only using rho_bit_of_map rho bits hbits 225 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[226]! bits[225]! (base rho) (twice rho) (triple rho)
    (digit11 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit11 rho) := by
    rw [hdigit]
    cases bits[226]! <;> cases bits[225]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted11 rho) (digit11 rho) (acc12 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 522) (rho 523) (rho 525 + rho 526) ((1 : F) + rho 528 + rho 529)
      (rho 530) (rho 531) (rho 532) (rho 533) (rho 534) (rho 535)
      (by simpa [shifted11] using hshift2On)
      (by simpa [digit11] using hdigitOn)
      (by linear_combination r527)
      (by linear_combination r528)
      (by linear_combination r529)
      (by linear_combination r530)
      (by linear_combination r531)
      (by linear_combination r532)
    simpa [shifted11, digit11, acc12] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc12 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted11 rho) (digit11 rho) (acc12 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted11 rho) (digit11 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 227) (rho 226)
      (base rho) (twice rho) (triple rho) (acc11 rho)
      (acc12 rho) :=
    ⟨shiftOnce11 rho, shifted11 rho, digit11 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
