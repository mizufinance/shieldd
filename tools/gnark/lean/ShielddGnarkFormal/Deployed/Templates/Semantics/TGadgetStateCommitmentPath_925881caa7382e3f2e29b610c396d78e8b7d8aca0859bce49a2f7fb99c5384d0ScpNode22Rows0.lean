import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node22_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8301 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8301 rho)
    (r8302 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8302 rho)
    (r8303 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8303 rho)
    (r8304 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8304 rho)
    (r8305 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8305 rho)
    (tail : next (rho 8279) (rho 8282) (rho 8280) (rho 8281) (rho 8283) (rho 8284) (rho 8285) (rho 8290)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg0 (rho 8277) (rho 8279) (rho 8282) (rho 8278) (rho 8280) (rho 8281) (rho 8283) (rho 8284) (rho 8285) next := by
  exact ⟨rho 8286, rho 8287, rho 8288, rho 8289, rho 8290, r8301, r8302, r8303, r8304, r8305, tail⟩

theorem template_scp_node22_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8306 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8306 rho)
    (r8307 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8307 rho)
    (r8308 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8308 rho)
    (r8309 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8309 rho)
    (r8310 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8310 rho)
    (tail : next (rho 8279) (rho 8282) (rho 8283) (rho 8284) (rho 8285) (rho 8290) (rho 8295)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg1 (rho 8279) (rho 8282) (rho 8280) (rho 8281) (rho 8283) (rho 8284) (rho 8285) (rho 8290) next := by
  exact ⟨rho 8291, rho 8292, rho 8293, rho 8294, rho 8295, r8306, r8307, r8308, r8309, r8310, tail⟩

theorem template_scp_node22_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8311 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8311 rho)
    (r8312 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8312 rho)
    (r8313 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8313 rho)
    (r8314 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8314 rho)
    (r8315 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8315 rho)
    (tail : next (rho 8282) (rho 8285) (rho 8290) (rho 8295) (rho 8300)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg2 (rho 8279) (rho 8282) (rho 8283) (rho 8284) (rho 8285) (rho 8290) (rho 8295) next := by
  exact ⟨rho 8296, rho 8297, rho 8298, rho 8299, rho 8300, r8311, r8312, r8313, r8314, r8315, tail⟩

theorem template_scp_node22_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r8316 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8316 rho)
    (r8317 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8317 rho)
    (r8318 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8318 rho)
    (r8319 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8319 rho)
    (r8320 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8320 rho)
    (tail : next (rho 8290) (rho 8295) (rho 8300) (rho 8305)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg3 (rho 8282) (rho 8285) (rho 8290) (rho 8295) (rho 8300) next := by
  exact ⟨rho 8301, rho 8302, rho 8303, rho 8304, rho 8305, r8316, r8317, r8318, r8319, r8320, tail⟩

theorem template_scp_node22_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8321 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8321 rho)
    (r8322 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8322 rho)
    (r8323 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8323 rho)
    (r8324 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8324 rho)
    (r8325 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8325 rho)
    (tail : next (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg4 (rho 8290) (rho 8295) (rho 8300) (rho 8305) next := by
  exact ⟨rho 8306, rho 8307, rho 8308, rho 8309, rho 8310, r8321, r8322, r8323, r8324, r8325, tail⟩

theorem template_scp_node22_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8326 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8326 rho)
    (r8327 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8327 rho)
    (r8328 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8328 rho)
    (r8329 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8329 rho)
    (r8330 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8330 rho)
    (tail : next (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) (rho 8315)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg5 (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) next := by
  exact ⟨rho 8311, rho 8312, rho 8313, rho 8314, rho 8315, r8326, r8327, r8328, r8329, r8330, tail⟩

theorem template_scp_node22_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8331 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8331 rho)
    (r8332 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8332 rho)
    (r8333 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8333 rho)
    (r8334 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8334 rho)
    (r8335 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8335 rho)
    (tail : next (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) (rho 8315) (rho 8320)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg6 (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) (rho 8315) next := by
  exact ⟨rho 8316, rho 8317, rho 8318, rho 8319, rho 8320, r8331, r8332, r8333, r8334, r8335, tail⟩

theorem template_scp_node22_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8336 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8336 rho)
    (r8337 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8337 rho)
    (r8338 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8338 rho)
    (r8339 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8339 rho)
    (r8340 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8340 rho)
    (tail : next (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) (rho 8315) (rho 8320) (rho 8325)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg7 (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) (rho 8315) (rho 8320) next := by
  exact ⟨rho 8321, rho 8322, rho 8323, rho 8324, rho 8325, r8336, r8337, r8338, r8339, r8340, tail⟩

theorem template_scp_node22_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8341 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8341 rho)
    (r8342 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8342 rho)
    (r8343 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8343 rho)
    (r8344 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8344 rho)
    (r8345 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8345 rho)
    (tail : next (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg8 (rho 8290) (rho 8295) (rho 8300) (rho 8305) (rho 8310) (rho 8315) (rho 8320) (rho 8325) next := by
  exact ⟨rho 8326, rho 8327, rho 8328, rho 8329, rho 8330, r8341, r8342, r8343, r8344, r8345, tail⟩

theorem template_scp_node22_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8346 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8346 rho)
    (r8347 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8347 rho)
    (r8348 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8348 rho)
    (r8349 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8349 rho)
    (r8350 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow8350 rho)
    (tail : next (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330) (rho 8335)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg9 (rho 8310) (rho 8315) (rho 8320) (rho 8325) (rho 8330) next := by
  exact ⟨rho 8331, rho 8332, rho 8333, rho 8334, rho 8335, r8346, r8347, r8348, r8349, r8350, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
