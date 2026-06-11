import Mathlib.Data.ZMod.Basic

/-!
Concrete Poseidon377 permutation over the BLS12-377 scalar field.

Ported 1:1 from the ACL2 executable spec
(`crates/core/component/shielded-pool/formal/acl2/generated/poseidon377-spec.lisp`,
itself generated from `phase05_vectors.json`) and cross-checked against the gnark
ground truth `tools/gnark/internal/primitives/poseidon377.go`.

Round schedule is full(4) / partial(31) / full(4) for every rate; width = rate+1;
state[0] is the domain separator, state[1:] the inputs; the rate-N hash returns
state[1] (the `cadr`) after the permutation. No primality `Fact` is introduced:
Poseidon needs only ring ops and exponentiation.
-/

namespace Shieldd.GnarkFormal.Poseidon377

/-- BLS12-377 scalar field prime (matches the extracted gadgets' `Order`). -/
def P : Nat :=
  8444461749428370424248824938781546531375899335154063827935233455917409239041

abbrev F := ZMod P

/-- S-box `x^17` via the addition chain `x2,x4,x8,x16,*x` (mirrors `poseidon377-pow17`). -/
def pow17 (x : F) : F :=
  let x2 := x * x
  let x4 := x2 * x2
  let x8 := x4 * x4
  let x16 := x8 * x8
  x16 * x

/-- Add round constants elementwise (`poseidon377-add-constants`). -/
def addConstants (st cs : List F) : List F :=
  List.zipWith (· + ·) st cs

/-- Full S-box: `pow17` on every element (`poseidon377-sbox-full`). -/
def sboxFull (st : List F) : List F :=
  st.map pow17

/-- Partial S-box: `pow17` on the first element only (`poseidon377-sbox-partial`). -/
def sboxPartial (st : List F) : List F :=
  match st with
  | [] => []
  | x :: rest => pow17 x :: rest

/-- Inner product of an MDS row with the state. Left-fold with no leading zero,
matching gnark's `mixLayerMDS` association exactly so the extracted-circuit gate
tree is definitionally equal to this spec. -/
def dot (row st : List F) : F :=
  match List.zipWith (· * ·) row st with
  | [] => 0
  | p :: ps => ps.foldl (· + ·) p

/-- MDS mixing layer: one `dot` per row (`poseidon377-mix`). -/
def mix (mds : List (List F)) (st : List F) : List F :=
  mds.map (fun row => dot row st)

/-- One full round: consume `width` round constants, full S-box, mix. -/
def fullRoundStep (st arc : List F) (mds : List (List F)) : List F × List F :=
  let width := st.length
  let rc := arc.take width
  let rest := arc.drop width
  (mix mds (sboxFull (addConstants st rc)), rest)

/-- One partial round: consume `width` round constants, partial S-box, mix. -/
def partialRoundStep (st arc : List F) (mds : List (List F)) : List F × List F :=
  let width := st.length
  let rc := arc.take width
  let rest := arc.drop width
  (mix mds (sboxPartial (addConstants st rc)), rest)

/-- Apply `n` full rounds, threading the remaining round-constant stream. -/
def fullRounds : Nat → List F → List F → List (List F) → List F × List F
  | 0, st, arc, _ => (st, arc)
  | n + 1, st, arc, mds =>
    let (st', arc') := fullRoundStep st arc mds
    fullRounds n st' arc' mds

/-- Apply `n` partial rounds, threading the remaining round-constant stream. -/
def partialRounds : Nat → List F → List F → List (List F) → List F × List F
  | 0, st, arc, _ => (st, arc)
  | n + 1, st, arc, mds =>
    let (st', arc') := partialRoundStep st arc mds
    partialRounds n st' arc' mds

/-- Full Poseidon permutation: full(`fullHalf`)/partial/full(`fullHalf`). -/
def permute (fullHalf numPartial : Nat) (st arc : List F) (mds : List (List F)) : List F :=
  let (st1, arc1) := fullRounds fullHalf st arc mds
  let (st2, arc2) := partialRounds numPartial st1 arc1 mds
  let (st3, _) := fullRounds fullHalf st2 arc2 mds
  st3

/-- Rate-N sponge hash: prepend the domain, permute, return state[1]. -/
def hashRate (arc : List F) (mds : List (List F)) (domain : F) (inputs : List F) : F :=
  (permute 4 31 (domain :: inputs) arc mds).getD 1 0

end Shieldd.GnarkFormal.Poseidon377
