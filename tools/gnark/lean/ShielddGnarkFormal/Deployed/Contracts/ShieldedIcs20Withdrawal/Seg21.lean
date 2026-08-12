import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg21

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 23071, 23076, 23081, 23086, 3, 15, 22118, 22120, 22122, 22124, 22126, 22128, 22130, 22132, 22134, 22136, 22138, 22140, 22142, 22144, 22146, 22148, 22150, 22152, 22154, 22156, 22158, 22160, 22162, 22164, 22166, 22168, 22170, 22172, 22174, 22176, 22178, 22180, 22184, 22186, 22188, 22190, 22192, 22194, 22196, 22198, 22200, 22202, 22204, 22206, 22208, 22210, 22212, 22214, 22216, 22218, 22220, 22222, 22224, 22226, 22228, 22230, 22232, 22234, 22236, 22238, 22240, 22242, 22244, 22246, 23087, 23088, 23089, 23090, 23091, 23092, 23093, 23094, 23095, 23096, 23097, 23098, 23099, 23100, 23101, 23102, 23103, 23104, 23105, 23106, 23107, 23108, 23109, 23110, 23111, 23112, 23113, 23114, 23115, 23116, 23117, 23118]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 21,
relationSha256Hex := "328d7449dd44a68e7c53cf3032664552cb4016bc7571a1e2d44d34d2e478387d",
wireRoleSha256Hex := "f38b30674a0e7ec6c8f50c0a122fba8e4fc1b62c906003e5af45233ee00fa6cd",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg21
