import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option linter.unusedVariables false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace Shieldd.GnarkFormal.Extracted.ConservationNetBalanceCommitment

def Order : ℕ := 0x12ab655e9a2ca55660b44d1e5c37b00159aa76fed00000010a11800000000001
variable [Fact (Nat.Prime Order)]
abbrev F := ZMod Order
abbrev Gates := GatesGnark9 Order

def scalarMulStep (Bit: F) (AccX: F) (AccY: F) (CurX: F) (CurY: F) (k: List.Vector F 4 -> Prop): Prop :=
    ∃gate_0, gate_0 = Gates.mul AccX (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_1, gate_1 = Gates.sub AccY gate_0 ∧
    ∃gate_2, gate_2 = Gates.add CurX CurY ∧
    ∃gate_3, gate_3 = Gates.mul gate_1 gate_2 ∧
    ∃gate_4, gate_4 = Gates.mul CurY AccX ∧
    ∃gate_5, gate_5 = Gates.mul CurX AccY ∧
    ∃gate_6, gate_6 = Gates.mul (3021:F) gate_4 ∧
    ∃gate_7, gate_7 = Gates.mul gate_6 gate_5 ∧
    ∃gate_8, gate_8 = Gates.add gate_4 gate_5 ∧
    ∃gate_9, gate_9 = Gates.add (1:F) gate_7 ∧
    ∃gate_10, gate_10 = Gates.mul (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) gate_4 ∧
    ∃gate_11, gate_11 = Gates.sub gate_10 gate_5 ∧
    ∃gate_12, gate_12 = Gates.add gate_11 gate_3 ∧
    ∃gate_13, gate_13 = Gates.sub (1:F) gate_7 ∧
    ∃gate_14, Gates.div_unchecked gate_8 gate_9 gate_14 ∧
    ∃gate_15, Gates.div_unchecked gate_12 gate_13 gate_15 ∧
    ∃gate_16, Gates.select Bit gate_14 AccX gate_16 ∧
    ∃gate_17, Gates.select Bit gate_15 AccY gate_17 ∧
    ∃gate_18, gate_18 = Gates.mul CurX CurY ∧
    ∃gate_19, gate_19 = Gates.mul CurX CurX ∧
    ∃gate_20, gate_20 = Gates.mul CurY CurY ∧
    ∃gate_21, gate_21 = Gates.mul (2:F) gate_18 ∧
    ∃gate_22, gate_22 = Gates.mul gate_19 (8444461749428370424248824938781546531375899335154063827935233455917409239040:F) ∧
    ∃gate_23, gate_23 = Gates.sub gate_20 gate_22 ∧
    ∃gate_24, gate_24 = Gates.add gate_20 gate_22 ∧
    ∃gate_25, gate_25 = Gates.sub (2:F) gate_24 ∧
    ∃gate_26, Gates.div_unchecked gate_21 gate_24 gate_26 ∧
    ∃gate_27, Gates.div_unchecked gate_23 gate_25 gate_27 ∧
    k vec![gate_16, gate_17, gate_26, gate_27]

def scalarMulStep_ladder {n: Nat} (bits: List.Vector F n) (k: List.Vector F 4 -> Prop) : Nat -> Nat -> List.Vector F 4 -> Prop
  | 0, _, st => k st
  | Nat.succ fuel, i, st => scalarMulStep bits[i]! st[0] st[1] st[2] st[3] (fun st' => scalarMulStep_ladder bits k fuel (i+1) st')

def circuit (Input0Amount: F) (Input1Amount: F) (OutputAmount: F) (BalanceBlinding: F) (OutX: F) (OutY: F): Prop :=
    ∃_ignored_, Gates.to_binary Input0Amount 128 _ignored_ ∧
    ∃gate_1, gate_1 = Gates.add (0:F) Input0Amount ∧
    ∃_ignored_, Gates.to_binary Input1Amount 128 _ignored_ ∧
    ∃gate_3, gate_3 = Gates.add gate_1 Input1Amount ∧
    ∃_ignored_, Gates.to_binary OutputAmount 128 _ignored_ ∧
    ∃gate_5, gate_5 = Gates.add (0:F) OutputAmount ∧
    Gates.eq gate_3 gate_5 ∧
    ∃gate_7, Gates.to_binary BalanceBlinding 251 gate_7 ∧
    scalarMulStep_ladder gate_7 (fun gate_258 =>
    Gates.eq gate_258[0] OutX ∧
    Gates.eq gate_258[1] OutY ∧
    True
    ) 251 0 vec![(0:F), (1:F), (4661681602708190761543544705274244814260880986867766715334030151044279151219:F), (4337336842509898676347982752646772244181661588533917621717979456142867120378:F)]


end Shieldd.GnarkFormal.Extracted.ConservationNetBalanceCommitment
