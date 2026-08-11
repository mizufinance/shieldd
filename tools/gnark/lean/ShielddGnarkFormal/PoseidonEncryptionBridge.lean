import ShielddGnarkFormal.BinaryPacking
import ShielddGnarkFormal.ChoiceFreeBinary
import ShielddGnarkFormal.DecafCompressionBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.Protocol.Transfer.Concrete
import ShielddGnarkFormal.ThresholdRegulatedBridge
import ShielddGnarkFormal.TransferSaltBridge

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

/-!
Exact transfer stream-encryption bridges.

The circuit predicates retain the extracted Poseidon2 calls, the emitted
equality rows, and the address bit-packing result. The protocol
predicates are the independent relations in `Protocol.Transfer.Concrete`.
-/

namespace Shieldd.GnarkFormal.PoseidonEncryptionBridge

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Protocol.Transfer

abbrev F := Protocol.Common.F
abbrev Path16 := Protocol.Common.Path16
abbrev Path24 := Protocol.Common.Path24
abbrev CircuitPoint := Decaf377Assumptions.Point

def EqualityCircuit (left right : F) : Prop :=
  left - right = 0

private theorem equality_sound
    (left right : F)
    (h : EqualityCircuit left right) :
    left = right := by
  exact sub_eq_zero.mp h

variable [poseidonPrime : Fact (Nat.Prime Extracted.Poseidon2.Order)]

local instance decafCompressPrime :
    Fact (Nat.Prime Extracted.DecafCompressToField.Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def DetectionStreamBodyCircuit
    (action : Action F Path24 Path16)
    (issuerSharedFq : F) : Prop :=
  ∃ seed block0 block1 block2 block3,
    TransferSaltBridge.TransferSaltCircuit
        Protocol.Transfer.Concrete.issuerDetectionDomain
        issuerSharedFq action.transcript.senderCore.epkEncoding seed ∧
      TransferSaltBridge.TransferSaltCircuit
        Protocol.Transfer.Concrete.streamDomain seed 0 block0 ∧
      TransferSaltBridge.TransferSaltCircuit
        Protocol.Transfer.Concrete.streamDomain seed 1 block1 ∧
      TransferSaltBridge.TransferSaltCircuit
        Protocol.Transfer.Concrete.streamDomain seed 2 block2 ∧
      TransferSaltBridge.TransferSaltCircuit
        Protocol.Transfer.Concrete.streamDomain seed 3 block3 ∧
      action.senderCompliance.slotId.val < 2 ^ 32 ∧
      action.receiverCompliance.slotId.val < 2 ^ 32 ∧
      EqualityCircuit
        (action.assetId + block0)
        (action.transcript.detectionCiphertext 0) ∧
      EqualityCircuit
        (action.transcript.salts 0 + block1)
        (action.transcript.detectionCiphertext 1) ∧
      EqualityCircuit
        (action.senderCompliance.slotId +
          action.transcript.isFlagged * (2 ^ 32 : F) + block2)
        (action.transcript.detectionCiphertext 2) ∧
      EqualityCircuit
        (action.receiverCompliance.slotId + block3)
        (action.transcript.detectionCiphertext 3)

def DetectionBodyCircuit
    (action : Action F Path24 Path16)
    (issuerShared : CircuitPoint) : Prop :=
  ∃ issuerSharedFq,
    Decaf377Assumptions.CompressToFieldSpec
        issuerShared issuerSharedFq ∧
      DetectionStreamBodyCircuit action issuerSharedFq

def DetectionCircuit
    (action : Action F Path24 Path16)
    (issuerShared : CircuitPoint) : Prop :=
  ThresholdRegulatedBridge.BooleanCircuit
      action.transcript.isFlagged ∧
    DetectionBodyCircuit action issuerShared

def DetectionBodySpec
    (action : Action F Path24 Path16)
    (issuerShared : CircuitPoint) : Prop :=
  ∃ issuerSharedFq,
    Protocol.Common.Decaf.compressesTo
        (AckBridge.toProtocolPoint issuerShared) issuerSharedFq ∧
      Protocol.Transfer.Concrete.detectionEncryption
        action issuerSharedFq

def DetectionSpec
    (action : Action F Path24 Path16)
    (issuerShared : CircuitPoint) : Prop :=
  DetectionBodySpec action issuerShared

private theorem detection_stream_body_sound
    (action : Action F Path24 Path16)
    (issuerSharedFq : F)
    (h : DetectionStreamBodyCircuit action issuerSharedFq) :
    Protocol.Transfer.Concrete.detectionEncryption
      action issuerSharedFq := by
  rcases h with
    ⟨seed, block0, block1, block2, block3,
      hseed, hblock0, hblock1, hblock2, hblock3,
      hsenderSlot, hreceiverSlot,
      hcipher0, hcipher1, hcipher2, hcipher3⟩
  have hseedSpec :=
    TransferSaltBridge.transfer_salt_sound
      Protocol.Transfer.Concrete.issuerDetectionDomain
      issuerSharedFq action.transcript.senderCore.epkEncoding seed hseed
  have hblock0Spec :=
    TransferSaltBridge.transfer_salt_sound
      Protocol.Transfer.Concrete.streamDomain seed 0 block0 hblock0
  have hblock1Spec :=
    TransferSaltBridge.transfer_salt_sound
      Protocol.Transfer.Concrete.streamDomain seed 1 block1 hblock1
  have hblock2Spec :=
    TransferSaltBridge.transfer_salt_sound
      Protocol.Transfer.Concrete.streamDomain seed 2 block2 hblock2
  have hblock3Spec :=
    TransferSaltBridge.transfer_salt_sound
      Protocol.Transfer.Concrete.streamDomain seed 3 block3 hblock3
  have hc0 := equality_sound _ _ hcipher0
  have hc1 := equality_sound _ _ hcipher1
  have hc2 := equality_sound _ _ hcipher2
  have hc3 := equality_sound _ _ hcipher3
  rw [hseedSpec] at hblock0Spec hblock1Spec hblock2Spec hblock3Spec
  rw [hblock0Spec] at hc0
  rw [hblock1Spec] at hc1
  rw [hblock2Spec] at hc2
  rw [hblock3Spec] at hc3
  exact
    ⟨hsenderSlot, hreceiverSlot,
      hc0.symm, hc1.symm, hc2.symm, hc3.symm⟩

theorem detection_body_sound
    (action : Action F Path24 Path16)
    (issuerShared : CircuitPoint)
    (h : DetectionBodyCircuit action issuerShared) :
    DetectionBodySpec action issuerShared := by
  rcases h with ⟨issuerSharedFq, hcompress, hstream⟩
  refine ⟨issuerSharedFq, ?_, ?_⟩
  · exact DecafCompressionBridge.compressesTo_of_spec
      issuerShared issuerSharedFq hcompress
  · exact detection_stream_body_sound action issuerSharedFq hstream

theorem detection_sound
    (action : Action F Path24 Path16)
    (issuerShared : CircuitPoint)
    (h : DetectionCircuit action issuerShared) :
    DetectionSpec action issuerShared := by
  exact detection_body_sound action issuerShared h.2

def AmountStreamBodyCircuit
    (sharedFq c2 amount ciphertext : F) : Prop :=
  ∃ block,
    TransferSaltBridge.TransferSaltCircuit
        Protocol.Transfer.Concrete.streamDomain
        (c2 - sharedFq) 0 block ∧
      EqualityCircuit (amount + block) ciphertext

def AmountBodyCircuit
    (shared : CircuitPoint) (c2 amount ciphertext : F) : Prop :=
  ∃ sharedFq,
    Decaf377Assumptions.CompressToFieldSpec shared sharedFq ∧
      AmountStreamBodyCircuit sharedFq c2 amount ciphertext

def AmountCircuit
    (shared : CircuitPoint) (c2 amount ciphertext : F) : Prop :=
  AmountBodyCircuit shared c2 amount ciphertext

def AmountBodySpec
    (shared : CircuitPoint) (c2 amount ciphertext : F) : Prop :=
  ∃ sharedFq,
    Protocol.Common.Decaf.compressesTo
        (AckBridge.toProtocolPoint shared) sharedFq ∧
      Protocol.Transfer.Concrete.amountEncryption
        sharedFq c2 amount ciphertext

def AmountSpec
    (shared : CircuitPoint) (c2 amount ciphertext : F) : Prop :=
  AmountBodySpec shared c2 amount ciphertext

private theorem amount_stream_body_sound
    (sharedFq c2 amount ciphertext : F)
    (h : AmountStreamBodyCircuit sharedFq c2 amount ciphertext) :
    Protocol.Transfer.Concrete.amountEncryption
      sharedFq c2 amount ciphertext := by
  rcases h with ⟨block, hblock, hciphertext⟩
  have hblockSpec :=
    TransferSaltBridge.transfer_salt_sound
      Protocol.Transfer.Concrete.streamDomain
      (c2 - sharedFq) 0 block hblock
  have hciphertextSpec := equality_sound _ _ hciphertext
  rw [hblockSpec] at hciphertextSpec
  exact hciphertextSpec.symm

theorem amount_body_sound
    (shared : CircuitPoint) (c2 amount ciphertext : F)
    (h : AmountBodyCircuit shared c2 amount ciphertext) :
    AmountBodySpec shared c2 amount ciphertext := by
  rcases h with ⟨sharedFq, hcompress, hstream⟩
  refine ⟨sharedFq, ?_, ?_⟩
  · exact DecafCompressionBridge.compressesTo_of_spec
      shared sharedFq hcompress
  · exact amount_stream_body_sound
      sharedFq c2 amount ciphertext hstream

theorem amount_sound
    (shared : CircuitPoint) (c2 amount ciphertext : F)
    (h : AmountCircuit shared c2 amount ciphertext) :
    AmountSpec shared c2 amount ciphertext := by
  exact amount_body_sound shared c2 amount ciphertext h

/--
Recovered result of the two canonical 256-bit decompositions followed by
three 248-bit recompositions. Gnark pads bits above the field bit length with
zero, so these equalities use canonical field representatives.
-/
def AddressPackingCircuit
    (diversifiedGeneratorEncoding transmissionEncoding
      plaintext0 plaintext1 plaintext2 : F) : Prop :=
  plaintext0 =
      ((diversifiedGeneratorEncoding.val % 2 ^ 248 : Nat) : F) ∧
    plaintext1 =
      ((diversifiedGeneratorEncoding.val / 2 ^ 248 +
        2 ^ 8 * (transmissionEncoding.val % 2 ^ 240) : Nat) : F) ∧
    plaintext2 =
      ((transmissionEncoding.val / 2 ^ 240 : Nat) : F)

/--
The exact semantic obligation contributed by gnark's native
`ToBinary(value, 256)`: the backend emits 253 Boolean field bits, a recovery
row, an explicit `≤ p-1` comparator, and three literal zero padding bits.
The padding has no witness wires, so the provider exposes the first three
facts through this predicate.
-/
def NativeToBinary256Circuit
    (input : F) (bits : List.Vector Bool 253) : Prop :=
  GatesDef.to_binary input 253
      (bits.map (Bool.toZMod (N := Poseidon377.P))) ∧
    (Fin.ofBitsLE bits).val < Poseidon377.P

/-- The native backend comparator makes the recovered bits the unique field
representative, not merely a congruent integer modulo `p`. -/
theorem nativeToBinary256_val
    (input : F) (bits : List.Vector Bool 253)
    (h : NativeToBinary256Circuit input bits) :
    input.val = (Fin.ofBitsLE bits).val := by
  have hrecover :
      recover_binary_zmod'
          (bits.map (Bool.toZMod (N := Poseidon377.P))) =
        input :=
    h.1.1
  rw [
    Shieldd.GnarkFormal.ChoiceFreeBinary.recover_binary_map_toZMod_eq_ofBitsLE
  ] at hrecover
  rw [← hrecover]
  exact ZMod.val_natCast_of_lt h.2

/--
Provider-facing form of address packing. It retains both native gnark
reducedness checks and the three exact 31-byte recomposition rows.
-/
def AddressPackingBackendCircuit
    (diversifiedGeneratorEncoding transmissionEncoding
      plaintext0 plaintext1 plaintext2 : F) : Prop :=
  ∃ diversifiedBits transmissionBits : List.Vector Bool 253,
    NativeToBinary256Circuit
        diversifiedGeneratorEncoding diversifiedBits ∧
      NativeToBinary256Circuit transmissionEncoding transmissionBits ∧
      plaintext0 =
        (((Fin.ofBitsLE (diversifiedBits.take 248)).val : Nat) : F) ∧
      plaintext1 =
        (((Fin.ofBitsLE (diversifiedBits.drop 248)).val : Nat) : F) +
          (2 ^ 8 : F) *
            (((Fin.ofBitsLE (transmissionBits.take 240)).val : Nat) : F) ∧
      plaintext2 =
        (((Fin.ofBitsLE (transmissionBits.drop 240)).val : Nat) : F)

/--
The two canonical 253-bit decompositions and the exact three recomposition
rows imply the protocol-level address packing formula.
-/
theorem addressPacking_of_canonical_bits
    (diversifiedGeneratorEncoding transmissionEncoding
      plaintext0 plaintext1 plaintext2 : F)
    (diversifiedBits transmissionBits : List.Vector Bool 253)
    (hdiversified :
      diversifiedGeneratorEncoding.val =
        (Fin.ofBitsLE diversifiedBits).val)
    (htransmission :
      transmissionEncoding.val =
        (Fin.ofBitsLE transmissionBits).val)
    (hplaintext0 :
      plaintext0 =
        (((Fin.ofBitsLE (diversifiedBits.take 248)).val : Nat) : F))
    (hplaintext1 :
      plaintext1 =
        (((Fin.ofBitsLE (diversifiedBits.drop 248)).val : Nat) : F) +
          (2 ^ 8 : F) *
            (((Fin.ofBitsLE (transmissionBits.take 240)).val : Nat) : F))
    (hplaintext2 :
      plaintext2 =
        (((Fin.ofBitsLE (transmissionBits.drop 240)).val : Nat) : F)) :
    AddressPackingCircuit
      diversifiedGeneratorEncoding transmissionEncoding
      plaintext0 plaintext1 plaintext2 := by
  have hdiversifiedSplit :
      (diversifiedBits.take 248).append (diversifiedBits.drop 248) =
        diversifiedBits := by
    apply List.Vector.eq
    simp
  have htransmissionSplit :
      (transmissionBits.take 240).append (transmissionBits.drop 240) =
        transmissionBits := by
    apply List.Vector.eq
    simp
  have hdiversifiedMod :=
    BinaryPacking.ofBitsLE_append_mod
      (diversifiedBits.take 248) (diversifiedBits.drop 248)
  have hdiversifiedDiv :=
    BinaryPacking.ofBitsLE_append_div
      (diversifiedBits.take 248) (diversifiedBits.drop 248)
  have htransmissionMod :=
    BinaryPacking.ofBitsLE_append_mod
      (transmissionBits.take 240) (transmissionBits.drop 240)
  have htransmissionDiv :=
    BinaryPacking.ofBitsLE_append_div
      (transmissionBits.take 240) (transmissionBits.drop 240)
  rw [hdiversifiedSplit] at hdiversifiedMod hdiversifiedDiv
  rw [htransmissionSplit] at htransmissionMod htransmissionDiv
  have hdiversifiedMod' :
      (Fin.ofBitsLE diversifiedBits).val % 2 ^ 248 =
        (Fin.ofBitsLE (diversifiedBits.take 248)).val := by
    simpa only [show min 248 253 = 248 by decide] using hdiversifiedMod
  have hdiversifiedDiv' :
      (Fin.ofBitsLE diversifiedBits).val / 2 ^ 248 =
        (Fin.ofBitsLE (diversifiedBits.drop 248)).val := by
    simpa only [show min 248 253 = 248 by decide] using hdiversifiedDiv
  have htransmissionMod' :
      (Fin.ofBitsLE transmissionBits).val % 2 ^ 240 =
        (Fin.ofBitsLE (transmissionBits.take 240)).val := by
    simpa only [show min 240 253 = 240 by decide] using htransmissionMod
  have htransmissionDiv' :
      (Fin.ofBitsLE transmissionBits).val / 2 ^ 240 =
        (Fin.ofBitsLE (transmissionBits.drop 240)).val := by
    simpa only [show min 240 253 = 240 by decide] using htransmissionDiv
  unfold AddressPackingCircuit
  refine ⟨?_, ?_, ?_⟩
  · calc
      plaintext0 =
          (((Fin.ofBitsLE (diversifiedBits.take 248)).val : Nat) : F) :=
        hplaintext0
      _ = (((Fin.ofBitsLE diversifiedBits).val % 2 ^ 248 : Nat) : F) := by
        rw [hdiversifiedMod']
      _ = ((diversifiedGeneratorEncoding.val % 2 ^ 248 : Nat) : F) := by
        rw [hdiversified]
  · calc
      plaintext1 =
          (((Fin.ofBitsLE (diversifiedBits.drop 248)).val : Nat) : F) +
            (2 ^ 8 : F) *
              (((Fin.ofBitsLE (transmissionBits.take 240)).val : Nat) : F) :=
        hplaintext1
      _ = ((
          (Fin.ofBitsLE (diversifiedBits.drop 248)).val +
            2 ^ 8 *
              (Fin.ofBitsLE (transmissionBits.take 240)).val : Nat) : F) := by
        push_cast
        ring
      _ = ((
          (Fin.ofBitsLE diversifiedBits).val / 2 ^ 248 +
            2 ^ 8 *
              ((Fin.ofBitsLE transmissionBits).val % 2 ^ 240) : Nat) : F) := by
        rw [hdiversifiedDiv', htransmissionMod']
      _ = ((
          diversifiedGeneratorEncoding.val / 2 ^ 248 +
            2 ^ 8 * (transmissionEncoding.val % 2 ^ 240) : Nat) : F) := by
        rw [hdiversified, htransmission]
  · calc
      plaintext2 =
          (((Fin.ofBitsLE (transmissionBits.drop 240)).val : Nat) : F) :=
        hplaintext2
      _ = (((Fin.ofBitsLE transmissionBits).val / 2 ^ 240 : Nat) : F) := by
        rw [htransmissionDiv']
      _ = ((transmissionEncoding.val / 2 ^ 240 : Nat) : F) := by
        rw [htransmission]

/-- The exact backend rows imply canonical protocol address packing. -/
theorem addressPacking_of_backend
    (diversifiedGeneratorEncoding transmissionEncoding
      plaintext0 plaintext1 plaintext2 : F)
    (h : AddressPackingBackendCircuit
      diversifiedGeneratorEncoding transmissionEncoding
      plaintext0 plaintext1 plaintext2) :
    AddressPackingCircuit
      diversifiedGeneratorEncoding transmissionEncoding
      plaintext0 plaintext1 plaintext2 := by
  rcases h with
    ⟨diversifiedBits, transmissionBits, hdiversified, htransmission,
      hplaintext0, hplaintext1, hplaintext2⟩
  exact addressPacking_of_canonical_bits
    diversifiedGeneratorEncoding transmissionEncoding
    plaintext0 plaintext1 plaintext2
    diversifiedBits transmissionBits
    (nativeToBinary256_val
      diversifiedGeneratorEncoding diversifiedBits hdiversified)
    (nativeToBinary256_val
      transmissionEncoding transmissionBits htransmission)
    hplaintext0 hplaintext1 hplaintext2

def AddressStreamBodyCircuit
    (sharedFq c2 : F)
    (address : Address F) (ciphertext : Fin 3 → F) : Prop :=
  ∃ plaintext0 plaintext1 plaintext2 block0 block1 block2,
    AddressPackingBackendCircuit
        address.diversifiedGeneratorEncoding
        address.transmissionEncoding
        plaintext0 plaintext1 plaintext2 ∧
      TransferSaltBridge.TransferSaltCircuit
        Protocol.Transfer.Concrete.streamDomain
        (c2 - sharedFq) 0 block0 ∧
      TransferSaltBridge.TransferSaltCircuit
        Protocol.Transfer.Concrete.streamDomain
        (c2 - sharedFq) 1 block1 ∧
      TransferSaltBridge.TransferSaltCircuit
        Protocol.Transfer.Concrete.streamDomain
        (c2 - sharedFq) 2 block2 ∧
      EqualityCircuit
        (plaintext0 + block0) (ciphertext 0) ∧
      EqualityCircuit
        (plaintext1 + block1) (ciphertext 1) ∧
      EqualityCircuit
        (plaintext2 + block2) (ciphertext 2)

def AddressBodyCircuit
    (shared : CircuitPoint) (c2 : F)
    (address : Address F) (ciphertext : Fin 3 → F) : Prop :=
  ∃ sharedFq,
    Decaf377Assumptions.CompressToFieldSpec shared sharedFq ∧
      AddressStreamBodyCircuit sharedFq c2 address ciphertext

def AddressCircuit
    (shared : CircuitPoint) (c2 : F)
    (address : Address F) (ciphertext : Fin 3 → F) : Prop :=
  AddressBodyCircuit shared c2 address ciphertext

def AddressBodySpec
    (shared : CircuitPoint) (c2 : F)
    (address : Address F) (ciphertext : Fin 3 → F) : Prop :=
  ∃ sharedFq,
    Protocol.Common.Decaf.compressesTo
        (AckBridge.toProtocolPoint shared) sharedFq ∧
      Protocol.Transfer.Concrete.addressEncryption
        sharedFq c2 address ciphertext

def AddressSpec
    (shared : CircuitPoint) (c2 : F)
    (address : Address F) (ciphertext : Fin 3 → F) : Prop :=
  AddressBodySpec shared c2 address ciphertext

private theorem address_stream_body_sound
    (sharedFq c2 : F)
    (address : Address F) (ciphertext : Fin 3 → F)
    (h : AddressStreamBodyCircuit sharedFq c2 address ciphertext) :
    Protocol.Transfer.Concrete.addressEncryption
      sharedFq c2 address ciphertext := by
  rcases h with
    ⟨plaintext0, plaintext1, plaintext2, block0, block1, block2,
      hpacking, hblock0, hblock1, hblock2,
      hcipher0, hcipher1, hcipher2⟩
  have hpackingSpec := addressPacking_of_backend
    address.diversifiedGeneratorEncoding
    address.transmissionEncoding
    plaintext0 plaintext1 plaintext2 hpacking
  rcases hpackingSpec with ⟨hplaintext0, hplaintext1, hplaintext2⟩
  have hblock0Spec :=
    TransferSaltBridge.transfer_salt_sound
      Protocol.Transfer.Concrete.streamDomain
      (c2 - sharedFq) 0 block0 hblock0
  have hblock1Spec :=
    TransferSaltBridge.transfer_salt_sound
      Protocol.Transfer.Concrete.streamDomain
      (c2 - sharedFq) 1 block1 hblock1
  have hblock2Spec :=
    TransferSaltBridge.transfer_salt_sound
      Protocol.Transfer.Concrete.streamDomain
      (c2 - sharedFq) 2 block2 hblock2
  have hc0 := equality_sound _ _ hcipher0
  have hc1 := equality_sound _ _ hcipher1
  have hc2 := equality_sound _ _ hcipher2
  rw [hplaintext0, hblock0Spec] at hc0
  rw [hplaintext1, hblock1Spec] at hc1
  rw [hplaintext2, hblock2Spec] at hc2
  exact ⟨hc0.symm, hc1.symm, hc2.symm⟩

theorem address_body_sound
    (shared : CircuitPoint) (c2 : F)
    (address : Address F) (ciphertext : Fin 3 → F)
    (h : AddressBodyCircuit shared c2 address ciphertext) :
    AddressBodySpec shared c2 address ciphertext := by
  rcases h with ⟨sharedFq, hcompress, hstream⟩
  refine ⟨sharedFq, ?_, ?_⟩
  · exact DecafCompressionBridge.compressesTo_of_spec
      shared sharedFq hcompress
  · exact address_stream_body_sound
      sharedFq c2 address ciphertext hstream

theorem address_sound
    (shared : CircuitPoint) (c2 : F)
    (address : Address F) (ciphertext : Fin 3 → F)
    (h : AddressCircuit shared c2 address ciphertext) :
    AddressSpec shared c2 address ciphertext := by
  exact address_body_sound shared c2 address ciphertext h

end Shieldd.GnarkFormal.PoseidonEncryptionBridge
