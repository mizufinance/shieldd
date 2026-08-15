import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg32

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 19466, 19471, 19476, 19481, 4, 10, 18513, 18515, 18517, 18519, 18521, 18523, 18525, 18527, 18529, 18531, 18533, 18535, 18537, 18539, 18541, 18543, 18545, 18547, 18549, 18551, 18553, 18555, 18557, 18559, 18561, 18563, 18565, 18567, 18569, 18571, 18573, 18575, 18579, 18581, 18583, 18585, 18587, 18589, 18591, 18593, 18595, 18597, 18599, 18601, 18603, 18605, 18607, 18609, 18611, 18613, 18615, 18617, 18619, 18621, 18623, 18625, 18627, 18629, 18631, 18633, 18635, 18637, 18639, 18641, 19482, 19483, 19484, 19485, 19486, 19487, 19488, 19489, 19490, 19491, 19492, 19493, 19494, 19495, 19496, 19497, 19498, 19499, 19500, 19501, 19502, 19503, 19504, 19505, 19506, 19507, 19508, 19509, 19510, 19511, 19512, 19513]

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
relationSha256Hex := "52ca746215ca065846d5261033977ce83ea3f63db1113b86aa1e50498665c39c",
wireRoleSha256Hex := "894561ec57337304aa7f661e2401c3cb72a63545d8be0152ca2aab76f14b8f0b",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg32
