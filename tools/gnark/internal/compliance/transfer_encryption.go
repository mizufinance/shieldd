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
	TransferDetectionFQCount      = 2
	TransferCoreCiphertextFQCount = 1
	TransferExtCiphertextFQCount  = 3
	MaxDiscoveryPrecisionBits     = 32
)

var (
	TransferSaltDomain            = transferSaltConstant("shieldd.transfer.compliance.salt")
	TransferDetectionSaltLabel    = transferSaltConstant("detection")
	TransferSenderCoreSaltLabel   = transferSaltConstant("sender_core")
	TransferSenderExtSaltLabel    = transferSaltConstant("sender_ext")
	TransferOutputCoreSaltLabel   = transferSaltConstant("output_core")
	TransferOutputExtSaltLabel    = transferSaltConstant("output_ext")
	TransferAuthorizationIDDomain = transferSaltConstant("shieldd.transfer.compliance.authorization_id.v1")
)

func DeriveAuthorizationID(
	api frontend.API,
	transferNonceRoot frontend.Variable,
) (frontend.Variable, error) {
	return primitives.Poseidon377Hash1(api, TransferAuthorizationIDDomain, transferNonceRoot)
}

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

func ThresholdFlag(api frontend.API, amount, threshold frontend.Variable) frontend.Variable {
	return api.Sub(1, fieldLessThan(api, amount, threshold))
}

func VerifyPoseidonEncryptionTransferDetection(
	api frontend.API,
	isRegulated frontend.Variable,
	isFlagged frontend.Variable,
	ssDetection gnarkte.Point,
	senderCoreEPKFq frontend.Variable,
	detectionSalt frontend.Variable,
	assetID frontend.Variable,
	ciphertext [TransferDetectionFQCount]frontend.Variable,
) error {
	api.AssertIsBoolean(isRegulated)
	api.AssertIsBoolean(isFlagged)

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

	detectionPlaintext := api.Add(assetID, api.Mul(isFlagged, flagBitFq()))
	keystream0, err := complianceStreamBlock(api, seedDetection, 0)
	if err != nil {
		return err
	}
	keystream1, err := complianceStreamBlock(api, seedDetection, 1)
	if err != nil {
		return err
	}
	AssertEqualIf(api, api.Add(detectionPlaintext, keystream0), ciphertext[0], isRegulated)
	AssertEqualIf(api, api.Add(detectionSalt, keystream1), ciphertext[1], isRegulated)
	return nil
}

func truncateDiscoveryPrefix(
	api frontend.API,
	transmissionKeyFq frontend.Variable,
	activeBits [MaxDiscoveryPrecisionBits]frontend.Variable,
) frontend.Variable {
	bits := api.ToBinary(transmissionKeyFq, 253)
	masked := make([]frontend.Variable, MaxDiscoveryPrecisionBits)
	for i := range masked {
		masked[i] = api.Mul(bits[i], activeBits[i])
	}
	return api.FromBinary(masked...)
}

func discoveryPrecisionActiveBits(
	api frontend.API,
	precision frontend.Variable,
) [MaxDiscoveryPrecisionBits]frontend.Variable {
	var exact [MaxDiscoveryPrecisionBits + 1]frontend.Variable
	allowed := frontend.Variable(0)
	for i := range exact {
		exact[i] = api.IsZero(api.Sub(precision, i))
		allowed = api.Add(allowed, exact[i])
	}
	api.AssertIsEqual(allowed, 1)

	var active [MaxDiscoveryPrecisionBits]frontend.Variable
	for i := range active {
		active[i] = 0
		for precisionOffset := i + 1; precisionOffset < len(exact); precisionOffset++ {
			active[i] = api.Add(active[i], exact[precisionOffset])
		}
	}
	return active
}

func VerifyTransferDiscoveryTags(
	api frontend.API,
	senderTransmissionKeyFq frontend.Variable,
	receiverTransmissionKeyFq frontend.Variable,
	precision frontend.Variable,
	packedTags frontend.Variable,
	trace func(string, ...string),
) error {
	activeBits := discoveryPrecisionActiveBits(api, precision)
	sender := truncateDiscoveryPrefix(api, senderTransmissionKeyFq, activeBits)
	receiver := truncateDiscoveryPrefix(api, receiverTransmissionKeyFq, activeBits)
	if trace != nil {
		trace("gadget.discovery_prefix", "source=address.transmission_key")
		trace("assert.eq", "lhs=compliance.discovery_tags", "rhs=discovery.sender_tag+2^32*discovery.receiver_tag")
	}
	api.AssertIsEqual(packedTags, api.Add(sender, api.Mul(receiver, uint64(1)<<MaxDiscoveryPrecisionBits)))
	return nil
}

func VerifyPoseidonEncryptionTransferAmount(
	api frontend.API,
	isRegulated frontend.Variable,
	sharedSecret gnarkte.Point,
	c2 frontend.Variable,
	amount frontend.Variable,
	ciphertext [TransferCoreCiphertextFQCount]frontend.Variable,
) error {
	api.AssertIsBoolean(isRegulated)

	sharedSecretFq, err := decafgnark.CompressToField(api, sharedSecret)
	if err != nil {
		return err
	}
	seed := api.Sub(c2, sharedSecretFq)
	keystream, err := complianceStreamBlock(api, seed, 0)
	if err != nil {
		return err
	}
	AssertEqualIf(api, api.Add(amount, keystream), ciphertext[0], isRegulated)
	return nil
}

func VerifyPoseidonEncryptionTransferAddress(
	api frontend.API,
	isRegulated frontend.Variable,
	sharedSecret gnarkte.Point,
	c2 frontend.Variable,
	diversifiedGeneratorFq frontend.Variable,
	transmissionKeyFq frontend.Variable,
	ciphertext [TransferExtCiphertextFQCount]frontend.Variable,
) error {
	api.AssertIsBoolean(isRegulated)

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
		AssertEqualIf(api, api.Add(plain, keystream), ciphertext[i], isRegulated)
	}
	return nil
}
