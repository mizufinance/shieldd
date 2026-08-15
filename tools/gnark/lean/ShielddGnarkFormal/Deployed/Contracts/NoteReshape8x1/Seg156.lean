import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg156

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 121348, 121349, 121350, 121351, 121352, 121353, 121354, 121355, 121356, 121357, 121358, 121359, 121360, 121361, 121362, 121363, 121364, 121365, 121366, 121367, 121368, 121369, 121370, 121371, 121372, 121373, 121374, 121375, 121376, 121377, 121378, 121379, 121380, 121381, 121382, 121383, 121384, 121385, 121386, 121387, 121388, 121389, 121390, 121391, 121392, 121393, 121394, 121395, 673, 121396, 121397, 121398, 121399, 121400, 121401, 121402, 121403, 121404, 121405, 121406, 121407, 121408, 121409, 121410, 121411, 121412, 121413, 121414, 121415, 121416, 121417, 121418, 121419, 121420, 121421, 121422, 121423, 121424, 121425, 121426, 121427, 121428, 121429, 121430, 121431, 121432, 121433, 121434, 121435, 121436, 121437, 121438, 121439, 121440, 121441, 121442, 121443, 5, 121444, 121445, 121446, 121447, 121448, 121449, 121450, 121451, 121452, 121453, 121454, 121455, 121456, 121457, 121458, 121459, 121460, 121461, 121462, 121463, 121464, 121465, 121466, 121467, 121468, 121469, 121470, 121471, 121472, 121473, 121474, 121475, 121476, 121477, 121478, 121479, 121480, 121481, 121482, 121483, 121484, 121485, 121486, 121487, 121488, 121489, 121490, 121491, 121492, 121493, 748, 121494, 747]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 156,
relationSha256Hex := "44406717701c428e5a641ba1792f93b1b5fd4c4e0c4d450632ddcf3b3a0e6b95",
wireRoleSha256Hex := "e92f921399285270dea113bebb748aa72128a700b9cb602b48bda51fdae07af1",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg156
