import ShielddGnarkFormal.Deployed.Templates.Simple

namespace Shieldd.GnarkFormal.Deployed.Templates.TemplateSpike

open Shieldd.GnarkFormal.Deployed
open Shieldd.GnarkFormal.Deployed.Templates

abbrev F := ZMod 8444461749428370424248824938781546531375899335154063827935233455917409239041

def assertEqSeating : WireSeating := fun localWire =>
  match localWire with
  | 0 => 0
  | 1 => 17
  | 2 => 23
  | _ => 0

def assertEqContract : DeployedContract F := {
  segmentIndex := 1000
  relationSha256Hex := "spike-assert-eq"
  wireRoleSha256Hex := "spike-assert-eq-roles"
  relation := fun rho => Simple.assertEqRelation (seated rho assertEqSeating)
  spec := fun rho => Simple.assertEqSpec (seated rho assertEqSeating)
}

theorem assertEq_bound :
    BoundDeployedSound assertEqContract
      assertEqContract.relationSha256Hex assertEqContract.wireRoleSha256Hex := by
  apply boundOfSeatedTemplate Simple.assertEqRelation Simple.assertEqSpec
    Simple.assertEqSound assertEqContract assertEqSeating
  · intro rho
    rfl
  · intro rho
    rfl

def onCurveSeating : WireSeating := fun localWire =>
  match localWire with
  | 0 => 0
  | 1 => 3
  | 2 => 201
  | 3 => 4
  | 4 => 202
  | 5 => 203
  | _ => 0

def onCurveContract : DeployedContract F := {
  segmentIndex := 2
  relationSha256Hex := "spike-on-curve"
  wireRoleSha256Hex := "spike-on-curve-roles"
  relation := fun rho => Simple.onCurveRelation (seated rho onCurveSeating)
  spec := fun rho => Simple.onCurveSpec (seated rho onCurveSeating)
}

theorem onCurve_bound :
    BoundDeployedSound onCurveContract
      onCurveContract.relationSha256Hex onCurveContract.wireRoleSha256Hex := by
  apply boundOfSeatedTemplate Simple.onCurveRelation Simple.onCurveSpec
    Simple.onCurveSound onCurveContract onCurveSeating
  · intro rho
    rfl
  · intro rho
    rfl

end Shieldd.GnarkFormal.Deployed.Templates.TemplateSpike
