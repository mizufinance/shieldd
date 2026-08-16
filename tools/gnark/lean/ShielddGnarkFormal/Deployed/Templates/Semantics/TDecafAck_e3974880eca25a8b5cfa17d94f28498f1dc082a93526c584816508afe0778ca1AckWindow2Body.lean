import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Prelude
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows00
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows01
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows02
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows03
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows04
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows05
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows06
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows07
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows08
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows09
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows10
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows11
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows12
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows13
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows14
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows15
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows16
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows17
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows18
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows19
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Windows20
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Tail

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem body_relation (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho)) :
    Window2ScalarMulBridge.BodyRelOdd 125
      (scalarBits rho) (base rho) (output rho) := by
  rcases table_and_initial rho h hbase with ⟨htable, hlookup⟩
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwice, htriple, htwiceOn, htripleOn⟩
  have hlookupBool : Window2ScalarMulBridge.Lookup2Rel
      (Bool.toZMod bits[250]!)
      (Bool.toZMod bits[249]!)
      (base rho) (twice rho) (triple rho) (initial rho) := by
    rw [← scalarBits_get_of_map rho bits hbits 250 (by decide +kernel),
      ← scalarBits_get_of_map rho bits hbits 249 (by decide +kernel)]
    exact hlookup
  have hinitial := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[250]! bits[249]! (base rho) (twice rho) (triple rho)
    (initial rho) htwice htriple hlookupBool
  have hinitialOn : EdwardsBridge.onCurve (initial rho) := by
    rw [hinitial]
    cases bits[250]! <;> cases bits[249]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwice] using htwiceOn
    · simpa [htriple] using htripleOn
  have hacc0 : EdwardsBridge.onCurve (acc0 rho) := by
    simpa [acc0, initial] using hinitialOn
  rcases window0 rho h bits hbits hbase htable hacc0 with
    ⟨hwindow0, hacc1⟩
  rcases window1 rho h bits hbits hbase htable hacc1 with
    ⟨hwindow1, hacc2⟩
  rcases window2 rho h bits hbits hbase htable hacc2 with
    ⟨hwindow2, hacc3⟩
  rcases window3 rho h bits hbits hbase htable hacc3 with
    ⟨hwindow3, hacc4⟩
  rcases window4 rho h bits hbits hbase htable hacc4 with
    ⟨hwindow4, hacc5⟩
  rcases window5 rho h bits hbits hbase htable hacc5 with
    ⟨hwindow5, hacc6⟩
  rcases window6 rho h bits hbits hbase htable hacc6 with
    ⟨hwindow6, hacc7⟩
  rcases window7 rho h bits hbits hbase htable hacc7 with
    ⟨hwindow7, hacc8⟩
  rcases window8 rho h bits hbits hbase htable hacc8 with
    ⟨hwindow8, hacc9⟩
  rcases window9 rho h bits hbits hbase htable hacc9 with
    ⟨hwindow9, hacc10⟩
  rcases window10 rho h bits hbits hbase htable hacc10 with
    ⟨hwindow10, hacc11⟩
  rcases window11 rho h bits hbits hbase htable hacc11 with
    ⟨hwindow11, hacc12⟩
  rcases window12 rho h bits hbits hbase htable hacc12 with
    ⟨hwindow12, hacc13⟩
  rcases window13 rho h bits hbits hbase htable hacc13 with
    ⟨hwindow13, hacc14⟩
  rcases window14 rho h bits hbits hbase htable hacc14 with
    ⟨hwindow14, hacc15⟩
  rcases window15 rho h bits hbits hbase htable hacc15 with
    ⟨hwindow15, hacc16⟩
  rcases window16 rho h bits hbits hbase htable hacc16 with
    ⟨hwindow16, hacc17⟩
  rcases window17 rho h bits hbits hbase htable hacc17 with
    ⟨hwindow17, hacc18⟩
  rcases window18 rho h bits hbits hbase htable hacc18 with
    ⟨hwindow18, hacc19⟩
  rcases window19 rho h bits hbits hbase htable hacc19 with
    ⟨hwindow19, hacc20⟩
  rcases window20 rho h bits hbits hbase htable hacc20 with
    ⟨hwindow20, hacc21⟩
  rcases window21 rho h bits hbits hbase htable hacc21 with
    ⟨hwindow21, hacc22⟩
  rcases window22 rho h bits hbits hbase htable hacc22 with
    ⟨hwindow22, hacc23⟩
  rcases window23 rho h bits hbits hbase htable hacc23 with
    ⟨hwindow23, hacc24⟩
  rcases window24 rho h bits hbits hbase htable hacc24 with
    ⟨hwindow24, hacc25⟩
  rcases window25 rho h bits hbits hbase htable hacc25 with
    ⟨hwindow25, hacc26⟩
  rcases window26 rho h bits hbits hbase htable hacc26 with
    ⟨hwindow26, hacc27⟩
  rcases window27 rho h bits hbits hbase htable hacc27 with
    ⟨hwindow27, hacc28⟩
  rcases window28 rho h bits hbits hbase htable hacc28 with
    ⟨hwindow28, hacc29⟩
  rcases window29 rho h bits hbits hbase htable hacc29 with
    ⟨hwindow29, hacc30⟩
  rcases window30 rho h bits hbits hbase htable hacc30 with
    ⟨hwindow30, hacc31⟩
  rcases window31 rho h bits hbits hbase htable hacc31 with
    ⟨hwindow31, hacc32⟩
  rcases window32 rho h bits hbits hbase htable hacc32 with
    ⟨hwindow32, hacc33⟩
  rcases window33 rho h bits hbits hbase htable hacc33 with
    ⟨hwindow33, hacc34⟩
  rcases window34 rho h bits hbits hbase htable hacc34 with
    ⟨hwindow34, hacc35⟩
  rcases window35 rho h bits hbits hbase htable hacc35 with
    ⟨hwindow35, hacc36⟩
  rcases window36 rho h bits hbits hbase htable hacc36 with
    ⟨hwindow36, hacc37⟩
  rcases window37 rho h bits hbits hbase htable hacc37 with
    ⟨hwindow37, hacc38⟩
  rcases window38 rho h bits hbits hbase htable hacc38 with
    ⟨hwindow38, hacc39⟩
  rcases window39 rho h bits hbits hbase htable hacc39 with
    ⟨hwindow39, hacc40⟩
  rcases window40 rho h bits hbits hbase htable hacc40 with
    ⟨hwindow40, hacc41⟩
  rcases window41 rho h bits hbits hbase htable hacc41 with
    ⟨hwindow41, hacc42⟩
  rcases window42 rho h bits hbits hbase htable hacc42 with
    ⟨hwindow42, hacc43⟩
  rcases window43 rho h bits hbits hbase htable hacc43 with
    ⟨hwindow43, hacc44⟩
  rcases window44 rho h bits hbits hbase htable hacc44 with
    ⟨hwindow44, hacc45⟩
  rcases window45 rho h bits hbits hbase htable hacc45 with
    ⟨hwindow45, hacc46⟩
  rcases window46 rho h bits hbits hbase htable hacc46 with
    ⟨hwindow46, hacc47⟩
  rcases window47 rho h bits hbits hbase htable hacc47 with
    ⟨hwindow47, hacc48⟩
  rcases window48 rho h bits hbits hbase htable hacc48 with
    ⟨hwindow48, hacc49⟩
  rcases window49 rho h bits hbits hbase htable hacc49 with
    ⟨hwindow49, hacc50⟩
  rcases window50 rho h bits hbits hbase htable hacc50 with
    ⟨hwindow50, hacc51⟩
  rcases window51 rho h bits hbits hbase htable hacc51 with
    ⟨hwindow51, hacc52⟩
  rcases window52 rho h bits hbits hbase htable hacc52 with
    ⟨hwindow52, hacc53⟩
  rcases window53 rho h bits hbits hbase htable hacc53 with
    ⟨hwindow53, hacc54⟩
  rcases window54 rho h bits hbits hbase htable hacc54 with
    ⟨hwindow54, hacc55⟩
  rcases window55 rho h bits hbits hbase htable hacc55 with
    ⟨hwindow55, hacc56⟩
  rcases window56 rho h bits hbits hbase htable hacc56 with
    ⟨hwindow56, hacc57⟩
  rcases window57 rho h bits hbits hbase htable hacc57 with
    ⟨hwindow57, hacc58⟩
  rcases window58 rho h bits hbits hbase htable hacc58 with
    ⟨hwindow58, hacc59⟩
  rcases window59 rho h bits hbits hbase htable hacc59 with
    ⟨hwindow59, hacc60⟩
  rcases window60 rho h bits hbits hbase htable hacc60 with
    ⟨hwindow60, hacc61⟩
  rcases window61 rho h bits hbits hbase htable hacc61 with
    ⟨hwindow61, hacc62⟩
  rcases window62 rho h bits hbits hbase htable hacc62 with
    ⟨hwindow62, hacc63⟩
  rcases window63 rho h bits hbits hbase htable hacc63 with
    ⟨hwindow63, hacc64⟩
  rcases window64 rho h bits hbits hbase htable hacc64 with
    ⟨hwindow64, hacc65⟩
  rcases window65 rho h bits hbits hbase htable hacc65 with
    ⟨hwindow65, hacc66⟩
  rcases window66 rho h bits hbits hbase htable hacc66 with
    ⟨hwindow66, hacc67⟩
  rcases window67 rho h bits hbits hbase htable hacc67 with
    ⟨hwindow67, hacc68⟩
  rcases window68 rho h bits hbits hbase htable hacc68 with
    ⟨hwindow68, hacc69⟩
  rcases window69 rho h bits hbits hbase htable hacc69 with
    ⟨hwindow69, hacc70⟩
  rcases window70 rho h bits hbits hbase htable hacc70 with
    ⟨hwindow70, hacc71⟩
  rcases window71 rho h bits hbits hbase htable hacc71 with
    ⟨hwindow71, hacc72⟩
  rcases window72 rho h bits hbits hbase htable hacc72 with
    ⟨hwindow72, hacc73⟩
  rcases window73 rho h bits hbits hbase htable hacc73 with
    ⟨hwindow73, hacc74⟩
  rcases window74 rho h bits hbits hbase htable hacc74 with
    ⟨hwindow74, hacc75⟩
  rcases window75 rho h bits hbits hbase htable hacc75 with
    ⟨hwindow75, hacc76⟩
  rcases window76 rho h bits hbits hbase htable hacc76 with
    ⟨hwindow76, hacc77⟩
  rcases window77 rho h bits hbits hbase htable hacc77 with
    ⟨hwindow77, hacc78⟩
  rcases window78 rho h bits hbits hbase htable hacc78 with
    ⟨hwindow78, hacc79⟩
  rcases window79 rho h bits hbits hbase htable hacc79 with
    ⟨hwindow79, hacc80⟩
  rcases window80 rho h bits hbits hbase htable hacc80 with
    ⟨hwindow80, hacc81⟩
  rcases window81 rho h bits hbits hbase htable hacc81 with
    ⟨hwindow81, hacc82⟩
  rcases window82 rho h bits hbits hbase htable hacc82 with
    ⟨hwindow82, hacc83⟩
  rcases window83 rho h bits hbits hbase htable hacc83 with
    ⟨hwindow83, hacc84⟩
  rcases window84 rho h bits hbits hbase htable hacc84 with
    ⟨hwindow84, hacc85⟩
  rcases window85 rho h bits hbits hbase htable hacc85 with
    ⟨hwindow85, hacc86⟩
  rcases window86 rho h bits hbits hbase htable hacc86 with
    ⟨hwindow86, hacc87⟩
  rcases window87 rho h bits hbits hbase htable hacc87 with
    ⟨hwindow87, hacc88⟩
  rcases window88 rho h bits hbits hbase htable hacc88 with
    ⟨hwindow88, hacc89⟩
  rcases window89 rho h bits hbits hbase htable hacc89 with
    ⟨hwindow89, hacc90⟩
  rcases window90 rho h bits hbits hbase htable hacc90 with
    ⟨hwindow90, hacc91⟩
  rcases window91 rho h bits hbits hbase htable hacc91 with
    ⟨hwindow91, hacc92⟩
  rcases window92 rho h bits hbits hbase htable hacc92 with
    ⟨hwindow92, hacc93⟩
  rcases window93 rho h bits hbits hbase htable hacc93 with
    ⟨hwindow93, hacc94⟩
  rcases window94 rho h bits hbits hbase htable hacc94 with
    ⟨hwindow94, hacc95⟩
  rcases window95 rho h bits hbits hbase htable hacc95 with
    ⟨hwindow95, hacc96⟩
  rcases window96 rho h bits hbits hbase htable hacc96 with
    ⟨hwindow96, hacc97⟩
  rcases window97 rho h bits hbits hbase htable hacc97 with
    ⟨hwindow97, hacc98⟩
  rcases window98 rho h bits hbits hbase htable hacc98 with
    ⟨hwindow98, hacc99⟩
  rcases window99 rho h bits hbits hbase htable hacc99 with
    ⟨hwindow99, hacc100⟩
  rcases window100 rho h bits hbits hbase htable hacc100 with
    ⟨hwindow100, hacc101⟩
  rcases window101 rho h bits hbits hbase htable hacc101 with
    ⟨hwindow101, hacc102⟩
  rcases window102 rho h bits hbits hbase htable hacc102 with
    ⟨hwindow102, hacc103⟩
  rcases window103 rho h bits hbits hbase htable hacc103 with
    ⟨hwindow103, hacc104⟩
  rcases window104 rho h bits hbits hbase htable hacc104 with
    ⟨hwindow104, hacc105⟩
  rcases window105 rho h bits hbits hbase htable hacc105 with
    ⟨hwindow105, hacc106⟩
  rcases window106 rho h bits hbits hbase htable hacc106 with
    ⟨hwindow106, hacc107⟩
  rcases window107 rho h bits hbits hbase htable hacc107 with
    ⟨hwindow107, hacc108⟩
  rcases window108 rho h bits hbits hbase htable hacc108 with
    ⟨hwindow108, hacc109⟩
  rcases window109 rho h bits hbits hbase htable hacc109 with
    ⟨hwindow109, hacc110⟩
  rcases window110 rho h bits hbits hbase htable hacc110 with
    ⟨hwindow110, hacc111⟩
  rcases window111 rho h bits hbits hbase htable hacc111 with
    ⟨hwindow111, hacc112⟩
  rcases window112 rho h bits hbits hbase htable hacc112 with
    ⟨hwindow112, hacc113⟩
  rcases window113 rho h bits hbits hbase htable hacc113 with
    ⟨hwindow113, hacc114⟩
  rcases window114 rho h bits hbits hbase htable hacc114 with
    ⟨hwindow114, hacc115⟩
  rcases window115 rho h bits hbits hbase htable hacc115 with
    ⟨hwindow115, hacc116⟩
  rcases window116 rho h bits hbits hbase htable hacc116 with
    ⟨hwindow116, hacc117⟩
  rcases window117 rho h bits hbits hbase htable hacc117 with
    ⟨hwindow117, hacc118⟩
  rcases window118 rho h bits hbits hbase htable hacc118 with
    ⟨hwindow118, hacc119⟩
  rcases window119 rho h bits hbits hbase htable hacc119 with
    ⟨hwindow119, hacc120⟩
  rcases window120 rho h bits hbits hbase htable hacc120 with
    ⟨hwindow120, hacc121⟩
  rcases window121 rho h bits hbits hbase htable hacc121 with
    ⟨hwindow121, hacc122⟩
  rcases window122 rho h bits hbits hbase htable hacc122 with
    ⟨hwindow122, hacc123⟩
  rcases window123 rho h bits hbits hbase htable hacc123 with
    ⟨hwindow123, hacc124⟩
  have hfinal := final_relation rho h hbase hacc124
  refine ⟨twice rho, triple rho, initial rho, htable, hlookup, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc1 rho, hwindow0, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc2 rho, hwindow1, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc3 rho, hwindow2, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc4 rho, hwindow3, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc5 rho, hwindow4, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc6 rho, hwindow5, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc7 rho, hwindow6, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc8 rho, hwindow7, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc9 rho, hwindow8, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc10 rho, hwindow9, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc11 rho, hwindow10, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc12 rho, hwindow11, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc13 rho, hwindow12, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc14 rho, hwindow13, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc15 rho, hwindow14, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc16 rho, hwindow15, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc17 rho, hwindow16, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc18 rho, hwindow17, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc19 rho, hwindow18, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc20 rho, hwindow19, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc21 rho, hwindow20, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc22 rho, hwindow21, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc23 rho, hwindow22, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc24 rho, hwindow23, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc25 rho, hwindow24, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc26 rho, hwindow25, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc27 rho, hwindow26, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc28 rho, hwindow27, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc29 rho, hwindow28, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc30 rho, hwindow29, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc31 rho, hwindow30, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc32 rho, hwindow31, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc33 rho, hwindow32, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc34 rho, hwindow33, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc35 rho, hwindow34, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc36 rho, hwindow35, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc37 rho, hwindow36, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc38 rho, hwindow37, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc39 rho, hwindow38, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc40 rho, hwindow39, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc41 rho, hwindow40, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc42 rho, hwindow41, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc43 rho, hwindow42, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc44 rho, hwindow43, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc45 rho, hwindow44, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc46 rho, hwindow45, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc47 rho, hwindow46, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc48 rho, hwindow47, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc49 rho, hwindow48, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc50 rho, hwindow49, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc51 rho, hwindow50, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc52 rho, hwindow51, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc53 rho, hwindow52, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc54 rho, hwindow53, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc55 rho, hwindow54, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc56 rho, hwindow55, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc57 rho, hwindow56, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc58 rho, hwindow57, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc59 rho, hwindow58, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc60 rho, hwindow59, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc61 rho, hwindow60, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc62 rho, hwindow61, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc63 rho, hwindow62, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc64 rho, hwindow63, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc65 rho, hwindow64, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc66 rho, hwindow65, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc67 rho, hwindow66, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc68 rho, hwindow67, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc69 rho, hwindow68, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc70 rho, hwindow69, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc71 rho, hwindow70, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc72 rho, hwindow71, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc73 rho, hwindow72, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc74 rho, hwindow73, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc75 rho, hwindow74, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc76 rho, hwindow75, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc77 rho, hwindow76, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc78 rho, hwindow77, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc79 rho, hwindow78, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc80 rho, hwindow79, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc81 rho, hwindow80, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc82 rho, hwindow81, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc83 rho, hwindow82, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc84 rho, hwindow83, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc85 rho, hwindow84, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc86 rho, hwindow85, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc87 rho, hwindow86, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc88 rho, hwindow87, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc89 rho, hwindow88, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc90 rho, hwindow89, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc91 rho, hwindow90, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc92 rho, hwindow91, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc93 rho, hwindow92, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc94 rho, hwindow93, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc95 rho, hwindow94, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc96 rho, hwindow95, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc97 rho, hwindow96, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc98 rho, hwindow97, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc99 rho, hwindow98, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc100 rho, hwindow99, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc101 rho, hwindow100, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc102 rho, hwindow101, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc103 rho, hwindow102, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc104 rho, hwindow103, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc105 rho, hwindow104, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc106 rho, hwindow105, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc107 rho, hwindow106, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc108 rho, hwindow107, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc109 rho, hwindow108, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc110 rho, hwindow109, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc111 rho, hwindow110, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc112 rho, hwindow111, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc113 rho, hwindow112, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc114 rho, hwindow113, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc115 rho, hwindow114, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc116 rho, hwindow115, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc117 rho, hwindow116, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc118 rho, hwindow117, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc119 rho, hwindow118, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc120 rho, hwindow119, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc121 rho, hwindow120, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc122 rho, hwindow121, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc123 rho, hwindow122, ?_⟩
  rw [Window2ScalarMulBridge.WindowLadderK]
  refine ⟨acc124 rho, hwindow123, ?_⟩
  simpa only [Window2ScalarMulBridge.WindowLadderK] using hfinal

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
