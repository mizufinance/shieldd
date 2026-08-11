import ShielddGnarkFormal.Deployed.Templates.Relations.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd
