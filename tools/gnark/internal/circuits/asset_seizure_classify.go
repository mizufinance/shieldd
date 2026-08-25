package circuits

import (
	"fmt"
	"math/big"

	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

// Classification is deliberately single-row initially. The staged state
// machine keeps proof size bounded; a larger batch must be selected from
// measured prover memory and verification costs.
const SeizureClassifyBatchSize = 1

const (
	SeizureCandidateNone = iota
	SeizureCandidatePreTransfer
	SeizureCandidateIssuerTransfer
	SeizureCandidatePreWithdrawal
	SeizureCandidateIssuerWithdrawal
)

const (
	SeizureDirectionNone = iota
	SeizureDirectionCredit
	SeizureDirectionDebit
)

var (
	seizureCompactPreDLEQDomain = seizureDomain("shieldd.seizure.pre.aggregate_dleq.v1")
	seizureIssuerDhDLEQDomain   = seizureLittleEndianConstant([]byte("shieldd.issuer.dh_evidence.dleq.v1\x00"))
	seizureCandidateHeadDomain  = seizureDomain("shieldd.seizure.candidate.head.v1")
	seizureCandidateBodyDomain  = seizureDomain("shieldd.seizure.candidate.body.v1")
	seizureCandidateTailDomain  = seizureDomain("shieldd.seizure.candidate.tail.v1")
	seizureCandidateFinalDomain = seizureDomain("shieldd.seizure.candidate.final.v1")
)

func seizureLittleEndianConstant(value []byte) *big.Int {
	reversed := make([]byte, len(value))
	for index := range value {
		reversed[len(value)-1-index] = value[index]
	}
	return new(big.Int).SetBytes(reversed)
}

func decafGeneratorFromVectors(vectors primitives.PrototypeVectors) (gnarkte.Point, error) {
	x, ok := new(big.Int).SetString(vectors.Decaf377CompanionCurve.GeneratorX, 10)
	if !ok {
		return gnarkte.Point{}, fmt.Errorf("invalid Decaf generator x")
	}
	y, ok := new(big.Int).SetString(vectors.Decaf377CompanionCurve.GeneratorY, 10)
	if !ok {
		return gnarkte.Point{}, fmt.Errorf("invalid Decaf generator y")
	}
	return gnarkte.Point{X: x, Y: y}, nil
}

// SeizureIssuerDhEvidence is an issuer Chaum-Pedersen opening for one exact
// accepted EPK. IssuerDKPub is carried once by the enclosing candidate.
type SeizureIssuerDhEvidence struct {
	SharedPoint         Point2D
	CommitmentGenerator Point2D
	CommitmentEPK       Point2D
	Response            frontend.Variable
}

// SeizureCompactPreEvidence is a threshold-generated proof for the aggregate
// result returned by ordinary StartPre. It proves
// log_G(target_capability) = log_(reader_pk + epk)(reencrypted_point).
// This is transferable mathematical evidence, not an Orbis attestation.
type SeizureCompactPreEvidence struct {
	ReencryptedPoint    Point2D
	CommitmentGenerator Point2D
	CommitmentReader    Point2D
	Response            frontend.Variable
}

type SeizureCoreCiphertext struct {
	EPK             Point2D
	C2              frontend.Variable
	KeyConfirmation frontend.Variable
	Ciphertext      frontend.Variable
	Salt            frontend.Variable
}

type SeizureAddressCiphertext struct {
	EPK             Point2D
	C2              frontend.Variable
	KeyConfirmation frontend.Variable
	Ciphertext      [compliance.WithdrawalAddressCiphertextFQCount]frontend.Variable
}

// SeizureCandidateRow is the closed normalized candidate projection produced
// by the canonical transaction decoder. Proof-only points are excluded from
// CandidateDigest; accepted transaction fields are included.
type SeizureCandidateRow struct {
	Enabled      frontend.Variable
	Kind         frontend.Variable
	TxDigest     frontend.Variable
	Direction    frontend.Variable
	AssetID      frontend.Variable
	IsFlagged    frontend.Variable
	PublicAmount frontend.Variable

	DetectionEPK        Point2D
	DetectionSalt       frontend.Variable
	DetectionCiphertext [compliance.TransferDetectionFQCount]frontend.Variable

	Core    SeizureCoreCiphertext
	Address SeizureAddressCiphertext

	RingPK          Point2D
	IssuerDKPub     Point2D
	DetectionIssuer SeizureIssuerDhEvidence
	CoreIssuer      SeizureIssuerDhEvidence
	AddressIssuer   SeizureIssuerDhEvidence
	Pre             SeizureCompactPreEvidence
}

// SeizureClassifyCircuit consumes one normalized routing candidate. The target
// context is public: this intentionally accepts disclosure of who is audited
// in exchange for binding the SHA-512-derived Orbis capability without adding
// a second derivation protocol inside the circuit.
type SeizureClassifyCircuit struct {
	JobIDLo                        frontend.Variable `gnark:",public"`
	JobIDHi                        frontend.Variable `gnark:",public"`
	Sequence                       frontend.Variable `gnark:",public"`
	ImmutableStatementCommitmentLo frontend.Variable `gnark:",public"`
	ImmutableStatementCommitmentHi frontend.Variable `gnark:",public"`
	StartStateCommitment           frontend.Variable `gnark:",public"`
	EndStateCommitment             frontend.Variable `gnark:",public"`

	TargetAssetID                     frontend.Variable `gnark:",public"`
	TargetAddressDiversifiedGenerator frontend.Variable `gnark:",public"`
	TargetAddressTransmissionKey      frontend.Variable `gnark:",public"`
	TargetDerivation                  frontend.Variable `gnark:",public"`

	ReaderPK     Point2D
	ReaderSecret frontend.Variable

	// Sequence zero bridges the terminal scan commitment into the first
	// classification commitment. Later chunks ignore this opening.
	ScanTerminalSequence frontend.Variable
	ScanTerminal         SeizureScanState
	Start                SeizureClassificationState
	End                  SeizureClassificationState
	Rows                 [SeizureClassifyBatchSize]SeizureCandidateRow
}

func (c *SeizureClassifyCircuit) Define(api frontend.API) error {
	api.ToBinary(c.JobIDLo, 128)
	api.ToBinary(c.JobIDHi, 128)
	api.ToBinary(c.Sequence, 64)
	api.ToBinary(c.ImmutableStatementCommitmentLo, 128)
	api.ToBinary(c.ImmutableStatementCommitmentHi, 128)
	api.ToBinary(c.TargetAssetID, 256)
	api.ToBinary(c.TargetAddressDiversifiedGenerator, 256)
	api.ToBinary(c.TargetAddressTransmissionKey, 256)
	api.ToBinary(c.TargetDerivation, 256)
	api.ToBinary(c.ScanTerminalSequence, 64)
	if err := constrainScanState(api, c.ScanTerminal); err != nil {
		return err
	}
	constrainClassificationState(api, c.Start)
	constrainClassificationState(api, c.End)

	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return err
	}
	readerPK := pointFromSeizure(c.ReaderPK)
	for _, point := range []gnarkte.Point{readerPK} {
		curve.AssertIsOnCurve(point)
		AssertDecafNonIdentity(api, point)
	}

	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return err
	}
	order := primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order)
	targetDerivationBits := api.ToBinary(c.TargetDerivation, decafgnark.FieldBits)
	api.AssertIsEqual(compliance.LessThanConstant253(api, targetDerivationBits, order), 1)
	readerBits := api.ToBinary(c.ReaderSecret, decafgnark.FieldBits)
	api.AssertIsEqual(compliance.LessThanConstant253(api, readerBits, order), 1)
	generator, err := decafGeneratorFromVectors(vectors)
	if err != nil {
		return err
	}
	computedReader := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		generator,
		readerBits[:order.BitLen()],
	)
	assertDecafEquivalentIf(api, computedReader, readerPK, 1)

	isFirst := api.IsZero(c.Sequence)
	api.AssertIsEqual(api.Mul(isFirst, api.IsZero(c.ScanTerminalSequence)), 0)
	scanStart, err := commitSeizureScanState(
		api,
		c.JobIDLo,
		c.JobIDHi,
		c.ImmutableStatementCommitmentLo,
		c.ImmutableStatementCommitmentHi,
		c.ScanTerminalSequence,
		c.ScanTerminal,
	)
	if err != nil {
		return err
	}
	classificationStart, err := commitSeizureClassificationState(
		api,
		c.JobIDLo,
		c.JobIDHi,
		c.ImmutableStatementCommitmentLo,
		c.ImmutableStatementCommitmentHi,
		c.TargetAssetID,
		c.TargetAddressDiversifiedGenerator,
		c.TargetAddressTransmissionKey,
		c.TargetDerivation,
		c.Sequence,
		c.Start,
	)
	if err != nil {
		return err
	}
	api.AssertIsEqual(
		c.StartStateCommitment,
		api.Select(isFirst, scanStart, classificationStart),
	)
	api.AssertIsEqual(
		api.Mul(isFirst, api.Sub(c.Start.ExpectedCandidateCount, c.ScanTerminal.CandidateCount)),
		0,
	)
	api.AssertIsEqual(
		api.Mul(isFirst, api.Sub(c.Start.ExpectedCandidateDigest, c.ScanTerminal.CandidateDigest)),
		0,
	)
	for _, value := range []frontend.Variable{
		c.Start.ConsumedCandidateCount,
		c.Start.ConsumedCandidateDigest,
		c.Start.MatchedTxCount,
		c.Start.ClassifiedCredits,
		c.Start.ClassifiedDebits,
		c.Start.PreviousTxDigest,
		c.Start.PreviousTxMatched,
	} {
		api.AssertIsEqual(api.Mul(isFirst, value), 0)
	}

	consumedCount := c.Start.ConsumedCandidateCount
	consumedDigest := c.Start.ConsumedCandidateDigest
	matchedTxCount := c.Start.MatchedTxCount
	credits := c.Start.ClassifiedCredits
	debits := c.Start.ClassifiedDebits
	previousTxDigest := c.Start.PreviousTxDigest
	previousTxMatched := c.Start.PreviousTxMatched
	previousEnabled := frontend.Variable(1)

	for index := range c.Rows {
		row := c.Rows[index]
		api.AssertIsBoolean(row.Enabled)
		api.AssertIsEqual(api.Mul(row.Enabled, api.Sub(1, previousEnabled)), 0)
		previousEnabled = row.Enabled
		match, credit, debit, digest, err := classifySeizureCandidate(
			api,
			curve,
			generator,
			order,
			compliance.DLEQChallengeBits,
			row,
			c.TargetAssetID,
			c.TargetAddressDiversifiedGenerator,
			c.TargetAddressTransmissionKey,
			targetDerivationBits[:order.BitLen()],
			readerPK,
			readerBits[:order.BitLen()],
		)
		if err != nil {
			return err
		}

		consumedCount = api.Add(consumedCount, row.Enabled)
		digestNext, err := primitives.Poseidon377Hash2(
			api,
			seizureCandidateChainDomain,
			[2]frontend.Variable{consumedDigest, digest},
		)
		if err != nil {
			return err
		}
		consumedDigest = api.Select(row.Enabled, digestNext, consumedDigest)
		credits = api.Add(credits, credit)
		debits = api.Add(debits, debit)
		api.ToBinary(credits, 128)
		api.ToBinary(debits, 128)

		sameTx := api.IsZero(api.Sub(row.TxDigest, previousTxDigest))
		alreadyMatched := api.Mul(sameTx, previousTxMatched)
		newMatchedTx := api.Mul(row.Enabled, match, api.Sub(1, alreadyMatched))
		matchedTxCount = api.Add(matchedTxCount, newMatchedTx)
		api.ToBinary(matchedTxCount, 64)
		currentTxMatched := api.Sub(
			api.Add(previousTxMatched, match),
			api.Mul(previousTxMatched, match),
		)
		previousTxMatched = api.Select(
			row.Enabled,
			api.Select(sameTx, currentTxMatched, match),
			previousTxMatched,
		)
		previousTxDigest = api.Select(row.Enabled, row.TxDigest, previousTxDigest)
	}

	api.AssertIsEqual(c.End.ExpectedCandidateCount, c.Start.ExpectedCandidateCount)
	api.AssertIsEqual(c.End.ExpectedCandidateDigest, c.Start.ExpectedCandidateDigest)
	api.AssertIsEqual(c.End.ConsumedCandidateCount, consumedCount)
	api.AssertIsEqual(c.End.ConsumedCandidateDigest, consumedDigest)
	api.AssertIsEqual(c.End.MatchedTxCount, matchedTxCount)
	api.AssertIsEqual(c.End.ClassifiedCredits, credits)
	api.AssertIsEqual(c.End.ClassifiedDebits, debits)
	api.AssertIsEqual(c.End.PreviousTxDigest, previousTxDigest)
	api.AssertIsEqual(c.End.PreviousTxMatched, previousTxMatched)

	endCommitment, err := commitSeizureClassificationState(
		api,
		c.JobIDLo,
		c.JobIDHi,
		c.ImmutableStatementCommitmentLo,
		c.ImmutableStatementCommitmentHi,
		c.TargetAssetID,
		c.TargetAddressDiversifiedGenerator,
		c.TargetAddressTransmissionKey,
		c.TargetDerivation,
		api.Add(c.Sequence, 1),
		c.End,
	)
	if err != nil {
		return err
	}
	api.AssertIsEqual(endCommitment, c.EndStateCommitment)
	return nil
}

func pointFromSeizure(point Point2D) gnarkte.Point {
	return gnarkte.Point{X: point.X, Y: point.Y}
}

func assertEqualIf(api frontend.API, left, right, selector frontend.Variable) {
	api.AssertIsEqual(api.Mul(api.Sub(left, right), selector), 0)
}

func assertNonIdentityIf(api frontend.API, point gnarkte.Point, selector frontend.Variable) {
	api.AssertIsEqual(api.Mul(api.IsZero(point.X), selector), 0)
}

func assertDecafEquivalentIf(
	api frontend.API,
	left gnarkte.Point,
	right gnarkte.Point,
	selector frontend.Variable,
) {
	assertEqualIf(api, api.Mul(left.X, right.Y), api.Mul(right.X, left.Y), selector)
}

func classifySeizureCandidate(
	api frontend.API,
	curve gnarkte.Curve,
	generator gnarkte.Point,
	order *big.Int,
	challengeBits int,
	row SeizureCandidateRow,
	targetAssetID frontend.Variable,
	targetDiv frontend.Variable,
	targetTransmission frontend.Variable,
	targetDerivationBits []frontend.Variable,
	readerPK gnarkte.Point,
	readerBits []frontend.Variable,
) (frontend.Variable, frontend.Variable, frontend.Variable, frontend.Variable, error) {
	selectors := [5]frontend.Variable{}
	selectorSum := frontend.Variable(0)
	for kind := range selectors {
		selectors[kind] = api.IsZero(api.Sub(row.Kind, kind))
		selectorSum = api.Add(selectorSum, selectors[kind])
	}
	api.AssertIsEqual(selectorSum, 1)
	api.AssertIsEqual(selectors[SeizureCandidateNone], api.Sub(1, row.Enabled))

	api.AssertIsBoolean(row.IsFlagged)
	api.ToBinary(row.PublicAmount, 128)
	creditDirection := api.IsZero(api.Sub(row.Direction, SeizureDirectionCredit))
	debitDirection := api.IsZero(api.Sub(row.Direction, SeizureDirectionDebit))
	api.AssertIsEqual(
		api.Add(creditDirection, debitDirection),
		row.Enabled,
	)
	isTransfer := api.Add(
		selectors[SeizureCandidatePreTransfer],
		selectors[SeizureCandidateIssuerTransfer],
	)
	isWithdrawal := api.Add(
		selectors[SeizureCandidatePreWithdrawal],
		selectors[SeizureCandidateIssuerWithdrawal],
	)
	isPre := api.Add(
		selectors[SeizureCandidatePreTransfer],
		selectors[SeizureCandidatePreWithdrawal],
	)
	isIssuer := api.Add(
		selectors[SeizureCandidateIssuerTransfer],
		selectors[SeizureCandidateIssuerWithdrawal],
	)
	assertEqualIf(api, row.Direction, SeizureDirectionDebit, isWithdrawal)
	assertEqualIf(api, row.IsFlagged, 0, isPre)
	assertEqualIf(api, row.IsFlagged, 1, isIssuer)

	assetMatches := api.IsZero(api.Sub(row.AssetID, targetAssetID))
	evidenceActive := api.Mul(row.Enabled, assetMatches)
	preActive := api.Mul(evidenceActive, isPre)
	issuerActive := api.Mul(evidenceActive, isIssuer)
	transferActive := api.Mul(row.Enabled, isTransfer)

	detectionEPK := pointFromSeizure(row.DetectionEPK)
	issuerDKPub := pointFromSeizure(row.IssuerDKPub)
	for _, point := range []gnarkte.Point{detectionEPK, issuerDKPub} {
		curve.AssertIsOnCurve(point)
	}
	if err := verifyIssuerDhDLEQIf(
		api,
		curve,
		generator,
		order,
		challengeBits,
		row.AssetID,
		issuerDKPub,
		detectionEPK,
		row.DetectionIssuer,
		transferActive,
	); err != nil {
		return nil, nil, nil, nil, err
	}
	if err := verifyTransferDetectionIf(
		api,
		row.IsFlagged,
		pointFromSeizure(row.DetectionIssuer.SharedPoint),
		detectionEPK,
		row.DetectionSalt,
		row.AssetID,
		row.DetectionCiphertext,
		transferActive,
	); err != nil {
		return nil, nil, nil, nil, err
	}

	coreEPK := pointFromSeizure(row.Core.EPK)
	addressEPK := pointFromSeizure(row.Address.EPK)
	ringPK := pointFromSeizure(row.RingPK)
	for _, point := range []gnarkte.Point{coreEPK, addressEPK, ringPK} {
		curve.AssertIsOnCurve(point)
	}
	targetCapability := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		ringPK,
		targetDerivationBits,
	)
	assertNonIdentityIf(api, targetCapability, preActive)
	preEPK := gnarkte.Point{
		X: api.Select(selectors[SeizureCandidatePreTransfer], coreEPK.X, addressEPK.X),
		Y: api.Select(selectors[SeizureCandidatePreTransfer], coreEPK.Y, addressEPK.Y),
	}
	preShared, err := verifyCompactPreIf(
		api,
		curve,
		generator,
		order,
		challengeBits,
		targetCapability,
		readerPK,
		readerBits,
		preEPK,
		row.Pre,
		preActive,
	)
	if err != nil {
		return nil, nil, nil, nil, err
	}

	coreEPKFq, err := decafgnark.CompressToField(api, coreEPK)
	if err != nil {
		return nil, nil, nil, nil, err
	}
	preTransferMatch, preTransferAmount, err := compliance.ClassifyTransferCore(
		api,
		preShared,
		coreEPKFq,
		row.Core.C2,
		row.Core.KeyConfirmation,
		row.Core.Salt,
		row.Core.Ciphertext,
	)
	if err != nil {
		return nil, nil, nil, nil, err
	}

	if err := verifyIssuerDhDLEQIf(
		api,
		curve,
		generator,
		order,
		challengeBits,
		row.AssetID,
		issuerDKPub,
		coreEPK,
		row.CoreIssuer,
		api.Mul(issuerActive, selectors[SeizureCandidateIssuerTransfer]),
	); err != nil {
		return nil, nil, nil, nil, err
	}
	issuerCoreMatch, issuerTransferAmount, err := compliance.ClassifyTransferCore(
		api,
		pointFromSeizure(row.CoreIssuer.SharedPoint),
		coreEPKFq,
		row.Core.C2,
		row.Core.KeyConfirmation,
		row.Core.Salt,
		row.Core.Ciphertext,
	)
	if err != nil {
		return nil, nil, nil, nil, err
	}
	assertEqualIf(
		api,
		issuerCoreMatch,
		1,
		api.Mul(issuerActive, selectors[SeizureCandidateIssuerTransfer]),
	)

	if err := verifyIssuerDhDLEQIf(
		api,
		curve,
		generator,
		order,
		challengeBits,
		row.AssetID,
		issuerDKPub,
		addressEPK,
		row.AddressIssuer,
		issuerActive,
	); err != nil {
		return nil, nil, nil, nil, err
	}
	issuerTransferAddressMatch, err := classifyTransferAddress(
		api,
		pointFromSeizure(row.AddressIssuer.SharedPoint),
		row.Address,
		targetDiv,
		targetTransmission,
	)
	if err != nil {
		return nil, nil, nil, nil, err
	}
	preWithdrawalMatch, err := classifyWithdrawalAddress(
		api,
		preShared,
		row.Address,
		targetDiv,
		targetTransmission,
	)
	if err != nil {
		return nil, nil, nil, nil, err
	}
	issuerWithdrawalMatch, err := classifyWithdrawalAddress(
		api,
		pointFromSeizure(row.AddressIssuer.SharedPoint),
		row.Address,
		targetDiv,
		targetTransmission,
	)
	if err != nil {
		return nil, nil, nil, nil, err
	}

	match := api.Add(
		api.Mul(selectors[SeizureCandidatePreTransfer], preTransferMatch),
		api.Mul(selectors[SeizureCandidateIssuerTransfer], issuerTransferAddressMatch),
		api.Mul(selectors[SeizureCandidatePreWithdrawal], preWithdrawalMatch),
		api.Mul(selectors[SeizureCandidateIssuerWithdrawal], issuerWithdrawalMatch),
	)
	match = api.Mul(match, row.Enabled, assetMatches)
	api.AssertIsBoolean(match)
	transferAmount := api.Add(
		api.Mul(selectors[SeizureCandidatePreTransfer], preTransferAmount),
		api.Mul(selectors[SeizureCandidateIssuerTransfer], issuerTransferAmount),
	)
	amount := api.Add(transferAmount, api.Mul(isWithdrawal, row.PublicAmount))
	amount = api.Mul(match, amount)
	api.ToBinary(amount, 128)
	credit := api.Mul(amount, creditDirection)
	debit := api.Mul(amount, debitDirection)

	digest, err := commitSeizureCandidate(api, row)
	if err != nil {
		return nil, nil, nil, nil, err
	}
	return match, credit, debit, digest, nil
}

func verifyIssuerDhDLEQIf(
	api frontend.API,
	curve gnarkte.Curve,
	generator gnarkte.Point,
	order *big.Int,
	challengeKeepBits int,
	assetID frontend.Variable,
	issuerDKPub gnarkte.Point,
	epk gnarkte.Point,
	evidence SeizureIssuerDhEvidence,
	selector frontend.Variable,
) error {
	shared := pointFromSeizure(evidence.SharedPoint)
	commitmentGenerator := pointFromSeizure(evidence.CommitmentGenerator)
	commitmentEPK := pointFromSeizure(evidence.CommitmentEPK)
	for _, point := range []gnarkte.Point{
		generator,
		issuerDKPub,
		epk,
		shared,
		commitmentGenerator,
		commitmentEPK,
	} {
		curve.AssertIsOnCurve(point)
		assertNonIdentityIf(api, point, selector)
	}

	compressed := make([]frontend.Variable, 0, 6)
	for _, point := range []gnarkte.Point{
		generator,
		issuerDKPub,
		epk,
		shared,
		commitmentGenerator,
		commitmentEPK,
	} {
		value, err := decafgnark.CompressToField(api, point)
		if err != nil {
			return err
		}
		compressed = append(compressed, value)
	}
	challengeFq, err := primitives.Poseidon377Hash7(
		api,
		seizureIssuerDhDLEQDomain,
		[7]frontend.Variable{
			assetID,
			compressed[0],
			compressed[1],
			compressed[2],
			compressed[3],
			compressed[4],
			compressed[5],
		},
	)
	if err != nil {
		return err
	}
	responseBits := api.ToBinary(evidence.Response, decafgnark.FieldBits)
	api.AssertIsEqual(compliance.LessThanConstant253(api, responseBits, order), 1)
	challengeBits := api.ToBinary(challengeFq, decafgnark.FieldBits)
	challengeBits = challengeBits[:challengeKeepBits]

	responseG := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		generator,
		responseBits[:order.BitLen()],
	)
	challengeDK := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		issuerDKPub,
		challengeBits,
	)
	expectedG := curve.Add(commitmentGenerator, challengeDK)
	assertDecafEquivalentIf(api, responseG, expectedG, selector)

	responseEPK := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		epk,
		responseBits[:order.BitLen()],
	)
	challengeShared := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		shared,
		challengeBits,
	)
	expectedEPK := curve.Add(commitmentEPK, challengeShared)
	assertDecafEquivalentIf(api, responseEPK, expectedEPK, selector)
	return nil
}

func verifyCompactPreIf(
	api frontend.API,
	curve gnarkte.Curve,
	generator gnarkte.Point,
	order *big.Int,
	challengeKeepBits int,
	targetCapability gnarkte.Point,
	readerPK gnarkte.Point,
	readerBits []frontend.Variable,
	epk gnarkte.Point,
	evidence SeizureCompactPreEvidence,
	selector frontend.Variable,
) (gnarkte.Point, error) {
	reencrypted := pointFromSeizure(evidence.ReencryptedPoint)
	commitmentGenerator := pointFromSeizure(evidence.CommitmentGenerator)
	commitmentReader := pointFromSeizure(evidence.CommitmentReader)
	readerBase := curve.Add(readerPK, epk)
	for _, point := range []gnarkte.Point{
		generator,
		targetCapability,
		readerPK,
		epk,
		readerBase,
		reencrypted,
		commitmentGenerator,
		commitmentReader,
	} {
		curve.AssertIsOnCurve(point)
		assertNonIdentityIf(api, point, selector)
	}

	compressed := make([]frontend.Variable, 0, 8)
	for _, point := range []gnarkte.Point{
		generator,
		targetCapability,
		readerPK,
		epk,
		readerBase,
		reencrypted,
		commitmentGenerator,
		commitmentReader,
	} {
		value, err := decafgnark.CompressToField(api, point)
		if err != nil {
			return gnarkte.Point{}, err
		}
		compressed = append(compressed, value)
	}
	challengeHead, err := primitives.Poseidon377Hash7(
		api,
		seizureCompactPreDLEQDomain,
		[7]frontend.Variable{
			compressed[0],
			compressed[1],
			compressed[2],
			compressed[3],
			compressed[4],
			compressed[5],
			compressed[6],
		},
	)
	if err != nil {
		return gnarkte.Point{}, err
	}
	challengeFq, err := primitives.Poseidon377Hash2(
		api,
		seizureCompactPreDLEQDomain,
		[2]frontend.Variable{challengeHead, compressed[7]},
	)
	if err != nil {
		return gnarkte.Point{}, err
	}
	responseBits := api.ToBinary(evidence.Response, decafgnark.FieldBits)
	api.AssertIsEqual(compliance.LessThanConstant253(api, responseBits, order), 1)
	challengeBits := api.ToBinary(challengeFq, decafgnark.FieldBits)
	challengeBits = challengeBits[:challengeKeepBits]

	responseG := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		generator,
		responseBits[:order.BitLen()],
	)
	challengeCapability := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		targetCapability,
		challengeBits,
	)
	expectedG := curve.Add(commitmentGenerator, challengeCapability)
	assertDecafEquivalentIf(api, responseG, expectedG, selector)

	responseReader := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		readerBase,
		responseBits[:order.BitLen()],
	)
	challengeReencrypted := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		reencrypted,
		challengeBits,
	)
	expectedReader := curve.Add(commitmentReader, challengeReencrypted)
	assertDecafEquivalentIf(api, responseReader, expectedReader, selector)

	readerCapability := compliance.ScalarMulWindow2LEBits(
		api,
		curve,
		targetCapability,
		readerBits,
	)
	shared := curve.Add(reencrypted, curve.Neg(readerCapability))
	assertNonIdentityIf(api, shared, selector)
	return shared, nil
}

func verifyTransferDetectionIf(
	api frontend.API,
	isFlagged frontend.Variable,
	shared gnarkte.Point,
	ephemeralPublicKey gnarkte.Point,
	detectionSalt frontend.Variable,
	assetID frontend.Variable,
	ciphertext [compliance.TransferDetectionFQCount]frontend.Variable,
	selector frontend.Variable,
) error {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return err
	}
	sharedFq, err := decafgnark.CompressToField(api, shared)
	if err != nil {
		return err
	}
	epkFq, err := decafgnark.CompressToField(api, ephemeralPublicKey)
	if err != nil {
		return err
	}
	seed, err := primitives.Poseidon377Hash2(
		api,
		primitives.MustBigInt(vectors.Poseidon377.IssuerDetectionDomain),
		[2]frontend.Variable{sharedFq, epkFq},
	)
	if err != nil {
		return err
	}
	plaintext := [compliance.TransferDetectionFQCount]frontend.Variable{
		assetID,
		detectionSalt,
		isFlagged,
		0,
	}
	streamDomain := seizureDomain("shieldd.compliance.poseidon_stream")
	for index := range ciphertext {
		stream, err := primitives.Poseidon377Hash2(
			api,
			streamDomain,
			[2]frontend.Variable{seed, index},
		)
		if err != nil {
			return err
		}
		assertEqualIf(api, ciphertext[index], api.Add(plaintext[index], stream), selector)
	}
	return nil
}

func classifyTransferAddress(
	api frontend.API,
	shared gnarkte.Point,
	ciphertext SeizureAddressCiphertext,
	targetDiv frontend.Variable,
	targetTransmission frontend.Variable,
) (frontend.Variable, error) {
	sharedFq, err := decafgnark.CompressToField(api, shared)
	if err != nil {
		return nil, err
	}
	seed := api.Sub(ciphertext.C2, sharedFq)
	return classifyAddressPlaintext(
		api,
		seed,
		ciphertext.Ciphertext,
		targetDiv,
		targetTransmission,
	)
}

func classifyWithdrawalAddress(
	api frontend.API,
	shared gnarkte.Point,
	ciphertext SeizureAddressCiphertext,
	targetDiv frontend.Variable,
	targetTransmission frontend.Variable,
) (frontend.Variable, error) {
	sharedFq, err := decafgnark.CompressToField(api, shared)
	if err != nil {
		return nil, err
	}
	seed := api.Sub(ciphertext.C2, sharedFq)
	epkFq, err := decafgnark.CompressToField(api, pointFromSeizure(ciphertext.EPK))
	if err != nil {
		return nil, err
	}
	confirmation, err := primitives.Poseidon377Hash2(
		api,
		compliance.WithdrawalKeyConfirmationDomain,
		[2]frontend.Variable{seed, epkFq},
	)
	if err != nil {
		return nil, err
	}
	confirmationMatches := api.IsZero(api.Sub(confirmation, ciphertext.KeyConfirmation))
	addressMatches, err := classifyAddressPlaintext(
		api,
		seed,
		ciphertext.Ciphertext,
		targetDiv,
		targetTransmission,
	)
	if err != nil {
		return nil, err
	}
	return api.Mul(confirmationMatches, addressMatches), nil
}

func classifyAddressPlaintext(
	api frontend.API,
	seed frontend.Variable,
	ciphertext [compliance.WithdrawalAddressCiphertextFQCount]frontend.Variable,
	targetDiv frontend.Variable,
	targetTransmission frontend.Variable,
) (frontend.Variable, error) {
	target := compliance.AddressPlaintextFQsFromCompressed(api, targetDiv, targetTransmission)
	streamDomain := seizureDomain("shieldd.compliance.poseidon_stream")
	match := frontend.Variable(1)
	for index := range ciphertext {
		stream, err := primitives.Poseidon377Hash2(
			api,
			streamDomain,
			[2]frontend.Variable{seed, index},
		)
		if err != nil {
			return nil, err
		}
		plain := api.Sub(ciphertext[index], stream)
		match = api.Mul(match, api.IsZero(api.Sub(plain, target[index])))
	}
	api.AssertIsBoolean(match)
	return match, nil
}

func commitSeizureCandidate(
	api frontend.API,
	row SeizureCandidateRow,
) (frontend.Variable, error) {
	compress := func(point Point2D) (frontend.Variable, error) {
		return decafgnark.CompressToField(api, pointFromSeizure(point))
	}
	detectionEPK, err := compress(row.DetectionEPK)
	if err != nil {
		return nil, err
	}
	coreEPK, err := compress(row.Core.EPK)
	if err != nil {
		return nil, err
	}
	addressEPK, err := compress(row.Address.EPK)
	if err != nil {
		return nil, err
	}
	issuerDKPub, err := compress(row.IssuerDKPub)
	if err != nil {
		return nil, err
	}
	ringPK, err := compress(row.RingPK)
	if err != nil {
		return nil, err
	}
	head, err := primitives.Poseidon377Hash7(
		api,
		seizureCandidateHeadDomain,
		[7]frontend.Variable{
			row.TxDigest,
			row.Kind,
			row.Direction,
			row.AssetID,
			row.IsFlagged,
			row.PublicAmount,
			detectionEPK,
		},
	)
	if err != nil {
		return nil, err
	}
	body, err := primitives.Poseidon377Hash7(
		api,
		seizureCandidateBodyDomain,
		[7]frontend.Variable{
			head,
			row.DetectionSalt,
			row.DetectionCiphertext[0],
			row.DetectionCiphertext[1],
			row.DetectionCiphertext[2],
			row.DetectionCiphertext[3],
			coreEPK,
		},
	)
	if err != nil {
		return nil, err
	}
	tail, err := primitives.Poseidon377Hash7(
		api,
		seizureCandidateTailDomain,
		[7]frontend.Variable{
			body,
			row.Core.C2,
			row.Core.KeyConfirmation,
			row.Core.Ciphertext,
			row.Core.Salt,
			addressEPK,
			row.Address.C2,
		},
	)
	if err != nil {
		return nil, err
	}
	return primitives.Poseidon377Hash7(
		api,
		seizureCandidateFinalDomain,
		[7]frontend.Variable{
			tail,
			row.Address.KeyConfirmation,
			row.Address.Ciphertext[0],
			row.Address.Ciphertext[1],
			row.Address.Ciphertext[2],
			issuerDKPub,
			ringPK,
		},
	)
}
