import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Poseidon4Bridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

def recovered0 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (leaf rho) (path rho)[0][0] (path rho)[0][1] (path rho)[0][2]
    (bits rho)[0] (bits rho)[1]

def recovered1 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered0 rho) (path rho)[1][0] (path rho)[1][1] (path rho)[1][2]
    (bits rho)[2] (bits rho)[3]

def recovered2 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered1 rho) (path rho)[2][0] (path rho)[2][1] (path rho)[2][2]
    (bits rho)[4] (bits rho)[5]

def recovered3 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered2 rho) (path rho)[3][0] (path rho)[3][1] (path rho)[3][2]
    (bits rho)[6] (bits rho)[7]

def recovered4 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered3 rho) (path rho)[4][0] (path rho)[4][1] (path rho)[4][2]
    (bits rho)[8] (bits rho)[9]

def recovered5 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered4 rho) (path rho)[5][0] (path rho)[5][1] (path rho)[5][2]
    (bits rho)[10] (bits rho)[11]

def recovered6 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered5 rho) (path rho)[6][0] (path rho)[6][1] (path rho)[6][2]
    (bits rho)[12] (bits rho)[13]

def recovered7 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered6 rho) (path rho)[7][0] (path rho)[7][1] (path rho)[7][2]
    (bits rho)[14] (bits rho)[15]

def recovered8 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered7 rho) (path rho)[8][0] (path rho)[8][1] (path rho)[8][2]
    (bits rho)[16] (bits rho)[17]

def recovered9 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered8 rho) (path rho)[9][0] (path rho)[9][1] (path rho)[9][2]
    (bits rho)[18] (bits rho)[19]

def recovered10 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered9 rho) (path rho)[10][0] (path rho)[10][1] (path rho)[10][2]
    (bits rho)[20] (bits rho)[21]

def recovered11 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered10 rho) (path rho)[11][0] (path rho)[11][1] (path rho)[11][2]
    (bits rho)[22] (bits rho)[23]

def recovered12 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered11 rho) (path rho)[12][0] (path rho)[12][1] (path rho)[12][2]
    (bits rho)[24] (bits rho)[25]

def recovered13 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered12 rho) (path rho)[13][0] (path rho)[13][1] (path rho)[13][2]
    (bits rho)[26] (bits rho)[27]

def recovered14 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered13 rho) (path rho)[14][0] (path rho)[14][1] (path rho)[14][2]
    (bits rho)[28] (bits rho)[29]

def recovered15 (rho : Nat → F) : F :=
  Shieldd.GnarkFormal.QuadPath.recoverStep Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
    (recovered14 rho) (path rho)[15][0] (path rho)[15][1] (path rho)[15][2]
    (bits rho)[30] (bits rho)[31]

theorem recovered15_eq_recover16 (rho : Nat → F) :
    recovered15 rho =
      Shieldd.GnarkFormal.QuadPath.recover16
        Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F) (leaf rho) (path rho) (bits rho) := by
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
