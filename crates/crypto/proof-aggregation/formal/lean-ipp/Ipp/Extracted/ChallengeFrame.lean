import Ipp.Extracted.ChallengeFrameGenerated
import Ipp.ChallengeEncoding

/-!
Exact byte semantics of the production-used challenge framing core.
-/

namespace Ipp.Extracted.ChallengeFrame

open Aeneas Aeneas.Std Result
open ark_ip_proofs

def frameBytes
    (context : MacCampaign.Array UInt8 32#usize)
    (stageLabelLength : MacCampaign.Array UInt8 4#usize)
    (stageLabel : Slice UInt8)
    (nonce : MacCampaign.Array UInt8 8#usize)
    (messages : Slice UInt8) : List UInt8 :=
  challenge.CHALLENGE_DOMAIN.val ++
    stageLabelLength.val ++ stageLabel.val ++ context.val ++
      nonce.val ++ messages.val

/-- The extracted constant is the same challenge-domain byte string used by
the protocol-independent framing model. -/
theorem challenge_domain_exact :
    challenge.CHALLENGE_DOMAIN.val =
      Ipp.ChallengeEncoding.challengeDomain := by
  simp [challenge.CHALLENGE_DOMAIN, MacCampaign.Array.to_slice,
    MacCampaign.Array.make, Ipp.ChallengeEncoding.challengeDomain]

/-- Once the caller-supplied fixed-width encodings are identified, the
extracted byte list is exactly the typed challenge frame. This theorem keeps
the integer-conversion boundary visible instead of silently replacing the
Rust arrays with formal values. -/
theorem frameBytes_eq_challengePreimage
    (stage : Ipp.ChallengeEncoding.Stage)
    (formalContext : Ipp.ChallengeEncoding.Context)
    (formalNonce : Ipp.ChallengeEncoding.Nonce)
    (context : MacCampaign.Array UInt8 32#usize)
    (stageLabelLength : MacCampaign.Array UInt8 4#usize)
    (stageLabel : Slice UInt8)
    (nonce : MacCampaign.Array UInt8 8#usize)
    (messages : Slice UInt8)
    (hcontext :
      context.val = Ipp.ChallengeEncoding.contextBytes formalContext)
    (hlength :
      stageLabelLength.val =
        Ipp.ChallengeEncoding.u32LE
          (Ipp.ChallengeEncoding.stageLabel stage).length)
    (hstage :
      stageLabel.val = Ipp.ChallengeEncoding.stageLabel stage)
    (hnonce :
      nonce.val = Ipp.ChallengeEncoding.u64LE formalNonce) :
    frameBytes context stageLabelLength stageLabel nonce messages =
      Ipp.ChallengeEncoding.challengePreimage stage formalContext formalNonce
        messages.val := by
  simp [frameBytes, Ipp.ChallengeEncoding.challengePreimage,
    Ipp.ChallengeEncoding.stageFrame, challenge_domain_exact, hcontext,
    hlength, hstage, hnonce, List.append_assoc]

/-- The extracted Rust core returns exactly
`domain || stage_len_le || stage || context || nonce_le || messages`. -/
theorem challenge_preimage_core_exact
    (context : MacCampaign.Array UInt8 32#usize)
    (stageLabelLength : MacCampaign.Array UInt8 4#usize)
    (stageLabel : Slice UInt8)
    (nonce : MacCampaign.Array UInt8 8#usize)
    (messages : Slice UInt8) :
    challenge.challenge_preimage_core context stageLabelLength stageLabel
        nonce messages =
      .ok ⟨frameBytes context stageLabelLength stageLabel nonce messages⟩ := by
  unfold challenge.challenge_preimage_core
  simp only [alloc.vec.Vec.extend_from_slice_u8_exact, lift, Result.bind_ok,
    MacCampaign.Array.to_slice]
  simp [frameBytes, ark_ip_proofs.alloc.vec.Vec.new, List.append_assoc]

/-- Any successful result of the extracted framing core exposes the complete
frame byte-for-byte. No digest or serializer premise is involved. -/
theorem challenge_preimage_core_success_bytes
    (context : MacCampaign.Array UInt8 32#usize)
    (stageLabelLength : MacCampaign.Array UInt8 4#usize)
    (stageLabel : Slice UInt8)
    (nonce : MacCampaign.Array UInt8 8#usize)
    (messages : Slice UInt8)
    {output : alloc.vec.Vec UInt8}
    (hsuccess :
      challenge.challenge_preimage_core context stageLabelLength stageLabel
          nonce messages = .ok output) :
    output.val =
      frameBytes context stageLabelLength stageLabel nonce messages := by
  rw [challenge_preimage_core_exact] at hsuccess
  exact congrArg (fun value : alloc.vec.Vec UInt8 => value.val)
    (Result.ok.inj hsuccess).symm

/-- Successful execution of the extracted core agrees with the typed formal
frame under only the four caller-side fixed-width encoding equations. -/
theorem challenge_preimage_core_success_formal
    (stage : Ipp.ChallengeEncoding.Stage)
    (formalContext : Ipp.ChallengeEncoding.Context)
    (formalNonce : Ipp.ChallengeEncoding.Nonce)
    (context : MacCampaign.Array UInt8 32#usize)
    (stageLabelLength : MacCampaign.Array UInt8 4#usize)
    (stageLabel : Slice UInt8)
    (nonce : MacCampaign.Array UInt8 8#usize)
    (messages : Slice UInt8)
    (hcontext :
      context.val = Ipp.ChallengeEncoding.contextBytes formalContext)
    (hlength :
      stageLabelLength.val =
        Ipp.ChallengeEncoding.u32LE
          (Ipp.ChallengeEncoding.stageLabel stage).length)
    (hstage :
      stageLabel.val = Ipp.ChallengeEncoding.stageLabel stage)
    (hnonce :
      nonce.val = Ipp.ChallengeEncoding.u64LE formalNonce) :
    challenge.challenge_preimage_core context stageLabelLength stageLabel
        nonce messages =
      .ok ⟨Ipp.ChallengeEncoding.challengePreimage stage formalContext
        formalNonce messages.val⟩ := by
  rw [challenge_preimage_core_exact,
    frameBytes_eq_challengePreimage stage formalContext formalNonce context
      stageLabelLength stageLabel nonce messages hcontext hlength hstage
      hnonce]

/-- The shipping sampler queries `u64::MAX`; only the subsequent increment
request returns exhaustion. -/
theorem checked_next_challenge_nonce_max :
    challenge.checked_next_challenge_nonce core.num.U64.MAX =
      .ok none := by
  simp [challenge.checked_next_challenge_nonce]

/-- Returning no successor is possible exactly at `u64::MAX`. This is the
fail-closed exhaustion boundary of the extracted nonce step. -/
theorem checked_next_challenge_nonce_none_iff
    (nonce : MacCampaign.U64) :
    challenge.checked_next_challenge_nonce nonce = .ok none ↔
      nonce = core.num.U64.MAX := by
  constructor
  · intro hnone
    by_contra hne
    unfold challenge.checked_next_challenge_nonce at hnone
    rw [if_neg hne] at hnone
    cases hnext : (nonce + 1#u64 : Result MacCampaign.U64) <;>
      simp_all
  · intro hmax
    subst nonce
    exact checked_next_challenge_nonce_max

/-- Every successful successor result proves that the queried nonce was not
the exhausted `u64::MAX` state. -/
theorem checked_next_challenge_nonce_some_ne_max
    {nonce next : MacCampaign.U64}
    (hsome :
      challenge.checked_next_challenge_nonce nonce = .ok (some next)) :
    nonce ≠ core.num.U64.MAX := by
  intro hmax
  subst nonce
  rw [checked_next_challenge_nonce_max] at hsome
  cases hsome

#print axioms challenge_preimage_core_exact
#print axioms challenge_domain_exact
#print axioms frameBytes_eq_challengePreimage
#print axioms challenge_preimage_core_success_bytes
#print axioms challenge_preimage_core_success_formal
#print axioms checked_next_challenge_nonce_max
#print axioms checked_next_challenge_nonce_none_iff
#print axioms checked_next_challenge_nonce_some_ne_max

end Ipp.Extracted.ChallengeFrame
