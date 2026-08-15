import ShielddGnarkFormal.Protocol.NullifierHistory.Semantics

/-! Consequences of the independent nullifier-history relations. -/

namespace Shieldd.GnarkFormal.Protocol.NullifierHistory

theorem classification_dummy_is_never_historical
    (claim : ClassificationClaim)
    (valid : ClassificationValid claim)
    (dummy : claim.isDummy = true) :
    claim.historyRequired = false := by
  rw [valid.classified, expectedHistoryRequired, dummy]
  rfl

theorem classification_real_is_old_iff_below_floor
    (claim : ClassificationClaim)
    (valid : ClassificationValid claim)
    (real : claim.isDummy = false) :
    claim.historyRequired = true ↔
      claim.position < claim.recentPositionFloor := by
  rw [valid.classified, expectedHistoryRequired, real]
  simp

theorem classification_floor_equality_is_recent
    (claim : ClassificationClaim)
    (valid : ClassificationValid claim)
    (real : claim.isDummy = false)
    (equal : claim.position = claim.recentPositionFloor) :
    claim.historyRequired = false := by
  rw [valid.classified, expectedHistoryRequired, real]
  simp [equal]

theorem classification_is_unique
    (position floor : Nat) (isDummy first second : Bool)
    (firstValid :
      first = expectedHistoryRequired position floor isDummy)
    (secondValid :
      second = expectedHistoryRequired position floor isDummy) :
    first = second := by
  rw [firstValid, secondValid]

theorem generation_relation_proves_nonmembership
    (scalarOrder : Nat)
    (leafHash : IndexedLeaf → Nat)
    (quadRoot : Nat → Path20 → Nat → Nat)
    (appendHistory : Nat → Nat → Nat → Nat → Nat → Nat)
    (contains : Nat → Nat → Prop)
    (treeSound : IndexedTreeSound scalarOrder leafHash quadRoot contains)
    (public : GenerationPublic)
    (witness : GenerationWitness)
    (relation :
      GenerationRelation
        scalarOrder leafHash quadRoot appendHistory public witness) :
    ¬ contains public.generationRoot public.nullifier := by
  rw [relation.nullifierBinding]
  exact treeSound.authenticatedGapExcludes
    public.generationRoot witness.privateNullifier witness.leaf
    witness.leafPosition witness.path relation.leafCanonical relation.gap
    relation.rootBinding

theorem generation_relation_appends_exact_metadata
    (scalarOrder : Nat)
    (leafHash : IndexedLeaf → Nat)
    (quadRoot : Nat → Path20 → Nat → Nat)
    (appendHistory : Nat → Nat → Nat → Nat → Nat → Nat)
    (public : GenerationPublic)
    (witness : GenerationWitness)
    (relation :
      GenerationRelation
        scalarOrder leafHash quadRoot appendHistory public witness) :
    appendHistory
        public.startHistoryHead
        public.generationIndex
        public.generationRoot
        public.generationStartPosition
        public.generationEndPosition =
      public.endHistoryHead :=
  relation.historyBinding

theorem chunk_binds_every_proof_to_one_nullifier
    (scalarOrder : Nat)
    (baseProofAccepted : GenerationPublic → Prop)
    (public : ChunkPublic)
    (proofs : ChunkProofs)
    (relation : ChunkRelation scalarOrder baseProofAccepted public proofs)
    (index : Fin chunkWidth) :
    (proofs index).nullifier = public.nullifier :=
  relation.nullifierBound index

theorem chunk_has_exact_consecutive_generations
    (scalarOrder : Nat)
    (baseProofAccepted : GenerationPublic → Prop)
    (public : ChunkPublic)
    (proofs : ChunkProofs)
    (relation : ChunkRelation scalarOrder baseProofAccepted public proofs)
    (index : Fin chunkWidth) :
    (proofs index).generationIndex =
      public.chunkIndex * chunkWidth + index.val :=
  relation.generationBound index

theorem chunk_verifies_every_base_proof
    (scalarOrder : Nat)
    (baseProofAccepted : GenerationPublic → Prop)
    (public : ChunkPublic)
    (proofs : ChunkProofs)
    (relation : ChunkRelation scalarOrder baseProofAccepted public proofs)
    (index : Fin chunkWidth) :
    baseProofAccepted (proofs index) :=
  relation.eachProofAccepted index

/--
Assuming native Groth16 acceptance is sound for the base relation, every
private generation root in a chunk excludes the one public nullifier.
-/
theorem chunk_proves_each_generation_nonmembership
    (scalarOrder : Nat)
    (leafHash : IndexedLeaf → Nat)
    (quadRoot : Nat → Path20 → Nat → Nat)
    (appendHistory : Nat → Nat → Nat → Nat → Nat → Nat)
    (contains : Nat → Nat → Prop)
    (treeSound : IndexedTreeSound scalarOrder leafHash quadRoot contains)
    (baseProofAccepted : GenerationPublic → Prop)
    (baseProofSound :
      ∀ claim,
        baseProofAccepted claim →
          ∃ witness,
            GenerationRelation
              scalarOrder leafHash quadRoot appendHistory claim witness)
    (public : ChunkPublic)
    (proofs : ChunkProofs)
    (relation : ChunkRelation scalarOrder baseProofAccepted public proofs)
    (index : Fin chunkWidth) :
    ¬ contains (proofs index).generationRoot public.nullifier := by
  obtain ⟨witness, generationRelation⟩ :=
    baseProofSound (proofs index) (relation.eachProofAccepted index)
  rw [← relation.nullifierBound index]
  exact generation_relation_proves_nonmembership
    scalarOrder leafHash quadRoot appendHistory contains treeSound
    (proofs index) witness generationRelation

theorem chunk_binds_first_and_final_heads
    (scalarOrder : Nat)
    (baseProofAccepted : GenerationPublic → Prop)
    (public : ChunkPublic)
    (proofs : ChunkProofs)
    (relation : ChunkRelation scalarOrder baseProofAccepted public proofs) :
    (proofs ⟨0, by decide⟩).startHistoryHead = public.startHistoryHead ∧
      (proofs ⟨9, by decide⟩).endHistoryHead = public.endHistoryHead :=
  ⟨relation.firstHeadBound, relation.finalHeadBound⟩

theorem chunk_binds_every_adjacent_head
    (scalarOrder : Nat)
    (baseProofAccepted : GenerationPublic → Prop)
    (public : ChunkPublic)
    (proofs : ChunkProofs)
    (relation : ChunkRelation scalarOrder baseProofAccepted public proofs)
    (index : Fin 9) :
    (proofs (currentProofIndex index)).endHistoryHead =
      (proofs (nextProofIndex index)).startHistoryHead :=
  relation.adjacentHeadsBound index

/--
Witness roots and SCT ranges cannot affect the public projection. This is the
relation-level disclosure boundary; zero knowledge of Groth16 remains a
cryptographic assumption of the proving system.
-/
theorem chunk_disclosure_depends_only_on_public_claim
    (public : ChunkPublic) (first second : ChunkProofs) :
    discloseChunkWithProofs public first =
      discloseChunkWithProofs public second := by
  rfl

end Shieldd.GnarkFormal.Protocol.NullifierHistory
