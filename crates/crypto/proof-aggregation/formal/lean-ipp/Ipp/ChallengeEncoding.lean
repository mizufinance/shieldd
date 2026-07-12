/-
Concrete byte framing for the Shieldd SnarkPack Fiat--Shamir challenge
preimage. Group and field objects enter only through their serialized message
bytes; `serialized_challenge_preimage_injective` states the remaining boundary.
-/
import Mathlib.Data.List.OfFn

namespace Ipp

namespace ChallengeEncoding

/-- Every stage label accepted by `challenge.rs`. -/
inductive Stage where
  | aggregateRandomizer
  | tippMippX0
  | tippMippGipaRound
  | tippMippFinalBridge
  | tippMippKzg
  | tipaAbGipaRound
  | tipaAbKzg
  | tipaCGipaRound
  | tipaCKzg
  | tipaGenericGipaRound
  | tipaGenericKzg
  | tipaGenericSsmGipaRound
deriving DecidableEq, Repr

/-- The literal ASCII stage label passed to `challenge_preimage`. -/
def stageLabel : Stage → List UInt8
  | .aggregateRandomizer =>
      [97, 103, 103, 114, 101, 103, 97, 116, 101, 46, 114, 97, 110, 100,
        111, 109, 105, 122, 101, 114]
  | .tippMippX0 => [116, 105, 112, 112, 45, 109, 105, 112, 112, 46, 120, 48]
  | .tippMippGipaRound =>
      [116, 105, 112, 112, 45, 109, 105, 112, 112, 46, 103, 105, 112, 97,
        46, 114, 111, 117, 110, 100]
  | .tippMippFinalBridge =>
      [116, 105, 112, 112, 45, 109, 105, 112, 112, 46, 102, 105, 110, 97,
        108, 45, 98, 114, 105, 100, 103, 101]
  | .tippMippKzg =>
      [116, 105, 112, 112, 45, 109, 105, 112, 112, 46, 107, 122, 103]
  | .tipaAbGipaRound =>
      [116, 105, 112, 97, 46, 97, 98, 46, 103, 105, 112, 97, 46, 114, 111,
        117, 110, 100]
  | .tipaAbKzg => [116, 105, 112, 97, 46, 97, 98, 46, 107, 122, 103]
  | .tipaCGipaRound =>
      [116, 105, 112, 97, 46, 99, 46, 103, 105, 112, 97, 46, 114, 111, 117,
        110, 100]
  | .tipaCKzg => [116, 105, 112, 97, 46, 99, 46, 107, 122, 103]
  | .tipaGenericGipaRound =>
      [116, 105, 112, 97, 46, 103, 101, 110, 101, 114, 105, 99, 46, 103,
        105, 112, 97, 46, 114, 111, 117, 110, 100]
  | .tipaGenericKzg =>
      [116, 105, 112, 97, 46, 103, 101, 110, 101, 114, 105, 99, 46, 107,
        122, 103]
  | .tipaGenericSsmGipaRound =>
      [116, 105, 112, 97, 46, 103, 101, 110, 101, 114, 105, 99, 46, 115,
        115, 109, 46, 103, 105, 112, 97, 46, 114, 111, 117, 110, 100]

/-- Four-byte little-endian encoding used for the checked stage-label length. -/
def u32LE (n : Nat) : List UInt8 :=
  [(n % 256).toUInt8, (n / 256 % 256).toUInt8,
    (n / 256 ^ 2 % 256).toUInt8, (n / 256 ^ 3 % 256).toUInt8]

/-- A 32-byte challenge context, already computed by SHA-256. -/
abbrev Context := Fin 32 → UInt8

/-- The little-endian byte representation of a Rust `u64` nonce. -/
abbrev Nonce := Fin 8 → UInt8

def contextBytes (context : Context) : List UInt8 := List.ofFn context

/-- Every eight-byte vector is one `u64` little-endian representation. -/
def u64LE (nonce : Nonce) : List UInt8 := List.ofFn nonce

/-- `"shieldd.snarkpack.challenge.v1\0"`. -/
def challengeDomain : List UInt8 :=
  [115, 104, 105, 101, 108, 100, 100, 46, 115, 110, 97, 114, 107, 112, 97,
    99, 107, 46, 99, 104, 97, 108, 108, 101, 110, 103, 101, 46, 118, 49, 0]

def stageFrame (stage : Stage) : List UInt8 :=
  u32LE (stageLabel stage).length ++ stageLabel stage

/-- Exact `challenge.rs` preimage layout, with message serialization supplied
as its final byte string. -/
def challengePreimage (stage : Stage) (context : Context) (nonce : Nonce)
    (messages : List UInt8) : List UInt8 :=
  challengeDomain ++
    (stageFrame stage ++ (contextBytes context ++ (u64LE nonce ++ messages)))

/-- All deployed labels satisfy Rust's checked `u32` length conversion. -/
theorem stageLabel_length_lt_u32 (stage : Stage) :
    (stageLabel stage).length < 2 ^ 32 := by
  cases stage <;> decide

private theorem stageFrame_separates (a b : Stage) (x y : List UInt8)
    (h : stageFrame a ++ x = stageFrame b ++ y) : a = b := by
  cases a <;> cases b <;>
    simp [stageFrame, stageLabel, u32LE] at h ⊢

/-- The field framing is injective before interpreting the message bytes. -/
theorem challengePreimage_injective :
    Function.Injective
      (fun input : Stage × Context × Nonce × List UInt8 =>
        challengePreimage input.1 input.2.1 input.2.2.1 input.2.2.2) := by
  rintro ⟨stage₁, context₁, nonce₁, messages₁⟩
    ⟨stage₂, context₂, nonce₂, messages₂⟩ h
  have hframe :
      stageFrame stage₁ ++ (contextBytes context₁ ++ (u64LE nonce₁ ++ messages₁)) =
        stageFrame stage₂ ++ (contextBytes context₂ ++ (u64LE nonce₂ ++ messages₂)) := by
    simpa [challengePreimage] using h
  have hstage := stageFrame_separates stage₁ stage₂ _ _ hframe
  subst stage₂
  have hcontextRest := (List.append_inj hframe rfl).2
  have hcontext := (List.append_inj hcontextRest (by simp [contextBytes])).1
  have hnonceRest := (List.append_inj hcontextRest (by simp [contextBytes])).2
  have hnonce := (List.append_inj hnonceRest (by simp [u64LE])).1
  have hmessages := (List.append_inj hnonceRest (by simp [u64LE])).2
  have : context₁ = context₂ := List.ofFn_injective hcontext
  subst context₂
  have : nonce₁ = nonce₂ := List.ofFn_injective hnonce
  subst nonce₂
  subst messages₂
  rfl

/-- The only remaining message-layer premise: canonical object serialization
must itself be injective. Framing adds no collisions. -/
theorem serialized_challenge_preimage_injective {Message : Type}
    (serialize : Message → List UInt8) (hserialize : Function.Injective serialize) :
    Function.Injective
      (fun input : Stage × Context × Nonce × Message =>
        challengePreimage input.1 input.2.1 input.2.2.1 (serialize input.2.2.2)) := by
  rintro ⟨stage₁, context₁, nonce₁, message₁⟩
    ⟨stage₂, context₂, nonce₂, message₂⟩ h
  have htuple :
      (stage₁, context₁, nonce₁, serialize message₁) =
        (stage₂, context₂, nonce₂, serialize message₂) :=
    challengePreimage_injective h
  have hstage : stage₁ = stage₂ := by
    simpa using congrArg (fun x => x.1) htuple
  have hcontext : context₁ = context₂ := by
    simpa using congrArg (fun x => x.2.1) htuple
  have hnonce : nonce₁ = nonce₂ := by
    simpa using congrArg (fun x => x.2.2.1) htuple
  have hmessage := hserialize (congrArg (fun x => x.2.2.2) htuple)
  subst stage₂
  subst context₂
  subst nonce₂
  subst message₂
  rfl

end ChallengeEncoding

end Ipp
