import Ipp.Extracted.AggregateVerifierPairingAdapter

/-!
Separates the universal KZG equations carried by a shipping statement from
success of one concrete Arkworks pairing effect.  The extracted opening
checkers connect those two facts to the production Boolean result.

This boundary does not authenticate an SRS or prove KZG security.  In
particular, a `DevSrs` instance is not made sound by satisfying these laws.
-/

namespace Ipp.Extracted.AggregateVerifier

open Ipp.Bls12377
open scoped BigOperators

noncomputable section

local instance : Fact scalarModulus.Prime :=
  ⟨arithmeticFacts.scalarPrime⟩

/-- Universal semantics required of the abstract KZG predicates in one
shipping statement.  Unlike `ArkworksTippKzgContract`, these laws quantify
over every challenge, coefficient vector, claimed key, and opening. -/
structure ArkworksTippKzgStatementEquations
    {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup) where
  acceptV : ∀ (z : Fr) (coeffs : Fin (2 ^ n) → Fr)
      (key opening : g2PrimeSubgroup),
    (statementWithExecutablePairing hbilinear baseStmt).acceptV
        z coeffs key opening ↔
      (statementWithExecutablePairing hbilinear baseStmt).e g
          (key -
            (∑ i : Fin (2 ^ n),
              coeffs i * (z ^ 2) ^ (i : Nat)) • h) -
        (statementWithExecutablePairing hbilinear baseStmt).e
          (gBeta - z • g) opening = 0
  acceptW : ∀ (z : Fr) (coeffs : Fin (2 ^ n) → Fr)
      (key opening : g1PrimeSubgroup),
    (statementWithExecutablePairing hbilinear baseStmt).acceptW
        z coeffs key opening ↔
      (statementWithExecutablePairing hbilinear baseStmt).e
          (key -
            (∑ i : Fin (2 ^ n),
              coeffs i * (z ^ 2) ^ (i : Nat)) • g) h -
        (statementWithExecutablePairing hbilinear baseStmt).e
          opening (hAlpha - z • h) = 0

/-- Success of the exact pairing-effect state supplied to both extracted KZG
opening calls.  This says nothing about the statement predicates or setup. -/
structure ArkworksTippKzgPairingSuccess
    {PE : Type} (pairing : PE) (outcome : PE → Option Unit) : Prop where
  succeeded : outcome pairing = some ()

/-- The extracted G2 opening checker succeeds exactly when the concrete
pairing effect succeeds and the statement's universal `acceptV` predicate
holds on the same arguments. -/
theorem arkworks_g2_kzg_opening_true_iff_pairing_and_acceptV
    {PE : Type} {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (equations : ArkworksTippKzgStatementEquations
      hbilinear baseStmt g gBeta h hAlpha)
    (outcome : PE → Option Unit) (pairing : PE)
    (x : Fin n → Fr) (rShift z : Fr)
    (key opening : g2PrimeSubgroup) :
    ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_opening_core
        (Ipp.Extracted.cloneModel Fr)
        (Ipp.Extracted.oneModel Fr)
        (Ipp.Extracted.addModel Fr)
        (Ipp.Extracted.mulModel Fr)
        (Ipp.Extracted.cloneModel g1PrimeSubgroup)
        (Ipp.Extracted.smulModel Fr g1PrimeSubgroup)
        (Ipp.Extracted.subModel g1PrimeSubgroup)
        (Ipp.Extracted.negModel g1PrimeSubgroup)
        (Ipp.Extracted.cloneModel g2PrimeSubgroup)
        (Ipp.Extracted.smulModel Fr g2PrimeSubgroup)
        (Ipp.Extracted.subModel g2PrimeSubgroup)
        (Ipp.Extracted.zeroModel ArkPairingOutput)
        (Ipp.Extracted.pairingModel
          (executablePairingLinear hbilinear) outcome)
        g gBeta h key opening (Ipp.Extracted.finVec x) rShift z pairing =
          .ok true ↔
      outcome pairing = some () ∧
        (statementWithExecutablePairing hbilinear baseStmt).acceptV
          z (Ipp.transcriptCoeffs x rShift) key opening := by
  rw [Ipp.Extracted.hax_translated_verify_g2_kzg_opening_true_iff]
  constructor
  · rintro ⟨hsuccess, hequation⟩
    exact ⟨hsuccess, (equations.acceptV z
      (Ipp.transcriptCoeffs x rShift) key opening).2 (by
        simpa only [statementWithExecutablePairing_e] using hequation)⟩
  · rintro ⟨hsuccess, haccept⟩
    exact ⟨hsuccess, by
      simpa only [statementWithExecutablePairing_e] using
        (equations.acceptV z
          (Ipp.transcriptCoeffs x rShift) key opening).1 haccept⟩

/-- G1 analogue of
`arkworks_g2_kzg_opening_true_iff_pairing_and_acceptV`. -/
theorem arkworks_g1_kzg_opening_true_iff_pairing_and_acceptW
    {PE : Type} {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (equations : ArkworksTippKzgStatementEquations
      hbilinear baseStmt g gBeta h hAlpha)
    (outcome : PE → Option Unit) (pairing : PE)
    (x : Fin n → Fr) (rShift z : Fr)
    (key opening : g1PrimeSubgroup) :
    ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_opening_core
        (Ipp.Extracted.cloneModel Fr)
        (Ipp.Extracted.oneModel Fr)
        (Ipp.Extracted.addModel Fr)
        (Ipp.Extracted.mulModel Fr)
        (Ipp.Extracted.cloneModel g1PrimeSubgroup)
        (Ipp.Extracted.smulModel Fr g1PrimeSubgroup)
        (Ipp.Extracted.subModel g1PrimeSubgroup)
        (Ipp.Extracted.negModel g1PrimeSubgroup)
        (Ipp.Extracted.cloneModel g2PrimeSubgroup)
        (Ipp.Extracted.smulModel Fr g2PrimeSubgroup)
        (Ipp.Extracted.subModel g2PrimeSubgroup)
        (Ipp.Extracted.zeroModel ArkPairingOutput)
        (Ipp.Extracted.pairingModel
          (executablePairingLinear hbilinear) outcome)
        g hAlpha h key opening (Ipp.Extracted.finVec x) rShift z pairing =
          .ok true ↔
      outcome pairing = some () ∧
        (statementWithExecutablePairing hbilinear baseStmt).acceptW
          z (Ipp.transcriptCoeffs x rShift) key opening := by
  rw [Ipp.Extracted.hax_translated_verify_g1_kzg_opening_true_iff]
  constructor
  · rintro ⟨hsuccess, hequation⟩
    exact ⟨hsuccess, (equations.acceptW z
      (Ipp.transcriptCoeffs x rShift) key opening).2 (by
        simpa only [statementWithExecutablePairing_e] using hequation)⟩
  · rintro ⟨hsuccess, haccept⟩
    exact ⟨hsuccess, by
      simpa only [statementWithExecutablePairing_e] using
        (equations.acceptW z
          (Ipp.transcriptCoeffs x rShift) key opening).1 haccept⟩

/-- Derive the legacy per-execution adapter input from the smaller universal
statement law plus success of the concrete pairing-effect state.  The proof
passes through the audited extracted opening-checker equivalences; it does not
assume the two per-execution `acceptV`/`acceptW` equivalences directly. -/
def arkworksTippKzgContractOfStatementEquations
    {PE : Type} {n : Nat}
    (hbilinear : PublishedPairingBilinear)
    (baseStmt : Ipp.FsStatement n Fr g1PrimeSubgroup g2PrimeSubgroup
      ArkPairingOutput)
    (proof : Ipp.Proof n Fr g1PrimeSubgroup g2PrimeSubgroup ArkPairingOutput)
    (transcript : Ipp.FsTranscript n Fr)
    (g gBeta : g1PrimeSubgroup) (h hAlpha : g2PrimeSubgroup)
    (pairing : PE) (outcome : PE → Option Unit)
    (equations : ArkworksTippKzgStatementEquations
      hbilinear baseStmt g gBeta h hAlpha)
    (success : ArkworksTippKzgPairingSuccess pairing outcome) :
    ArkworksTippKzgContract hbilinear baseStmt proof transcript
      g gBeta h hAlpha pairing outcome where
  acceptV := by
    let x := Ipp.reversedView transcript.roundAnswer
    have hcore :
        ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_opening_core
            (Ipp.Extracted.cloneModel Fr)
            (Ipp.Extracted.oneModel Fr)
            (Ipp.Extracted.addModel Fr)
            (Ipp.Extracted.mulModel Fr)
            (Ipp.Extracted.cloneModel g1PrimeSubgroup)
            (Ipp.Extracted.smulModel Fr g1PrimeSubgroup)
            (Ipp.Extracted.subModel g1PrimeSubgroup)
            (Ipp.Extracted.negModel g1PrimeSubgroup)
            (Ipp.Extracted.cloneModel g2PrimeSubgroup)
            (Ipp.Extracted.smulModel Fr g2PrimeSubgroup)
            (Ipp.Extracted.subModel g2PrimeSubgroup)
            (Ipp.Extracted.zeroModel ArkPairingOutput)
            (Ipp.Extracted.pairingModel
              (executablePairingLinear hbilinear) outcome)
            g gBeta h proof.vFinal proof.vOpening
            (Ipp.Extracted.finVec x) 1 transcript.kzg pairing = .ok true ↔
          (statementWithExecutablePairing hbilinear baseStmt).acceptV
            transcript.kzg (Ipp.transcriptCoeffs x 1)
            proof.vFinal proof.vOpening := by
      rw [arkworks_g2_kzg_opening_true_iff_pairing_and_acceptV
        hbilinear baseStmt g gBeta h hAlpha equations outcome pairing
        x 1 transcript.kzg proof.vFinal proof.vOpening]
      simp [success.succeeded]
    exact hcore.symm.trans
      (Ipp.Extracted.hax_translated_verify_g2_kzg_opening_true_iff
        (executablePairingLinear hbilinear) outcome pairing
        x 1 transcript.kzg g gBeta h proof.vFinal proof.vOpening)
  acceptW := by
    let x : Fin n → Fr := fun i =>
      Ipp.gipaChallenge (Ipp.reversedView transcript.roundAnswer i)
    have hcore :
        ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_opening_core
            (Ipp.Extracted.cloneModel Fr)
            (Ipp.Extracted.oneModel Fr)
            (Ipp.Extracted.addModel Fr)
            (Ipp.Extracted.mulModel Fr)
            (Ipp.Extracted.cloneModel g1PrimeSubgroup)
            (Ipp.Extracted.smulModel Fr g1PrimeSubgroup)
            (Ipp.Extracted.subModel g1PrimeSubgroup)
            (Ipp.Extracted.negModel g1PrimeSubgroup)
            (Ipp.Extracted.cloneModel g2PrimeSubgroup)
            (Ipp.Extracted.smulModel Fr g2PrimeSubgroup)
            (Ipp.Extracted.subModel g2PrimeSubgroup)
            (Ipp.Extracted.zeroModel ArkPairingOutput)
            (Ipp.Extracted.pairingModel
              (executablePairingLinear hbilinear) outcome)
            g hAlpha h proof.wFinal proof.wOpening
            (Ipp.Extracted.finVec x) transcript.randomizer⁻¹
            transcript.kzg pairing = .ok true ↔
          (statementWithExecutablePairing hbilinear baseStmt).acceptW
            transcript.kzg
              (Ipp.transcriptCoeffs x transcript.randomizer⁻¹)
            proof.wFinal proof.wOpening := by
      rw [arkworks_g1_kzg_opening_true_iff_pairing_and_acceptW
        hbilinear baseStmt g gBeta h hAlpha equations outcome pairing
        x transcript.randomizer⁻¹ transcript.kzg
        proof.wFinal proof.wOpening]
      simp [success.succeeded]
    exact hcore.symm.trans
      (Ipp.Extracted.hax_translated_verify_g1_kzg_opening_true_iff
        (executablePairingLinear hbilinear) outcome pairing
        x transcript.randomizer⁻¹ transcript.kzg
        g hAlpha h proof.wFinal proof.wOpening)

end
end Ipp.Extracted.AggregateVerifier
