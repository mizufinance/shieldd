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

end Ipp
