import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg76

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 64638, 64643, 64648, 64653, 4, 11, 63685, 63687, 63689, 63691, 63693, 63695, 63697, 63699, 63701, 63703, 63705, 63707, 63709, 63711, 63713, 63715, 63717, 63719, 63721, 63723, 63725, 63727, 63729, 63731, 63733, 63735, 63737, 63739, 63741, 63743, 63745, 63747, 63751, 63753, 63755, 63757, 63759, 63761, 63763, 63765, 63767, 63769, 63771, 63773, 63775, 63777, 63779, 63781, 63783, 63785, 63787, 63789, 63791, 63793, 63795, 63797, 63799, 63801, 63803, 63805, 63807, 63809, 63811, 63813, 64654, 64655, 64656, 64657, 64658, 64659, 64660, 64661, 64662, 64663, 64664, 64665, 64666, 64667, 64668, 64669, 64670, 64671, 64672, 64673, 64674, 64675, 64676, 64677, 64678, 64679, 64680, 64681, 64682, 64683, 64684, 64685]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 76,
relationSha256Hex := "c1447cab49195f2d655d8679c1f5088285fbec118be2a912d57930cfb7f77eb8",
wireRoleSha256Hex := "2791661b6fc709ed9c12b8bb9c68e69d5d1eb5a6f75d4f3ca42adf181bb7ddba",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg76
