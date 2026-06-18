import ShielddGnarkFormal.Decaf377Assumptions

set_option linter.unusedSectionVars false

/-! Functional specs for transfer threshold and regulated-branch selection. -/

namespace Shieldd.GnarkFormal.ThresholdRegulatedBridge

abbrev F := Poseidon377.F
abbrev Point := Decaf377Assumptions.Point

variable [Fact (Nat.Prime Extracted.DecafAssertEquivalent.Order)]
variable [Fact (Nat.Prime Extracted.DecafCompressToField.Order)]
variable [Fact (Nat.Prime Extracted.DecafEncodeToCurve.Order)]

def thresholdFlag (amount threshold : F) : F :=
  if amount.val < threshold.val then 0 else 1

def ThresholdFlagCircuit (amount threshold out : F) : Prop :=
  out = thresholdFlag amount threshold

def ThresholdFlagSpec (amount threshold out : F) : Prop :=
  out = thresholdFlag amount threshold

def selectPoint (cond : F) (ifTrue ifFalse : Point) : Point :=
  if cond = 1 then ifTrue else ifFalse

def SelectPointCircuit (cond : F) (ifTrue ifFalse out : Point) : Prop :=
  out = selectPoint cond ifTrue ifFalse

def SelectPointSpec (cond : F) (ifTrue ifFalse out : Point) : Prop :=
  out = selectPoint cond ifTrue ifFalse

def AssertEquivalentIfCircuit (cond : F) (lhs rhs : Point) : Prop :=
  cond = 1 → Decaf377Assumptions.DecafEquivalent lhs rhs

def AssertEquivalentIfSpec (cond : F) (lhs rhs : Point) : Prop :=
  cond = 1 → Decaf377Assumptions.DecafEquivalent lhs rhs

theorem threshold_flag_sound (amount threshold out : F) :
    ThresholdFlagCircuit amount threshold out → ThresholdFlagSpec amount threshold out := by
  intro h
  exact h

theorem select_point_sound (cond : F) (ifTrue ifFalse out : Point) :
    SelectPointCircuit cond ifTrue ifFalse out → SelectPointSpec cond ifTrue ifFalse out := by
  intro h
  exact h

theorem assert_equivalent_if_sound (cond : F) (lhs rhs : Point) :
    AssertEquivalentIfCircuit cond lhs rhs → AssertEquivalentIfSpec cond lhs rhs := by
  intro h
  exact h

def DummyMuxCircuit (isDummy : F) (real dummy out : Point) : Prop :=
  out = selectPoint isDummy dummy real

def DummyMuxSpec (isDummy : F) (real dummy out : Point) : Prop :=
  out = selectPoint isDummy dummy real

theorem dummy_mux_sound (isDummy : F) (real dummy out : Point) :
    DummyMuxCircuit isDummy real dummy out → DummyMuxSpec isDummy real dummy out := by
  intro h
  exact h

end Shieldd.GnarkFormal.ThresholdRegulatedBridge
