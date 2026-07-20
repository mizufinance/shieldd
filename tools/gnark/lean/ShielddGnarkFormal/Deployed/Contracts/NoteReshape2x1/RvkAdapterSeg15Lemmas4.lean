import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc767 (rho : Nat -> Seg15.F) :
    Seg15.relationLc767 rho = seg15AccX153 rho + seg15AccY153 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16130 + 1 := by
  simp only [Seg15.relationLc767, Seg15.relationLc767Part0, Seg15.relationLc767Part1, Seg15.relationLc767Part2, Seg15.relationLc767Part3, Seg15.relationLc767Part4, Seg15.relationLc767Part5, Seg15.relationLc767Part6, Seg15.relationLc767Part7, Seg15.relationLc767Part8, Seg15.relationLc767Part9]
  rw [seg15AccX153_sum, seg15AccY153_sum]
  ring

theorem seg15_lc768 (rho : Nat -> Seg15.F) :
    Seg15.relationLc768 rho = 2704772103181543561407909387543324526527234792527620381796325773278665770442*seg15AccX153 rho + 117308203899452786713752371936445821647930783023531061251907751794377827098*rho 16130 := by
  simp only [Seg15.relationLc768, Seg15.relationLc768Part0, Seg15.relationLc768Part1, Seg15.relationLc768Part2, Seg15.relationLc768Part3, Seg15.relationLc768Part4]
  rw [seg15AccX153_sum]
  ring

theorem seg15_lc769 (rho : Nat -> Seg15.F) :
    Seg15.relationLc769 rho = 8364593084925268505726894091365521251914098379187615535723699992665120113797*seg15AccY153 rho + 8364593084925268505726894091365521251914098379187615535723699992665120113797 + 1954415939981024927509846675227759571603074536204173585015379072837175217176*rho 16130 := by
  simp only [Seg15.relationLc769, Seg15.relationLc769Part0, Seg15.relationLc769Part1, Seg15.relationLc769Part2, Seg15.relationLc769Part3, Seg15.relationLc769Part4]
  rw [seg15AccY153_sum]
  ring

theorem seg15_lc770 (rho : Nat -> Seg15.F) :
    Seg15.relationLc770 rho = 67981414792936919478113110863389752161386566976572377441986735754815123306*seg15AccX153 rho + 8364593084925268505726894091365521251914098379187615535723699992665120113797*seg15AccY153 rho + 8364593084925268505726894091365521251914098379187615535723699992665120113797 + 4215815100355553602122231027378109650949234911219950204631683532813665932903*rho 16130 := by
  simp only [Seg15.relationLc770, Seg15.relationLc770Part0, Seg15.relationLc770Part1, Seg15.relationLc770Part2, Seg15.relationLc770Part3, Seg15.relationLc770Part4, Seg15.relationLc770Part5, Seg15.relationLc770Part6, Seg15.relationLc770Part7, Seg15.relationLc770Part8, Seg15.relationLc770Part9]
  rw [seg15AccX153_sum, seg15AccY153_sum]
  ring

theorem seg15_lc771 (rho : Nat -> Seg15.F) :
    Seg15.relationLc771 rho = 8376480334635433504770711827918156779214512768177491450493246720162594115735*seg15AccX153 rho + 79868664503101918521930847416025279461800955966448292211533463252289125244*seg15AccY153 rho + 79868664503101918521930847416025279461800955966448292211533463252289125244 + 4228646649072816822126593911403436880426664423934113623303549923103743306138*rho 16130 := by
  simp only [Seg15.relationLc771, Seg15.relationLc771Part0, Seg15.relationLc771Part1, Seg15.relationLc771Part2, Seg15.relationLc771Part3, Seg15.relationLc771Part4, Seg15.relationLc771Part5, Seg15.relationLc771Part6, Seg15.relationLc771Part7, Seg15.relationLc771Part8, Seg15.relationLc771Part9]
  rw [seg15AccX153_sum, seg15AccY153_sum]
  ring

theorem seg15_lc772 (rho : Nat -> Seg15.F) :
    Seg15.relationLc772 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16130 + (-1)*seg15AccX153 rho + rho 17161 := by
  simp only [Seg15.relationLc772, Seg15.relationLc772Part0, Seg15.relationLc772Part1, Seg15.relationLc772Part2, Seg15.relationLc772Part3, Seg15.relationLc772Part4]
  rw [seg15AccX153_sum]
  ring

theorem seg15_lc773 (rho : Nat -> Seg15.F) :
    Seg15.relationLc773 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16130 + (-1)*seg15AccY153 rho + rho 17163 := by
  simp only [Seg15.relationLc773, Seg15.relationLc773Part0, Seg15.relationLc773Part1, Seg15.relationLc773Part2, Seg15.relationLc773Part3, Seg15.relationLc773Part4]
  rw [seg15AccY153_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
