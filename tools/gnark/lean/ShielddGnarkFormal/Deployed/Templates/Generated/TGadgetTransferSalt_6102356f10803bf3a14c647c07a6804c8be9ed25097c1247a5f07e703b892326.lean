import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326
