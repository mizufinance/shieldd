import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg33

/-!
Opaque final-state projections for the 2x1 conservation ladder. Keeping the
large generated `Nat` match behind these two lemmas prevents every compiler-LC
seam from re-elaborating all 251 accumulator alternatives.
-/

namespace Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceAccFinal

open Shieldd.GnarkFormal

namespace Nb

open Templates.Semantics.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6.NbSupport

theorem x (rho : Nat → F) :
    (nbBlindAccState rho 251).x =
      (4661681602708190761543544705274244814260880986867766715334030151044279151219 :
          F) *
        rho 388 + nbBlindDeltaX250 rho := by
  rfl

theorem y (rho : Nat → F) :
    (nbBlindAccState rho 251).y =
      (1 : F) +
        (4337336842509898676347982752646772244181661588533917621717979456142867120377 :
            F) *
          rho 388 + nbBlindDeltaY250 rho := by
  rfl

end Nb

end Shieldd.GnarkFormal.Deployed.NoteReshape2x1BalanceAccFinal
