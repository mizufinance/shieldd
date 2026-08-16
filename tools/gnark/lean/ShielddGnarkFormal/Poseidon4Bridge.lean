import ShielddGnarkFormal.Extracted.PoseidonHash4
import ShielddGnarkFormal.Poseidon4Spec
import ShielddGnarkFormal.Extracted.QuadPath2
import ShielddGnarkFormal.QuadPathSpec
import ShielddGnarkFormal.Poseidon377
import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Rate-4 (width-5) Poseidon bridge, the width-5 analogue of `Poseidon2Bridge`.

The round gadgets are flat side-condition-free gate chains, so each is an honest
`↔` (`_uncps`): `round st cs k ↔ k (spec st cs)`. Chaining the 39 round iffs
collapses `poseidonPerm4` to `k (permSpec4 …)`.

The extracted `poseidonFullRound_5_5`/`poseidonPartialRound_5_5`/`poseidonPerm4`
defs are byte-identical between `Extracted.PoseidonHash4` and
`Extracted.QuadPath2`, so one spec (`fr5`/`pr5`/`permSpec4`) bridges both: the
`PoseidonHash4` form gives the `poseidon-hash4` gadget spec, and the `QuadPath2`
form discharges `QuadPath.Perm4Computes` (M3's abstract per-node-hash hypothesis). -/

namespace Shieldd.GnarkFormal.Poseidon4Bridge

def p17 (a : Poseidon4Spec.F) : Poseidon4Spec.F :=
  let a2 := a * a
  let a4 := a2 * a2
  let a8 := a4 * a4
  let a16 := a8 * a8
  a16 * a
def fr5 := Poseidon377.Fixed4.fr5
def pr5 := Poseidon377.Fixed4.pr5
def permSpec4 := Poseidon377.hash4

open Shieldd.GnarkFormal.Extracted.PoseidonHash4 (F Order)

section PoseidonHash4
open Shieldd.GnarkFormal.Extracted.PoseidonHash4
  (poseidonFullRound_5_5 poseidonPartialRound_5_5 poseidonPerm4 circuit)

theorem fullRound_5_5_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 5) (k : List.Vector F 5 → Prop) :
    poseidonFullRound_5_5 st cs k ↔ k (fr5 st cs) := by
  unfold poseidonFullRound_5_5 fr5 Poseidon377.Fixed4.fr5 Poseidon377.Fixed4.p17
  simp only [Extracted.PoseidonHash4.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem partialRound_5_5_uncps [Fact (Nat.Prime Order)]
    (st cs : List.Vector F 5) (k : List.Vector F 5 → Prop) :
    poseidonPartialRound_5_5 st cs k ↔ k (pr5 st cs) := by
  unfold poseidonPartialRound_5_5 pr5 Poseidon377.Fixed4.pr5 Poseidon377.Fixed4.p17
  simp only [Extracted.PoseidonHash4.Gates, GatesGnark9, GatesGnark8, GatesDef.add, GatesDef.mul,
    exists_eq_left]
  rfl

theorem perm4_uncps [Fact (Nat.Prime Order)] (Domain In0 In1 In2 In3 : F) (k : F → Prop) :
    poseidonPerm4 Domain In0 In1 In2 In3 k
      ↔ k (permSpec4 Domain In0 In1 In2 In3) := by
  unfold poseidonPerm4 permSpec4 Poseidon377.hash4 Poseidon377.Fixed4.hash
  simp only [fullRound_5_5_uncps, partialRound_5_5_uncps]
  rfl

/-- Soundness of the extracted `poseidon-hash4` gadget: any satisfying assignment
forces `Out` to equal the rate-4 permutation spec of the four inputs. -/
theorem circuit_sound [Fact (Nat.Prime Order)]
    (Domain In0 In1 In2 In3 Out : F) :
    circuit Domain In0 In1 In2 In3 Out
      → Out = permSpec4 Domain In0 In1 In2 In3 := by
  unfold circuit
  rw [perm4_uncps]
  rintro ⟨heq, _⟩
  simpa [Extracted.PoseidonHash4.Gates, GatesGnark9, GatesGnark8, GatesDef.eq, eq_comm] using heq

end PoseidonHash4

/-! Discharge M3's abstract per-node-hash hypothesis with the concrete spec.

`QuadPath2`'s round and permutation defs are byte-identical to `PoseidonHash4`'s,
so the same `fr5`/`pr5`/`permSpec4` spec applies. Proving `Perm4Computes permSpec4`
turns `QuadPath.circuit_sound` from an abstract-`H4` statement into concrete
soundness of the quad path against the real Poseidon rate-4 hash. -/
/-- `QuadPath.Perm4Computes` holds for the concrete rate-4 spec: the extracted
per-node hash gadget computes `permSpec4`. Discharges M3's hypothesis.

`QuadPath2.poseidonPerm4` is definitionally equal to `PoseidonHash4.poseidonPerm4`
(identical bodies, the only difference being the equal `Order` numeral), so
`perm4_uncps` closes the goal up to defeq. -/
theorem perm4Computes [Fact (Nat.Prime Order)] [Fact (Nat.Prime Extracted.QuadPath2.Order)] :
    QuadPath.Perm4Computes (fun d a b c e => permSpec4 d a b c e) := by
  intro d a b c e k
  exact perm4_uncps d a b c e k

/-- Concrete depth-2 quad-path soundness: `QuadPath.circuit_sound` specialised to
the real Poseidon rate-4 hash `permSpec4`, with M3's abstract hypothesis discharged
by `perm4Computes`. No abstract per-node hash remains. -/
theorem quadPath_circuit_sound [Fact (Nat.Prime Order)] [Fact (Nat.Prime Extracted.QuadPath2.Order)]
    (domain leaf position root : F) (path : List.Vector (List.Vector F 3) 2) :
    Extracted.QuadPath2.circuit domain leaf position path root
      → ∃ bits, Extracted.QuadPath2.Gates.to_binary position 4 bits
          ∧ root = QuadPath.recover2 (fun d a b c e => permSpec4 d a b c e)
              domain leaf path bits :=
  QuadPath.circuit_sound perm4Computes domain leaf position root path

/-- Concrete depth-16 (production-depth) quad-path soundness: `QuadPath16.circuit`
forces `Root = recover16` of the leaf against the real Poseidon rate-4 hash
`permSpec4`. M3's abstract per-node hash is discharged by `perm4Computes`. -/
theorem quadPath16_circuit_sound [Fact (Nat.Prime Order)]
    [Fact (Nat.Prime Extracted.QuadPath2.Order)] [Fact (Nat.Prime Extracted.QuadPath16.Order)]
    (domain leaf position root : F) (path : List.Vector (List.Vector F 3) 16) :
    Extracted.QuadPath16.circuit domain leaf position path root
      → ∃ bits, Extracted.QuadPath16.Gates.to_binary position 32 bits
          ∧ root = QuadPath.recover16 (fun d a b c e => permSpec4 d a b c e)
              domain leaf path bits :=
  QuadPath.circuit_sound16 perm4Computes domain leaf position root path

end Shieldd.GnarkFormal.Poseidon4Bridge
