import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg85

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 64701, 64702, 64703, 64704, 64705, 64706, 64707, 64708, 64709, 64710, 64711, 64712, 64713, 64714, 64715, 64716, 64717, 64718, 64719, 64720, 64721, 64722, 64723, 64724, 64725, 64726, 64727, 64728, 64729, 64730, 64731, 64732, 64733, 64734, 64735, 64736, 64737, 64738, 64739, 64740, 64741, 64742, 64743, 64744, 64745, 64746, 64747, 64748, 312, 64749, 64750, 64751, 64752, 64753, 64754, 64755, 64756, 64757, 64758, 64759, 64760, 64761, 64762, 64763, 64764, 64765, 64766, 64767, 64768, 64769, 64770, 64771, 64772, 64773, 64774, 64775, 64776, 64777, 64778, 64779, 64780, 64781, 64782, 64783, 64784, 64785, 64786, 64787, 64788, 64789, 64790, 64791, 64792, 64793, 64794, 64795, 64796, 6, 64797, 64798, 64799, 64800, 64801, 64802, 64803, 64804, 64805, 64806, 64807, 64808, 64809, 64810, 64811, 64812, 64813, 64814, 64815, 64816, 64817, 64818, 64819, 64820, 64821, 64822, 64823, 64824, 64825, 64826, 64827, 64828, 64829, 64830, 64831, 64832, 64833, 64834, 64835, 64836, 64837, 64838, 64839, 64840, 64841, 64842, 64843, 64844, 64845, 64846, 387, 64847, 386]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 85,
relationSha256Hex := "f6ef7ea2f0a6f92bc923d329015699b24141fe3dd12a97ca42f973e42045b9f8",
wireRoleSha256Hex := "e9f24f16226b26bb4d0a55b4c9f1b21749525f1e4eba5c945922fea9b41ff7fc",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg85
