/-
U-shared: abstract pairing structure and the named cryptographic assumption
definitions shared by all proof units. Assumptions are named `Prop`
definitions consumed as explicit hypotheses (see DESIGN.md); each maps 1:1 to
a `formal-handoff.md` assumption row. No axioms — the `just snarkpack-lean-ipp`
gate tolerates `axiom` only in this file as an escape hatch, but the intended
state is axiom-free.
-/
import Mathlib.LinearAlgebra.BilinearMap
import Mathlib.Algebra.BigOperators.Fin

namespace Ipp

open scoped BigOperators

-- Prime-order groups are F-vector spaces (DESIGN §Model); GT written additively.
variable {F : Type*} [Field F]
variable {G1 G2 GT : Type*}
variable [AddCommGroup G1] [Module F G1]
variable [AddCommGroup G2] [Module F G2]
variable [AddCommGroup GT] [Module F GT]
variable {n : ℕ}
-- The pairing as an F-bilinear map; non-degeneracy is not needed for U1.
variable (e : G1 →ₗ[F] G2 →ₗ[F] GT)

/-- Pairing inner product `∑ᵢ e(aᵢ, bᵢ)`. -/
def ipE (a : Fin n → G1) (b : Fin n → G2) : GT := ∑ i, e (a i) (b i)

/-- Multi-scalar multiplication `∑ᵢ cᵢ • gᵢ` in an F-module `G`. -/
def msm {G : Type*} [AddCommGroup G] [Module F G] (c : Fin n → F) (g : Fin n → G) : G :=
  ∑ i, c i • g i

/-- q-SDH-type KZG structured-key binding and z-challenge SZ step (U3/U5a;
    maps 1:1 to a future
    `formal-handoff.md` assumption row `assume.kzg-structured-key-binding`;
    spec rows `tipp-mipp.kzg-equations`, `tipp-mipp.power-sequence`).

    `srs` is the structured commitment-key basis (the SRS powers `h·βⁱ` / `g·αⁱ`
    the opening is checked against). `accept z coeffs key opening` abstracts the
    verifier's pairing check on a claimed final key `key` and opening proof
    `opening` for the transcript polynomial with coefficients `coeffs` at the KZG
    challenge `z` — its concrete instance is
    `verify_commitment_key_g{1,2}_kzg_opening` in `tipa/mod.rs`. For every `z`,
    an accepted pair pins the key to the honest structured MSM. This row bundles
    q-SDH binding with the z-challenge Schwartz--Zippel step; failure of the
    required z-goodness condition is a U5a bad event. Stated as an explicit
    hypothesis (never an axiom), discharged at S1 handoff. -/
def KzgStructuredKeyBinding {G : Type*} [AddCommGroup G] [Module F G] {N : ℕ}
    (srs : Fin N → G) (accept : F → (Fin N → F) → G → G → Prop) : Prop :=
  ∀ (z : F) (coeffs : Fin N → F) (key opening : G),
    accept z coeffs key opening → key = msm coeffs srs

/-- AFGHO/double-pairing commitment binding (U2; maps 1:1 to a future
    `formal-handoff.md` assumption row `assume.pairing-commitment-binding`;
    spec rows `gipa.round-folding`, `tipp-mipp.gipa`).

    The idealization of binding for the pairing-based vector commitment
    `v ↦ ∑ᵢ cm(ckᵢ, vᵢ)` at keys `ck`: the commitment map is injective on
    messages. Computationally justified by the AFGHO double-pairing (SXDH-type)
    binding of the TIPP/MIPP commitments. U2 consumes it only to pin child
    openings to canonical folds; `Ipp.binding_foldMsg` transports it to the
    folded keys, so the assumption surface stays at the SRS keys. Stated as an
    explicit hypothesis (never an axiom), discharged at S1 handoff. -/
def PairingCommitmentBinding {K Msg M : Type*}
    [AddCommGroup K] [Module F K] [AddCommGroup Msg] [Module F Msg]
    [AddCommGroup M] [Module F M] {n : ℕ}
    (cm : K →ₗ[F] Msg →ₗ[F] M) (ck : Fin n → K) : Prop :=
  Function.Injective fun v : Fin n → Msg => ∑ i, cm (ck i) (v i)

end Ipp
