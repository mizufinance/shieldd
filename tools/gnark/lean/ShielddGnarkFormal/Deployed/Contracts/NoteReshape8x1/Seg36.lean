import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg36

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 25784, 25789, 25794, 25799, 5, 11, 24831, 24833, 24835, 24837, 24839, 24841, 24843, 24845, 24847, 24849, 24851, 24853, 24855, 24857, 24859, 24861, 24863, 24865, 24867, 24869, 24871, 24873, 24875, 24877, 24879, 24881, 24883, 24885, 24887, 24889, 24891, 24893, 24897, 24899, 24901, 24903, 24905, 24907, 24909, 24911, 24913, 24915, 24917, 24919, 24921, 24923, 24925, 24927, 24929, 24931, 24933, 24935, 24937, 24939, 24941, 24943, 24945, 24947, 24949, 24951, 24953, 24955, 24957, 24959, 25800, 25801, 25802, 25803, 25804, 25805, 25806, 25807, 25808, 25809, 25810, 25811, 25812, 25813, 25814, 25815, 25816, 25817, 25818, 25819, 25820, 25821, 25822, 25823, 25824, 25825, 25826, 25827, 25828, 25829, 25830, 25831]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 36,
relationSha256Hex := "1b784ba56f18c097a8dd4b265a99dae0703fc7ca689fec69432d0e28e471ecbf",
wireRoleSha256Hex := "3c55beb22c2379ba505f627b39abf52432e192beab872f31a14a52f9926d75d8",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg36
