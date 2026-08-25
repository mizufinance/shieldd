package circuits

import (
	"fmt"
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/consensys/gnark/test"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func seizureVariableBig(t *testing.T, value any) *big.Int {
	t.Helper()
	parsed, ok := new(big.Int).SetString(fmt.Sprint(value), 10)
	if !ok {
		t.Fatalf("invalid integer %v", value)
	}
	return parsed
}

func seizureScanCommitmentNative(
	t *testing.T,
	jobIDLo, jobIDHi, statementLo, statementHi, sequence any,
	state SeizureScanState,
) *big.Int {
	t.Helper()
	identity, err := primitives.Poseidon377Hash5Native(
		seizureIdentityDomain,
		[5]*big.Int{
			seizureVariableBig(t, jobIDLo),
			seizureVariableBig(t, jobIDHi),
			seizureVariableBig(t, statementLo),
			seizureVariableBig(t, statementHi),
			seizureVariableBig(t, sequence),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	head, err := primitives.Poseidon377Hash5Native(
		seizureScanStateHeadDomain,
		[5]*big.Int{
			identity,
			seizureVariableBig(t, state.Blind),
			seizureVariableBig(t, state.Cursor),
			seizureVariableBig(t, state.CanonicalTxCount),
			big.NewInt(0),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	tail, err := primitives.Poseidon377Hash7Native(
		seizureScanStateTailDomain,
		[7]*big.Int{
			head,
			seizureVariableBig(t, state.PublicCredits),
			seizureVariableBig(t, state.PublicDebits),
			seizureVariableBig(t, state.TargetStatus),
			seizureVariableBig(t, state.CandidateCount),
			seizureVariableBig(t, state.CandidateDigest),
			seizureVariableBig(t, state.CanonicalRecordDigest),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	return tail
}

func seizureClassificationCommitmentNative(
	t *testing.T,
	jobIDLo, jobIDHi, statementLo, statementHi, sequence any,
	targetAssetID, targetDiv, targetTransmission, targetDerivation any,
	state SeizureClassificationState,
) *big.Int {
	t.Helper()
	identity, err := primitives.Poseidon377Hash5Native(
		seizureIdentityDomain,
		[5]*big.Int{
			seizureVariableBig(t, jobIDLo),
			seizureVariableBig(t, jobIDHi),
			seizureVariableBig(t, statementLo),
			seizureVariableBig(t, statementHi),
			seizureVariableBig(t, sequence),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	context, err := primitives.Poseidon377Hash5Native(
		seizureClassifyContextDomain,
		[5]*big.Int{
			identity,
			seizureVariableBig(t, targetAssetID),
			seizureVariableBig(t, targetDiv),
			seizureVariableBig(t, targetTransmission),
			seizureVariableBig(t, targetDerivation),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	head, err := primitives.Poseidon377Hash5Native(
		seizureClassifyStateHeadDomain,
		[5]*big.Int{
			context,
			seizureVariableBig(t, state.Blind),
			seizureVariableBig(t, state.ExpectedCandidateCount),
			seizureVariableBig(t, state.ExpectedCandidateDigest),
			big.NewInt(0),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	tail, err := primitives.Poseidon377Hash7Native(
		seizureClassifyStateTailDomain,
		[7]*big.Int{
			head,
			seizureVariableBig(t, state.ConsumedCandidateCount),
			seizureVariableBig(t, state.ConsumedCandidateDigest),
			seizureVariableBig(t, state.MatchedTxCount),
			seizureVariableBig(t, state.ClassifiedCredits),
			seizureVariableBig(t, state.ClassifiedDebits),
			seizureVariableBig(t, state.PreviousTxDigest),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	out, err := primitives.Poseidon377Hash2Native(
		seizureClassifyStateTailDomain,
		[2]*big.Int{tail, seizureVariableBig(t, state.PreviousTxMatched)},
	)
	if err != nil {
		t.Fatal(err)
	}
	return out
}

func seizureScanAssignment(t *testing.T) *SeizureScanCircuit {
	t.Helper()
	start := SeizureScanState{
		Blind:                 7,
		Cursor:                99,
		CanonicalTxCount:      5,
		PublicCredits:         100,
		PublicDebits:          10,
		TargetStatus:          1,
		CandidateCount:        2,
		CandidateDigest:       41,
		CanonicalRecordDigest: 42,
	}
	candidateDigest, err := primitives.Poseidon377Hash2Native(
		seizureCandidateChainDomain,
		[2]*big.Int{big.NewInt(41), big.NewInt(52)},
	)
	if err != nil {
		t.Fatal(err)
	}
	canonicalDigest := big.NewInt(42)
	for digest := int64(51); digest <= 54; digest++ {
		canonicalDigest, err = primitives.Poseidon377Hash2Native(
			seizureRecordChainDomain,
			[2]*big.Int{canonicalDigest, big.NewInt(digest)},
		)
		if err != nil {
			t.Fatal(err)
		}
	}
	end := SeizureScanState{
		Blind:                 8,
		Cursor:                103,
		CanonicalTxCount:      9,
		PublicCredits:         107,
		PublicDebits:          13,
		TargetStatus:          2,
		CandidateCount:        3,
		CandidateDigest:       candidateDigest.String(),
		CanonicalRecordDigest: canonicalDigest.String(),
	}
	assignment := &SeizureScanCircuit{
		JobIDLo:                        11,
		JobIDHi:                        12,
		Sequence:                       3,
		ImmutableStatementCommitmentLo: 13,
		ImmutableStatementCommitmentHi: 14,
		Start:                          start,
		End:                            end,
	}
	for index := range assignment.Rows {
		assignment.Rows[index] = SeizureScanRow{
			Enabled:               0,
			Cursor:                0,
			CanonicalRecordDigest: 0,
			EffectKind:            SeizureEffectNone,
			Amount:                0,
		}
	}
	assignment.StartStateCommitment = seizureScanCommitmentNative(t, 11, 12, 13, 14, 3, start).String()
	assignment.EndStateCommitment = seizureScanCommitmentNative(t, 11, 12, 13, 14, 4, end).String()
	assignment.Rows[0] = SeizureScanRow{Enabled: 1, Cursor: 100, CanonicalRecordDigest: 51, EffectKind: SeizureEffectCredit, Amount: 7}
	assignment.Rows[1] = SeizureScanRow{Enabled: 1, Cursor: 101, CanonicalRecordDigest: 52, EffectKind: SeizureEffectCandidate, Amount: 0}
	assignment.Rows[2] = SeizureScanRow{Enabled: 1, Cursor: 102, CanonicalRecordDigest: 53, EffectKind: SeizureEffectDebit, Amount: 3}
	assignment.Rows[3] = SeizureScanRow{Enabled: 1, Cursor: 103, CanonicalRecordDigest: 54, EffectKind: SeizureEffectFreeze, Amount: 0}
	return assignment
}

func TestSeizureScanCircuitFoldsOpaqueState(t *testing.T) {
	assignment := seizureScanAssignment(t)
	if err := test.IsSolved(&SeizureScanCircuit{}, assignment, ecc.BLS12_377.ScalarField()); err != nil {
		t.Fatal(err)
	}

	mutations := []func(*SeizureScanCircuit){
		func(value *SeizureScanCircuit) { value.Rows[1].Cursor = 99 },
		func(value *SeizureScanCircuit) { value.Rows[4].Amount = 1 },
		func(value *SeizureScanCircuit) { value.End.PublicCredits = 108 },
		func(value *SeizureScanCircuit) { value.ImmutableStatementCommitmentHi = 15 },
	}
	for index, mutate := range mutations {
		mutated := *seizureScanAssignment(t)
		mutate(&mutated)
		if err := test.IsSolved(&SeizureScanCircuit{}, &mutated, ecc.BLS12_377.ScalarField()); err == nil {
			t.Fatalf("mutation %d must fail", index)
		}
	}
}

func seizureFinalizeAssignment(t *testing.T) *SeizureFinalizeCircuit {
	t.Helper()
	scan := seizureScanAssignment(t).End
	classification := SeizureClassificationState{
		Blind:                   21,
		ExpectedCandidateCount:  scan.CandidateCount,
		ExpectedCandidateDigest: scan.CandidateDigest,
		ConsumedCandidateCount:  scan.CandidateCount,
		ConsumedCandidateDigest: scan.CandidateDigest,
		MatchedTxCount:          2,
		ClassifiedCredits:       20,
		ClassifiedDebits:        12,
		PreviousTxDigest:        88,
		PreviousTxMatched:       0,
	}
	assignment := &SeizureFinalizeCircuit{
		JobIDLo:                           11,
		JobIDHi:                           12,
		ImmutableStatementCommitmentLo:    13,
		ImmutableStatementCommitmentHi:    14,
		ScanSequence:                      4,
		ClassificationSequence:            4,
		TerminalCursor:                    scan.Cursor,
		OpeningBalance:                    0,
		CanonicalTxCount:                  scan.CanonicalTxCount,
		MatchedTxCount:                    classification.MatchedTxCount,
		Amount:                            102,
		TargetAssetID:                     91,
		TargetAddressDiversifiedGenerator: 92,
		TargetAddressTransmissionKey:      93,
		TargetDerivation:                  94,
		Scan:                              scan,
		Classification:                    classification,
	}
	assignment.ScanTerminalCommitment = seizureScanCommitmentNative(t, 11, 12, 13, 14, 4, scan).String()
	assignment.ClassificationTerminalCommitment = seizureClassificationCommitmentNative(
		t, 11, 12, 13, 14, 4, 91, 92, 93, 94, classification,
	).String()
	return assignment
}

func TestSeizureFinalizeCircuitBindsBothPhasesAndAmount(t *testing.T) {
	assignment := seizureFinalizeAssignment(t)
	if err := test.IsSolved(&SeizureFinalizeCircuit{}, assignment, ecc.BLS12_377.ScalarField()); err != nil {
		t.Fatal(err)
	}

	mutations := []func(*SeizureFinalizeCircuit){
		func(value *SeizureFinalizeCircuit) { value.Amount = 103 },
		func(value *SeizureFinalizeCircuit) { value.Classification.ConsumedCandidateCount = 2 },
		func(value *SeizureFinalizeCircuit) { value.Scan.TargetStatus = 1 },
		func(value *SeizureFinalizeCircuit) { value.ScanTerminalCommitment = 99 },
	}
	for index, mutate := range mutations {
		mutated := *seizureFinalizeAssignment(t)
		mutate(&mutated)
		if err := test.IsSolved(&SeizureFinalizeCircuit{}, &mutated, ecc.BLS12_377.ScalarField()); err == nil {
			t.Fatalf("mutation %d must fail", index)
		}
	}
}

func seizurePoint(t *testing.T, base gnarkte.Point, scalar *big.Int) gnarkte.Point {
	t.Helper()
	point, err := decafgnark.ScalarMulNative(base, scalar, 251)
	if err != nil {
		t.Fatal(err)
	}
	return point
}

func seizurePointWitness(point gnarkte.Point) Point2D {
	return Point2D{
		X: point.X.(*big.Int).String(),
		Y: point.Y.(*big.Int).String(),
	}
}

func seizureCompress(t *testing.T, point gnarkte.Point) *big.Int {
	t.Helper()
	compressed, err := decafgnark.CompressToFieldNative(point)
	if err != nil {
		t.Fatal(err)
	}
	return compressed
}

func seizureIssuerEvidence(
	t *testing.T,
	generator gnarkte.Point,
	assetID *big.Int,
	secret *big.Int,
	epk gnarkte.Point,
	nonce *big.Int,
	order *big.Int,
	keepBits int,
) SeizureIssuerDhEvidence {
	t.Helper()
	dkPub := seizurePoint(t, generator, secret)
	shared := seizurePoint(t, epk, secret)
	commitmentG := seizurePoint(t, generator, nonce)
	commitmentEPK := seizurePoint(t, epk, nonce)
	challengeFq, err := primitives.Poseidon377Hash7Native(
		seizureIssuerDhDLEQDomain,
		[7]*big.Int{
			assetID,
			seizureCompress(t, generator),
			seizureCompress(t, dkPub),
			seizureCompress(t, epk),
			seizureCompress(t, shared),
			seizureCompress(t, commitmentG),
			seizureCompress(t, commitmentEPK),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	mask := new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1), uint(keepBits)), big.NewInt(1))
	challenge := new(big.Int).And(challengeFq, mask)
	response := new(big.Int).Mul(challenge, secret)
	response.Add(response, nonce)
	response.Mod(response, order)
	return SeizureIssuerDhEvidence{
		SharedPoint:         seizurePointWitness(shared),
		CommitmentGenerator: seizurePointWitness(commitmentG),
		CommitmentEPK:       seizurePointWitness(commitmentEPK),
		Response:            response.String(),
	}
}

func seizureCompactPreEvidence(
	t *testing.T,
	generator gnarkte.Point,
	capability gnarkte.Point,
	readerPK gnarkte.Point,
	epk gnarkte.Point,
	capabilitySecret *big.Int,
	nonce *big.Int,
	order *big.Int,
	keepBits int,
) SeizureCompactPreEvidence {
	t.Helper()
	readerBase, err := decafgnark.PointAddNative(readerPK, epk)
	if err != nil {
		t.Fatal(err)
	}
	reencrypted := seizurePoint(t, readerBase, capabilitySecret)
	commitmentG := seizurePoint(t, generator, nonce)
	commitmentReader := seizurePoint(t, readerBase, nonce)
	compressed := []*big.Int{
		seizureCompress(t, generator),
		seizureCompress(t, capability),
		seizureCompress(t, readerPK),
		seizureCompress(t, epk),
		seizureCompress(t, readerBase),
		seizureCompress(t, reencrypted),
		seizureCompress(t, commitmentG),
		seizureCompress(t, commitmentReader),
	}
	head, err := primitives.Poseidon377Hash7Native(
		seizureCompactPreDLEQDomain,
		[7]*big.Int{
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
		t.Fatal(err)
	}
	challengeFq, err := primitives.Poseidon377Hash2Native(
		seizureCompactPreDLEQDomain,
		[2]*big.Int{head, compressed[7]},
	)
	if err != nil {
		t.Fatal(err)
	}
	mask := new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1), uint(keepBits)), big.NewInt(1))
	challenge := new(big.Int).And(challengeFq, mask)
	response := new(big.Int).Mul(challenge, capabilitySecret)
	response.Add(response, nonce)
	response.Mod(response, order)
	responseG := seizurePoint(t, generator, response)
	challengeCapability := seizurePoint(t, capability, challenge)
	expectedG, err := decafgnark.PointAddNative(commitmentG, challengeCapability)
	if err != nil {
		t.Fatal(err)
	}
	if seizureCompress(t, responseG).Cmp(seizureCompress(t, expectedG)) != 0 {
		t.Fatal("native compact PRE generator equation does not hold")
	}
	return SeizureCompactPreEvidence{
		ReencryptedPoint:    seizurePointWitness(reencrypted),
		CommitmentGenerator: seizurePointWitness(commitmentG),
		CommitmentReader:    seizurePointWitness(commitmentReader),
		Response:            response.String(),
	}
}

func seizureCandidateDigestNative(t *testing.T, row SeizureCandidateRow) *big.Int {
	t.Helper()
	variable := func(value frontend.Variable) *big.Int {
		return seizureVariableBig(t, value)
	}
	point := func(value Point2D) *big.Int {
		return seizureCompress(t, gnarkte.Point{X: variable(value.X), Y: variable(value.Y)})
	}
	head, err := primitives.Poseidon377Hash7Native(
		seizureCandidateHeadDomain,
		[7]*big.Int{
			variable(row.TxDigest),
			variable(row.Kind),
			variable(row.Direction),
			variable(row.AssetID),
			variable(row.IsFlagged),
			variable(row.PublicAmount),
			point(row.DetectionEPK),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	body, err := primitives.Poseidon377Hash7Native(
		seizureCandidateBodyDomain,
		[7]*big.Int{
			head,
			variable(row.DetectionSalt),
			variable(row.DetectionCiphertext[0]),
			variable(row.DetectionCiphertext[1]),
			variable(row.DetectionCiphertext[2]),
			variable(row.DetectionCiphertext[3]),
			point(row.Core.EPK),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	tail, err := primitives.Poseidon377Hash7Native(
		seizureCandidateTailDomain,
		[7]*big.Int{
			body,
			variable(row.Core.C2),
			variable(row.Core.KeyConfirmation),
			variable(row.Core.Ciphertext),
			variable(row.Core.Salt),
			point(row.Address.EPK),
			variable(row.Address.C2),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	digest, err := primitives.Poseidon377Hash7Native(
		seizureCandidateFinalDomain,
		[7]*big.Int{
			tail,
			variable(row.Address.KeyConfirmation),
			variable(row.Address.Ciphertext[0]),
			variable(row.Address.Ciphertext[1]),
			variable(row.Address.Ciphertext[2]),
			point(row.IssuerDKPub),
			point(row.RingPK),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	return digest
}

func seizureFieldAdd(values ...*big.Int) *big.Int {
	out := new(big.Int)
	for _, value := range values {
		out.Add(out, value)
	}
	return out.Mod(out, ecc.BLS12_377.ScalarField())
}

func seizureClassifyAssignment(t *testing.T, exactMatch bool) *SeizureClassifyCircuit {
	t.Helper()
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	generator, err := decafGeneratorFromVectors(vectors)
	if err != nil {
		t.Fatal(err)
	}
	order := primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order)
	assetID := big.NewInt(91)
	capabilitySecret := big.NewInt(17)
	readerSecret := big.NewInt(31)
	coreEPKSecret := big.NewInt(23)
	issuerSecret := big.NewInt(41)
	detectionEPKSecret := big.NewInt(43)
	capability := seizurePoint(t, generator, capabilitySecret)
	readerPK := seizurePoint(t, generator, readerSecret)
	coreEPK := seizurePoint(t, generator, coreEPKSecret)
	detectionEPK := seizurePoint(t, generator, detectionEPKSecret)
	issuerDKPub := seizurePoint(t, generator, issuerSecret)

	detectionEvidence := seizureIssuerEvidence(
		t,
		generator,
		assetID,
		issuerSecret,
		detectionEPK,
		big.NewInt(47),
		order,
		compliance.DLEQChallengeBits,
	)
	detectionShared := gnarkte.Point{
		X: seizureVariableBig(t, detectionEvidence.SharedPoint.X),
		Y: seizureVariableBig(t, detectionEvidence.SharedPoint.Y),
	}
	detectionSeed, err := primitives.Poseidon377Hash2Native(
		primitives.MustBigInt(vectors.Poseidon377.IssuerDetectionDomain),
		[2]*big.Int{seizureCompress(t, detectionShared), seizureCompress(t, detectionEPK)},
	)
	if err != nil {
		t.Fatal(err)
	}
	streamDomain := seizureDomain("shieldd.compliance.poseidon_stream")
	detectionPlaintext := [4]*big.Int{assetID, big.NewInt(71), big.NewInt(0), big.NewInt(0)}
	var detectionCiphertext [compliance.TransferDetectionFQCount]frontend.Variable
	for index := range detectionCiphertext {
		stream, err := primitives.Poseidon377Hash2Native(
			streamDomain,
			[2]*big.Int{detectionSeed, big.NewInt(int64(index))},
		)
		if err != nil {
			t.Fatal(err)
		}
		detectionCiphertext[index] = seizureFieldAdd(detectionPlaintext[index], stream).String()
	}

	encryptionSecret := capabilitySecret
	if !exactMatch {
		encryptionSecret = big.NewInt(19)
	}
	coreShared := seizurePoint(t, coreEPK, encryptionSecret)
	seed := big.NewInt(101)
	salt := big.NewInt(201)
	amount := big.NewInt(10)
	confirmation, err := primitives.Poseidon377Hash3Native(
		compliance.TransferKeyConfirmationDomain,
		[3]*big.Int{seed, seizureCompress(t, coreEPK), salt},
	)
	if err != nil {
		t.Fatal(err)
	}
	stream, err := primitives.Poseidon377Hash2Native(
		streamDomain,
		[2]*big.Int{seed, big.NewInt(0)},
	)
	if err != nil {
		t.Fatal(err)
	}
	dummyIssuer := SeizureIssuerDhEvidence{
		SharedPoint:         seizurePointWitness(generator),
		CommitmentGenerator: seizurePointWitness(generator),
		CommitmentEPK:       seizurePointWitness(generator),
		Response:            0,
	}
	row := SeizureCandidateRow{
		Enabled:             1,
		Kind:                SeizureCandidatePreTransfer,
		TxDigest:            77,
		Direction:           SeizureDirectionDebit,
		AssetID:             assetID.String(),
		IsFlagged:           0,
		PublicAmount:        0,
		DetectionEPK:        seizurePointWitness(detectionEPK),
		DetectionSalt:       detectionPlaintext[1].String(),
		DetectionCiphertext: detectionCiphertext,
		Core: SeizureCoreCiphertext{
			EPK:             seizurePointWitness(coreEPK),
			C2:              seizureFieldAdd(seed, seizureCompress(t, coreShared)).String(),
			KeyConfirmation: confirmation.String(),
			Ciphertext:      seizureFieldAdd(amount, stream).String(),
			Salt:            salt.String(),
		},
		Address: SeizureAddressCiphertext{
			EPK:             seizurePointWitness(generator),
			C2:              0,
			KeyConfirmation: 0,
			Ciphertext:      [3]frontend.Variable{0, 0, 0},
		},
		RingPK:          seizurePointWitness(generator),
		IssuerDKPub:     seizurePointWitness(issuerDKPub),
		DetectionIssuer: detectionEvidence,
		CoreIssuer:      dummyIssuer,
		AddressIssuer:   dummyIssuer,
		Pre: seizureCompactPreEvidence(
			t,
			generator,
			capability,
			readerPK,
			coreEPK,
			capabilitySecret,
			big.NewInt(53),
			order,
			compliance.DLEQChallengeBits,
		),
	}
	candidateDigest := seizureCandidateDigestNative(t, row)
	candidateChain, err := primitives.Poseidon377Hash2Native(
		seizureCandidateChainDomain,
		[2]*big.Int{big.NewInt(0), candidateDigest},
	)
	if err != nil {
		t.Fatal(err)
	}
	scanTerminal := SeizureScanState{
		Blind:                 7,
		Cursor:                100,
		CanonicalTxCount:      1,
		PublicCredits:         0,
		PublicDebits:          0,
		TargetStatus:          2,
		CandidateCount:        1,
		CandidateDigest:       candidateChain.String(),
		CanonicalRecordDigest: 88,
	}
	start := SeizureClassificationState{
		Blind:                   8,
		ExpectedCandidateCount:  1,
		ExpectedCandidateDigest: candidateChain.String(),
		ConsumedCandidateCount:  0,
		ConsumedCandidateDigest: 0,
		MatchedTxCount:          0,
		ClassifiedCredits:       0,
		ClassifiedDebits:        0,
		PreviousTxDigest:        0,
		PreviousTxMatched:       0,
	}
	matched := 0
	debit := 0
	if exactMatch {
		matched = 1
		debit = 10
	}
	end := SeizureClassificationState{
		Blind:                   9,
		ExpectedCandidateCount:  1,
		ExpectedCandidateDigest: candidateChain.String(),
		ConsumedCandidateCount:  1,
		ConsumedCandidateDigest: candidateChain.String(),
		MatchedTxCount:          matched,
		ClassifiedCredits:       0,
		ClassifiedDebits:        debit,
		PreviousTxDigest:        77,
		PreviousTxMatched:       matched,
	}
	assignment := &SeizureClassifyCircuit{
		JobIDLo:                           11,
		JobIDHi:                           12,
		Sequence:                          0,
		ImmutableStatementCommitmentLo:    13,
		ImmutableStatementCommitmentHi:    14,
		TargetAssetID:                     assetID.String(),
		TargetAddressDiversifiedGenerator: 92,
		TargetAddressTransmissionKey:      93,
		TargetDerivation:                  capabilitySecret.String(),
		ReaderPK:                          seizurePointWitness(readerPK),
		ReaderSecret:                      readerSecret.String(),
		ScanTerminalSequence:              2,
		ScanTerminal:                      scanTerminal,
		Start:                             start,
		End:                               end,
		Rows:                              [1]SeizureCandidateRow{row},
	}
	assignment.StartStateCommitment = seizureScanCommitmentNative(
		t, 11, 12, 13, 14, 2, scanTerminal,
	).String()
	assignment.EndStateCommitment = seizureClassificationCommitmentNative(
		t,
		11,
		12,
		13,
		14,
		1,
		assetID,
		92,
		93,
		capabilitySecret,
		end,
	).String()
	return assignment
}

func seizureRefreshClassificationAssignment(
	t *testing.T,
	assignment *SeizureClassifyCircuit,
	matched int,
	credit int,
	debit int,
) {
	t.Helper()
	candidateDigest := seizureCandidateDigestNative(t, assignment.Rows[0])
	candidateChain, err := primitives.Poseidon377Hash2Native(
		seizureCandidateChainDomain,
		[2]*big.Int{big.NewInt(0), candidateDigest},
	)
	if err != nil {
		t.Fatal(err)
	}
	assignment.ScanTerminal.CandidateDigest = candidateChain.String()
	assignment.Start.ExpectedCandidateDigest = candidateChain.String()
	assignment.End.ExpectedCandidateDigest = candidateChain.String()
	assignment.End.ConsumedCandidateDigest = candidateChain.String()
	assignment.End.MatchedTxCount = matched
	assignment.End.ClassifiedCredits = credit
	assignment.End.ClassifiedDebits = debit
	assignment.End.PreviousTxMatched = matched
	assignment.StartStateCommitment = seizureScanCommitmentNative(
		t,
		assignment.JobIDLo,
		assignment.JobIDHi,
		assignment.ImmutableStatementCommitmentLo,
		assignment.ImmutableStatementCommitmentHi,
		assignment.ScanTerminalSequence,
		assignment.ScanTerminal,
	).String()
	assignment.EndStateCommitment = seizureClassificationCommitmentNative(
		t,
		assignment.JobIDLo,
		assignment.JobIDHi,
		assignment.ImmutableStatementCommitmentLo,
		assignment.ImmutableStatementCommitmentHi,
		1,
		assignment.TargetAssetID,
		assignment.TargetAddressDiversifiedGenerator,
		assignment.TargetAddressTransmissionKey,
		assignment.TargetDerivation,
		assignment.End,
	).String()
}

func seizureIssuerClassifyAssignment(t *testing.T) *SeizureClassifyCircuit {
	t.Helper()
	assignment := seizureClassifyAssignment(t, true)
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	generator, err := decafGeneratorFromVectors(vectors)
	if err != nil {
		t.Fatal(err)
	}
	order := primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order)
	assetID := seizureVariableBig(t, assignment.TargetAssetID)
	issuerSecret := big.NewInt(41)
	streamDomain := seizureDomain("shieldd.compliance.poseidon_stream")
	row := &assignment.Rows[0]
	row.Kind = SeizureCandidateIssuerTransfer
	row.Direction = SeizureDirectionCredit
	row.IsFlagged = 1
	row.DetectionCiphertext[2] = seizureFieldAdd(
		seizureVariableBig(t, row.DetectionCiphertext[2]),
		big.NewInt(1),
	).String()

	coreEPK := gnarkte.Point{
		X: seizureVariableBig(t, row.Core.EPK.X),
		Y: seizureVariableBig(t, row.Core.EPK.Y),
	}
	coreShared := seizurePoint(t, coreEPK, issuerSecret)
	coreSeed := big.NewInt(101)
	row.Core.C2 = seizureFieldAdd(coreSeed, seizureCompress(t, coreShared)).String()
	row.CoreIssuer = seizureIssuerEvidence(
		t,
		generator,
		assetID,
		issuerSecret,
		coreEPK,
		big.NewInt(61),
		order,
		compliance.DLEQChallengeBits,
	)

	addressEPK := seizurePoint(t, generator, big.NewInt(59))
	addressShared := seizurePoint(t, addressEPK, issuerSecret)
	addressSeed := big.NewInt(103)
	row.Address.EPK = seizurePointWitness(addressEPK)
	row.Address.C2 = seizureFieldAdd(addressSeed, seizureCompress(t, addressShared)).String()
	row.Address.KeyConfirmation = 0
	targetWords := [3]*big.Int{
		seizureVariableBig(t, assignment.TargetAddressDiversifiedGenerator),
		new(big.Int).Lsh(
			seizureVariableBig(t, assignment.TargetAddressTransmissionKey),
			8,
		),
		big.NewInt(0),
	}
	for index := range row.Address.Ciphertext {
		stream, err := primitives.Poseidon377Hash2Native(
			streamDomain,
			[2]*big.Int{addressSeed, big.NewInt(int64(index))},
		)
		if err != nil {
			t.Fatal(err)
		}
		row.Address.Ciphertext[index] = seizureFieldAdd(targetWords[index], stream).String()
	}
	row.AddressIssuer = seizureIssuerEvidence(
		t,
		generator,
		assetID,
		issuerSecret,
		addressEPK,
		big.NewInt(67),
		order,
		compliance.DLEQChallengeBits,
	)
	seizureRefreshClassificationAssignment(t, assignment, 1, 10, 0)
	return assignment
}

func seizurePreWithdrawalClassifyAssignment(t *testing.T) *SeizureClassifyCircuit {
	t.Helper()
	assignment := seizureClassifyAssignment(t, true)
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	generator, err := decafGeneratorFromVectors(vectors)
	if err != nil {
		t.Fatal(err)
	}
	order := primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order)
	capabilitySecret := big.NewInt(17)
	readerSecret := big.NewInt(31)
	capability := seizurePoint(t, generator, capabilitySecret)
	readerPK := seizurePoint(t, generator, readerSecret)
	addressEPK := seizurePoint(t, generator, big.NewInt(73))
	addressShared := seizurePoint(t, addressEPK, capabilitySecret)
	seed := big.NewInt(107)
	streamDomain := seizureDomain("shieldd.compliance.poseidon_stream")
	row := &assignment.Rows[0]
	row.Kind = SeizureCandidatePreWithdrawal
	row.Direction = SeizureDirectionDebit
	row.IsFlagged = 0
	row.PublicAmount = 12
	row.Address.EPK = seizurePointWitness(addressEPK)
	row.Address.C2 = seizureFieldAdd(seed, seizureCompress(t, addressShared)).String()
	confirmation, err := primitives.Poseidon377Hash2Native(
		compliance.WithdrawalKeyConfirmationDomain,
		[2]*big.Int{seed, seizureCompress(t, addressEPK)},
	)
	if err != nil {
		t.Fatal(err)
	}
	row.Address.KeyConfirmation = confirmation.String()
	targetWords := [3]*big.Int{
		seizureVariableBig(t, assignment.TargetAddressDiversifiedGenerator),
		new(big.Int).Lsh(
			seizureVariableBig(t, assignment.TargetAddressTransmissionKey),
			8,
		),
		big.NewInt(0),
	}
	for index := range row.Address.Ciphertext {
		stream, err := primitives.Poseidon377Hash2Native(
			streamDomain,
			[2]*big.Int{seed, big.NewInt(int64(index))},
		)
		if err != nil {
			t.Fatal(err)
		}
		row.Address.Ciphertext[index] = seizureFieldAdd(targetWords[index], stream).String()
	}
	row.Pre = seizureCompactPreEvidence(
		t,
		generator,
		capability,
		readerPK,
		addressEPK,
		capabilitySecret,
		big.NewInt(79),
		order,
		compliance.DLEQChallengeBits,
	)
	seizureRefreshClassificationAssignment(t, assignment, 1, 0, 12)
	return assignment
}

func seizureIssuerWithdrawalClassifyAssignment(t *testing.T) *SeizureClassifyCircuit {
	t.Helper()
	assignment := seizureIssuerClassifyAssignment(t)
	row := &assignment.Rows[0]
	row.Kind = SeizureCandidateIssuerWithdrawal
	row.Direction = SeizureDirectionDebit
	row.PublicAmount = 12
	confirmation, err := primitives.Poseidon377Hash2Native(
		compliance.WithdrawalKeyConfirmationDomain,
		[2]*big.Int{
			big.NewInt(103),
			seizureCompress(t, gnarkte.Point{
				X: seizureVariableBig(t, row.Address.EPK.X),
				Y: seizureVariableBig(t, row.Address.EPK.Y),
			}),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	row.Address.KeyConfirmation = confirmation.String()
	seizureRefreshClassificationAssignment(t, assignment, 1, 0, 12)
	return assignment
}

func TestSeizureClassifyCircuitAcceptsExactPreMatchAndProvedNonMatch(t *testing.T) {
	for _, exactMatch := range []bool{true, false} {
		assignment := seizureClassifyAssignment(t, exactMatch)
		if err := test.IsSolved(
			&SeizureClassifyCircuit{},
			assignment,
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("exact_match=%v: %v", exactMatch, err)
		}
	}

	mutated := seizureClassifyAssignment(t, true)
	mutated.Rows[0].Pre.Response = new(big.Int).Add(
		seizureVariableBig(t, mutated.Rows[0].Pre.Response),
		big.NewInt(1),
	).String()
	if err := test.IsSolved(
		&SeizureClassifyCircuit{},
		mutated,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("mutated ordinary PRE relation must fail")
	}
}

func TestSeizureClassifyCircuitAcceptsFlaggedIssuerOpening(t *testing.T) {
	assignment := seizureIssuerClassifyAssignment(t)
	if err := test.IsSolved(
		&SeizureClassifyCircuit{},
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatal(err)
	}

	mutated := seizureIssuerClassifyAssignment(t)
	mutated.Rows[0].AddressIssuer.Response = new(big.Int).Add(
		seizureVariableBig(t, mutated.Rows[0].AddressIssuer.Response),
		big.NewInt(1),
	).String()
	if err := test.IsSolved(
		&SeizureClassifyCircuit{},
		mutated,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("mutated issuer opening must fail")
	}
}

func TestSeizureClassifyCircuitUsesWithdrawalSenderCiphertext(t *testing.T) {
	assignments := []*SeizureClassifyCircuit{
		seizurePreWithdrawalClassifyAssignment(t),
		seizureIssuerWithdrawalClassifyAssignment(t),
	}
	for index, assignment := range assignments {
		if err := test.IsSolved(
			&SeizureClassifyCircuit{},
			assignment,
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("withdrawal branch %d: %v", index, err)
		}
	}
}

func TestCompactPreDLEQMatchesRustVector(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	generator, err := decafGeneratorFromVectors(vectors)
	if err != nil {
		t.Fatal(err)
	}
	fixture := vectors.CompactPreDLEQ
	capabilitySecret := primitives.MustBigInt(fixture.CapabilitySecret)
	readerSecret := primitives.MustBigInt(fixture.ReaderSecret)
	epkSecret := primitives.MustBigInt(fixture.EPKSecret)
	nonce := primitives.MustBigInt(fixture.Nonce)
	proof := seizureCompactPreEvidence(
		t,
		generator,
		seizurePoint(t, generator, capabilitySecret),
		seizurePoint(t, generator, readerSecret),
		seizurePoint(t, generator, epkSecret),
		capabilitySecret,
		nonce,
		primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order),
		compliance.DLEQChallengeBits,
	)
	if seizureVariableBig(t, proof.Response).Cmp(primitives.MustBigInt(fixture.Response)) != 0 {
		t.Fatal("Go compact PRE response differs from the Rust vector")
	}
}
