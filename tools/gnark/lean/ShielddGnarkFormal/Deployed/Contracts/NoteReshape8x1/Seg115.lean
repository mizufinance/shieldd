import ShielddGnarkFormal.Deployed.Contract
import ShielddGnarkFormal.Deployed.Templates.Core
import ShielddGnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import Mathlib.Data.ZMod.Basic

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg115

def Order : Nat := 8444461749428370424248824938781546531375899335154063827935233455917409239041
abbrev F := ZMod Order

def wireSeatingTable : List Nat := [0, 89887, 89888, 89889, 89890, 89891, 89892, 89893, 89894, 89895, 89896, 89897, 89898, 89899, 89900, 89901, 89902, 89903, 89904, 89905, 89906, 89907, 89908, 89909, 89910, 89911, 89912, 89913, 89914, 89915, 89916, 89917, 89918, 89919, 89920, 89921, 89922, 89923, 89924, 89925, 89926, 89927, 89928, 89929, 89930, 89931, 89932, 89933, 89934, 478, 89935, 89936, 89937, 89938, 89939, 89940, 89941, 89942, 89943, 89944, 89945, 89946, 89947, 89948, 89949, 89950, 89951, 89952, 89953, 89954, 89955, 89956, 89957, 89958, 89959, 89960, 89961, 89962, 89963, 89964, 89965, 89966, 89967, 89968, 89969, 89970, 89971, 89972, 89973, 89974, 89975, 89976, 89977, 89978, 89979, 89980, 89981, 89982, 6, 89983, 89984, 89985, 89986, 89987, 89988, 89989, 89990, 89991, 89992, 89993, 89994, 89995, 89996, 89997, 89998, 89999, 90000, 90001, 90002, 90003, 90004, 90005, 90006, 90007, 90008, 90009, 90010, 90011, 90012, 90013, 90014, 90015, 90016, 90017, 90018, 90019, 90020, 90021, 90022, 90023, 90024, 90025, 90026, 90027, 90028, 90029, 90030, 90031, 90032, 553, 90033, 552]

def wireSeating : Nat -> Nat :=
fun localWire => wireSeatingTable.getD localWire 0

def localRho (rho : Nat -> F) : Nat -> F :=
    Shieldd.GnarkFormal.Deployed.Templates.seated rho wireSeating

def relation (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.relation (localRho rho)

def spec (rho : Nat -> F) : Prop :=
    Shieldd.GnarkFormal.Deployed.Templates.Generated.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (localRho rho)

def contract : Shieldd.GnarkFormal.Deployed.DeployedContract F := {
segmentIndex := 115,
relationSha256Hex := "4b224c6ba759d30bbb40461ec96e96b0a26e87ed8f3c34de5ef5f081caca380e",
wireRoleSha256Hex := "9d825e95b243d17d4ec895942d7ffcf48428b138771816404c75b9fd50363a5f",
relation := relation,
spec := spec
}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1.Seg115
