import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg57

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Kernel-checked Seg57 seating facts for the first half of statement block 0. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSeating

open Contracts.NoteReshape1x8

theorem hw1 : Seg57.wireSeating 1 = 2 := by rfl
theorem hw7 : Seg57.wireSeating 7 = 19667 := by rfl
theorem hw8 : Seg57.wireSeating 8 = 19672 := by rfl
theorem hw9 : Seg57.wireSeating 9 = 19677 := by rfl
theorem hw10 : Seg57.wireSeating 10 = 19682 := by rfl
theorem hw11 : Seg57.wireSeating 11 = 19687 := by rfl
theorem hw12 : Seg57.wireSeating 12 = 19692 := by rfl
theorem hw13 : Seg57.wireSeating 13 = 19697 := by rfl
theorem hw19 : Seg57.wireSeating 19 = 20097 := by rfl
theorem hw20 : Seg57.wireSeating 20 = 20102 := by rfl
theorem hw21 : Seg57.wireSeating 21 = 20107 := by rfl
theorem hw22 : Seg57.wireSeating 22 = 20112 := by rfl
theorem hw23 : Seg57.wireSeating 23 = 20117 := by rfl
theorem hw24 : Seg57.wireSeating 24 = 20122 := by rfl
theorem hw25 : Seg57.wireSeating 25 = 20127 := by rfl
theorem hw31 : Seg57.wireSeating 31 = 20527 := by rfl
theorem hw32 : Seg57.wireSeating 32 = 20532 := by rfl
theorem hw33 : Seg57.wireSeating 33 = 20537 := by rfl
theorem hw34 : Seg57.wireSeating 34 = 20542 := by rfl
theorem hw35 : Seg57.wireSeating 35 = 20547 := by rfl
theorem hw36 : Seg57.wireSeating 36 = 20552 := by rfl
theorem hw37 : Seg57.wireSeating 37 = 20557 := by rfl

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSeating
