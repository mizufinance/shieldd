import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg30Acc

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg30_lc1033 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1033 rho = seg30AccX191 rho + seg30AccY191 rho + 2575455990000301868218351106734072388633147984547723962197285395701784939873*rho 28317 + 1 := by
  simp only [Seg30.relationLc1033, Seg30.relationLc1033Part0, Seg30.relationLc1033Part1, Seg30.relationLc1033Part2, Seg30.relationLc1033Part3, Seg30.relationLc1033Part4, Seg30.relationLc1033Part5, Seg30.relationLc1033Part6, Seg30.relationLc1033Part7, Seg30.relationLc1033Part8, Seg30.relationLc1033Part9, Seg30.relationLc1033Part10, Seg30.relationLc1033Part11]
  rw [seg30AccX191_sum, seg30AccY191_sum]
  ring

theorem seg30_lc1034 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1034 rho = 81458509301691225636504616085288741999117689499860004584895221008205595528*seg30AccX191 rho + 1051624727723807996568357550045837339349544629352932548414659430336634672760*rho 28317 := by
  simp only [Seg30.relationLc1034, Seg30.relationLc1034Part0, Seg30.relationLc1034Part1, Seg30.relationLc1034Part2, Seg30.relationLc1034Part3, Seg30.relationLc1034Part4, Seg30.relationLc1034Part5]
  rw [seg30AccX191_sum]
  ring

theorem seg30_lc1035 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1035 rho = 2369092448024510723063068044567708238164786236827597410203581572440825732158*seg30AccY191 rho + 2369092448024510723063068044567708238164786236827597410203581572440825732158 + 3661380297082212951476710236660966730558731200824120496702917408345797680542*rho 28317 := by
  simp only [Seg30.relationLc1035, Seg30.relationLc1035Part0, Seg30.relationLc1035Part1, Seg30.relationLc1035Part2, Seg30.relationLc1035Part3, Seg30.relationLc1035Part4, Seg30.relationLc1035Part5, Seg30.relationLc1035Part6]
  rw [seg30AccY191_sum]
  ring

theorem seg30_lc1036 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1036 rho = 6577259170775987189501198803564734947722439673388617029836540621315680948381*seg30AccX191 rho + 2369092448024510723063068044567708238164786236827597410203581572440825732158*seg30AccY191 rho + 2369092448024510723063068044567708238164786236827597410203581572440825732158 + 8424840888195641290078685097049513942344193634366615596123656391567777812286*rho 28317 := by
  simp only [Seg30.relationLc1036, Seg30.relationLc1036Part0, Seg30.relationLc1036Part1, Seg30.relationLc1036Part2, Seg30.relationLc1036Part3, Seg30.relationLc1036Part4, Seg30.relationLc1036Part5, Seg30.relationLc1036Part6, Seg30.relationLc1036Part7, Seg30.relationLc1036Part8, Seg30.relationLc1036Part9, Seg30.relationLc1036Part10, Seg30.relationLc1036Part11]
  rw [seg30AccX191_sum, seg30AccY191_sum]
  ring

theorem seg30_lc1037 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1037 rho = 1867202578652383234747626135216811583653459661765446798098692834601728290660*seg30AccX191 rho + 6075369301403859701185756894213838293211113098326466417731651883476583506883*seg30AccY191 rho + 6075369301403859701185756894213838293211113098326466417731651883476583506883 + 19620861232729134170139841732032589031705700787448231811577064349631426755*rho 28317 := by
  simp only [Seg30.relationLc1037, Seg30.relationLc1037Part0, Seg30.relationLc1037Part1, Seg30.relationLc1037Part2, Seg30.relationLc1037Part3, Seg30.relationLc1037Part4, Seg30.relationLc1037Part5, Seg30.relationLc1037Part6, Seg30.relationLc1037Part7, Seg30.relationLc1037Part8, Seg30.relationLc1037Part9, Seg30.relationLc1037Part10, Seg30.relationLc1037Part11]
  rw [seg30AccX191_sum, seg30AccY191_sum]
  ring

theorem seg30_lc1038 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1038 rho = 3485015960081549698896340450925717616123387027206439040100255077045280003414*rho 28317 + (-1)*seg30AccX191 rho + rho 29652 := by
  simp only [Seg30.relationLc1038, Seg30.relationLc1038Part0, Seg30.relationLc1038Part1, Seg30.relationLc1038Part2, Seg30.relationLc1038Part3, Seg30.relationLc1038Part4, Seg30.relationLc1038Part5, Seg30.relationLc1038Part6]
  rw [seg30AccX191_sum]
  ring

theorem seg30_lc1039 (rho : Nat -> Seg30.F) :
    Seg30.relationLc1039 rho = (-1) + 2383989799346518857134133381121756526619364323399900825637692983170344295754*rho 28317 + (-1)*seg30AccY191 rho + rho 29654 := by
  simp only [Seg30.relationLc1039, Seg30.relationLc1039Part0, Seg30.relationLc1039Part1, Seg30.relationLc1039Part2, Seg30.relationLc1039Part3, Seg30.relationLc1039Part4, Seg30.relationLc1039Part5, Seg30.relationLc1039Part6]
  rw [seg30AccY191_sum]
  ring


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
