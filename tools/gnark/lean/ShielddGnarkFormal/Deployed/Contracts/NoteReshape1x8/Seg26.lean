import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg26

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 25209, 25214, 25219, 25224, 5, 11, 24256, 24258, 24260, 24262, 24264, 24266, 24268, 24270, 24272, 24274, 24276, 24278, 24280, 24282, 24284, 24286, 24288, 24290, 24292, 24294, 24296, 24298, 24300, 24302, 24304, 24306, 24308, 24310, 24312, 24314, 24316, 24318, 24322, 24324, 24326, 24328, 24330, 24332, 24334, 24336, 24338, 24340, 24342, 24344, 24346, 24348, 24350, 24352, 24354, 24356, 24358, 24360, 24362, 24364, 24366, 24368, 24370, 24372, 24374, 24376, 24378, 24380, 24382, 24384, 25225, 25226, 25227, 25228, 25229, 25230, 25231, 25232, 25233, 25234, 25235, 25236, 25237, 25238, 25239, 25240, 25241, 25242, 25243, 25244, 25245, 25246, 25247, 25248, 25249, 25250, 25251, 25252, 25253, 25254, 25255, 25256]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 26,
relationSha256Hex := "0423fabf8517b211a2632e6cafbabe2fa91d880aafeaea5d011f6f52e8b062e5",
wireRoleSha256Hex := "ccd58fa83a3167ac60bc155fa5a5701575d64aa312415ac9da41580bcbe05186",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg26
