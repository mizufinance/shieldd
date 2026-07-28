import ShielddGnarkFormal.Extracted.Nullifier
import ShielddGnarkFormal.Poseidon3Spec
import ShielddGnarkFormal.Specs
import ShielddGnarkFormal.Poseidon377
import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Rate-3 (width-4) Poseidon bridge and nullifier soundness, the width-4
analogue of `Poseidon2Bridge`/`Poseidon4Bridge`. Chaining the 39 round iffs
collapses `poseidonPerm3` to `k (permSpec3 …)`; the nullifier circuit then pins
`Nullifier = permSpec3 nullifierDomain …`, the canonical Poseidon rate-3 hash. -/

namespace Shieldd.GnarkFormal.Poseidon3Bridge

def p17 (a : Poseidon3Spec.F) : Poseidon3Spec.F :=
  let a2 := a * a
  let a4 := a2 * a2
  let a8 := a4 * a4
  let a16 := a8 * a8
  a16 * a
def fr4 := Poseidon3Spec.fr4
def pr4 := Poseidon3Spec.pr4
def permSpec3 := Poseidon3Spec.permSpec3

open Shieldd.GnarkFormal.Extracted.Nullifier
  (F Order poseidonFullRound_4_4 poseidonPartialRound_4_4 poseidonPerm3 circuit)

theorem fullRound_4_4_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 4) (k : List.Vector F 4 → Prop) :
    poseidonFullRound_4_4 st cs k ↔ k (fr4 st cs) := by
  unfold poseidonFullRound_4_4 fr4 Poseidon3Spec.fr4 Poseidon3Spec.p17
  simp only [Extracted.Nullifier.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem partialRound_4_4_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 4) (k : List.Vector F 4 → Prop) :
    poseidonPartialRound_4_4 st cs k ↔ k (pr4 st cs) := by
  unfold poseidonPartialRound_4_4 pr4 Poseidon3Spec.pr4 Poseidon3Spec.p17
  simp only [Extracted.Nullifier.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem perm3_uncps [Fact (Nat.Prime Order)] (Domain In0 In1 In2 : F) (k : F → Prop) :
    poseidonPerm3 Domain In0 In1 In2 k
      ↔ k (permSpec3 Domain In0 In1 In2) := by
  unfold poseidonPerm3 permSpec3
  simp only [fullRound_4_4_uncps, partialRound_4_4_uncps]
  rfl

/-- The nullifier domain separator baked into the extracted `circuit`, equal to
`Poseidon377.nullifierDomain`. -/
abbrev nullifierDomainLit : F :=
  (8414456998312168765536290609671763166003140083093291047798055894678807643791 : F)

/-- Soundness of the extracted nullifier circuit: any satisfying assignment forces
`Nullifier` to equal the rate-3 permutation spec of `(Nk, StateCommitment, Position)`
under the nullifier domain. -/
theorem circuit_sound [Fact (Nat.Prime Order)]
    (Nk StateCommitment Position Nullifier : F) :
    circuit Nk StateCommitment Position Nullifier
      → Nullifier = permSpec3 nullifierDomainLit Nk StateCommitment Position := by
  unfold circuit
  rw [perm3_uncps]
  rintro ⟨heq, _⟩
  simpa [Extracted.Nullifier.Gates, GatesGnark9, GatesGnark8, GatesDef.eq, eq_comm] using heq

-- Parity: the in-circuit rate-3 permutation spec agrees with the M1 de-opaqued
-- `Poseidon377.hash3`/`nullifierSpec` on a pinned vector — computational evidence
-- that the extracted nullifier circuit computes the canonical Poseidon rate-3 hash.
#guard (permSpec3 nullifierDomainLit 2 3 5).val ==
  (Poseidon377.hash3 Poseidon377.nullifierDomain 2 3 5).val

#guard (permSpec3 nullifierDomainLit 2 3 5).val ==
  (Shieldd.GnarkFormal.nullifierSpec 2 3 5).val

end Shieldd.GnarkFormal.Poseidon3Bridge
