import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg21

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 23074, 23079, 23084, 23089, 3, 16, 22121, 22123, 22125, 22127, 22129, 22131, 22133, 22135, 22137, 22139, 22141, 22143, 22145, 22147, 22149, 22151, 22153, 22155, 22157, 22159, 22161, 22163, 22165, 22167, 22169, 22171, 22173, 22175, 22177, 22179, 22181, 22183, 22187, 22189, 22191, 22193, 22195, 22197, 22199, 22201, 22203, 22205, 22207, 22209, 22211, 22213, 22215, 22217, 22219, 22221, 22223, 22225, 22227, 22229, 22231, 22233, 22235, 22237, 22239, 22241, 22243, 22245, 22247, 22249, 23090, 23091, 23092, 23093, 23094, 23095, 23096, 23097, 23098, 23099, 23100, 23101, 23102, 23103, 23104, 23105, 23106, 23107, 23108, 23109, 23110, 23111, 23112, 23113, 23114, 23115, 23116, 23117, 23118, 23119, 23120, 23121]

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
relationSha256Hex := "132055209dd6fcbf602984aec322a341d4d439f63b2f4b38ea442b2d729e9617",
wireRoleSha256Hex := "ca35dec824ea9f1c67d114dbff80cd7ab00d2951d987f37fa0406a0303985b49",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg21
