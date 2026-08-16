import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg141

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 108755, 108756, 108757, 108758, 108759, 108760, 108761, 108762, 108763, 108764, 108765, 108766, 108767, 108768, 108769, 108770, 108771, 108772, 108773, 108774, 108775, 108776, 108777, 108778, 108779, 108780, 108781, 108782, 108783, 108784, 108785, 108786, 108787, 108788, 108789, 108790, 108791, 108792, 108793, 108794, 108795, 108796, 108797, 108798, 108799, 108800, 108801, 108802, 590, 108803, 108804, 108805, 108806, 108807, 108808, 108809, 108810, 108811, 108812, 108813, 108814, 108815, 108816, 108817, 108818, 108819, 108820, 108821, 108822, 108823, 108824, 108825, 108826, 108827, 108828, 108829, 108830, 108831, 108832, 108833, 108834, 108835, 108836, 108837, 108838, 108839, 108840, 108841, 108842, 108843, 108844, 108845, 108846, 108847, 108848, 108849, 108850, 5, 108851, 108852, 108853, 108854, 108855, 108856, 108857, 108858, 108859, 108860, 108861, 108862, 108863, 108864, 108865, 108866, 108867, 108868, 108869, 108870, 108871, 108872, 108873, 108874, 108875, 108876, 108877, 108878, 108879, 108880, 108881, 108882, 108883, 108884, 108885, 108886, 108887, 108888, 108889, 108890, 108891, 108892, 108893, 108894, 108895, 108896, 108897, 108898, 108899, 108900, 665, 108901, 664]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 141,
relationSha256Hex := "576c7e483439c83503a382683f33c892058d3b9a5ca3b2f4aaf07cedda69d579",
wireRoleSha256Hex := "8f3a64bf3dcef557dfb943d31c79aecd98cfc4f6d3844ffc5efd174a829e7c44",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg141
