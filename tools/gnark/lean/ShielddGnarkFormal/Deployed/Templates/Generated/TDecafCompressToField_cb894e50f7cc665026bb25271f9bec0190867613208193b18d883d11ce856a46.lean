import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafCompressToField_cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafCompressToField_cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafCompressToField_cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TDecafCompressToField_cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46
