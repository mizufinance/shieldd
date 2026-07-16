import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg15_lc837 (rho : Nat -> Seg15.F) :
    Seg15.relationLc837 rho = seg15AccX163 rho + seg15AccY163 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc837, Seg15.relationLc837Part0, Seg15.relationLc837Part1, Seg15.relationLc837Part2, Seg15.relationLc837Part3, Seg15.relationLc837Part4, Seg15.relationLc837Part5, Seg15.relationLc837Part6, Seg15.relationLc837Part7, Seg15.relationLc837Part8, Seg15.relationLc837Part9, Seg15.relationLc837Part10]
  rw [seg15AccX163_sum, seg15AccY163_sum]
  ring

theorem seg15_lc838 (rho : Nat -> Seg15.F) :
    Seg15.relationLc838 rho = 7591915007285954813786279363948102390898140889293800745326506857669687311535*seg15AccX163 rho + 752676109079240181974540142102560196399170356736197851325088244375129965020*rho 16136 := by
  simp only [Seg15.relationLc838, Seg15.relationLc838Part0, Seg15.relationLc838Part1, Seg15.relationLc838Part2, Seg15.relationLc838Part3, Seg15.relationLc838Part4, Seg15.relationLc838Part5]
  rw [seg15AccX163_sum]
  ring

theorem seg15_lc839 (rho : Nat -> Seg15.F) :
    Seg15.relationLc839 rho = 7629453598826059175105967161823358156342299852823544371076408212864685795511*seg15AccY163 rho + 7629453598826059175105967161823358156342299852823544371076408212864685795511 + 6963378901194524910437421336346278378990984930436753394335706017205077796909*rho 16136 := by
  simp only [Seg15.relationLc839, Seg15.relationLc839Part0, Seg15.relationLc839Part1, Seg15.relationLc839Part2, Seg15.relationLc839Part3, Seg15.relationLc839Part4, Seg15.relationLc839Part5]
  rw [seg15AccY163_sum]
  ring

theorem seg15_lc840 (rho : Nat -> Seg15.F) :
    Seg15.relationLc840 rho = 8256897537593268393783702854546790800908284964448607839999361437332598202648*seg15AccX163 rho + 7629453598826059175105967161823358156342299852823544371076408212864685795511*seg15AccY163 rho + 7629453598826059175105967161823358156342299852823544371076408212864685795511 + 6876975181193465578107153533314128302103777479581725330510923776593007437278*rho 16136 := by
  simp only [Seg15.relationLc840, Seg15.relationLc840Part0, Seg15.relationLc840Part1, Seg15.relationLc840Part2, Seg15.relationLc840Part3, Seg15.relationLc840Part4, Seg15.relationLc840Part5, Seg15.relationLc840Part6, Seg15.relationLc840Part7, Seg15.relationLc840Part8, Seg15.relationLc840Part9, Seg15.relationLc840Part10]
  rw [seg15AccX163_sum, seg15AccY163_sum]
  ring

theorem seg15_lc841 (rho : Nat -> Seg15.F) :
    Seg15.relationLc841 rho = 187564211835102030465122084234755730467614370705455987935872018584811036393*seg15AccX163 rho + 815008150602311249142857776958188375033599482330519456858825243052723443530*seg15AccY163 rho + 815008150602311249142857776958188375033599482330519456858825243052723443530 + 1567486568234904846141671405467418229272121855572338497424309679324401801763*rho 16136 := by
  simp only [Seg15.relationLc841, Seg15.relationLc841Part0, Seg15.relationLc841Part1, Seg15.relationLc841Part2, Seg15.relationLc841Part3, Seg15.relationLc841Part4, Seg15.relationLc841Part5, Seg15.relationLc841Part6, Seg15.relationLc841Part7, Seg15.relationLc841Part8, Seg15.relationLc841Part9, Seg15.relationLc841Part10]
  rw [seg15AccX163_sum, seg15AccY163_sum]
  ring

theorem seg15_lc842 (rho : Nat -> Seg15.F) :
    Seg15.relationLc842 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX163 rho + rho 17247 := by
  simp only [Seg15.relationLc842, Seg15.relationLc842Part0, Seg15.relationLc842Part1, Seg15.relationLc842Part2, Seg15.relationLc842Part3, Seg15.relationLc842Part4, Seg15.relationLc842Part5]
  rw [seg15AccX163_sum]
  ring

theorem seg15_lc843 (rho : Nat -> Seg15.F) :
    Seg15.relationLc843 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY163 rho + rho 17249 := by
  simp only [Seg15.relationLc843, Seg15.relationLc843Part0, Seg15.relationLc843Part1, Seg15.relationLc843Part2, Seg15.relationLc843Part3, Seg15.relationLc843Part4, Seg15.relationLc843Part5]
  rw [seg15AccY163_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
