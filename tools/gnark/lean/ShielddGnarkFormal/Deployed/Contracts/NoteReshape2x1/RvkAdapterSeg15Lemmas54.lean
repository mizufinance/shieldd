import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc1117 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1117 rho = seg15AccX203 rho + seg15AccY203 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc1117, Seg15.relationLc1117Part0, Seg15.relationLc1117Part1, Seg15.relationLc1117Part2, Seg15.relationLc1117Part3, Seg15.relationLc1117Part4, Seg15.relationLc1117Part5, Seg15.relationLc1117Part6, Seg15.relationLc1117Part7, Seg15.relationLc1117Part8, Seg15.relationLc1117Part9, Seg15.relationLc1117Part10, Seg15.relationLc1117Part11, Seg15.relationLc1117Part12]
  rw [seg15AccX203_sum, seg15AccY203_sum]
  ring

theorem seg15_lc1118 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1118 rho = 3389998491020503859303786965765139969901366052336265727484603991236154999635*seg15AccX203 rho + 6109079922443606354159973101022193335128966803025889958934578981713123816444*rho 16130 := by
  simp only [Seg15.relationLc1118, Seg15.relationLc1118Part0, Seg15.relationLc1118Part1, Seg15.relationLc1118Part2, Seg15.relationLc1118Part3, Seg15.relationLc1118Part4, Seg15.relationLc1118Part5, Seg15.relationLc1118Part6]
  rw [seg15AccX203_sum]
  ring

theorem seg15_lc1119 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1119 rho = 2680918677687748119548860364292426829542892392781941149131102811746148175546*seg15AccY203 rho + 2680918677687748119548860364292426829542892392781941149131102811746148175546 + 8352604590135444293091570219185407877769926257403231614289972806558950954850*rho 16130 := by
  simp only [Seg15.relationLc1119, Seg15.relationLc1119Part0, Seg15.relationLc1119Part1, Seg15.relationLc1119Part2, Seg15.relationLc1119Part3, Seg15.relationLc1119Part4, Seg15.relationLc1119Part5, Seg15.relationLc1119Part6]
  rw [seg15AccY203_sum]
  ring

theorem seg15_lc1120 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1120 rho = 8090586660488819765519828917510612645406075485596887449113555188817020355109*seg15AccX203 rho + 2680918677687748119548860364292426829542892392781941149131102811746148175546*seg15AccY203 rho + 2680918677687748119548860364292426829542892392781941149131102811746148175546 + 4019188140800469476257486304273406395866950123003719165707181508595962339843*rho 16130 := by
  simp only [Seg15.relationLc1120, Seg15.relationLc1120Part0, Seg15.relationLc1120Part1, Seg15.relationLc1120Part2, Seg15.relationLc1120Part3, Seg15.relationLc1120Part4, Seg15.relationLc1120Part5, Seg15.relationLc1120Part6, Seg15.relationLc1120Part7, Seg15.relationLc1120Part8, Seg15.relationLc1120Part9, Seg15.relationLc1120Part10, Seg15.relationLc1120Part11, Seg15.relationLc1120Part12]
  rw [seg15AccX203_sum, seg15AccY203_sum]
  ring

theorem seg15_lc1121 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1121 rho = 353875088939550658728996021270933885969823849557176378821678267100388883932*seg15AccX203 rho + 5763543071740622304699964574489119701833006942372122678804130644171261063495*seg15AccY203 rho + 5763543071740622304699964574489119701833006942372122678804130644171261063495 + 4425273608627900947991338634508140135508949212150344662228051947321446899198*rho 16130 := by
  simp only [Seg15.relationLc1121, Seg15.relationLc1121Part0, Seg15.relationLc1121Part1, Seg15.relationLc1121Part2, Seg15.relationLc1121Part3, Seg15.relationLc1121Part4, Seg15.relationLc1121Part5, Seg15.relationLc1121Part6, Seg15.relationLc1121Part7, Seg15.relationLc1121Part8, Seg15.relationLc1121Part9, Seg15.relationLc1121Part10, Seg15.relationLc1121Part11, Seg15.relationLc1121Part12]
  rw [seg15AccX203_sum, seg15AccY203_sum]
  ring

theorem seg15_lc1122 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1122 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX203 rho + rho 17561 := by
  simp only [Seg15.relationLc1122, Seg15.relationLc1122Part0, Seg15.relationLc1122Part1, Seg15.relationLc1122Part2, Seg15.relationLc1122Part3, Seg15.relationLc1122Part4, Seg15.relationLc1122Part5, Seg15.relationLc1122Part6]
  rw [seg15AccX203_sum]
  ring

theorem seg15_lc1123 (rho : Nat -> Seg15.F) :
    Seg15.relationLc1123 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY203 rho + rho 17563 := by
  simp only [Seg15.relationLc1123, Seg15.relationLc1123Part0, Seg15.relationLc1123Part1, Seg15.relationLc1123Part2, Seg15.relationLc1123Part3, Seg15.relationLc1123Part4, Seg15.relationLc1123Part5, Seg15.relationLc1123Part6]
  rw [seg15AccY203_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
