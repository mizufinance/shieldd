import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg22

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 18889, 18894, 18899, 18904, 4, 9, 17936, 17938, 17940, 17942, 17944, 17946, 17948, 17950, 17952, 17954, 17956, 17958, 17960, 17962, 17964, 17966, 17968, 17970, 17972, 17974, 17976, 17978, 17980, 17982, 17984, 17986, 17988, 17990, 17992, 17994, 17996, 17998, 18002, 18004, 18006, 18008, 18010, 18012, 18014, 18016, 18018, 18020, 18022, 18024, 18026, 18028, 18030, 18032, 18034, 18036, 18038, 18040, 18042, 18044, 18046, 18048, 18050, 18052, 18054, 18056, 18058, 18060, 18062, 18064, 18905, 18906, 18907, 18908, 18909, 18910, 18911, 18912, 18913, 18914, 18915, 18916, 18917, 18918, 18919, 18920, 18921, 18922, 18923, 18924, 18925, 18926, 18927, 18928, 18929, 18930, 18931, 18932, 18933, 18934, 18935, 18936]

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
relationSha256Hex := "07503f9a84a5c05865b4c1b2c27644a9ea54ee40076f662ab7af74c05aa39b4c",
wireRoleSha256Hex := "3f8e75873ccd7f8a9717b0dfe4d50a198ff914acb2039ad742b6d2dca704ade0",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg22
