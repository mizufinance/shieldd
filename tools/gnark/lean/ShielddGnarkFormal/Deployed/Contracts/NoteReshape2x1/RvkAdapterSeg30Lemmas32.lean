import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg30_lc963 (rho : Nat -> Seg30.F) :
    Seg30.relationLc963 rho = seg30AccX181 rho + seg30AccY181 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc963, Seg30.relationLc963Part0, Seg30.relationLc963Part1, Seg30.relationLc963Part2, Seg30.relationLc963Part3, Seg30.relationLc963Part4, Seg30.relationLc963Part5, Seg30.relationLc963Part6, Seg30.relationLc963Part7, Seg30.relationLc963Part8, Seg30.relationLc963Part9, Seg30.relationLc963Part10, Seg30.relationLc963Part11]
  rw [seg30AccX181_sum, seg30AccY181_sum]
  ring

theorem seg30_lc964 (rho : Nat -> Seg30.F) :
    Seg30.relationLc964 rho = 7769110293037107941467182288707472071076028180052319464384558761333159830637*seg30AccX181 rho + 3790572865663907955225786599179157900189638421123613224937493625763778412517*rho 28317 := by
  simp only [Seg30.relationLc964, Seg30.relationLc964Part0, Seg30.relationLc964Part1, Seg30.relationLc964Part2, Seg30.relationLc964Part3, Seg30.relationLc964Part4, Seg30.relationLc964Part5]
  rw [seg30AccX181_sum]
  ring

theorem seg30_lc965 (rho : Nat -> Seg30.F) :
    Seg30.relationLc965 rho = 6327076429849916430866448681160993076458441274126141917530053275348287671011*seg30AccY181 rho + 6327076429849916430866448681160993076458441274126141917530053275348287671011 + 6218817503968349421592769403300268152782718674147044423910527527555573304732*rho 28317 := by
  simp only [Seg30.relationLc965, Seg30.relationLc965Part0, Seg30.relationLc965Part1, Seg30.relationLc965Part2, Seg30.relationLc965Part3, Seg30.relationLc965Part4, Seg30.relationLc965Part5]
  rw [seg30AccY181_sum]
  ring

theorem seg30_lc966 (rho : Nat -> Seg30.F) :
    Seg30.relationLc966 rho = 5819494872841269765244379966862994307800172970749969925652964376208362060998*seg30AccX181 rho + 6327076429849916430866448681160993076458441274126141917530053275348287671011*seg30AccY181 rho + 6327076429849916430866448681160993076458441274126141917530053275348287671011 + 1389873667441848201749424912199528911366841675562106098373570917757652289621*rho 28317 := by
  simp only [Seg30.relationLc966, Seg30.relationLc966Part0, Seg30.relationLc966Part1, Seg30.relationLc966Part2, Seg30.relationLc966Part3, Seg30.relationLc966Part4, Seg30.relationLc966Part5, Seg30.relationLc966Part6, Seg30.relationLc966Part7, Seg30.relationLc966Part8, Seg30.relationLc966Part9, Seg30.relationLc966Part10, Seg30.relationLc966Part11]
  rw [seg30AccX181_sum, seg30AccY181_sum]
  ring

theorem seg30_lc967 (rho : Nat -> Seg30.F) :
    Seg30.relationLc967 rho = 2624966876587100659004444971918552223575726364404093902282269079709047178043*seg30AccX181 rho + 2117385319578453993382376257620553454917458061027921910405180180569121568030*seg30AccY181 rho + 2117385319578453993382376257620553454917458061027921910405180180569121568030 + 7054588081986522222499400026582017620009057659591957729561662538159756949420*rho 28317 := by
  simp only [Seg30.relationLc967, Seg30.relationLc967Part0, Seg30.relationLc967Part1, Seg30.relationLc967Part2, Seg30.relationLc967Part3, Seg30.relationLc967Part4, Seg30.relationLc967Part5, Seg30.relationLc967Part6, Seg30.relationLc967Part7, Seg30.relationLc967Part8, Seg30.relationLc967Part9, Seg30.relationLc967Part10, Seg30.relationLc967Part11]
  rw [seg30AccX181_sum, seg30AccY181_sum]
  ring

theorem seg30_lc968 (rho : Nat -> Seg30.F) :
    Seg30.relationLc968 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX181 rho + rho 29572 := by
  simp only [Seg30.relationLc968, Seg30.relationLc968Part0, Seg30.relationLc968Part1, Seg30.relationLc968Part2, Seg30.relationLc968Part3, Seg30.relationLc968Part4, Seg30.relationLc968Part5]
  rw [seg30AccX181_sum]
  ring

theorem seg30_lc969 (rho : Nat -> Seg30.F) :
    Seg30.relationLc969 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY181 rho + rho 29574 := by
  simp only [Seg30.relationLc969, Seg30.relationLc969Part0, Seg30.relationLc969Part1, Seg30.relationLc969Part2, Seg30.relationLc969Part3, Seg30.relationLc969Part4, Seg30.relationLc969Part5]
  rw [seg30AccY181_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
