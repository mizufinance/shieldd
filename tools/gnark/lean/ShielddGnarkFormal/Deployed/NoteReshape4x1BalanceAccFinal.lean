import ShielddGnarkFormal.Deployed.Contracts.NoteReshape4x1.Seg73

/-! Opaque final-state projections for the 4x1 conservation ladder. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceAccFinal

open Shieldd.GnarkFormal

namespace Nb

open Templates.Semantics.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79.NbSupport

theorem x (rho : Nat → F) :
    (nbBlindAccState rho 251).x =
      (4661681602708190761543544705274244814260880986867766715334030151044279151219 :
          F) *
        rho 646 + nbBlindDeltaX250 rho := by
  rfl

theorem y (rho : Nat → F) :
    (nbBlindAccState rho 251).y =
      (1 : F) +
        (4337336842509898676347982752646772244181661588533917621717979456142867120377 :
            F) *
          rho 646 + nbBlindDeltaY250 rho := by
  rfl

end Nb

end Shieldd.GnarkFormal.Deployed.NoteReshape4x1BalanceAccFinal
