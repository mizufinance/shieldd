import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg22

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 23116, 23121, 23126, 23131, 3, 16, 22163, 22165, 22167, 22169, 22171, 22173, 22175, 22177, 22179, 22181, 22183, 22185, 22187, 22189, 22191, 22193, 22195, 22197, 22199, 22201, 22203, 22205, 22207, 22209, 22211, 22213, 22215, 22217, 22219, 22221, 22223, 22225, 22229, 22231, 22233, 22235, 22237, 22239, 22241, 22243, 22245, 22247, 22249, 22251, 22253, 22255, 22257, 22259, 22261, 22263, 22265, 22267, 22269, 22271, 22273, 22275, 22277, 22279, 22281, 22283, 22285, 22287, 22289, 22291, 23132, 23133, 23134, 23135, 23136, 23137, 23138, 23139, 23140, 23141, 23142, 23143, 23144, 23145, 23146, 23147, 23148, 23149, 23150, 23151, 23152, 23153, 23154, 23155, 23156, 23157, 23158, 23159, 23160, 23161, 23162, 23163]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 22,
relationSha256Hex := "62eb1d48c26a587c304b2193a2ee4872bfd1cb8a285e0abd20ff17b652c1375e",
wireRoleSha256Hex := "e689f9879267af1f5df1bb6d73184959159e969bc691e812b343cbe35541223e",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg22
