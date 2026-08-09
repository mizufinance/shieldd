import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem final_relation (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (hbase : EdwardsBridge.onCurve (base rho))
    (hacc : EdwardsBridge.onCurve (acc124 rho)) :
    Window2ScalarMulBridge.FinalRel (scalarBits rho)[0]!
      (base rho) (acc124 rho) (output rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    p0, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart0 at p0
  rcases p0 with ⟨r0, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2997, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow0 at r0
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2997 at r2997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2998 at r2998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2999 at r2999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3000 at r3000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3001 at r3001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3002 at r3002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3003 at r3003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3004 at r3004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3005 at r3005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3006 at r3006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3007 at r3007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3008 at r3008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow3009 at r3009
  have hshift : EdwardsBridge.doubleSpec (acc124 rho) (tailShift rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2998) (rho 2999) (rho 3000) (rho 3001) (rho 3002) (rho 3003) (rho 3004)
      (by simpa [acc124] using hacc)
      (by linear_combination r2997)
      (by linear_combination r2998)
      (by linear_combination r2999)
      (by linear_combination r3000)
      (by linear_combination r3001)
    simpa [acc124, tailShift] using hraw
  have hshiftOn : EdwardsBridge.onCurve (tailShift rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc124 rho) (tailShift rho)
      hacc hshift
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc124 rho) hacc
  have hsum : EdwardsBridge.addSpec (tailShift rho) (base rho) (tailSum rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3003) (rho 3004) ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253) ((4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254)
      (rho 3005) (rho 3006) (rho 3007) (rho 3008) (rho 3009) (rho 3010)
      (by simpa [tailShift] using hshiftOn)
      (by simpa [base] using hbase)
      (by linear_combination r3002)
      (by linear_combination r3003)
      (by linear_combination r3004)
      (by linear_combination r3005)
      (by linear_combination r3006)
      (by linear_combination r3007)
    simpa [tailShift, base, tailSum] using hraw
  have hbit : GatesDef.is_bool (rho 1) := by
    unfold GatesDef.is_bool
    linear_combination r0
  have hselectX : GatesDef.select (rho 1)
      (tailSum rho).x (tailShift rho).x (output rho).x := by
    refine ⟨hbit, ?_⟩
    unfold tailSum tailShift output
    linear_combination -r3008
  have hselectY : GatesDef.select (rho 1)
      (tailSum rho).y (tailShift rho).y (output rho).y := by
    refine ⟨hbit, ?_⟩
    unfold tailSum tailShift output
    linear_combination -r3009
  have hraw : Window2ScalarMulBridge.FinalRel (rho 1)
      (base rho) (acc124 rho) (output rho) :=
    ⟨tailShift rho, tailSum rho, hshift, hsum, hselectX, hselectY⟩
  simpa only [scalarBits_get] using hraw

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
