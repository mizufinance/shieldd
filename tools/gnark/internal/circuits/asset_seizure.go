package circuits

import (
	"math/big"

	"github.com/consensys/gnark/frontend"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"golang.org/x/crypto/blake2b"
)

const SeizureScanBatchSize = 16

const (
	SeizureEffectNone = iota
	SeizureEffectCredit
	SeizureEffectDebit
	SeizureEffectCandidate
	SeizureEffectFreeze
)

var (
	seizureIdentityDomain          = seizureDomain("shieldd.seizure.identity.v1")
	seizureScanStateHeadDomain     = seizureDomain("shieldd.seizure.scan_state.head.v1")
	seizureScanStateTailDomain     = seizureDomain("shieldd.seizure.scan_state.tail.v1")
	seizureRecordChainDomain       = seizureDomain("shieldd.seizure.record_chain.v1")
	seizureCandidateChainDomain    = seizureDomain("shieldd.seizure.candidate_chain.v1")
	seizureClassifyStateHeadDomain = seizureDomain("shieldd.seizure.classify_state.head.v1")
	seizureClassifyStateTailDomain = seizureDomain("shieldd.seizure.classify_state.tail.v1")
	seizureClassifyContextDomain   = seizureDomain("shieldd.seizure.classify_context.v1")
)

func seizureDomain(label string) *big.Int {
	sum := blake2b.Sum512([]byte(label))
	return primitives.LittleEndianBytesToBigInt(sum[:])
}

// SeizureScanState is the private running state opened only inside scan and
// finalization proofs. Credits and debits are separate checked u128 values so
// no signed field arithmetic can wrap.
type SeizureScanState struct {
	Blind                 frontend.Variable
	Cursor                frontend.Variable
	CanonicalTxCount      frontend.Variable
	PublicCredits         frontend.Variable
	PublicDebits          frontend.Variable
	TargetStatus          frontend.Variable
	CandidateCount        frontend.Variable
	CandidateDigest       frontend.Variable
	CanonicalRecordDigest frontend.Variable
}

// SeizureScanRow is one canonically authenticated transaction/result row after
// the external Comet inclusion decoder has reduced it to the closed projection
// vocabulary. CanonicalRecordDigest must be bound to that decoder's output.
type SeizureScanRow struct {
	Enabled               frontend.Variable
	Cursor                frontend.Variable
	CanonicalRecordDigest frontend.Variable
	EffectKind            frontend.Variable
	Amount                frontend.Variable
}

// SeizureScanCircuit proves one opaque fixed-size scan transition.
type SeizureScanCircuit struct {
	JobIDLo                        frontend.Variable `gnark:",public"`
	JobIDHi                        frontend.Variable `gnark:",public"`
	Sequence                       frontend.Variable `gnark:",public"`
	ImmutableStatementCommitmentLo frontend.Variable `gnark:",public"`
	ImmutableStatementCommitmentHi frontend.Variable `gnark:",public"`
	StartStateCommitment           frontend.Variable `gnark:",public"`
	EndStateCommitment             frontend.Variable `gnark:",public"`

	Start SeizureScanState
	End   SeizureScanState
	Rows  [SeizureScanBatchSize]SeizureScanRow
}

func (c *SeizureScanCircuit) Define(api frontend.API) error {
	api.ToBinary(c.JobIDLo, 128)
	api.ToBinary(c.JobIDHi, 128)
	api.ToBinary(c.ImmutableStatementCommitmentLo, 128)
	api.ToBinary(c.ImmutableStatementCommitmentHi, 128)
	api.ToBinary(c.Sequence, 64)
	if err := constrainScanState(api, c.Start); err != nil {
		return err
	}
	if err := constrainScanState(api, c.End); err != nil {
		return err
	}
	isFirstChunk := api.IsZero(c.Sequence)
	for _, value := range []frontend.Variable{
		c.Start.CanonicalTxCount,
		c.Start.PublicCredits,
		c.Start.PublicDebits,
		c.Start.CandidateCount,
		c.Start.CandidateDigest,
		c.Start.CanonicalRecordDigest,
	} {
		api.AssertIsEqual(api.Mul(isFirstChunk, value), 0)
	}
	api.AssertIsEqual(api.Mul(isFirstChunk, api.Sub(c.Start.TargetStatus, 1)), 0)
	startCommitment, err := commitSeizureScanState(
		api,
		c.JobIDLo,
		c.JobIDHi,
		c.ImmutableStatementCommitmentLo,
		c.ImmutableStatementCommitmentHi,
		c.Sequence,
		c.Start,
	)
	if err != nil {
		return err
	}
	api.AssertIsEqual(startCommitment, c.StartStateCommitment)

	cursor := c.Start.Cursor
	canonicalTxCount := c.Start.CanonicalTxCount
	publicCredits := c.Start.PublicCredits
	publicDebits := c.Start.PublicDebits
	status := c.Start.TargetStatus
	candidateCount := c.Start.CandidateCount
	candidateDigest := c.Start.CandidateDigest
	canonicalDigest := c.Start.CanonicalRecordDigest
	previousEnabled := frontend.Variable(1)

	for index := range c.Rows {
		row := c.Rows[index]
		api.AssertIsBoolean(row.Enabled)
		api.AssertIsEqual(api.Mul(row.Enabled, api.Sub(1, previousEnabled)), 0)
		previousEnabled = row.Enabled

		api.ToBinary(row.Cursor, 96)
		api.ToBinary(row.Amount, 128)
		selectedCursor := api.Select(row.Enabled, row.Cursor, cursor)
		cursorDelta := api.Sub(selectedCursor, cursor)
		api.ToBinary(cursorDelta, 96)
		api.AssertIsEqual(api.IsZero(cursorDelta), api.Sub(1, row.Enabled))
		cursor = selectedCursor

		selectors := [5]frontend.Variable{}
		selectorSum := frontend.Variable(0)
		for kind := range selectors {
			selectors[kind] = api.IsZero(api.Sub(row.EffectKind, kind))
			selectorSum = api.Add(selectorSum, selectors[kind])
		}
		api.AssertIsEqual(selectorSum, 1)
		amountEffect := api.Add(selectors[SeizureEffectCredit], selectors[SeizureEffectDebit])
		api.AssertIsEqual(api.Mul(row.Amount, api.Sub(1, amountEffect)), 0)

		disabled := api.Sub(1, row.Enabled)
		api.AssertIsEqual(api.Mul(disabled, row.Cursor), 0)
		api.AssertIsEqual(api.Mul(disabled, row.CanonicalRecordDigest), 0)
		api.AssertIsEqual(api.Mul(disabled, row.EffectKind), 0)
		api.AssertIsEqual(api.Mul(disabled, row.Amount), 0)

		canonicalTxCount = api.Add(canonicalTxCount, row.Enabled)
		publicCredits = api.Add(
			publicCredits,
			api.Mul(row.Enabled, selectors[SeizureEffectCredit], row.Amount),
		)
		publicDebits = api.Add(
			publicDebits,
			api.Mul(row.Enabled, selectors[SeizureEffectDebit], row.Amount),
		)
		api.ToBinary(publicCredits, 128)
		api.ToBinary(publicDebits, 128)

		canonicalNext, err := primitives.Poseidon377Hash2(
			api,
			seizureRecordChainDomain,
			[2]frontend.Variable{canonicalDigest, row.CanonicalRecordDigest},
		)
		if err != nil {
			return err
		}
		canonicalDigest = api.Select(row.Enabled, canonicalNext, canonicalDigest)

		isCandidate := api.Mul(row.Enabled, selectors[SeizureEffectCandidate])
		candidateNext, err := primitives.Poseidon377Hash2(
			api,
			seizureCandidateChainDomain,
			[2]frontend.Variable{candidateDigest, row.CanonicalRecordDigest},
		)
		if err != nil {
			return err
		}
		candidateDigest = api.Select(isCandidate, candidateNext, candidateDigest)
		candidateCount = api.Add(candidateCount, isCandidate)

		isFreeze := api.Mul(row.Enabled, selectors[SeizureEffectFreeze])
		api.AssertIsEqual(api.Mul(row.Enabled, api.Sub(status, 1)), 0)
		status = api.Add(status, isFreeze)
	}

	api.AssertIsEqual(c.End.Cursor, cursor)
	api.AssertIsEqual(c.End.CanonicalTxCount, canonicalTxCount)
	api.AssertIsEqual(c.End.PublicCredits, publicCredits)
	api.AssertIsEqual(c.End.PublicDebits, publicDebits)
	api.AssertIsEqual(c.End.TargetStatus, status)
	api.AssertIsEqual(c.End.CandidateCount, candidateCount)
	api.AssertIsEqual(c.End.CandidateDigest, candidateDigest)
	api.AssertIsEqual(c.End.CanonicalRecordDigest, canonicalDigest)

	endCommitment, err := commitSeizureScanState(
		api,
		c.JobIDLo,
		c.JobIDHi,
		c.ImmutableStatementCommitmentLo,
		c.ImmutableStatementCommitmentHi,
		api.Add(c.Sequence, 1),
		c.End,
	)
	if err != nil {
		return err
	}
	api.AssertIsEqual(endCommitment, c.EndStateCommitment)
	return nil
}

func constrainScanState(api frontend.API, state SeizureScanState) error {
	api.ToBinary(state.Cursor, 96)
	api.ToBinary(state.CanonicalTxCount, 64)
	api.ToBinary(state.PublicCredits, 128)
	api.ToBinary(state.PublicDebits, 128)
	api.ToBinary(state.CandidateCount, 64)
	statusActive := api.IsZero(api.Sub(state.TargetStatus, 1))
	statusFrozen := api.IsZero(api.Sub(state.TargetStatus, 2))
	api.AssertIsEqual(api.Add(statusActive, statusFrozen), 1)
	return nil
}

func commitSeizureScanState(
	api frontend.API,
	jobIDLo frontend.Variable,
	jobIDHi frontend.Variable,
	statementCommitmentLo frontend.Variable,
	statementCommitmentHi frontend.Variable,
	sequence frontend.Variable,
	state SeizureScanState,
) (frontend.Variable, error) {
	identity, err := primitives.Poseidon377Hash5(
		api,
		seizureIdentityDomain,
		[5]frontend.Variable{
			jobIDLo,
			jobIDHi,
			statementCommitmentLo,
			statementCommitmentHi,
			sequence,
		},
	)
	if err != nil {
		return nil, err
	}
	head, err := primitives.Poseidon377Hash5(
		api,
		seizureScanStateHeadDomain,
		[5]frontend.Variable{
			identity,
			state.Blind,
			state.Cursor,
			state.CanonicalTxCount,
			0,
		},
	)
	if err != nil {
		return nil, err
	}
	return primitives.Poseidon377Hash7(
		api,
		seizureScanStateTailDomain,
		[7]frontend.Variable{
			head,
			state.PublicCredits,
			state.PublicDebits,
			state.TargetStatus,
			state.CandidateCount,
			state.CandidateDigest,
			state.CanonicalRecordDigest,
		},
	)
}

// SeizureClassificationState is the terminal classification opening consumed
// by SeizureFinalize. The classify circuit uses the same commitment helper.
type SeizureClassificationState struct {
	Blind                   frontend.Variable
	ExpectedCandidateCount  frontend.Variable
	ExpectedCandidateDigest frontend.Variable
	ConsumedCandidateCount  frontend.Variable
	ConsumedCandidateDigest frontend.Variable
	MatchedTxCount          frontend.Variable
	ClassifiedCredits       frontend.Variable
	ClassifiedDebits        frontend.Variable
	PreviousTxDigest        frontend.Variable
	PreviousTxMatched       frontend.Variable
}

func constrainClassificationState(api frontend.API, state SeizureClassificationState) {
	api.ToBinary(state.ExpectedCandidateCount, 64)
	api.ToBinary(state.ConsumedCandidateCount, 64)
	api.ToBinary(state.MatchedTxCount, 64)
	api.ToBinary(state.ClassifiedCredits, 128)
	api.ToBinary(state.ClassifiedDebits, 128)
	api.AssertIsBoolean(state.PreviousTxMatched)
}

func commitSeizureClassificationState(
	api frontend.API,
	jobIDLo frontend.Variable,
	jobIDHi frontend.Variable,
	statementCommitmentLo frontend.Variable,
	statementCommitmentHi frontend.Variable,
	targetAssetID frontend.Variable,
	targetAddressDiversifiedGenerator frontend.Variable,
	targetAddressTransmissionKey frontend.Variable,
	targetDerivation frontend.Variable,
	sequence frontend.Variable,
	state SeizureClassificationState,
) (frontend.Variable, error) {
	statementIdentity, err := primitives.Poseidon377Hash5(
		api,
		seizureIdentityDomain,
		[5]frontend.Variable{
			jobIDLo,
			jobIDHi,
			statementCommitmentLo,
			statementCommitmentHi,
			sequence,
		},
	)
	if err != nil {
		return nil, err
	}
	identity, err := primitives.Poseidon377Hash5(
		api,
		seizureClassifyContextDomain,
		[5]frontend.Variable{
			statementIdentity,
			targetAssetID,
			targetAddressDiversifiedGenerator,
			targetAddressTransmissionKey,
			targetDerivation,
		},
	)
	if err != nil {
		return nil, err
	}
	head, err := primitives.Poseidon377Hash5(
		api,
		seizureClassifyStateHeadDomain,
		[5]frontend.Variable{
			identity,
			state.Blind,
			state.ExpectedCandidateCount,
			state.ExpectedCandidateDigest,
			0,
		},
	)
	if err != nil {
		return nil, err
	}
	tail, err := primitives.Poseidon377Hash7(
		api,
		seizureClassifyStateTailDomain,
		[7]frontend.Variable{
			head,
			state.ConsumedCandidateCount,
			state.ConsumedCandidateDigest,
			state.MatchedTxCount,
			state.ClassifiedCredits,
			state.ClassifiedDebits,
			state.PreviousTxDigest,
		},
	)
	if err != nil {
		return nil, err
	}
	return primitives.Poseidon377Hash2(
		api,
		seizureClassifyStateTailDomain,
		[2]frontend.Variable{tail, state.PreviousTxMatched},
	)
}

// SeizureFinalizeCircuit opens the terminal scan and classification states and
// checks their cross-phase equality plus the final non-negative balance.
type SeizureFinalizeCircuit struct {
	JobIDLo                           frontend.Variable `gnark:",public"`
	JobIDHi                           frontend.Variable `gnark:",public"`
	ImmutableStatementCommitmentLo    frontend.Variable `gnark:",public"`
	ImmutableStatementCommitmentHi    frontend.Variable `gnark:",public"`
	ScanSequence                      frontend.Variable `gnark:",public"`
	ClassificationSequence            frontend.Variable `gnark:",public"`
	ScanTerminalCommitment            frontend.Variable `gnark:",public"`
	ClassificationTerminalCommitment  frontend.Variable `gnark:",public"`
	TerminalCursor                    frontend.Variable `gnark:",public"`
	OpeningBalance                    frontend.Variable `gnark:",public"`
	CanonicalTxCount                  frontend.Variable `gnark:",public"`
	MatchedTxCount                    frontend.Variable `gnark:",public"`
	Amount                            frontend.Variable `gnark:",public"`
	TargetAssetID                     frontend.Variable `gnark:",public"`
	TargetAddressDiversifiedGenerator frontend.Variable `gnark:",public"`
	TargetAddressTransmissionKey      frontend.Variable `gnark:",public"`
	TargetDerivation                  frontend.Variable `gnark:",public"`

	Scan           SeizureScanState
	Classification SeizureClassificationState
}

func (c *SeizureFinalizeCircuit) Define(api frontend.API) error {
	api.ToBinary(c.JobIDLo, 128)
	api.ToBinary(c.JobIDHi, 128)
	api.ToBinary(c.ImmutableStatementCommitmentLo, 128)
	api.ToBinary(c.ImmutableStatementCommitmentHi, 128)
	api.ToBinary(c.ScanSequence, 64)
	api.ToBinary(c.ClassificationSequence, 64)
	api.ToBinary(c.TerminalCursor, 96)
	api.ToBinary(c.OpeningBalance, 128)
	api.ToBinary(c.CanonicalTxCount, 64)
	api.ToBinary(c.MatchedTxCount, 64)
	api.ToBinary(c.Amount, 128)
	api.ToBinary(c.TargetAssetID, 256)
	api.ToBinary(c.TargetAddressDiversifiedGenerator, 256)
	api.ToBinary(c.TargetAddressTransmissionKey, 256)
	api.ToBinary(c.TargetDerivation, 256)
	if err := constrainScanState(api, c.Scan); err != nil {
		return err
	}
	constrainClassificationState(api, c.Classification)

	scanCommitment, err := commitSeizureScanState(
		api,
		c.JobIDLo,
		c.JobIDHi,
		c.ImmutableStatementCommitmentLo,
		c.ImmutableStatementCommitmentHi,
		c.ScanSequence,
		c.Scan,
	)
	if err != nil {
		return err
	}
	api.AssertIsEqual(scanCommitment, c.ScanTerminalCommitment)
	classificationCommitment, err := commitSeizureClassificationState(
		api,
		c.JobIDLo,
		c.JobIDHi,
		c.ImmutableStatementCommitmentLo,
		c.ImmutableStatementCommitmentHi,
		c.TargetAssetID,
		c.TargetAddressDiversifiedGenerator,
		c.TargetAddressTransmissionKey,
		c.TargetDerivation,
		c.ClassificationSequence,
		c.Classification,
	)
	if err != nil {
		return err
	}
	api.AssertIsEqual(classificationCommitment, c.ClassificationTerminalCommitment)

	api.AssertIsEqual(c.Scan.Cursor, c.TerminalCursor)
	api.AssertIsEqual(c.Scan.TargetStatus, 2)
	api.AssertIsEqual(c.Scan.CanonicalTxCount, c.CanonicalTxCount)
	api.AssertIsEqual(c.Scan.CandidateCount, c.Classification.ExpectedCandidateCount)
	api.AssertIsEqual(c.Scan.CandidateDigest, c.Classification.ExpectedCandidateDigest)
	api.AssertIsEqual(
		c.Classification.ConsumedCandidateCount,
		c.Classification.ExpectedCandidateCount,
	)
	api.AssertIsEqual(
		c.Classification.ConsumedCandidateDigest,
		c.Classification.ExpectedCandidateDigest,
	)
	api.AssertIsEqual(c.Classification.MatchedTxCount, c.MatchedTxCount)

	totalCredits := api.Add(c.OpeningBalance, c.Scan.PublicCredits, c.Classification.ClassifiedCredits)
	totalDebits := api.Add(c.Scan.PublicDebits, c.Classification.ClassifiedDebits)
	api.ToBinary(totalCredits, 130)
	api.ToBinary(totalDebits, 129)
	api.AssertIsEqual(totalCredits, api.Add(totalDebits, c.Amount))
	return nil
}
