import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Prelude
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows00
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows01
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows02
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows03
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows04
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows05
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows06
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows07
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows08
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows09
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Windows10
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Tail

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem body_relation (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho)) :
    Window2ScalarMulBridge.BodyRelOdd 64
      (scalarBits rho) (base rho) (output rho) := by
  rcases table_and_initial rho h hbase with ⟨htable, hlookup⟩
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwice, htriple, htwiceOn, htripleOn⟩
  have hlookupBool : Window2ScalarMulBridge.Lookup2Rel
      (Bool.toZMod bits[128]!)
      (Bool.toZMod bits[127]!)
      (base rho) (twice rho) (triple rho) (initial rho) := by
    rw [← scalarBits_get_of_map rho bits hbits 128 (by decide +kernel),
      ← scalarBits_get_of_map rho bits hbits 127 (by decide +kernel)]
    exact hlookup
  have hinitial := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[128]! bits[127]! (base rho) (twice rho) (triple rho)
    (initial rho) htwice htriple hlookupBool
  have hinitialOn : EdwardsBridge.onCurve (initial rho) := by
    rw [hinitial]
    cases bits[128]! <;> cases bits[127]!
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
  have hfinal := final_relation rho h hbase hacc63
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
  simpa only [Window2ScalarMulBridge.WindowLadderK] using hfinal

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
