import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg96

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 70976, 70977, 70978, 70979, 70980, 70981, 70982, 70983, 70984, 70985, 70986, 70987, 70988, 70989, 70990, 70991, 70992, 70993, 70994, 70995, 70996, 70997, 70998, 70999, 71000, 71001, 71002, 71003, 71004, 71005, 71006, 71007, 71008, 71009, 71010, 71011, 71012, 71013, 71014, 71015, 71016, 71017, 71018, 71019, 71020, 71021, 71022, 71023, 341, 71024, 71025, 71026, 71027, 71028, 71029, 71030, 71031, 71032, 71033, 71034, 71035, 71036, 71037, 71038, 71039, 71040, 71041, 71042, 71043, 71044, 71045, 71046, 71047, 71048, 71049, 71050, 71051, 71052, 71053, 71054, 71055, 71056, 71057, 71058, 71059, 71060, 71061, 71062, 71063, 71064, 71065, 71066, 71067, 71068, 71069, 71070, 71071, 5, 71072, 71073, 71074, 71075, 71076, 71077, 71078, 71079, 71080, 71081, 71082, 71083, 71084, 71085, 71086, 71087, 71088, 71089, 71090, 71091, 71092, 71093, 71094, 71095, 71096, 71097, 71098, 71099, 71100, 71101, 71102, 71103, 71104, 71105, 71106, 71107, 71108, 71109, 71110, 71111, 71112, 71113, 71114, 71115, 71116, 71117, 71118, 71119, 71120, 71121, 416, 71122, 415]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 96,
relationSha256Hex := "657e5e7a934753b33bba6715672aa44cea8274c961892a55f52459f2db813080",
wireRoleSha256Hex := "8be9a4af6040864664f58728af65555c2411b4ba07f63f4da5a81757aa1d08dd",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg96
