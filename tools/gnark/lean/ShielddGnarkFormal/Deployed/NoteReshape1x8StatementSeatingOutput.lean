import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg57
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg58

set_option maxRecDepth 1000000
set_option maxHeartbeats 1000000

/-! Kernel-checked final-state and public-input statement seating facts. -/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSeating

open Contracts.NoteReshape1x8

theorem hw965 : Seg57.wireSeating 965 = 27268 := by rfl
theorem hw970 : Seg57.wireSeating 970 = 27273 := by rfl
theorem hw975 : Seg57.wireSeating 975 = 27278 := by rfl
theorem hw980 : Seg57.wireSeating 980 = 27283 := by rfl
theorem hw985 : Seg57.wireSeating 985 = 27288 := by rfl
theorem hw990 : Seg57.wireSeating 990 = 27293 := by rfl
theorem hw995 : Seg57.wireSeating 995 = 27298 := by rfl
theorem hw1000 : Seg57.wireSeating 1000 = 27303 := by rfl

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementSeating

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementPublicSeating

open Contracts.NoteReshape1x8

theorem hw1 : Seg58.wireSeating 1 = 27268 := by rfl
theorem hw2 : Seg58.wireSeating 2 = 27273 := by rfl
theorem hw3 : Seg58.wireSeating 3 = 27278 := by rfl
theorem hw4 : Seg58.wireSeating 4 = 27283 := by rfl
theorem hw5 : Seg58.wireSeating 5 = 27288 := by rfl
theorem hw6 : Seg58.wireSeating 6 = 27293 := by rfl
theorem hw7 : Seg58.wireSeating 7 = 27298 := by rfl
theorem hw8 : Seg58.wireSeating 8 = 27303 := by rfl
theorem hw9 : Seg58.wireSeating 9 = 1 := by rfl

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8StatementPublicSeating
