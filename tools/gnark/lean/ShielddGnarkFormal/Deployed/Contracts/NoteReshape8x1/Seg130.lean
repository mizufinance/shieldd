import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg130

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 102480, 102481, 102482, 102483, 102484, 102485, 102486, 102487, 102488, 102489, 102490, 102491, 102492, 102493, 102494, 102495, 102496, 102497, 102498, 102499, 102500, 102501, 102502, 102503, 102504, 102505, 102506, 102507, 102508, 102509, 102510, 102511, 102512, 102513, 102514, 102515, 102516, 102517, 102518, 102519, 102520, 102521, 102522, 102523, 102524, 102525, 102526, 102527, 561, 102528, 102529, 102530, 102531, 102532, 102533, 102534, 102535, 102536, 102537, 102538, 102539, 102540, 102541, 102542, 102543, 102544, 102545, 102546, 102547, 102548, 102549, 102550, 102551, 102552, 102553, 102554, 102555, 102556, 102557, 102558, 102559, 102560, 102561, 102562, 102563, 102564, 102565, 102566, 102567, 102568, 102569, 102570, 102571, 102572, 102573, 102574, 102575, 6, 102576, 102577, 102578, 102579, 102580, 102581, 102582, 102583, 102584, 102585, 102586, 102587, 102588, 102589, 102590, 102591, 102592, 102593, 102594, 102595, 102596, 102597, 102598, 102599, 102600, 102601, 102602, 102603, 102604, 102605, 102606, 102607, 102608, 102609, 102610, 102611, 102612, 102613, 102614, 102615, 102616, 102617, 102618, 102619, 102620, 102621, 102622, 102623, 102624, 102625, 636, 102626, 635]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 130,
relationSha256Hex := "b8e6828621c4e3584daf36f79c65f8d7d556f3aa55fc43cb726605dd2f40e464",
wireRoleSha256Hex := "b49cf7deb0c55e6900d0aee521b2935168e9f20d443a268589df35f950b46ee3",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg130
