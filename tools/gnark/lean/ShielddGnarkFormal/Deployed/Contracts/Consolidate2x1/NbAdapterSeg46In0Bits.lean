import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg46Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg46In0Bits_toBinary (rho : Nat -> Seg46.F) (h : Seg46.relation rho) :
    GatesDef.to_binary (rho 15) 128 (seg46In0Bits rho) := by
  unfold Seg46.relation at h

  rcases h with ⟨

    p0, p1, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg46.relationPart0 at p0

  rcases p0 with ⟨r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68, r69, r70, r71, r72, r73, r74, r75, r76, r77, r78, r79⟩

  unfold Seg46.relationPart1 at p1

  rcases p1 with ⟨r80, r81, r82, r83, r84, r85, r86, r87, r88, r89, r90, r91, r92, r93, r94, r95, r96, r97, r98, r99, r100, r101, r102, r103, r104, r105, r106, r107, r108, r109, r110, r111, r112, r113, r114, r115, r116, r117, r118, r119, r120, r121, r122, r123, r124, r125, r126, r127, r128, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg46.relationRow0 at r0

  unfold Seg46.relationRow1 at r1

  unfold Seg46.relationRow2 at r2

  unfold Seg46.relationRow3 at r3

  unfold Seg46.relationRow4 at r4

  unfold Seg46.relationRow5 at r5

  unfold Seg46.relationRow6 at r6

  unfold Seg46.relationRow7 at r7

  unfold Seg46.relationRow8 at r8

  unfold Seg46.relationRow9 at r9

  unfold Seg46.relationRow10 at r10

  unfold Seg46.relationRow11 at r11

  unfold Seg46.relationRow12 at r12

  unfold Seg46.relationRow13 at r13

  unfold Seg46.relationRow14 at r14

  unfold Seg46.relationRow15 at r15

  unfold Seg46.relationRow16 at r16

  unfold Seg46.relationRow17 at r17

  unfold Seg46.relationRow18 at r18

  unfold Seg46.relationRow19 at r19

  unfold Seg46.relationRow20 at r20

  unfold Seg46.relationRow21 at r21

  unfold Seg46.relationRow22 at r22

  unfold Seg46.relationRow23 at r23

  unfold Seg46.relationRow24 at r24

  unfold Seg46.relationRow25 at r25

  unfold Seg46.relationRow26 at r26

  unfold Seg46.relationRow27 at r27

  unfold Seg46.relationRow28 at r28

  unfold Seg46.relationRow29 at r29

  unfold Seg46.relationRow30 at r30

  unfold Seg46.relationRow31 at r31

  unfold Seg46.relationRow32 at r32

  unfold Seg46.relationRow33 at r33

  unfold Seg46.relationRow34 at r34

  unfold Seg46.relationRow35 at r35

  unfold Seg46.relationRow36 at r36

  unfold Seg46.relationRow37 at r37

  unfold Seg46.relationRow38 at r38

  unfold Seg46.relationRow39 at r39

  unfold Seg46.relationRow40 at r40

  unfold Seg46.relationRow41 at r41

  unfold Seg46.relationRow42 at r42

  unfold Seg46.relationRow43 at r43

  unfold Seg46.relationRow44 at r44

  unfold Seg46.relationRow45 at r45

  unfold Seg46.relationRow46 at r46

  unfold Seg46.relationRow47 at r47

  unfold Seg46.relationRow48 at r48

  unfold Seg46.relationRow49 at r49

  unfold Seg46.relationRow50 at r50

  unfold Seg46.relationRow51 at r51

  unfold Seg46.relationRow52 at r52

  unfold Seg46.relationRow53 at r53

  unfold Seg46.relationRow54 at r54

  unfold Seg46.relationRow55 at r55

  unfold Seg46.relationRow56 at r56

  unfold Seg46.relationRow57 at r57

  unfold Seg46.relationRow58 at r58

  unfold Seg46.relationRow59 at r59

  unfold Seg46.relationRow60 at r60

  unfold Seg46.relationRow61 at r61

  unfold Seg46.relationRow62 at r62

  unfold Seg46.relationRow63 at r63

  unfold Seg46.relationRow64 at r64

  unfold Seg46.relationRow65 at r65

  unfold Seg46.relationRow66 at r66

  unfold Seg46.relationRow67 at r67

  unfold Seg46.relationRow68 at r68

  unfold Seg46.relationRow69 at r69

  unfold Seg46.relationRow70 at r70

  unfold Seg46.relationRow71 at r71

  unfold Seg46.relationRow72 at r72

  unfold Seg46.relationRow73 at r73

  unfold Seg46.relationRow74 at r74

  unfold Seg46.relationRow75 at r75

  unfold Seg46.relationRow76 at r76

  unfold Seg46.relationRow77 at r77

  unfold Seg46.relationRow78 at r78

  unfold Seg46.relationRow79 at r79

  unfold Seg46.relationRow80 at r80

  unfold Seg46.relationRow81 at r81

  unfold Seg46.relationRow82 at r82

  unfold Seg46.relationRow83 at r83

  unfold Seg46.relationRow84 at r84

  unfold Seg46.relationRow85 at r85

  unfold Seg46.relationRow86 at r86

  unfold Seg46.relationRow87 at r87

  unfold Seg46.relationRow88 at r88

  unfold Seg46.relationRow89 at r89

  unfold Seg46.relationRow90 at r90

  unfold Seg46.relationRow91 at r91

  unfold Seg46.relationRow92 at r92

  unfold Seg46.relationRow93 at r93

  unfold Seg46.relationRow94 at r94

  unfold Seg46.relationRow95 at r95

  unfold Seg46.relationRow96 at r96

  unfold Seg46.relationRow97 at r97

  unfold Seg46.relationRow98 at r98

  unfold Seg46.relationRow99 at r99

  unfold Seg46.relationRow100 at r100

  unfold Seg46.relationRow101 at r101

  unfold Seg46.relationRow102 at r102

  unfold Seg46.relationRow103 at r103

  unfold Seg46.relationRow104 at r104

  unfold Seg46.relationRow105 at r105

  unfold Seg46.relationRow106 at r106

  unfold Seg46.relationRow107 at r107

  unfold Seg46.relationRow108 at r108

  unfold Seg46.relationRow109 at r109

  unfold Seg46.relationRow110 at r110

  unfold Seg46.relationRow111 at r111

  unfold Seg46.relationRow112 at r112

  unfold Seg46.relationRow113 at r113

  unfold Seg46.relationRow114 at r114

  unfold Seg46.relationRow115 at r115

  unfold Seg46.relationRow116 at r116

  unfold Seg46.relationRow117 at r117

  unfold Seg46.relationRow118 at r118

  unfold Seg46.relationRow119 at r119

  unfold Seg46.relationRow120 at r120

  unfold Seg46.relationRow121 at r121

  unfold Seg46.relationRow122 at r122

  unfold Seg46.relationRow123 at r123

  unfold Seg46.relationRow124 at r124

  unfold Seg46.relationRow125 at r125

  unfold Seg46.relationRow126 at r126

  unfold Seg46.relationRow127 at r127

  have hrecover := recover_ofFn_eq_recBits rho 31277 128

  have hacc : powSumAcc rho 0 1 31277 128 = rho 15 := by

    unfold Seg46.relationRow128 Seg46.relationLc0 Seg46.relationLc0Part0 Seg46.relationLc0Part1 Seg46.relationLc0Part2 Seg46.relationLc0Part3 at r128

    simp only [powSumAcc]

    linear_combination r128

  have hrec : recover_binary_zmod' (seg46In0Bits rho) = rho 15 := by

    simp only [seg46In0Bits]

    rw [hrecover]

    rw [powSumAcc_eq] at hacc

    simpa using hacc

  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 15) (seg46In0Bits rho)
  · intro i hi
    have key := seg46In0Bits_get rho i hi
    have hgoal : rho (31277 + i) * (1 - rho (31277 + i)) = 0 := by
      interval_cases i
      · linear_combination r0
      · linear_combination r1
      · linear_combination r2
      · linear_combination r3
      · linear_combination r4
      · linear_combination r5
      · linear_combination r6
      · linear_combination r7
      · linear_combination r8
      · linear_combination r9
      · linear_combination r10
      · linear_combination r11
      · linear_combination r12
      · linear_combination r13
      · linear_combination r14
      · linear_combination r15
      · linear_combination r16
      · linear_combination r17
      · linear_combination r18
      · linear_combination r19
      · linear_combination r20
      · linear_combination r21
      · linear_combination r22
      · linear_combination r23
      · linear_combination r24
      · linear_combination r25
      · linear_combination r26
      · linear_combination r27
      · linear_combination r28
      · linear_combination r29
      · linear_combination r30
      · linear_combination r31
      · linear_combination r32
      · linear_combination r33
      · linear_combination r34
      · linear_combination r35
      · linear_combination r36
      · linear_combination r37
      · linear_combination r38
      · linear_combination r39
      · linear_combination r40
      · linear_combination r41
      · linear_combination r42
      · linear_combination r43
      · linear_combination r44
      · linear_combination r45
      · linear_combination r46
      · linear_combination r47
      · linear_combination r48
      · linear_combination r49
      · linear_combination r50
      · linear_combination r51
      · linear_combination r52
      · linear_combination r53
      · linear_combination r54
      · linear_combination r55
      · linear_combination r56
      · linear_combination r57
      · linear_combination r58
      · linear_combination r59
      · linear_combination r60
      · linear_combination r61
      · linear_combination r62
      · linear_combination r63
      · linear_combination r64
      · linear_combination r65
      · linear_combination r66
      · linear_combination r67
      · linear_combination r68
      · linear_combination r69
      · linear_combination r70
      · linear_combination r71
      · linear_combination r72
      · linear_combination r73
      · linear_combination r74
      · linear_combination r75
      · linear_combination r76
      · linear_combination r77
      · linear_combination r78
      · linear_combination r79
      · linear_combination r80
      · linear_combination r81
      · linear_combination r82
      · linear_combination r83
      · linear_combination r84
      · linear_combination r85
      · linear_combination r86
      · linear_combination r87
      · linear_combination r88
      · linear_combination r89
      · linear_combination r90
      · linear_combination r91
      · linear_combination r92
      · linear_combination r93
      · linear_combination r94
      · linear_combination r95
      · linear_combination r96
      · linear_combination r97
      · linear_combination r98
      · linear_combination r99
      · linear_combination r100
      · linear_combination r101
      · linear_combination r102
      · linear_combination r103
      · linear_combination r104
      · linear_combination r105
      · linear_combination r106
      · linear_combination r107
      · linear_combination r108
      · linear_combination r109
      · linear_combination r110
      · linear_combination r111
      · linear_combination r112
      · linear_combination r113
      · linear_combination r114
      · linear_combination r115
      · linear_combination r116
      · linear_combination r117
      · linear_combination r118
      · linear_combination r119
      · linear_combination r120
      · linear_combination r121
      · linear_combination r122
      · linear_combination r123
      · linear_combination r124
      · linear_combination r125
      · linear_combination r126
      · linear_combination r127
    have key' : (seg46In0Bits rho)[i] = rho (31277 + i) := by
      rw [← getElem!_pos (seg46In0Bits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
