import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg15_lc809 (rho : Nat -> Seg15.F) :
    Seg15.relationLc809 rho = seg15AccX159 rho + seg15AccY159 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 16136 + 1 := by
  simp only [Seg15.relationLc809, Seg15.relationLc809Part0, Seg15.relationLc809Part1, Seg15.relationLc809Part2, Seg15.relationLc809Part3, Seg15.relationLc809Part4, Seg15.relationLc809Part5, Seg15.relationLc809Part6, Seg15.relationLc809Part7, Seg15.relationLc809Part8, Seg15.relationLc809Part9]
  rw [seg15AccX159_sum, seg15AccY159_sum]
  ring

theorem seg15_lc810 (rho : Nat -> Seg15.F) :
    Seg15.relationLc810 rho = 2554117060204553738923354347035779623957786394083497906575778181170273448320*seg15AccX159 rho + 6857523571503426729129532174907843361487710801004628696177152740200802257352*rho 16136 := by
  simp only [Seg15.relationLc810, Seg15.relationLc810Part0, Seg15.relationLc810Part1, Seg15.relationLc810Part2, Seg15.relationLc810Part3, Seg15.relationLc810Part4]
  rw [seg15AccX159_sum]
  ring

theorem seg15_lc811 (rho : Nat -> Seg15.F) :
    Seg15.relationLc811 rho = 6254945723771345049588065443119804200491904836722830947939498923764020842791*seg15AccY159 rho + 6254945723771345049588065443119804200491904836722830947939498923764020842791 + 2051115294603479452337593477691185147131746193167319351376117333630030461682*rho 16136 := by
  simp only [Seg15.relationLc811, Seg15.relationLc811Part0, Seg15.relationLc811Part1, Seg15.relationLc811Part2, Seg15.relationLc811Part3, Seg15.relationLc811Part4, Seg15.relationLc811Part5]
  rw [seg15AccY159_sum]
  ring

theorem seg15_lc812 (rho : Nat -> Seg15.F) :
    Seg15.relationLc812 rho = 884145657027331879444406499504139186871480296690753944897090218553813834156*seg15AccX159 rho + 6254945723771345049588065443119804200491904836722830947939498923764020842791*seg15AccY159 rho + 6254945723771345049588065443119804200491904836722830947939498923764020842791 + 1424453139671377526244625560097361868019502022492489913246607113556804286069*rho 16136 := by
  simp only [Seg15.relationLc812, Seg15.relationLc812Part0, Seg15.relationLc812Part1, Seg15.relationLc812Part2, Seg15.relationLc812Part3, Seg15.relationLc812Part4, Seg15.relationLc812Part5, Seg15.relationLc812Part6, Seg15.relationLc812Part7, Seg15.relationLc812Part8, Seg15.relationLc812Part9]
  rw [seg15AccX159_sum, seg15AccY159_sum]
  ring

theorem seg15_lc813 (rho : Nat -> Seg15.F) :
    Seg15.relationLc813 rho = 7560316092401038544804418439277407344504419038463309883038143237363595404885*seg15AccX159 rho + 2189516025657025374660759495661742330883994498431232879995734532153388396250*seg15AccY159 rho + 2189516025657025374660759495661742330883994498431232879995734532153388396250 + 7020008609756992898004199378684184663356397312661573914688626342360604952972*rho 16136 := by
  simp only [Seg15.relationLc813, Seg15.relationLc813Part0, Seg15.relationLc813Part1, Seg15.relationLc813Part2, Seg15.relationLc813Part3, Seg15.relationLc813Part4, Seg15.relationLc813Part5, Seg15.relationLc813Part6, Seg15.relationLc813Part7, Seg15.relationLc813Part8, Seg15.relationLc813Part9]
  rw [seg15AccX159_sum, seg15AccY159_sum]
  ring

theorem seg15_lc814 (rho : Nat -> Seg15.F) :
    Seg15.relationLc814 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 16136 + (-1)*seg15AccX159 rho + rho 17215 := by
  simp only [Seg15.relationLc814, Seg15.relationLc814Part0, Seg15.relationLc814Part1, Seg15.relationLc814Part2, Seg15.relationLc814Part3, Seg15.relationLc814Part4, Seg15.relationLc814Part5]
  rw [seg15AccX159_sum]
  ring

theorem seg15_lc815 (rho : Nat -> Seg15.F) :
    Seg15.relationLc815 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 16136 + (-1)*seg15AccY159 rho + rho 17217 := by
  simp only [Seg15.relationLc815, Seg15.relationLc815Part0, Seg15.relationLc815Part1, Seg15.relationLc815Part2, Seg15.relationLc815Part3, Seg15.relationLc815Part4, Seg15.relationLc815Part5]
  rw [seg15AccY159_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
