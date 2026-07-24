import ShielddGnarkFormal.Extracted.DecafDtkHelpers

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Extracted.DecafDtk

variable [Fact (Nat.Prime Order)]

local instance (priority := 2000) : CommRing F := ZMod.commRing _
local instance (priority := 3000) : Add F := (ZMod.commRing _).toAdd
local instance (priority := 3000) : Mul F := (ZMod.commRing _).toMul
local instance (priority := 3000) : NatCast F := (ZMod.commRing _).toNatCast
local instance (priority := 3000) : Zero F := (ZMod.commRing _).toZero
local instance (priority := 3000) : One F := (ZMod.commRing _).toOne
local instance (priority := 3000) : Neg F := (ZMod.commRing _).toNeg
local instance (priority := 3000) : Sub F := (ZMod.commRing _).toSub
local instance (priority := 3000) : MulOneClass F := (ZMod.commRing _).toMulOneClass
local instance (priority := 3000) : CommSemiring F := (ZMod.commRing _).toCommSemiring
local instance (priority := 3000) : Ring F := (ZMod.commRing _).toRing

def circuit (Nk: F) (AkX: F) (AkY: F) (DivGenX: F) (DivGenY: F) (WasSquare: F) (SqrtRatio: F) (IvkReduced: F) (IvkQuotient: F) (OutX: F) (OutY: F): Prop :=
    ∃gate_0, gate_0 = Gates.mul AkX AkX ∧
    ∃gate_1, gate_1 = Gates.mul AkY AkY ∧
    ∃gate_2, gate_2 = Gates.sub gate_1 gate_0 ∧
    ∃gate_3, gate_3 = Gates.mul (3021:F) gate_0 ∧
    ∃gate_4, gate_4 = Gates.mul gate_3 gate_1 ∧
    ∃gate_5, gate_5 = Gates.add (1:F) gate_4 ∧
    Gates.eq gate_2 gate_5 ∧
    ∃gate_7, gate_7 = Gates.mul DivGenX DivGenX ∧
    ∃gate_8, gate_8 = Gates.mul DivGenY DivGenY ∧
    ∃gate_9, gate_9 = Gates.sub gate_8 gate_7 ∧
    ∃gate_10, gate_10 = Gates.mul (3021:F) gate_7 ∧
    ∃gate_11, gate_11 = Gates.mul gate_10 gate_8 ∧
    ∃gate_12, gate_12 = Gates.add (1:F) gate_11 ∧
    Gates.eq gate_9 gate_12 ∧
    ∃gate_14, gate_14 = Gates.mul AkX AkX ∧
    ∃gate_15, gate_15 = Gates.mul AkY AkY ∧
    ∃gate_16, gate_16 = Gates.sub gate_15 gate_14 ∧
    ∃gate_17, gate_17 = Gates.mul (3021:F) gate_14 ∧
    ∃gate_18, gate_18 = Gates.mul gate_17 gate_15 ∧
    ∃gate_19, gate_19 = Gates.add (1:F) gate_18 ∧
    Gates.eq gate_16 gate_19 ∧
    ∃gate_21, gate_21 = Gates.mul AkX AkY ∧
    ∃gate_22, gate_22 = Gates.add AkX gate_21 ∧
    ∃gate_23, gate_23 = Gates.sub AkX gate_21 ∧
    ∃gate_24, gate_24 = Gates.mul gate_22 gate_23 ∧
    ∃gate_25, gate_25 = Gates.mul gate_24 (8444461749428370424248824938781546531375899335154063827935233455917409236019:F) ∧
    ∃gate_26, gate_26 = Gates.mul gate_25 gate_14 ∧
    Gates.is_bool WasSquare ∧
    ∃gate_28, Gates.is_zero gate_26 gate_28 ∧
    ∃gate_29, Gates.select gate_28 (1:F) gate_26 gate_29 ∧
    ∃gate_30, Gates.inv gate_29 gate_30 ∧
    ∃gate_31, gate_31 = Gates.mul SqrtRatio SqrtRatio ∧
    ∃gate_32, gate_32 = Gates.mul WasSquare gate_28 ∧
    Gates.eq gate_32 (0:F) ∧
    ∃gate_34, gate_34 = Gates.sub (1:F) WasSquare ∧
    ∃gate_35, gate_35 = Gates.sub (1:F) gate_28 ∧
    ∃gate_36, Gates.and gate_34 gate_28 gate_36 ∧
    ∃gate_37, Gates.and gate_34 gate_35 gate_37 ∧
    ∃gate_38, gate_38 = Gates.sub gate_31 gate_30 ∧
    ∃gate_39, gate_39 = Gates.mul WasSquare gate_38 ∧
    Gates.eq gate_39 (0:F) ∧
    ∃gate_41, gate_41 = Gates.mul gate_36 gate_31 ∧
    Gates.eq gate_41 (0:F) ∧
    ∃gate_43, gate_43 = Gates.mul (2841681278031794617739547238867782961338435681360110683443920362658525667816:F) gate_30 ∧
    ∃gate_44, gate_44 = Gates.sub gate_31 gate_43 ∧
    ∃gate_45, gate_45 = Gates.mul gate_37 gate_44 ∧
    Gates.eq gate_45 (0:F) ∧
    ∃gate_47, gate_47 = Gates.add WasSquare gate_36 ∧
    ∃gate_48, gate_48 = Gates.add gate_47 gate_37 ∧
    Gates.eq gate_48 (1:F) ∧
    ∃gate_50, gate_50 = Gates.mul SqrtRatio gate_24 ∧
    canonicalFqBitsGadget gate_50 fun gate_51 =>
    ∃gate_52, gate_52 = Gates.sub (1:F) gate_51[0] ∧
    ∃gate_53, gate_53 = Gates.neg gate_50 ∧
    ∃gate_54, Gates.select gate_52 gate_50 gate_53 gate_54 ∧
    ∃gate_55, gate_55 = Gates.sub gate_54 gate_21 ∧
    ∃gate_56, gate_56 = Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409236019:F) SqrtRatio ∧
    ∃gate_57, gate_57 = Gates.mul gate_56 gate_55 ∧
    ∃gate_58, gate_58 = Gates.mul gate_57 AkX ∧
    canonicalFqBitsGadget gate_58 fun gate_59 =>
    ∃gate_60, gate_60 = Gates.sub (1:F) gate_59[0] ∧
    ∃gate_61, gate_61 = Gates.neg gate_58 ∧
    ∃gate_62, Gates.select gate_60 gate_58 gate_61 gate_62 ∧
    poseidonPerm2 (9361307723838134966014044876631201920149619:F) Nk gate_62 fun gate_63 =>
    ∃gate_64, gate_64 = Gates.mul (2111115437357092606062206234695386632838870926408408195193685246394721360383:F) IvkQuotient ∧
    ∃gate_65, gate_65 = Gates.add gate_64 IvkReduced ∧
    Gates.eq gate_63 gate_65 ∧
    ∃gate_67, gate_67 = Gates.sub IvkQuotient (1:F) ∧
    ∃gate_68, gate_68 = Gates.mul IvkQuotient gate_67 ∧
    ∃gate_69, gate_69 = Gates.sub IvkQuotient (2:F) ∧
    ∃gate_70, gate_70 = Gates.mul gate_68 gate_69 ∧
    ∃gate_71, gate_71 = Gates.sub IvkQuotient (3:F) ∧
    ∃gate_72, gate_72 = Gates.mul gate_70 gate_71 ∧
    ∃gate_73, gate_73 = Gates.sub IvkQuotient (4:F) ∧
    ∃gate_74, gate_74 = Gates.mul gate_72 gate_73 ∧
    Gates.eq gate_74 (0:F) ∧
    ∃gate_76, Gates.to_binary IvkReduced 253 gate_76 ∧
    ivkLessThanRGadget_253 gate_76 fun gate_77 =>
    Gates.eq gate_77 (1:F) ∧
    ivkLessThanQMinus4RGadget_253 gate_76 fun gate_79 =>
    ∃gate_80, gate_80 = Gates.sub IvkQuotient (4:F) ∧
    ∃gate_81, Gates.is_zero gate_80 gate_81 ∧
    ∃gate_82, gate_82 = Gates.sub (1:F) gate_79 ∧
    ∃gate_83, gate_83 = Gates.mul gate_81 gate_82 ∧
    Gates.eq gate_83 (0:F) ∧
    ∃gate_85, Gates.to_binary IvkReduced 251 gate_85 ∧
    scalarMulStep_ladder gate_85 (fun gate_336 =>
    Gates.eq gate_336[0] OutX ∧
    Gates.eq gate_336[1] OutY ∧
    ∃gate_339, gate_339 = Gates.mul OutX OutX ∧
    ∃gate_340, gate_340 = Gates.mul OutY OutY ∧
    ∃gate_341, gate_341 = Gates.sub gate_340 gate_339 ∧
    ∃gate_342, gate_342 = Gates.mul (3021:F) gate_339 ∧
    ∃gate_343, gate_343 = Gates.mul gate_342 gate_340 ∧
    ∃gate_344, gate_344 = Gates.add (1:F) gate_343 ∧
    Gates.eq gate_341 gate_344 ∧
    True
    ) 251 0 vec![(0:F), (1:F), DivGenX, DivGenY]


end Shieldd.GnarkFormal.Extracted.DecafDtk
