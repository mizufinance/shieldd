import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg70

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 52108, 52109, 52110, 52111, 52112, 52113, 52114, 52115, 52116, 52117, 52118, 52119, 52120, 52121, 52122, 52123, 52124, 52125, 52126, 52127, 52128, 52129, 52130, 52131, 52132, 52133, 52134, 52135, 52136, 52137, 52138, 52139, 52140, 52141, 52142, 52143, 52144, 52145, 52146, 52147, 52148, 52149, 52150, 52151, 52152, 52153, 52154, 52155, 229, 52156, 52157, 52158, 52159, 52160, 52161, 52162, 52163, 52164, 52165, 52166, 52167, 52168, 52169, 52170, 52171, 52172, 52173, 52174, 52175, 52176, 52177, 52178, 52179, 52180, 52181, 52182, 52183, 52184, 52185, 52186, 52187, 52188, 52189, 52190, 52191, 52192, 52193, 52194, 52195, 52196, 52197, 52198, 52199, 52200, 52201, 52202, 52203, 6, 52204, 52205, 52206, 52207, 52208, 52209, 52210, 52211, 52212, 52213, 52214, 52215, 52216, 52217, 52218, 52219, 52220, 52221, 52222, 52223, 52224, 52225, 52226, 52227, 52228, 52229, 52230, 52231, 52232, 52233, 52234, 52235, 52236, 52237, 52238, 52239, 52240, 52241, 52242, 52243, 52244, 52245, 52246, 52247, 52248, 52249, 52250, 52251, 52252, 52253, 304, 52254, 303]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 70,
relationSha256Hex := "c38cf8e0013500c74078a08f58606385c76f8d6df89d6451116872fb09729353",
wireRoleSha256Hex := "3cbca832f5c44f38d4cff625c91487ffeef7c8311d3f764d913ffbabec580080",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg70
