package compliance

import (
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"math/big"

	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"golang.org/x/crypto/blake2b"
)

const (
	TransferDetectionFQCount      = 4
	TransferCoreCiphertextFQCount = 1
	TransferExtCiphertextFQCount  = 3
	TransferSlotIDBits            = 32
)

var (
	TransferSaltDomain              = transferSaltConstant("shieldd.transfer.compliance.salt")
	TransferDetectionSaltLabel      = transferSaltConstant("detection")
	TransferSenderCoreSaltLabel     = transferSaltConstant("sender_core")
	TransferSenderExtSaltLabel      = transferSaltConstant("sender_ext")
	TransferOutputCoreSaltLabel     = transferSaltConstant("output_core")
	TransferOutputExtSaltLabel      = transferSaltConstant("output_ext")
	transferDetectionFlagBit        = new(big.Int).Lsh(big.NewInt(1), TransferSlotIDBits)
	transferDetectionRoutingSwapBit = new(big.Int).Lsh(big.NewInt(1), TransferSlotIDBits+1)
)

func transferSaltConstant(label string) *big.Int {
	sum := blake2b.Sum512([]byte(label))
	return primitives.LittleEndianBytesToBigInt(sum[:])
}

func complianceStreamCipherDomain() *big.Int {
	sum := blake2b.Sum512([]byte("shieldd.compliance.poseidon_stream"))
	return primitives.LittleEndianBytesToBigInt(sum[:])
}

func complianceStreamBlock(api frontend.API, seed frontend.Variable, counter int) (frontend.Variable, error) {
	return primitives.Poseidon377Hash2(
		api,
		complianceStreamCipherDomain(),
		[2]frontend.Variable{seed, counter},
	)
}

func DeriveTransferSalt(
	api frontend.API,
	transferNonceRoot frontend.Variable,
	label *big.Int,
) (frontend.Variable, error) {
	return primitives.Poseidon377Hash2(
		api,
		TransferSaltDomain,
		[2]frontend.Variable{transferNonceRoot, label},
	)
}

func ThresholdFlag(
	api frontend.API,
	isRegulated frontend.Variable,
	amount frontend.Variable,
	threshold frontend.Variable,
) frontend.Variable {
	thresholdReached := api.Sub(1, fieldLessThan(api, amount, threshold))
	return api.Mul(isRegulated, thresholdReached)
}

func VerifyPoseidonEncryptionTransferDetection(
	api frontend.API,
	isFlagged frontend.Variable,
	ssDetection gnarkte.Point,
	senderCoreEPKFq frontend.Variable,
	detectionSalt frontend.Variable,
	assetID frontend.Variable,
	senderSlotID frontend.Variable,
	receiverSlotID frontend.Variable,
	routingRolesSwapped frontend.Variable,
	ciphertext [TransferDetectionFQCount]frontend.Variable,
) error {
	api.AssertIsBoolean(isFlagged)
	api.AssertIsBoolean(routingRolesSwapped)
	api.ToBinary(senderSlotID, TransferSlotIDBits)
	api.ToBinary(receiverSlotID, TransferSlotIDBits)

	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return err
	}
	ssDetectionFq, err := decafgnark.CompressToField(api, ssDetection)
	if err != nil {
		return err
	}
	seedDetection, err := primitives.Poseidon377Hash2(
		api,
		primitives.MustBigInt(vectors.Poseidon377.IssuerDetectionDomain),
		[2]frontend.Variable{ssDetectionFq, senderCoreEPKFq},
	)
	if err != nil {
		return err
	}

	senderDetectionPlaintext := api.Add(
		senderSlotID,
		api.Mul(isFlagged, transferDetectionFlagBit),
		api.Mul(routingRolesSwapped, transferDetectionRoutingSwapBit),
	)
	keystream0, err := complianceStreamBlock(api, seedDetection, 0)
	if err != nil {
		return err
	}
	keystream1, err := complianceStreamBlock(api, seedDetection, 1)
	if err != nil {
		return err
	}
	keystream2, err := complianceStreamBlock(api, seedDetection, 2)
	if err != nil {
		return err
	}
	keystream3, err := complianceStreamBlock(api, seedDetection, 3)
	if err != nil {
		return err
	}

	api.AssertIsEqual(api.Add(assetID, keystream0), ciphertext[0])
	api.AssertIsEqual(api.Add(detectionSalt, keystream1), ciphertext[1])
	api.AssertIsEqual(api.Add(senderDetectionPlaintext, keystream2), ciphertext[2])
	api.AssertIsEqual(api.Add(receiverSlotID, keystream3), ciphertext[3])
	return nil
}

func VerifyPoseidonEncryptionTransferAmount(
	api frontend.API,
	sharedSecret gnarkte.Point,
	c2 frontend.Variable,
	amount frontend.Variable,
	ciphertext [TransferCoreCiphertextFQCount]frontend.Variable,
) error {
	sharedSecretFq, err := decafgnark.CompressToField(api, sharedSecret)
	if err != nil {
		return err
	}
	seed := api.Sub(c2, sharedSecretFq)
	keystream, err := complianceStreamBlock(api, seed, 0)
	if err != nil {
		return err
	}
	api.AssertIsEqual(api.Add(amount, keystream), ciphertext[0])
	return nil
}

func VerifyPoseidonEncryptionTransferAddress(
	api frontend.API,
	sharedSecret gnarkte.Point,
	c2 frontend.Variable,
	diversifiedGeneratorFq frontend.Variable,
	transmissionKeyFq frontend.Variable,
	ciphertext [TransferExtCiphertextFQCount]frontend.Variable,
) error {
	sharedSecretFq, err := decafgnark.CompressToField(api, sharedSecret)
	if err != nil {
		return err
	}
	seed := api.Sub(c2, sharedSecretFq)
	plaintexts := AddressPlaintextFQsFromCompressed(api, diversifiedGeneratorFq, transmissionKeyFq)
	for i, plain := range plaintexts {
		keystream, err := complianceStreamBlock(api, seed, i)
		if err != nil {
			return err
		}
		api.AssertIsEqual(api.Add(plain, keystream), ciphertext[i])
	}
	return nil
}
