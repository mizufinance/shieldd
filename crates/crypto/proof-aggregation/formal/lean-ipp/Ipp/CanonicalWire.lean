/-
GAP-00: typed canonical wire framing for the pinned arkworks proof object.
The decoder operations are signatures only; their curve and field laws belong
to GAP-01 through GAP-07.
-/
import Mathlib.Data.List.OfFn

namespace Ipp

namespace CanonicalWire

abbrev Bytes (n : Nat) := Fin n → UInt8

abbrev FqBytes := Bytes 48
abbrev Fq2Bytes := Bytes 96
abbrev Fq6Bytes := Bytes 288
abbrev Fq12Bytes := Bytes 576

structure FqWire where
  bytes : FqBytes

structure Fq2Wire where
  c0 : FqWire
  c1 : FqWire

structure Fq6Wire where
  c0 : Fq2Wire
  c1 : Fq2Wire
  c2 : Fq2Wire

structure Fq12Wire where
  c0 : Fq6Wire
  c1 : Fq6Wire

structure PointFlags where
  infinity : Bool
  sign : Bool

structure G1Wire where
  flags : PointFlags
  x : FqWire

structure G2Wire where
  flags : PointFlags
  x : Fq2Wire

structure PairingOutputWire where
  value : Fq12Wire

structure CommitmentWire where
  ab : Fq12Wire × Fq12Wire × Fq12Wire
  c : Fq12Wire × G1Wire

structure RoundWire where
  left : CommitmentWire
  right : CommitmentWire

structure AggregateProofWire (μ : Nat) where
  comA : PairingOutputWire
  comB : PairingOutputWire
  comC : PairingOutputWire
  ipAb : PairingOutputWire
  aggC : G1Wire
  rounds : Fin μ → RoundWire
  finalCk : G2Wire × G1Wire
  finalCkProofs : G2Wire × G1Wire
  finalMessages : G1Wire × G2Wire × G1Wire

/-- Curve-dependent canonical decoders, stated without committing to a model. -/
structure DecoderFamily (F Fq2 Fq12 G1 G2 GT : Type*) where
  decodeFq : FqWire → Option F
  decodeFq2 : Fq2Wire → Option Fq2
  decodeFq12 : Fq12Wire → Option Fq12
  decodeG1 : G1Wire → Option G1
  decodeG2 : G2Wire → Option G2
  decodePairingOutput : PairingOutputWire → Option GT

def decodeFq {F Fq2 Fq12 G1 G2 GT : Type*}
    (D : DecoderFamily F Fq2 Fq12 G1 G2 GT) := D.decodeFq
def decodeFq2 {F Fq2 Fq12 G1 G2 GT : Type*}
    (D : DecoderFamily F Fq2 Fq12 G1 G2 GT) := D.decodeFq2
def decodeFq12 {F Fq2 Fq12 G1 G2 GT : Type*}
    (D : DecoderFamily F Fq2 Fq12 G1 G2 GT) := D.decodeFq12
def decodeG1 {F Fq2 Fq12 G1 G2 GT : Type*}
    (D : DecoderFamily F Fq2 Fq12 G1 G2 GT) := D.decodeG1
def decodeG2 {F Fq2 Fq12 G1 G2 GT : Type*}
    (D : DecoderFamily F Fq2 Fq12 G1 G2 GT) := D.decodeG2
def decodePairingOutput {F Fq2 Fq12 G1 G2 GT : Type*}
    (D : DecoderFamily F Fq2 Fq12 G1 G2 GT) :=
  D.decodePairingOutput

def CommitmentWire.gtElements (c : CommitmentWire) : List Fq12Wire :=
  [c.ab.1, c.ab.2.1, c.ab.2.2, c.c.1]

def RoundWire.gtElements (r : RoundWire) : List Fq12Wire :=
  r.left.gtElements ++ r.right.gtElements

def AggregateProofWire.gtElements {μ : Nat} (p : AggregateProofWire μ) :
    List Fq12Wire :=
  [p.comA.value, p.comB.value, p.comC.value, p.ipAb.value] ++
    (List.ofFn fun i : Fin μ => (p.rounds i).gtElements).flatten

def CommitmentWire.g1Elements (c : CommitmentWire) : List G1Wire := [c.c.2]

def RoundWire.g1Elements (r : RoundWire) : List G1Wire :=
  r.left.g1Elements ++ r.right.g1Elements

def AggregateProofWire.g1Elements {μ : Nat} (p : AggregateProofWire μ) :
    List G1Wire :=
  [p.aggC, p.finalCk.2, p.finalCkProofs.2, p.finalMessages.1,
    p.finalMessages.2.2] ++
    (List.ofFn fun i : Fin μ => (p.rounds i).g1Elements).flatten

def AggregateProofWire.g2Elements {μ : Nat} (p : AggregateProofWire μ) :
    List G2Wire :=
  [p.finalCk.1, p.finalCkProofs.1, p.finalMessages.2.1]

private theorem ofFn_constant_sum {n : Nat} (f : Fin n → Nat) (k : Nat)
    (h : ∀ i, f i = k) : (List.ofFn f).sum = n * k := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [List.ofFn_succ]
      have hzero : f 0 = k := h 0
      have htail : ∀ i : Fin n, (f i.succ) = k := by
        intro i
        exact h i.succ
      simp only [List.sum_cons, hzero]
      rw [ih (fun i => f i.succ) htail]
      simp [Nat.succ_mul, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]

theorem CommitmentWire.gtElements_length (c : CommitmentWire) :
    c.gtElements.length = 4 := by
  simp [CommitmentWire.gtElements]

theorem RoundWire.gtElements_length (r : RoundWire) :
    r.gtElements.length = 8 := by
  simp [RoundWire.gtElements, CommitmentWire.gtElements]

theorem AggregateProofWire.gtElements_length {μ : Nat}
    (p : AggregateProofWire μ) :
    p.gtElements.length = 4 + 8 * μ := by
  have hround : ∀ i : Fin μ, (p.rounds i).gtElements.length = 8 := by
    intro i
    exact RoundWire.gtElements_length (p.rounds i)
  rw [AggregateProofWire.gtElements, List.length_append, List.length_cons,
    List.length_flatten]
  rw [List.map_ofFn]
  have hround' : ∀ i : Fin μ,
      (List.length ∘ fun j => (p.rounds j).gtElements) i = 8 := by
    intro i
    exact hround i
  rw [ofFn_constant_sum (List.length ∘ fun i => (p.rounds i).gtElements) 8 hround']
  simp [Nat.mul_comm, Nat.add_assoc, Nat.add_left_comm, Nat.add_comm]

theorem AggregateProofWire.g1Elements_length {μ : Nat}
    (p : AggregateProofWire μ) :
    p.g1Elements.length = 5 + 2 * μ := by
  have hround : ∀ i : Fin μ, (p.rounds i).g1Elements.length = 2 := by
    intro i
    simp [RoundWire.g1Elements, CommitmentWire.g1Elements]
  rw [AggregateProofWire.g1Elements, List.length_append, List.length_cons,
    List.length_flatten]
  rw [List.map_ofFn]
  have hround' : ∀ i : Fin μ,
      (List.length ∘ fun j => (p.rounds j).g1Elements) i = 2 := by
    intro i
    exact hround i
  rw [ofFn_constant_sum (List.length ∘ fun i => (p.rounds i).g1Elements) 2 hround']
  simp [Nat.mul_comm, Nat.add_assoc, Nat.add_left_comm, Nat.add_comm]

theorem AggregateProofWire.g2Elements_length {μ : Nat}
    (p : AggregateProofWire μ) : p.g2Elements.length = 3 := by
  simp [AggregateProofWire.g2Elements]

/-- Every aggregate-proof field is represented by its canonical wire family:
four top-level GT values, eight GT values and two G1 values per round, five
top-level/per-round G1 values in total, and the three top-level G2 values. -/
theorem aggregateProofWire_coverage {μ : Nat} (p : AggregateProofWire μ) :
    p.gtElements.length = 4 + 8 * μ ∧
    p.g1Elements.length = 5 + 2 * μ ∧
    p.g2Elements.length = 3 := by
  exact ⟨p.gtElements_length, p.g1Elements_length, p.g2Elements_length⟩

end CanonicalWire

end Ipp
