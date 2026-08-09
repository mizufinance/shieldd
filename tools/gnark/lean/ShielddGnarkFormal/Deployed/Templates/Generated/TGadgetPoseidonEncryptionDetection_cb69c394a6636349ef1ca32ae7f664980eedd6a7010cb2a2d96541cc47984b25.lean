import ShielddGnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionDetection_cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetPoseidonEncryptionDetection_cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25

abbrev F := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25.F

def relation (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetPoseidonEncryptionDetection_cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25.relation rho

def spec (rho : Nat -> F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25.spec rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
             exact Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25.sound rho h
end Shieldd.GnarkFormal.Deployed.Templates.Generated.TGadgetPoseidonEncryptionDetection_cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25
