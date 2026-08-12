import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg74

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 64342, 64347, 64352, 64357, 4, 10, 63389, 63391, 63393, 63395, 63397, 63399, 63401, 63403, 63405, 63407, 63409, 63411, 63413, 63415, 63417, 63419, 63421, 63423, 63425, 63427, 63429, 63431, 63433, 63435, 63437, 63439, 63441, 63443, 63445, 63447, 63449, 63451, 63455, 63457, 63459, 63461, 63463, 63465, 63467, 63469, 63471, 63473, 63475, 63477, 63479, 63481, 63483, 63485, 63487, 63489, 63491, 63493, 63495, 63497, 63499, 63501, 63503, 63505, 63507, 63509, 63511, 63513, 63515, 63517, 64358, 64359, 64360, 64361, 64362, 64363, 64364, 64365, 64366, 64367, 64368, 64369, 64370, 64371, 64372, 64373, 64374, 64375, 64376, 64377, 64378, 64379, 64380, 64381, 64382, 64383, 64384, 64385, 64386, 64387, 64388, 64389]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 74,
relationSha256Hex := "c1a360b63974df91d9e057ed5df72e404adca76bca8a62417561068a51afa212",
wireRoleSha256Hex := "974220886bdd128bc41598df0811e2944ff3843bd7ae7ef38ffdbb1a40ec67f6",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg74
