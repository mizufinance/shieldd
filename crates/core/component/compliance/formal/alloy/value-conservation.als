/*
 * value-conservation.als — whole-transaction value conservation for the
 * homomorphic balance-commitment / binding-signature mechanism.
 *
 * Scope: design-level. Group elements are abstracted to per-generator integer
 * coefficients; the binding signature is modeled as "the summed commitment lies
 * in the blinding-only subspace" (every value generator has zero net
 * coefficient). The cryptographic facts behind that abstraction are tracked in
 * the assumption ledger:
 *   - ZK-ASSUME-INDEP-VALUE-GENERATORS  (distinct assets -> independent G_v)
 *   - ZK-ASSUME-BINDING-SIG-DL          (a verifying binding sig proves the
 *                                            summed commitment has zero value part)
 *
 * Sources of truth (Rust):
 *   crates/core/asset/src/balance/commitment.rs        Value::commit (v*G_v + r*H)
 *   crates/core/transaction/src/transaction.rs:621      binding_verification_key
 *   crates/core/app/src/action_handler/transaction/stateless.rs:39  valid_binding_signature
 *
 * Assertion:
 *   BindingImpliesConservation — with independent value generators, a verifying
 *   binding signature (summed commitment in the blinding subspace) forces
 *   per-asset net value to be zero (no inflation across the transaction).
 */

open util/integer

sig Generator {}

// Each asset has one value generator G_v.
sig Asset { gen: one Generator }

// A signed contribution: inputs add value, outputs subtract it.
sig Action {
  asset: one Asset,
  value: one Int
}

one sig Tx { actions: set Action }

// Net signed amount per asset.
fun netOf[a: Asset]: Int {
  sum x: (Tx.actions & asset.a) | x.value
}

// Aggregate value coefficient on a generator after homomorphic summation of
// all action commitments.
fun coeffOf[g: Generator]: Int {
  sum x: (Tx.actions & asset.(gen.g)) | x.value
}

// The binding verification key lies in the blinding-only subspace: every value
// generator carries zero net coefficient (ZK-ASSUME-BINDING-SIG-DL).
pred bindingValid {
  all g: Generator | coeffOf[g] = 0
}

pred conserves {
  all a: Asset | netOf[a] = 0
}

// Independent value generators: distinct assets use distinct generators
// (ZK-ASSUME-INDEP-VALUE-GENERATORS).
pred independentGenerators {
  all disj a, b: Asset | a.gen != b.gen
}

assert BindingImpliesConservation {
  (independentGenerators and bindingValid) implies conserves
}

check BindingImpliesConservation for 7 but 6 int

// Non-vacuity: a non-trivial balanced transaction exists (some input and some
// output of the same asset cancelling), so the check is not vacuous.
pred show {
  independentGenerators
  bindingValid
  some x: Tx.actions | gt[x.value, 0]
  some x: Tx.actions | lt[x.value, 0]
}

run show for 7 but 6 int
