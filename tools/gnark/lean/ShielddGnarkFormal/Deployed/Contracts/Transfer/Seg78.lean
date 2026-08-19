import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg78

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 64722, 64727, 64732, 64737, 4, 11, 63769, 63771, 63773, 63775, 63777, 63779, 63781, 63783, 63785, 63787, 63789, 63791, 63793, 63795, 63797, 63799, 63801, 63803, 63805, 63807, 63809, 63811, 63813, 63815, 63817, 63819, 63821, 63823, 63825, 63827, 63829, 63831, 63835, 63837, 63839, 63841, 63843, 63845, 63847, 63849, 63851, 63853, 63855, 63857, 63859, 63861, 63863, 63865, 63867, 63869, 63871, 63873, 63875, 63877, 63879, 63881, 63883, 63885, 63887, 63889, 63891, 63893, 63895, 63897, 64738, 64739, 64740, 64741, 64742, 64743, 64744, 64745, 64746, 64747, 64748, 64749, 64750, 64751, 64752, 64753, 64754, 64755, 64756, 64757, 64758, 64759, 64760, 64761, 64762, 64763, 64764, 64765, 64766, 64767, 64768, 64769]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 78,
relationSha256Hex := "6cfa2f3df2d842765b9d4e5e47e603d2ec9a6cc66178c95c3edb906b387009dc",
wireRoleSha256Hex := "ef71f1a3aab5de742e634f637b640297f1d7696328c83f5257dc2443380d67af",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg78
