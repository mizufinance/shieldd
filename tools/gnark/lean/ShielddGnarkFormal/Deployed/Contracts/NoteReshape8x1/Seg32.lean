import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg32

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 19457, 19462, 19467, 19472, 4, 9, 18504, 18506, 18508, 18510, 18512, 18514, 18516, 18518, 18520, 18522, 18524, 18526, 18528, 18530, 18532, 18534, 18536, 18538, 18540, 18542, 18544, 18546, 18548, 18550, 18552, 18554, 18556, 18558, 18560, 18562, 18564, 18566, 18570, 18572, 18574, 18576, 18578, 18580, 18582, 18584, 18586, 18588, 18590, 18592, 18594, 18596, 18598, 18600, 18602, 18604, 18606, 18608, 18610, 18612, 18614, 18616, 18618, 18620, 18622, 18624, 18626, 18628, 18630, 18632, 19473, 19474, 19475, 19476, 19477, 19478, 19479, 19480, 19481, 19482, 19483, 19484, 19485, 19486, 19487, 19488, 19489, 19490, 19491, 19492, 19493, 19494, 19495, 19496, 19497, 19498, 19499, 19500, 19501, 19502, 19503, 19504]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 32,
relationSha256Hex := "4ec3c5613e1e9b5478888e59e3bec5c89693f8175cb2d78d478c78c1731a615a",
wireRoleSha256Hex := "39a80865c5a878432a2695828d0d8984e15ab7329025cb06b8ac06f71bb9b03d",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg32
