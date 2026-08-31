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
	if value == nil {
		return big.NewInt(0)
	}
	parsed, ok := new(big.Int).SetString(fmt.Sprint(value), 10)
	if !ok {
		t.Fatalf("invalid integer %v", value)
	}
	return parsed
}

func seizureZero(value frontend.Variable) frontend.Variable {
	if value == nil {
		return 0
	}
	return value
}

func normalizeSeizureScanState(state *SeizureScanState) {
	state.Blind = seizureZero(state.Blind)
	state.Cursor = seizureZero(state.Cursor)
	state.LastHeight = seizureZero(state.LastHeight)
	state.AuditRecordCount = seizureZero(state.AuditRecordCount)
	state.PublicCredits = seizureZero(state.PublicCredits)
	state.PublicDebits = seizureZero(state.PublicDebits)
	state.TargetStatus = seizureZero(state.TargetStatus)
	state.RegisteredAtHeight = seizureZero(state.RegisteredAtHeight)
	state.FreezeGeneration = seizureZero(state.FreezeGeneration)
	state.FrozenSinceHeight = seizureZero(state.FrozenSinceHeight)
	state.CandidateCount = seizureZero(state.CandidateCount)
	state.CandidateDigest = seizureZero(state.CandidateDigest)
	state.CanonicalRecordDigest = seizureZero(state.CanonicalRecordDigest)
}

func normalizeSeizureScanRow(row *SeizureScanRow) {
	row.Enabled = seizureZero(row.Enabled)
	row.Source.Kind = seizureZero(row.Source.Kind)
	row.Source.Height = seizureZero(row.Source.Height)
	row.Source.TransactionIDLo = seizureZero(row.Source.TransactionIDLo)
	row.Source.TransactionIDHi = seizureZero(row.Source.TransactionIDHi)
	row.Source.Position0 = seizureZero(row.Source.Position0)
	row.Source.Position1 = seizureZero(row.Source.Position1)
	row.Source.EffectIndex = seizureZero(row.Source.EffectIndex)
	row.Source.ContextCommitment = seizureZero(row.Source.ContextCommitment)
	row.Effect.Kind = seizureZero(row.Effect.Kind)
	for index := range row.Effect.Fields {
		row.Effect.Fields[index] = seizureZero(row.Effect.Fields[index])
	}
}

func auditCandidateItemNative(
	t *testing.T,
	role any,
	txDigest *big.Int,
	projection any,
) *big.Int {
	t.Helper()
	item, err := primitives.Poseidon377Hash3Native(
		seizureCandidateItemDomain,
		[3]*big.Int{seizureVariableBig(t, role), txDigest, seizureVariableBig(t, projection)},
	)
	if err != nil {
		t.Fatal(err)
	}
	return item
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
			seizureVariableBig(t, state.LastHeight),
			seizureVariableBig(t, state.AuditRecordCount),
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
	out, err := primitives.Poseidon377Hash5Native(
		seizureScanStateTailDomain,
		[5]*big.Int{
			tail,
			seizureVariableBig(t, state.RegisteredAtHeight),
			seizureVariableBig(t, state.FreezeGeneration),
			seizureVariableBig(t, state.FrozenSinceHeight),
			big.NewInt(0),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	return out
}

func auditRecordCommitmentNative(t *testing.T, row SeizureScanRow) *big.Int {
	t.Helper()
	position1 := seizureVariableBig(t, row.Source.Position1)
	effectIndex := seizureVariableBig(t, row.Source.EffectIndex)
	if fmt.Sprint(row.Source.Kind) == "1" {
		position1, effectIndex = effectIndex, big.NewInt(0)
	}
	sourceHead, err := primitives.Poseidon377Hash7Native(
		auditSourceDomain,
		[7]*big.Int{
			seizureVariableBig(t, row.Source.Kind),
			seizureVariableBig(t, row.Source.Height),
			seizureVariableBig(t, row.Source.TransactionIDLo),
			seizureVariableBig(t, row.Source.TransactionIDHi),
			seizureVariableBig(t, row.Source.Position0),
			position1,
			effectIndex,
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	source, err := primitives.Poseidon377Hash2Native(
		auditSourceDomain,
		[2]*big.Int{sourceHead, seizureVariableBig(t, row.Source.ContextCommitment)},
	)
	if err != nil {
		t.Fatal(err)
	}
	effectHead, err := primitives.Poseidon377Hash7Native(
		auditEffectHeadDomain,
		[7]*big.Int{
			seizureVariableBig(t, row.Effect.Kind),
			seizureVariableBig(t, row.Effect.Fields[0]),
			seizureVariableBig(t, row.Effect.Fields[1]),
			seizureVariableBig(t, row.Effect.Fields[2]),
			seizureVariableBig(t, row.Effect.Fields[3]),
			seizureVariableBig(t, row.Effect.Fields[4]),
			seizureVariableBig(t, row.Effect.Fields[5]),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	effect, err := primitives.Poseidon377Hash7Native(
		auditEffectTailDomain,
		[7]*big.Int{
			effectHead,
			seizureVariableBig(t, row.Effect.Fields[6]),
			seizureVariableBig(t, row.Effect.Fields[7]),
			seizureVariableBig(t, row.Effect.Fields[8]),
			seizureVariableBig(t, row.Effect.Fields[9]),
			seizureVariableBig(t, row.Effect.Fields[10]),
			seizureVariableBig(t, row.Effect.Fields[11]),
		},
	)
	if err != nil {
		t.Fatal(err)
	}
	record, err := primitives.Poseidon377Hash3Native(
		auditRecordDomain,
		[3]*big.Int{big.NewInt(1), source, effect},
	)
	if err != nil {
		t.Fatal(err)
	}
	return record
}

func auditLogAppendNative(t *testing.T, head *big.Int, cursor any, record *big.Int) *big.Int {
	t.Helper()
	next, err := primitives.Poseidon377Hash3Native(
		auditLogDomain,
		[3]*big.Int{head, seizureVariableBig(t, cursor), record},
	)
	if err != nil {
		t.Fatal(err)
	}
	return next
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
	targetContext, err := primitives.Poseidon377Hash5Native(
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
			targetContext,
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
		LastHeight:            90,
		AuditRecordCount:      5,
		PublicCredits:         100,
		PublicDebits:          10,
		TargetStatus:          1,
		RegisteredAtHeight:    10,
		FreezeGeneration:      0,
		FrozenSinceHeight:     0,
		CandidateCount:        2,
		CandidateDigest:       41,
		CanonicalRecordDigest: 42,
	}
	rows := [4]SeizureScanRow{
		{
			Enabled: 1,
			Source:  AuditSourceRow{Kind: 3, Height: 100, Position0: 9, Position1: 1, EffectIndex: 0, ContextCommitment: 77},
			Effect:  AuditEffectRow{Kind: AuditEffectPublicDeposit, Fields: [12]frontend.Variable{91, 7, 92}},
		},
		{
			Enabled: 1,
			Source:  AuditSourceRow{Kind: 1, Height: 101, TransactionIDLo: 13, TransactionIDHi: 14, Position0: 0, EffectIndex: 0},
			Effect:  AuditEffectRow{Kind: AuditEffectTransferOutput, Fields: [12]frontend.Variable{123, 124, 125, 126}},
		},
		{
			Enabled: 1,
			Source:  AuditSourceRow{Kind: 1, Height: 102, TransactionIDLo: 15, TransactionIDHi: 16, Position0: 0, EffectIndex: 0},
			Effect:  AuditEffectRow{Kind: AuditEffectNoteReshape, Fields: [12]frontend.Variable{1, 2, 3, 4}},
		},
		{
			Enabled: 1,
			Source:  AuditSourceRow{Kind: 1, Height: 103, TransactionIDLo: 17, TransactionIDHi: 18, Position0: 0, EffectIndex: 0},
			Effect:  AuditEffectRow{Kind: AuditEffectUserStatusChanged, Fields: [12]frontend.Variable{91, 92, 2, 1, 103}},
		},
	}
	txDigest, err := primitives.Poseidon377Hash2Native(
		seizureCandidateItemDomain,
		[2]*big.Int{big.NewInt(13), big.NewInt(14)},
	)
	if err != nil {
		t.Fatal(err)
	}
	creditItem := auditCandidateItemNative(t, SeizureDirectionCredit, txDigest, 125)
	debitItem := auditCandidateItemNative(t, SeizureDirectionDebit, txDigest, 126)
	candidateDigest, err := primitives.Poseidon377Hash2Native(
		seizureCandidateChainDomain,
		[2]*big.Int{big.NewInt(41), creditItem},
	)
	if err != nil {
		t.Fatal(err)
	}
	candidateDigest, err = primitives.Poseidon377Hash2Native(
		seizureCandidateChainDomain,
		[2]*big.Int{candidateDigest, debitItem},
	)
	if err != nil {
		t.Fatal(err)
	}
	canonicalDigest := big.NewInt(42)
	for index, row := range rows {
		canonicalDigest = auditLogAppendNative(t, canonicalDigest, 99+index, auditRecordCommitmentNative(t, row))
	}
	end := SeizureScanState{
		Blind:                 8,
		Cursor:                103,
		LastHeight:            103,
		AuditRecordCount:      9,
		PublicCredits:         107,
		PublicDebits:          10,
		TargetStatus:          2,
		RegisteredAtHeight:    10,
		FreezeGeneration:      1,
		FrozenSinceHeight:     103,
		CandidateCount:        4,
		CandidateDigest:       candidateDigest.String(),
		CanonicalRecordDigest: canonicalDigest.String(),
	}
	normalizeSeizureScanState(&start)
	normalizeSeizureScanState(&end)
	assignment := &SeizureScanCircuit{
		JobIDLo:                        11,
		JobIDHi:                        12,
		Sequence:                       3,
		ImmutableStatementCommitmentLo: 13,
		ImmutableStatementCommitmentHi: 14,
		TerminalChunk:                  1,
		StartAuditLogLength:            99,
		StartAuditLogHead:              0,
		StartAuditLogHeight:            9,
		TerminalAuditLogLength:         103,
		TerminalAuditLogHead:           canonicalDigest.String(),
		TerminalAuditLogHeight:         103,
		TargetAssetID:                  91,
		TargetAddressCommitment:        92,
		RegisteredAtHeight:             10,
		FreezeGeneration:               1,
		FrozenSinceHeight:              103,
		Start:                          start,
		End:                            end,
	}
	for index := range assignment.Rows {
		assignment.Rows[index] = SeizureScanRow{}
	}
	assignment.StartStateCommitment = seizureScanCommitmentNative(t, 11, 12, 13, 14, 3, start).String()
	assignment.EndStateCommitment = seizureScanCommitmentNative(t, 11, 12, 13, 14, 4, end).String()
	copy(assignment.Rows[:], rows[:])
	for index := range assignment.Rows {
		normalizeSeizureScanRow(&assignment.Rows[index])
	}
	return assignment
}

func TestSeizureScanCircuitFoldsOpaqueState(t *testing.T) {
	assignment := seizureScanAssignment(t)
	if err := test.IsSolved(&SeizureScanCircuit{}, assignment, ecc.BLS12_377.ScalarField()); err != nil {
		t.Fatal(err)
	}

	mutations := []func(*SeizureScanCircuit){
		func(value *SeizureScanCircuit) { value.Rows[1].Source.Height = 89 },
		func(value *SeizureScanCircuit) { value.Rows[4].Effect.Fields[0] = 1 },
		func(value *SeizureScanCircuit) { value.End.PublicCredits = 108 },
		func(value *SeizureScanCircuit) { value.ImmutableStatementCommitmentHi = 15 },
		func(value *SeizureScanCircuit) { value.TerminalAuditLogHead = 1 },
		func(value *SeizureScanCircuit) { value.FrozenSinceHeight = 102 },
	}
	for index, mutate := range mutations {
		mutated := *seizureScanAssignment(t)
		mutate(&mutated)
		if err := test.IsSolved(&SeizureScanCircuit{}, &mutated, ecc.BLS12_377.ScalarField()); err == nil {
			t.Fatalf("mutation %d must fail", index)
		}
	}
}

func seizureScanWithNonTargetWithdrawalAssignment(t *testing.T) *SeizureScanCircuit {
	t.Helper()
	start := SeizureScanState{Blind: 7}
	rows := [3]SeizureScanRow{
		{
			Enabled: 1,
			Source:  AuditSourceRow{Kind: 1, Height: 1, TransactionIDLo: 11, TransactionIDHi: 12, Position0: 0, EffectIndex: 0},
			Effect:  AuditEffectRow{Kind: AuditEffectUserRegistered, Fields: [12]frontend.Variable{91, 92}},
		},
		{
			Enabled: 1,
			Source:  AuditSourceRow{Kind: 1, Height: 2, TransactionIDLo: 13, TransactionIDHi: 14, Position0: 0, EffectIndex: 0},
			Effect:  AuditEffectRow{Kind: AuditEffectWithdrawal, Fields: [12]frontend.Variable{1, 99, 50, 123, 124, 125}},
		},
		{
			Enabled: 1,
			Source:  AuditSourceRow{Kind: 1, Height: 3, TransactionIDLo: 15, TransactionIDHi: 16, Position0: 0, EffectIndex: 0},
			Effect:  AuditEffectRow{Kind: AuditEffectUserStatusChanged, Fields: [12]frontend.Variable{91, 92, 2, 1, 3}},
		},
	}
	canonicalDigest := big.NewInt(0)
	for index, row := range rows {
		canonicalDigest = auditLogAppendNative(
			t,
			canonicalDigest,
			index,
			auditRecordCommitmentNative(t, row),
		)
	}
	end := SeizureScanState{
		Blind:                 8,
		Cursor:                3,
		LastHeight:            3,
		AuditRecordCount:      3,
		TargetStatus:          2,
		RegisteredAtHeight:    1,
		FreezeGeneration:      1,
		FrozenSinceHeight:     3,
		CanonicalRecordDigest: canonicalDigest.String(),
	}
	normalizeSeizureScanState(&start)
	normalizeSeizureScanState(&end)
	assignment := &SeizureScanCircuit{
		JobIDLo:                        11,
		JobIDHi:                        12,
		Sequence:                       0,
		ImmutableStatementCommitmentLo: 13,
		ImmutableStatementCommitmentHi: 14,
		TerminalChunk:                  1,
		StartAuditLogLength:            0,
		StartAuditLogHead:              0,
		StartAuditLogHeight:            0,
		TerminalAuditLogLength:         3,
		TerminalAuditLogHead:           canonicalDigest.String(),
		TerminalAuditLogHeight:         3,
		TargetAssetID:                  91,
		TargetAddressCommitment:        92,
		RegisteredAtHeight:             1,
		FreezeGeneration:               1,
		FrozenSinceHeight:              3,
		Start:                          start,
		End:                            end,
	}
	assignment.StartStateCommitment = seizureScanCommitmentNative(
		t, 11, 12, 13, 14, 0, start,
	).String()
	assignment.EndStateCommitment = seizureScanCommitmentNative(
		t, 11, 12, 13, 14, 1, end,
	).String()
	copy(assignment.Rows[:], rows[:])
	for index := range assignment.Rows {
		normalizeSeizureScanRow(&assignment.Rows[index])
	}
	return assignment
}

func TestSeizureScanSkipsNonTargetWithdrawals(t *testing.T) {
	assignment := seizureScanWithNonTargetWithdrawalAssignment(t)
	if err := test.IsSolved(
		&SeizureScanCircuit{},
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatal(err)
	}

	mutated := seizureScanWithNonTargetWithdrawalAssignment(t)
	mutated.Rows[1].Effect.Fields[1] = mutated.TargetAssetID
	if err := test.IsSolved(
		&SeizureScanCircuit{},
		mutated,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("target-asset withdrawal must enter the candidate chain")
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
		TerminalAuditLogLength:            scan.Cursor,
		TerminalAuditLogHead:              scan.CanonicalRecordDigest,
		TerminalAuditLogHeight:            scan.LastHeight,
		RegisteredAtHeight:                scan.RegisteredAtHeight,
		FreezeGeneration:                  scan.FreezeGeneration,
		FrozenSinceHeight:                 scan.FrozenSinceHeight,
		MatchedTxCount:                    classification.MatchedTxCount,
		Amount:                            105,
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
		func(value *SeizureFinalizeCircuit) { value.Amount = 106 },
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
	fold := func(domain *big.Int, fields ...*big.Int) *big.Int {
		head := big.NewInt(0)
		for _, field := range fields {
			var err error
			head, err = primitives.Poseidon377Hash2Native(
				domain,
				[2]*big.Int{head, field},
			)
			if err != nil {
				t.Fatal(err)
			}
		}
		return head
	}
	isTransfer := fmt.Sprint(row.Kind) == fmt.Sprint(SeizureCandidatePreTransfer) ||
		fmt.Sprint(row.Kind) == fmt.Sprint(SeizureCandidateIssuerTransfer)
	var projection *big.Int
	if isTransfer {
		projection = fold(
			auditTransferCandidateDomain,
			variable(row.Direction),
			variable(row.AssetAnchor),
			variable(row.RingIDHash),
			variable(row.PolicyIDHash),
			variable(row.PermissionHash),
			variable(row.ResourceHash),
			point(row.DetectionEPK),
			variable(row.DetectionCiphertext[0]),
			variable(row.DetectionCiphertext[1]),
			variable(row.DetectionCiphertext[2]),
			variable(row.DetectionCiphertext[3]),
			point(row.Core.EPK),
			variable(row.Core.C2),
			variable(row.Core.KeyConfirmation),
			variable(row.Core.Ciphertext),
			variable(row.Core.Salt),
			point(row.Address.EPK),
			variable(row.Address.C2),
			variable(row.Address.Ciphertext[0]),
			variable(row.Address.Ciphertext[1]),
			variable(row.Address.Ciphertext[2]),
		)
	} else {
		projection = fold(
			auditWithdrawalCandidateDomain,
			big.NewInt(SeizureDirectionDebit),
			variable(row.WithdrawalKind),
			variable(row.AssetID),
			variable(row.PublicAmount),
			variable(row.AssetAnchor),
			point(row.Address.EPK),
			variable(row.Address.C2),
			variable(row.Address.KeyConfirmation),
			variable(row.Address.Ciphertext[0]),
			variable(row.Address.Ciphertext[1]),
			variable(row.Address.Ciphertext[2]),
		)
	}
	return auditCandidateItemNative(t, row.Direction, variable(row.TxDigest), projection)
}

func seizureFieldAdd(values ...*big.Int) *big.Int {
	out := new(big.Int)
	for _, value := range values {
		out.Add(out, value)
	}
	return out.Mod(out, ecc.BLS12_377.ScalarField())
}

func seizureRefreshAssetAnchor(t *testing.T, row *SeizureCandidateRow) {
	t.Helper()
	leafCommitment, err := compliance.IndexedLeafCommitmentNative(row.AssetLeaf)
	if err != nil {
		t.Fatal(err)
	}
	var path [compliance.ComplianceQuadTreeDepth][3]*big.Int
	for layer := range row.AssetPath {
		for sibling := range row.AssetPath[layer] {
			path[layer][sibling] = seizureVariableBig(t, row.AssetPath[layer][sibling])
		}
	}
	root, err := compliance.VerifyQuadPathNative(
		leafCommitment,
		path,
		uint64(seizureVariableBig(t, row.AssetPosition).Uint64()),
	)
	if err != nil {
		t.Fatal(err)
	}
	row.AssetAnchor = root.String()
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
	assetLeaf := compliance.IndexedLeafInputs{
		Value:          assetID,
		NextIndex:      uint64(0),
		NextValue:      big.NewInt(0),
		DKPub:          issuerDKPub,
		Threshold:      "100",
		ChannelsHash:   big.NewInt(205),
		RingPK:         generator,
		RingIDHash:     big.NewInt(201),
		PolicyIDHash:   big.NewInt(202),
		PermissionHash: big.NewInt(203),
		ResourceHash:   big.NewInt(204),
	}
	row := SeizureCandidateRow{
		Enabled:             1,
		Kind:                SeizureCandidatePreTransfer,
		TxDigest:            77,
		Direction:           SeizureDirectionDebit,
		WithdrawalKind:      0,
		AssetID:             assetID.String(),
		RingIDHash:          201,
		PolicyIDHash:        202,
		PermissionHash:      203,
		ResourceHash:        204,
		AssetLeaf:           assetLeaf,
		AssetPosition:       0,
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
	for layer := range row.AssetPath {
		for sibling := range row.AssetPath[layer] {
			row.AssetPath[layer][sibling] = 0
		}
	}
	seizureRefreshAssetAnchor(t, &row)
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
		AuditRecordCount:      1,
		PublicCredits:         0,
		PublicDebits:          0,
		TargetStatus:          2,
		CandidateCount:        1,
		CandidateDigest:       candidateChain.String(),
		CanonicalRecordDigest: 88,
	}
	normalizeSeizureScanState(&scanTerminal)
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
		TerminalChunk:                     1,
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
	row.WithdrawalKind = 2
	row.IsFlagged = 0
	row.PublicAmount = 12
	row.RingIDHash = 0
	row.PolicyIDHash = 0
	row.PermissionHash = 0
	row.ResourceHash = 0
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
	row.WithdrawalKind = 2
	row.PublicAmount = 12
	row.RingIDHash = 0
	row.PolicyIDHash = 0
	row.PermissionHash = 0
	row.ResourceHash = 0
	row.AssetLeaf.Threshold = "1"
	seizureRefreshAssetAnchor(t, row)
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

func TestSeizureClassifyCircuitRejectsWrongAuthenticatedAssetKeys(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	generator, err := decafGeneratorFromVectors(vectors)
	if err != nil {
		t.Fatal(err)
	}
	mutations := []func(*SeizureClassifyCircuit){
		func(value *SeizureClassifyCircuit) {
			value.Rows[0].AssetLeaf.RingPK = seizurePoint(t, generator, big.NewInt(2))
		},
		func(value *SeizureClassifyCircuit) {
			value.Rows[0].AssetLeaf.DKPub = seizurePoint(t, generator, big.NewInt(3))
		},
	}

	for index, mutate := range mutations {
		assignment := seizureClassifyAssignment(t, true)
		mutate(assignment)
		if err := test.IsSolved(
			&SeizureClassifyCircuit{},
			assignment,
			ecc.BLS12_377.ScalarField(),
		); err == nil {
			t.Fatalf("authenticated asset key mutation %d must fail", index)
		}
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
