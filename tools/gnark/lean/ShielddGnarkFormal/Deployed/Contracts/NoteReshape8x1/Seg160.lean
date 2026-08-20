import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg160

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 127666, 127667, 127668, 127669, 127670, 127671, 127672, 127673, 127674, 127675, 127676, 127677, 127678, 127679, 127680, 127681, 127682, 127683, 127684, 127685, 127686, 127687, 127688, 127689, 127690, 127691, 127692, 127693, 127694, 127695, 127696, 127697, 127698, 127699, 127700, 127701, 127702, 127703, 127704, 127705, 127706, 127707, 127708, 127709, 127710, 127711, 127712, 127713, 727, 127714, 127715, 127716, 127717, 127718, 127719, 127720, 127721, 127722, 127723, 127724, 127725, 127726, 127727, 127728, 127729, 127730, 127731, 127732, 127733, 127734, 127735, 127736, 127737, 127738, 127739, 127740, 127741, 127742, 127743, 127744, 127745, 127746, 127747, 127748, 127749, 127750, 127751, 127752, 127753, 127754, 127755, 127756, 127757, 127758, 127759, 127760, 127761, 6, 127762, 127763, 127764, 127765, 127766, 127767, 127768, 127769, 127770, 127771, 127772, 127773, 127774, 127775, 127776, 127777, 127778, 127779, 127780, 127781, 127782, 127783, 127784, 127785, 127786, 127787, 127788, 127789, 127790, 127791, 127792, 127793, 127794, 127795, 127796, 127797, 127798, 127799, 127800, 127801, 127802, 127803, 127804, 127805, 127806, 127807, 127808, 127809, 127810, 127811, 802, 127812, 801]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 160,
relationSha256Hex := "978f2e3c6ed9614317bd50a5779651e20bae98d5b09f5eed8bb7124d851b1e76",
wireRoleSha256Hex := "51f1b69c7a597bfc7584d14b495a5f8a3ccff9c22f8a0865fb48c6962172e632",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg160
