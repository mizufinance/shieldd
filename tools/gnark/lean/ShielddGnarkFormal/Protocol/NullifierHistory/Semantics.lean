import Mathlib.Tactic
import ShielddGnarkFormal.Protocol.Common

/-!
Independent semantics for nullifier-generation classification and history.

This module models the accepted relation, not a generated constraint system.
Hashes, the fixed Merkle path computation, and base-proof verification are
parameters so their exact deployed implementations can refine this relation.
-/

namespace Shieldd.GnarkFormal.Protocol.NullifierHistory

def protocolVersion : Nat := 2
def positionBound : Nat := 2 ^ 48
def generationBound : Nat := 2 ^ 64
def treePositionBound : Nat := 2 ^ 40
def chunkWidth : Nat := 10

/-- Equality with the floor is recent; dummy slots never request history. -/
def expectedHistoryRequired
    (position recentPositionFloor : Nat) (isDummy : Bool) : Bool :=
  if isDummy then false else decide (position < recentPositionFloor)

/-- Field-level relation exposed by every real spend circuit. -/
def FieldClassification
    (position recentPositionFloor historyRequired : Protocol.Common.F) : Prop :=
  position.val < positionBound ∧
    recentPositionFloor.val < positionBound ∧
    historyRequired =
      if position.val < recentPositionFloor.val then 1 else 0

structure ClassificationClaim where
  position : Nat
  recentPositionFloor : Nat
  isDummy : Bool
  historyRequired : Bool
  deriving DecidableEq, Repr

structure ClassificationValid (claim : ClassificationClaim) : Prop where
  positionCanonical : claim.position < positionBound
  floorCanonical : claim.recentPositionFloor < positionBound
  classified :
    claim.historyRequired =
      expectedHistoryRequired
        claim.position claim.recentPositionFloor claim.isDummy

structure IndexedLeaf where
  value : Nat
  nextIndex : Nat
  nextValue : Nat
  isLowerSentinel : Bool
  isTerminal : Bool
  deriving DecidableEq, Repr

/-- The local leaf invariants checked by one generation proof. -/
structure LeafCanonical
    (scalarOrder position : Nat) (leaf : IndexedLeaf) : Prop where
  positionCanonical : position < treePositionBound
  valueCanonical : leaf.value < scalarOrder
  nextIndexCanonical : leaf.nextIndex < treePositionBound
  nextValueCanonical : leaf.nextValue < scalarOrder
  sentinelIffPositionZero : leaf.isLowerSentinel = true ↔ position = 0
  sentinelValueZero : leaf.isLowerSentinel = true → leaf.value = 0
  terminalSuccessorZero :
    leaf.isTerminal = true → leaf.nextIndex = 0 ∧ leaf.nextValue = 0
  nonterminalSuccessorPresent :
    leaf.isTerminal = false → leaf.nextIndex ≠ 0

/-- The authenticated predecessor/successor gap containing a nullifier. -/
def GapCovers (leaf : IndexedLeaf) (nullifier : Nat) : Prop :=
  (leaf.isLowerSentinel = true ∨ leaf.value < nullifier) ∧
    (leaf.isTerminal = true ∨ nullifier < leaf.nextValue)

abbrev Path20 := Fin 20 → Fin 3 → Nat

structure GenerationPublic where
  protocolVersion : Nat
  nullifier : Nat
  generationIndex : Nat
  generationRoot : Nat
  generationStartPosition : Nat
  generationEndPosition : Nat
  startHistoryHead : Nat
  endHistoryHead : Nat
  deriving DecidableEq, Repr

structure GenerationWitness where
  privateNullifier : Nat
  leaf : IndexedLeaf
  leafPosition : Nat
  path : Path20

/--
The fixed generation circuit relation. `quadRoot` includes the exact 20-level
path computation; `appendHistory` commits the ordered generation metadata.
-/
structure GenerationRelation
    (scalarOrder : Nat)
    (leafHash : IndexedLeaf → Nat)
    (quadRoot : Nat → Path20 → Nat → Nat)
    (appendHistory : Nat → Nat → Nat → Nat → Nat → Nat)
    (public : GenerationPublic)
    (witness : GenerationWitness) : Prop where
  version : public.protocolVersion = protocolVersion
  nullifierBinding : public.nullifier = witness.privateNullifier
  nullifierCanonical : public.nullifier < scalarOrder
  generationCanonical : public.generationIndex < generationBound
  startPositionCanonical : public.generationStartPosition < positionBound
  endPositionCanonical : public.generationEndPosition < positionBound
  intervalOrdered :
    public.generationStartPosition ≤ public.generationEndPosition
  rootCanonical : public.generationRoot < scalarOrder
  startHeadCanonical : public.startHistoryHead < scalarOrder
  endHeadCanonical : public.endHistoryHead < scalarOrder
  leafCanonical : LeafCanonical scalarOrder witness.leafPosition witness.leaf
  gap : GapCovers witness.leaf witness.privateNullifier
  rootBinding :
    quadRoot (leafHash witness.leaf) witness.path witness.leafPosition =
      public.generationRoot
  historyBinding :
    appendHistory
        public.startHistoryHead
        public.generationIndex
        public.generationRoot
        public.generationStartPosition
        public.generationEndPosition =
      public.endHistoryHead

/--
Global indexed-tree invariant maintained by insertion. A generation proof checks
one authenticated gap; this invariant is what makes that local gap a complete
nonmembership statement about the committed root.
-/
structure IndexedTreeSound
    (scalarOrder : Nat)
    (leafHash : IndexedLeaf → Nat)
    (quadRoot : Nat → Path20 → Nat → Nat)
    (contains : Nat → Nat → Prop) : Prop where
  authenticatedGapExcludes :
    ∀ root nullifier leaf position path,
      LeafCanonical scalarOrder position leaf →
      GapCovers leaf nullifier →
      quadRoot (leafHash leaf) path position = root →
      ¬ contains root nullifier

structure ChunkPublic where
  protocolVersion : Nat
  nullifier : Nat
  chunkIndex : Nat
  startHistoryHead : Nat
  endHistoryHead : Nat
  deriving DecidableEq, Repr

abbrev ChunkProofs := Fin chunkWidth → GenerationPublic

def currentProofIndex (index : Fin 9) : Fin chunkWidth :=
  ⟨index.val, by
    have bound := index.isLt
    simp only [chunkWidth]
    omega⟩

def nextProofIndex (index : Fin 9) : Fin chunkWidth :=
  ⟨index.val + 1, by
    have bound := index.isLt
    simp only [chunkWidth]
    omega⟩

/--
The outer BW6 relation after each embedded BLS proof has verified. Roots and
position ranges remain witness-only because they do not occur in `ChunkPublic`.
-/
structure ChunkRelation
    (scalarOrder : Nat)
    (baseProofAccepted : GenerationPublic → Prop)
    (public : ChunkPublic)
    (proofs : ChunkProofs) : Prop where
  version : public.protocolVersion = protocolVersion
  nullifierCanonical : public.nullifier < scalarOrder
  chunkRange : public.chunkIndex * chunkWidth + (chunkWidth - 1) < generationBound
  startHeadCanonical : public.startHistoryHead < scalarOrder
  endHeadCanonical : public.endHistoryHead < scalarOrder
  eachProofAccepted : ∀ index, baseProofAccepted (proofs index)
  protocolBound :
    ∀ index, (proofs index).protocolVersion = public.protocolVersion
  nullifierBound : ∀ index, (proofs index).nullifier = public.nullifier
  generationBound :
    ∀ index,
      (proofs index).generationIndex =
        public.chunkIndex * chunkWidth + index.val
  firstHeadBound :
    (proofs ⟨0, by decide⟩).startHistoryHead = public.startHistoryHead
  adjacentHeadsBound :
    ∀ index : Fin 9,
      (proofs (currentProofIndex index)).endHistoryHead =
        (proofs (nextProofIndex index)).startHistoryHead
  finalHeadBound :
    (proofs ⟨9, by decide⟩).endHistoryHead = public.endHistoryHead

/-- The only values disclosed by a recursive chunk proof. -/
structure ChunkDisclosure where
  protocolVersion : Nat
  nullifier : Nat
  chunkIndex : Nat
  startHistoryHead : Nat
  endHistoryHead : Nat
  deriving DecidableEq, Repr

def discloseChunk (public : ChunkPublic) : ChunkDisclosure :=
  {
    protocolVersion := public.protocolVersion
    nullifier := public.nullifier
    chunkIndex := public.chunkIndex
    startHistoryHead := public.startHistoryHead
    endHistoryHead := public.endHistoryHead
  }

def discloseChunkWithProofs
    (public : ChunkPublic) (_proofs : ChunkProofs) : ChunkDisclosure :=
  discloseChunk public

end Shieldd.GnarkFormal.Protocol.NullifierHistory
