package compliance

import (
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"math/big"

	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"golang.org/x/crypto/blake2b"
)

const (
	TransferDetectionFQCount      = 2
	TransferCoreCiphertextFQCount = 1
	TransferExtCiphertextFQCount  = 3
)

var (
	TransferSaltDomain            = transferSaltConstant("shieldd.transfer.compliance.salt")
	TransferDetectionSaltLabel    = transferSaltConstant("detection")
	TransferSenderCoreSaltLabel   = transferSaltConstant("sender_core")
	TransferSenderExtSaltLabel    = transferSaltConstant("sender_ext")
	TransferOutputCoreSaltLabel   = transferSaltConstant("output_core")
	TransferOutputExtSaltLabel    = transferSaltConstant("output_ext")
	TransferAuthorizationIDDomain = transferSaltConstant("shieldd.transfer.compliance.authorization_id.v1")
	TransferFuzzyTagDomain        = transferSaltConstant("shieldd.compliance.fuzzy_tag.v1")
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

func fuzzyTag(
	api frontend.API,
	curve gnarkte.Curve,
	r frontend.Variable,
	cluePK gnarkte.Point,
	assetID, authorizationID, authorizationTimestamp, role frontend.Variable,
	roleLabel string,
	trace func(string, ...string),
) (frontend.Variable, error) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return nil, err
	}
	if trace != nil {
		trace("decaf.assert_on_curve", "point=fuzzy."+roleLabel+".clue_pk")
	}
	curve.AssertIsOnCurve(cluePK)
	if trace != nil {
		trace("decaf.fuzzy_scalar_mul", "role="+roleLabel)
	}
	shared := ScalarMulLE(
		api,
		curve,
		cluePK,
		r,
		primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen(),
	)
	if trace != nil {
		trace("decaf.compress_to_field", "in=fuzzy."+roleLabel+".shared", "out=fuzzy."+roleLabel+".shared_fq")
	}
	sharedFq, err := decafgnark.CompressToField(api, shared)
	if err != nil {
		return nil, err
	}
	if trace != nil {
		trace("gadget.fuzzy_poseidon", "role="+roleLabel)
	}
	hash, err := primitives.Poseidon377Hash5(
		api,
		TransferFuzzyTagDomain,
		[5]frontend.Variable{sharedFq, assetID, authorizationID, authorizationTimestamp, role},
	)
	if err != nil {
		return nil, err
	}
	if trace != nil {
		trace("gadget.canonical_fq_bits", "in=fuzzy."+roleLabel+".hash", "out=fuzzy."+roleLabel+".bits")
	}
	bits := api.ToBinary(hash, 253)
	return api.FromBinary(bits[:8]...), nil
}

func VerifyTransferFuzzyTags(
	api frontend.API,
	senderR frontend.Variable,
	senderCluePK gnarkte.Point,
	receiverR frontend.Variable,
	receiverCluePK gnarkte.Point,
	assetID, authorizationID, authorizationTimestamp, packedTags frontend.Variable,
	trace func(string, ...string),
) error {
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return err
	}
	sender, err := fuzzyTag(api, curve, senderR, senderCluePK, assetID, authorizationID, authorizationTimestamp, 1, "sender", trace)
	if err != nil {
		return err
	}
	receiver, err := fuzzyTag(api, curve, receiverR, receiverCluePK, assetID, authorizationID, authorizationTimestamp, 2, "receiver", trace)
	if err != nil {
		return err
	}
	if trace != nil {
		trace("assert.eq", "lhs=compliance.fuzzy_tags", "rhs=fuzzy.sender_tag+256*fuzzy.receiver_tag")
	}
	api.AssertIsEqual(packedTags, api.Add(sender, api.Mul(receiver, 256)))
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
