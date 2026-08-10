import ShielddGnarkFormal.AckBridge
import ShielddGnarkFormal.ThresholdRegulatedBridge

/-!
Semantic body bridge for `DeriveSharedSecretsSpend`.

The normalized bodies do not uniformly own the flag-Boolean row and omit the
enclosing curve checks for their three point inputs. Callers must supply those
seams explicitly.
-/

namespace Shieldd.GnarkFormal.SharedSecretBridge

abbrev F := Protocol.Common.F
abbrev Point := Protocol.Common.Point F

structure SharedSecrets where
  issuer : Point
  user : Point
  selected : Point

def SharedSecretsSpec
    (esk : F) (ack dkPub publishedEpk : Point) (isFlagged : F)
    (output : SharedSecrets) : Prop :=
  ThresholdRegulatedBridge.BooleanSpec isFlagged ∧
    Protocol.Transfer.Concrete.sharedSecrets
      esk ack dkPub publishedEpk isFlagged
      output.issuer output.user output.selected

variable
  [Fact (Nat.Prime Extracted.DecafEdwardsAdd.Order)]
  [Fact (Nat.Prime Poseidon377.P)]

def SharedSecretsBody
    (esk : F) (ack dkPub publishedEpk : Point) (isFlagged : F)
    (output : SharedSecrets) : Prop :=
  ∃ computedEpk,
    AckBridge.AckSpec
      Protocol.Common.Decaf.generator esk computedEpk ∧
    computedEpk.x * publishedEpk.y =
      publishedEpk.x * computedEpk.y ∧
    AckBridge.AckWindow2BodySpec dkPub esk output.issuer ∧
    AckBridge.AckWindow2BodySpec ack esk output.user ∧
    ThresholdRegulatedBridge.SelectPointCircuit
      isFlagged output.issuer output.user output.selected

theorem shared_secrets_sound
    (esk : F) (ack dkPub publishedEpk : Point) (isFlagged : F)
    (output : SharedSecrets)
    (hFlag :
      ThresholdRegulatedBridge.BooleanCircuit isFlagged)
    (hAck :
      Protocol.Common.Decaf.onCurve ack)
    (hDkPub :
      Protocol.Common.Decaf.onCurve dkPub)
    (hPublishedEpk :
      Protocol.Common.Decaf.onCurve publishedEpk)
    (h :
      SharedSecretsBody
        esk ack dkPub publishedEpk isFlagged output) :
    SharedSecretsSpec
      esk ack dkPub publishedEpk isFlagged output := by
  rcases h with
    ⟨computedEpk, hEpk, hCross,
      hIssuerBody, hUserBody, hSelectCircuit⟩
  rcases hEpk with
    ⟨hEsk, _, hComputedEpk, hEpk⟩
  rcases hIssuerBody hDkPub with
    ⟨_, _, _, hIssuer⟩
  rcases hUserBody hAck with
    ⟨_, _, _, hUser⟩
  have hFlagSpec :=
    ThresholdRegulatedBridge.boolean_sound isFlagged hFlag
  have hSelected :=
    ThresholdRegulatedBridge.select_point_sound
      isFlagged output.issuer output.user output.selected hSelectCircuit
  have hEquivalent :
      Protocol.Common.Decaf.equivalent
        (Protocol.Common.Decaf.scalarMulLE
          251 Protocol.Common.Decaf.generator esk)
        publishedEpk := by
    refine ⟨?_, hPublishedEpk, ?_⟩
    · rw [← hEpk]
      exact hComputedEpk
    · rw [← hEpk]
      exact hCross
  refine ⟨hFlagSpec, ?_⟩
  exact ⟨
      hEsk,
      hEquivalent,
      by simpa [
        Protocol.Transfer.Concrete.sharedIssuer
      ] using hIssuer,
      by simpa [
        Protocol.Transfer.Concrete.sharedUser
      ] using hUser,
      by
        calc
          output.selected =
              Protocol.Transfer.Concrete.selectPoint
                isFlagged output.issuer output.user := hSelected
          _ = Protocol.Transfer.Concrete.selectPoint isFlagged
                (Protocol.Transfer.Concrete.sharedIssuer dkPub esk)
                (Protocol.Transfer.Concrete.sharedUser ack esk) := by
              simp only [
                hIssuer,
                hUser,
                Protocol.Transfer.Concrete.sharedIssuer,
                Protocol.Transfer.Concrete.sharedUser
              ]
          _ = Protocol.Transfer.Concrete.sharedSelected
                isFlagged ack dkPub esk := rfl
    ⟩

end Shieldd.GnarkFormal.SharedSecretBridge
