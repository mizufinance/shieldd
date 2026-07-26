import Ipp.Extracted.ArkworksMsmCollectModel
import Ipp.Extracted.ArkworksMsmRecombine

/-! Digit reconstruction and the finite window/point sum exchange for MSM. -/

namespace Ipp.Extracted.ArkworksMsm

open Aeneas Aeneas.Std
open Ipp.Extracted.ArkworksScalarMul

/-- One packaged scalar row evaluates to the scalar's canonical integer. -/
theorem msmScalarDigits_value (width : Nat) (scalar : ScalarArray)
    (hwidth : 0 < width) (hradixWord : 2 ^ width < MacCampaign.u64Base)
    (hscalar : scalarToNat scalar < 2 ^ 253) :
    evalDigits (2 ^ width) (msmScalarDigits width scalar) =
      Int.ofNat (scalarToNat scalar) := by
  simpa [msmScalarDigits, msmDigitCount, scalarValue] using
    makeDigits_value_pow_two scalar width hwidth hradixWord hscalar

/-- The packaged window sums are exactly the ordered scalar combination. -/
theorem msm_digits_exchange {G : Type} [AddCommGroup G] {pointCount : Nat}
    (width : Nat) (scalars : Fin pointCount → ScalarArray)
    (points : Fin pointCount → G)
    (hwidth : 0 < width) (hradixWord : 2 ^ width < MacCampaign.u64Base)
    (hscalars : ∀ point, scalarToNat (scalars point) < 2 ^ 253) :
    (∑ window : Fin (msmDigitCount width),
        (2 ^ width) ^ window.val •
          (∑ point : Fin pointCount,
            ((msmScalarDigits width (scalars point))[window.val]'(by
              simpa using window.isLt)).value • points point)) =
      ∑ point : Fin pointCount, scalarToNat (scalars point) • points point := by
  rw [window_sum_exchange (2 ^ width)
    (fun point window =>
      ((msmScalarDigits width (scalars point))[window.val]'(by
        simpa using window.isLt)).value) points]
  apply Finset.sum_congr rfl
  intro point _
  have heval :
      evalDigits (2 ^ width) (msmScalarDigits width (scalars point)) =
        ∑ window : Fin (msmDigitCount width),
          Int.ofNat ((2 ^ width) ^ window.val) *
            ((msmScalarDigits width (scalars point))[window.val]'(by
              simpa using window.isLt)).value := by
    have heval := evalDigits_eq_sum (2 ^ width)
      (msmScalarDigits width (scalars point))
    rw [Finset.sum_fin_eq_sum_range] at heval
    rw [Finset.sum_fin_eq_sum_range]
    simpa using heval
  rw [← heval, msmScalarDigits_value width (scalars point) hwidth
    hradixWord (hscalars point)]
  simp

/-- Recombining the modeled low-to-high window list yields the ordered MSM. -/
theorem msm_windowValue_eq_ordered {G : Type} [AddCommGroup G]
    {pointCount : Nat} (width : Nat)
    (scalars : Fin pointCount → ScalarArray) (points : Fin pointCount → G)
    (hwidth : 0 < width) (hradixWord : 2 ^ width < MacCampaign.u64Base)
    (hscalars : ∀ point, scalarToNat (scalars point) < 2 ^ 253) :
    windowValue (2 ^ width)
        (List.ofFn (fun window : Fin (msmDigitCount width) =>
          ∑ point : Fin pointCount,
            ((msmScalarDigits width (scalars point))[window.val]'(by
              simpa using window.isLt)).value • points point)) =
      ∑ point : Fin pointCount, scalarToNat (scalars point) • points point := by
  rw [windowValue_eq_sum]
  have hexchange :=
    msm_digits_exchange width scalars points hwidth hradixWord hscalars
  rw [Finset.sum_fin_eq_sum_range] at hexchange ⊢
  simpa using hexchange

#print axioms msmScalarDigits_value
#print axioms msm_digits_exchange
#print axioms msm_windowValue_eq_ordered

end Ipp.Extracted.ArkworksMsm
