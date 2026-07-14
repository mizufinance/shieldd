import Ipp.Gipa

namespace Ipp.Extracted

/- Exact S2-04 target statement. The generated execution is not admitted here:
   Aeneas currently rejects the executed Field/associated-MSM closure before
   producing a usable Lean function. -/
def final_commitment_keys_refinement_statement : Prop :=
  ∀ {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {μ : ℕ} (x : Fin μ → F)
    (ckA ckB : Fin (2 ^ μ) → G)
    (translated : G × G),
    translated =
    (Ipp.msm (Ipp.transcriptCoeffs (fun j => (x j)⁻¹) 1) ckA,
      Ipp.msm (Ipp.transcriptCoeffs x 1) ckB)

end Ipp.Extracted
