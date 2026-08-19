import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg100

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 77294, 77295, 77296, 77297, 77298, 77299, 77300, 77301, 77302, 77303, 77304, 77305, 77306, 77307, 77308, 77309, 77310, 77311, 77312, 77313, 77314, 77315, 77316, 77317, 77318, 77319, 77320, 77321, 77322, 77323, 77324, 77325, 77326, 77327, 77328, 77329, 77330, 77331, 77332, 77333, 77334, 77335, 77336, 77337, 77338, 77339, 77340, 77341, 395, 77342, 77343, 77344, 77345, 77346, 77347, 77348, 77349, 77350, 77351, 77352, 77353, 77354, 77355, 77356, 77357, 77358, 77359, 77360, 77361, 77362, 77363, 77364, 77365, 77366, 77367, 77368, 77369, 77370, 77371, 77372, 77373, 77374, 77375, 77376, 77377, 77378, 77379, 77380, 77381, 77382, 77383, 77384, 77385, 77386, 77387, 77388, 77389, 6, 77390, 77391, 77392, 77393, 77394, 77395, 77396, 77397, 77398, 77399, 77400, 77401, 77402, 77403, 77404, 77405, 77406, 77407, 77408, 77409, 77410, 77411, 77412, 77413, 77414, 77415, 77416, 77417, 77418, 77419, 77420, 77421, 77422, 77423, 77424, 77425, 77426, 77427, 77428, 77429, 77430, 77431, 77432, 77433, 77434, 77435, 77436, 77437, 77438, 77439, 470, 77440, 469]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 100,
relationSha256Hex := "22fe70cbf2cd909e4e0b07b99a43c4ffc847680429e5061bfad507bb662fa2c7",
wireRoleSha256Hex := "fa0225f43285056ea2c1eef1d27959a8982ab997d4aa35a5da556adef7bb01dc",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg100
