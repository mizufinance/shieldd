import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Seg50

/-! Opaque final-state projections for the 1x8 conservation ladder. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceAccFinal

open Shieldd.GnarkFormal

namespace Nb

open Templates.Semantics.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a.NbSupport

theorem x (rho : Nat → F) :
    (nbBlindAccState rho 251).x =
      (4661681602708190761543544705274244814260880986867766715334030151044279151219 :
          F) *
        rho 1162 + nbBlindDeltaX250 rho := by
  rfl

theorem y (rho : Nat → F) :
    (nbBlindAccState rho 251).y =
      (1 : F) +
        (4337336842509898676347982752646772244181661588533917621717979456142867120377 :
            F) *
          rho 1162 + nbBlindDeltaY250 rho := by
  rfl

end Nb

end Shieldd.GnarkFormal.Deployed.NoteReshape1x8BalanceAccFinal
