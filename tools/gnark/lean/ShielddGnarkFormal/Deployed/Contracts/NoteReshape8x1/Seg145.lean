import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg145

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 115073, 115074, 115075, 115076, 115077, 115078, 115079, 115080, 115081, 115082, 115083, 115084, 115085, 115086, 115087, 115088, 115089, 115090, 115091, 115092, 115093, 115094, 115095, 115096, 115097, 115098, 115099, 115100, 115101, 115102, 115103, 115104, 115105, 115106, 115107, 115108, 115109, 115110, 115111, 115112, 115113, 115114, 115115, 115116, 115117, 115118, 115119, 115120, 644, 115121, 115122, 115123, 115124, 115125, 115126, 115127, 115128, 115129, 115130, 115131, 115132, 115133, 115134, 115135, 115136, 115137, 115138, 115139, 115140, 115141, 115142, 115143, 115144, 115145, 115146, 115147, 115148, 115149, 115150, 115151, 115152, 115153, 115154, 115155, 115156, 115157, 115158, 115159, 115160, 115161, 115162, 115163, 115164, 115165, 115166, 115167, 115168, 6, 115169, 115170, 115171, 115172, 115173, 115174, 115175, 115176, 115177, 115178, 115179, 115180, 115181, 115182, 115183, 115184, 115185, 115186, 115187, 115188, 115189, 115190, 115191, 115192, 115193, 115194, 115195, 115196, 115197, 115198, 115199, 115200, 115201, 115202, 115203, 115204, 115205, 115206, 115207, 115208, 115209, 115210, 115211, 115212, 115213, 115214, 115215, 115216, 115217, 115218, 719, 115219, 718]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 145,
relationSha256Hex := "11f6246924ebab658551b15f5600e409cdead8304cadb98540bedc29a402bd7e",
wireRoleSha256Hex := "bbb4a884c943770beffe8b73ab4e5da26777af8fafbe4d0fbcc99a7625abd7c7",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg145
