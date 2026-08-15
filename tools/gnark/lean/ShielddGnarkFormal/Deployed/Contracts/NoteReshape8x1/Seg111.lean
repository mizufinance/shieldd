import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg111

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 83569, 83570, 83571, 83572, 83573, 83574, 83575, 83576, 83577, 83578, 83579, 83580, 83581, 83582, 83583, 83584, 83585, 83586, 83587, 83588, 83589, 83590, 83591, 83592, 83593, 83594, 83595, 83596, 83597, 83598, 83599, 83600, 83601, 83602, 83603, 83604, 83605, 83606, 83607, 83608, 83609, 83610, 83611, 83612, 83613, 83614, 83615, 83616, 424, 83617, 83618, 83619, 83620, 83621, 83622, 83623, 83624, 83625, 83626, 83627, 83628, 83629, 83630, 83631, 83632, 83633, 83634, 83635, 83636, 83637, 83638, 83639, 83640, 83641, 83642, 83643, 83644, 83645, 83646, 83647, 83648, 83649, 83650, 83651, 83652, 83653, 83654, 83655, 83656, 83657, 83658, 83659, 83660, 83661, 83662, 83663, 83664, 5, 83665, 83666, 83667, 83668, 83669, 83670, 83671, 83672, 83673, 83674, 83675, 83676, 83677, 83678, 83679, 83680, 83681, 83682, 83683, 83684, 83685, 83686, 83687, 83688, 83689, 83690, 83691, 83692, 83693, 83694, 83695, 83696, 83697, 83698, 83699, 83700, 83701, 83702, 83703, 83704, 83705, 83706, 83707, 83708, 83709, 83710, 83711, 83712, 83713, 83714, 499, 83715, 498]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 111,
relationSha256Hex := "50c1f5a15fbf0815faa3d23650e5bdc56ad5bf8b3b5bd1c0746cd822154c1d8e",
wireRoleSha256Hex := "2f2ec75bc551c393298294fa25ae1301b10708d8d3f454b4f5b92d04fc4cf2be",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg111
