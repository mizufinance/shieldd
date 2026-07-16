import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e.sound rho h

end Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafCompressToField_f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e
