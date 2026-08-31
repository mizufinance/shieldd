package circuits

import (
	"math/big"

	"github.com/consensys/gnark/frontend"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"golang.org/x/crypto/blake2b"
)

const SeizureScanBatchSize = 16

const (
	AuditEffectNone = iota
	AuditEffectTransferOutput
	AuditEffectWithdrawal
	AuditEffectNoteReshape
	AuditEffectPublicDeposit
	AuditEffectUserRegistered
	AuditEffectUserStatusChanged
	AuditEffectAssetRegistered
	AuditEffectIbcRelay
)

var (
	seizureIdentityDomain          = seizureDomain("shieldd.seizure.identity.v1")
	seizureScanStateHeadDomain     = seizureDomain("shieldd.seizure.scan_state.head.v1")
	seizureScanStateTailDomain     = seizureDomain("shieldd.seizure.scan_state.tail.v1")
	seizureCandidateChainDomain    = seizureDomain("shieldd.seizure.candidate_chain.v1")
	seizureClassifyStateHeadDomain = seizureDomain("shieldd.seizure.classify_state.head.v1")
	seizureClassifyStateTailDomain = seizureDomain("shieldd.seizure.classify_state.tail.v1")
	seizureClassifyContextDomain   = seizureDomain("shieldd.seizure.classify_context.v1")
	seizureCandidateItemDomain     = seizureDomain("shieldd.audit.candidate.item.v1")
	auditSourceDomain              = seizureDomain("shieldd.audit.source.v1")
	auditEffectHeadDomain          = seizureDomain("shieldd.audit.effect.head.v1")
	auditEffectTailDomain          = seizureDomain("shieldd.audit.effect.tail.v1")
	auditRecordDomain              = seizureDomain("shieldd.audit.record.v1")
	auditLogDomain                 = seizureDomain("shieldd.audit.log.v1")
	auditTransferCandidateDomain   = seizureDomain("shieldd.audit.candidate.transfer.v1")
	auditWithdrawalCandidateDomain = seizureDomain("shieldd.audit.candidate.withdrawal.v1")
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
	LastHeight            frontend.Variable
	AuditRecordCount      frontend.Variable
	PublicCredits         frontend.Variable
	PublicDebits          frontend.Variable
	TargetStatus          frontend.Variable
	RegisteredAtHeight    frontend.Variable
	FreezeGeneration      frontend.Variable
	FrozenSinceHeight     frontend.Variable
	CandidateCount        frontend.Variable
	CandidateDigest       frontend.Variable
	CanonicalRecordDigest frontend.Variable
}

type AuditSourceRow struct {
	Kind              frontend.Variable
	Height            frontend.Variable
	TransactionIDLo   frontend.Variable
	TransactionIDHi   frontend.Variable
	Position0         frontend.Variable
	Position1         frontend.Variable
	EffectIndex       frontend.Variable
	ContextCommitment frontend.Variable
}

type AuditEffectRow struct {
	Kind   frontend.Variable
	Fields [12]frontend.Variable
}

// SeizureScanRow opens one exact record from the consensus audit-effect chain.
// No caller-supplied credit, debit, candidate, or record digest is accepted.
type SeizureScanRow struct {
	Enabled frontend.Variable
	Source  AuditSourceRow
	Effect  AuditEffectRow
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
	TerminalChunk                  frontend.Variable `gnark:",public"`
	StartAuditLogLength            frontend.Variable `gnark:",public"`
	StartAuditLogHead              frontend.Variable `gnark:",public"`
	StartAuditLogHeight            frontend.Variable `gnark:",public"`
	TerminalAuditLogLength         frontend.Variable `gnark:",public"`
	TerminalAuditLogHead           frontend.Variable `gnark:",public"`
	TerminalAuditLogHeight         frontend.Variable `gnark:",public"`
	TargetAssetID                  frontend.Variable `gnark:",public"`
	TargetAddressCommitment        frontend.Variable `gnark:",public"`
	RegisteredAtHeight             frontend.Variable `gnark:",public"`
	FreezeGeneration               frontend.Variable `gnark:",public"`
	FrozenSinceHeight              frontend.Variable `gnark:",public"`

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
	api.AssertIsBoolean(c.TerminalChunk)
	api.ToBinary(c.StartAuditLogLength, 64)
	api.ToBinary(c.StartAuditLogHeight, 64)
	api.ToBinary(c.TerminalAuditLogLength, 64)
	api.ToBinary(c.TerminalAuditLogHeight, 64)
	api.ToBinary(c.RegisteredAtHeight, 64)
	api.ToBinary(c.FreezeGeneration, 64)
	api.ToBinary(c.FrozenSinceHeight, 64)
	api.ToBinary(api.Sub(c.TerminalAuditLogLength, c.StartAuditLogLength), 64)
	api.ToBinary(api.Sub(c.RegisteredAtHeight, c.StartAuditLogHeight, 1), 64)
	api.ToBinary(api.Sub(c.FrozenSinceHeight, c.RegisteredAtHeight), 64)
	api.AssertIsEqual(c.TerminalAuditLogHeight, c.FrozenSinceHeight)
	api.AssertIsEqual(api.IsZero(c.FreezeGeneration), 0)
	if err := constrainScanState(api, c.Start); err != nil {
		return err
	}
	if err := constrainScanState(api, c.End); err != nil {
		return err
	}
	isFirstChunk := api.IsZero(c.Sequence)
	for _, value := range []frontend.Variable{
		c.Start.AuditRecordCount,
		c.Start.PublicCredits,
		c.Start.PublicDebits,
		c.Start.RegisteredAtHeight,
		c.Start.FreezeGeneration,
		c.Start.FrozenSinceHeight,
		c.Start.CandidateCount,
		c.Start.CandidateDigest,
	} {
		api.AssertIsEqual(api.Mul(isFirstChunk, value), 0)
	}
	api.AssertIsEqual(api.Mul(isFirstChunk, c.Start.TargetStatus), 0)
	api.AssertIsEqual(
		api.Mul(isFirstChunk, api.Sub(c.Start.Cursor, c.StartAuditLogLength)),
		0,
	)
	api.AssertIsEqual(
		api.Mul(isFirstChunk, api.Sub(c.Start.LastHeight, c.StartAuditLogHeight)),
		0,
	)
	api.AssertIsEqual(
		api.Mul(isFirstChunk, api.Sub(c.Start.CanonicalRecordDigest, c.StartAuditLogHead)),
		0,
	)
	api.AssertIsEqual(
		api.Mul(isFirstChunk, api.Sub(c.Start.LastHeight, c.StartAuditLogHeight)),
		0,
	)
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
	lastHeight := c.Start.LastHeight
	auditRecordCount := c.Start.AuditRecordCount
	publicCredits := c.Start.PublicCredits
	publicDebits := c.Start.PublicDebits
	status := c.Start.TargetStatus
	registeredAtHeight := c.Start.RegisteredAtHeight
	freezeGeneration := c.Start.FreezeGeneration
	frozenSinceHeight := c.Start.FrozenSinceHeight
	candidateCount := c.Start.CandidateCount
	candidateDigest := c.Start.CandidateDigest
	canonicalDigest := c.Start.CanonicalRecordDigest
	previousEnabled := frontend.Variable(1)

	for index := range c.Rows {
		row := c.Rows[index]
		api.AssertIsBoolean(row.Enabled)
		api.AssertIsEqual(api.Mul(row.Enabled, api.Sub(1, previousEnabled)), 0)
		previousEnabled = row.Enabled

		recordCommitment, selectors, err := commitAuditRecord(api, row)
		if err != nil {
			return err
		}

		selectedHeight := api.Select(row.Enabled, row.Source.Height, lastHeight)
		heightDelta := api.Sub(selectedHeight, lastHeight)
		api.ToBinary(heightDelta, 64)
		lastHeight = selectedHeight

		auditRecordCount = api.Add(auditRecordCount, row.Enabled)

		assetMatches := api.IsZero(api.Sub(row.Effect.Fields[0], c.TargetAssetID))
		addressMatches := api.IsZero(
			api.Sub(row.Effect.Fields[2], c.TargetAddressCommitment),
		)
		isTargetDeposit := api.Mul(
			row.Enabled,
			selectors[AuditEffectPublicDeposit],
			assetMatches,
			addressMatches,
		)
		api.AssertIsEqual(api.Mul(isTargetDeposit, api.Sub(status, 1)), 0)
		publicCredits = api.Add(publicCredits, api.Mul(isTargetDeposit, row.Effect.Fields[1]))
		api.ToBinary(publicCredits, 128)
		api.ToBinary(publicDebits, 128)

		canonicalNext, err := primitives.Poseidon377Hash3(
			api,
			auditLogDomain,
			[3]frontend.Variable{canonicalDigest, cursor, recordCommitment},
		)
		if err != nil {
			return err
		}
		canonicalDigest = api.Select(row.Enabled, canonicalNext, canonicalDigest)
		cursor = api.Add(cursor, row.Enabled)
		api.ToBinary(cursor, 64)

		txDigest, err := primitives.Poseidon377Hash2(
			api,
			seizureCandidateItemDomain,
			[2]frontend.Variable{row.Source.TransactionIDLo, row.Source.TransactionIDHi},
		)
		if err != nil {
			return err
		}
		creditItem, err := commitAuditCandidateItem(
			api,
			SeizureDirectionCredit,
			txDigest,
			row.Effect.Fields[2],
		)
		if err != nil {
			return err
		}
		debitItem, err := commitAuditCandidateItem(
			api,
			SeizureDirectionDebit,
			txDigest,
			row.Effect.Fields[3],
		)
		if err != nil {
			return err
		}
		withdrawalItem, err := commitAuditCandidateItem(
			api,
			SeizureDirectionDebit,
			txDigest,
			row.Effect.Fields[4],
		)
		if err != nil {
			return err
		}
		candidateAfterCredit, err := primitives.Poseidon377Hash2(
			api,
			seizureCandidateChainDomain,
			[2]frontend.Variable{candidateDigest, creditItem},
		)
		if err != nil {
			return err
		}
		candidateAfterDebit, err := primitives.Poseidon377Hash2(
			api,
			seizureCandidateChainDomain,
			[2]frontend.Variable{candidateAfterCredit, debitItem},
		)
		if err != nil {
			return err
		}
		candidateAfterWithdrawal, err := primitives.Poseidon377Hash2(
			api,
			seizureCandidateChainDomain,
			[2]frontend.Variable{candidateDigest, withdrawalItem},
		)
		if err != nil {
			return err
		}
		isTransferCandidate := api.Mul(row.Enabled, selectors[AuditEffectTransferOutput])
		withdrawalAssetMatches := api.IsZero(
			api.Sub(row.Effect.Fields[1], c.TargetAssetID),
		)
		isWithdrawalCandidate := api.Mul(
			row.Enabled,
			selectors[AuditEffectWithdrawal],
			withdrawalAssetMatches,
		)
		candidateDigest = api.Select(
			isTransferCandidate,
			candidateAfterDebit,
			api.Select(isWithdrawalCandidate, candidateAfterWithdrawal, candidateDigest),
		)
		candidateCount = api.Add(
			candidateCount,
			api.Mul(2, isTransferCandidate),
			isWithdrawalCandidate,
		)

		registrationAssetMatches := api.IsZero(
			api.Sub(row.Effect.Fields[0], c.TargetAssetID),
		)
		registrationAddressMatches := api.IsZero(
			api.Sub(row.Effect.Fields[1], c.TargetAddressCommitment),
		)
		isTargetRegistration := api.Mul(
			row.Enabled,
			selectors[AuditEffectUserRegistered],
			registrationAssetMatches,
			registrationAddressMatches,
		)
		api.AssertIsEqual(api.Mul(isTargetRegistration, status), 0)
		status = api.Select(isTargetRegistration, 1, status)
		registeredAtHeight = api.Select(isTargetRegistration, row.Source.Height, registeredAtHeight)

		statusAddressMatches := api.IsZero(
			api.Sub(row.Effect.Fields[1], c.TargetAddressCommitment),
		)
		isTargetStatus := api.Mul(
			row.Enabled,
			selectors[AuditEffectUserStatusChanged],
			registrationAssetMatches,
			statusAddressMatches,
		)
		nextStatus := row.Effect.Fields[2]
		isFreeze := api.Mul(
			isTargetStatus,
			api.IsZero(api.Sub(status, 1)),
			api.IsZero(api.Sub(nextStatus, 2)),
		)
		isUnfreeze := api.Mul(
			isTargetStatus,
			api.IsZero(api.Sub(status, 2)),
			api.IsZero(api.Sub(nextStatus, 1)),
		)
		isAuthorize := api.Mul(
			isTargetStatus,
			api.IsZero(api.Sub(status, 2)),
			api.IsZero(api.Sub(nextStatus, 3)),
		)
		isSeize := api.Mul(
			isTargetStatus,
			api.IsZero(api.Sub(status, 3)),
			api.IsZero(api.Sub(nextStatus, 4)),
		)
		api.AssertIsEqual(api.Add(isFreeze, isUnfreeze, isAuthorize, isSeize), isTargetStatus)
		api.AssertIsEqual(
			api.Mul(isFreeze, api.Sub(row.Effect.Fields[3], api.Add(freezeGeneration, 1))),
			0,
		)
		api.AssertIsEqual(
			api.Mul(isFreeze, api.Sub(row.Effect.Fields[4], row.Source.Height)),
			0,
		)
		api.AssertIsEqual(
			api.Mul(api.Add(isUnfreeze, isAuthorize, isSeize), api.Sub(row.Effect.Fields[3], freezeGeneration)),
			0,
		)
		api.AssertIsEqual(api.Mul(isUnfreeze, row.Effect.Fields[4]), 0)
		api.AssertIsEqual(
			api.Mul(api.Add(isAuthorize, isSeize), api.Sub(row.Effect.Fields[4], frozenSinceHeight)),
			0,
		)
		status = api.Select(isTargetStatus, nextStatus, status)
		freezeGeneration = api.Select(isFreeze, row.Effect.Fields[3], freezeGeneration)
		frozenSinceHeight = api.Select(
			isFreeze,
			row.Effect.Fields[4],
			api.Select(isUnfreeze, 0, frozenSinceHeight),
		)
	}

	api.AssertIsEqual(c.End.Cursor, cursor)
	api.AssertIsEqual(c.End.LastHeight, lastHeight)
	api.AssertIsEqual(c.End.AuditRecordCount, auditRecordCount)
	api.AssertIsEqual(c.End.PublicCredits, publicCredits)
	api.AssertIsEqual(c.End.PublicDebits, publicDebits)
	api.AssertIsEqual(c.End.TargetStatus, status)
	api.AssertIsEqual(c.End.RegisteredAtHeight, registeredAtHeight)
	api.AssertIsEqual(c.End.FreezeGeneration, freezeGeneration)
	api.AssertIsEqual(c.End.FrozenSinceHeight, frozenSinceHeight)
	api.AssertIsEqual(c.End.CandidateCount, candidateCount)
	api.AssertIsEqual(c.End.CandidateDigest, candidateDigest)
	api.AssertIsEqual(c.End.CanonicalRecordDigest, canonicalDigest)
	for _, difference := range []frontend.Variable{
		api.Sub(c.End.Cursor, c.TerminalAuditLogLength),
		api.Sub(c.End.CanonicalRecordDigest, c.TerminalAuditLogHead),
		api.Sub(c.End.LastHeight, c.TerminalAuditLogHeight),
		api.Sub(c.End.TargetStatus, 2),
		api.Sub(c.End.RegisteredAtHeight, c.RegisteredAtHeight),
		api.Sub(c.End.FreezeGeneration, c.FreezeGeneration),
		api.Sub(c.End.FrozenSinceHeight, c.FrozenSinceHeight),
	} {
		api.AssertIsEqual(api.Mul(c.TerminalChunk, difference), 0)
	}

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

func commitAuditRecord(
	api frontend.API,
	row SeizureScanRow,
) (frontend.Variable, [9]frontend.Variable, error) {
	api.AssertIsBoolean(row.Enabled)
	api.ToBinary(row.Source.Height, 64)
	api.ToBinary(row.Source.TransactionIDLo, 128)
	api.ToBinary(row.Source.TransactionIDHi, 128)
	api.ToBinary(row.Source.Position1, 32)
	api.ToBinary(row.Source.EffectIndex, 32)

	sourceSelectors := [4]frontend.Variable{}
	sourceSelectorSum := frontend.Variable(0)
	for kind := range sourceSelectors {
		sourceSelectors[kind] = api.IsZero(api.Sub(row.Source.Kind, kind))
		sourceSelectorSum = api.Add(sourceSelectorSum, sourceSelectors[kind])
	}
	api.AssertIsEqual(sourceSelectorSum, 1)
	api.AssertIsEqual(sourceSelectors[0], api.Sub(1, row.Enabled))
	constrainBitsIf(api, row.Source.Position0, 32, api.Add(sourceSelectors[1], sourceSelectors[2]))
	constrainBitsIf(api, row.Source.Position0, 64, sourceSelectors[3])
	api.AssertIsEqual(api.Mul(sourceSelectors[1], row.Source.Position1), 0)
	api.AssertIsEqual(api.Mul(sourceSelectors[1], row.Source.ContextCommitment), 0)
	api.AssertIsEqual(api.Mul(sourceSelectors[3], row.Source.TransactionIDLo), 0)
	api.AssertIsEqual(api.Mul(sourceSelectors[3], row.Source.TransactionIDHi), 0)
	ibcOperationValid := api.Add(
		api.IsZero(api.Sub(row.Source.Position1, 1)),
		api.IsZero(api.Sub(row.Source.Position1, 2)),
	)
	api.AssertIsEqual(api.Mul(sourceSelectors[3], api.Sub(ibcOperationValid, 1)), 0)

	sourceHead, err := primitives.Poseidon377Hash7(
		api,
		auditSourceDomain,
		[7]frontend.Variable{
			row.Source.Kind,
			row.Source.Height,
			row.Source.TransactionIDLo,
			row.Source.TransactionIDHi,
			row.Source.Position0,
			api.Select(sourceSelectors[1], row.Source.EffectIndex, row.Source.Position1),
			api.Select(sourceSelectors[1], 0, row.Source.EffectIndex),
		},
	)
	if err != nil {
		return nil, [9]frontend.Variable{}, err
	}
	sourceCommitment, err := primitives.Poseidon377Hash2(
		api,
		auditSourceDomain,
		[2]frontend.Variable{sourceHead, row.Source.ContextCommitment},
	)
	if err != nil {
		return nil, [9]frontend.Variable{}, err
	}

	effectSelectors := [9]frontend.Variable{}
	effectSelectorSum := frontend.Variable(0)
	for kind := range effectSelectors {
		effectSelectors[kind] = api.IsZero(api.Sub(row.Effect.Kind, kind))
		effectSelectorSum = api.Add(effectSelectorSum, effectSelectors[kind])
	}
	api.AssertIsEqual(effectSelectorSum, 1)
	api.AssertIsEqual(effectSelectors[0], api.Sub(1, row.Enabled))

	usedThrough := [9]int{0, 5, 6, 4, 3, 2, 5, 2, 4}
	for fieldIndex, field := range row.Effect.Fields {
		fieldUsed := frontend.Variable(0)
		for kind := 1; kind < len(effectSelectors); kind++ {
			if fieldIndex < usedThrough[kind] {
				fieldUsed = api.Add(fieldUsed, effectSelectors[kind])
			}
		}
		api.AssertIsEqual(api.Mul(field, api.Sub(1, fieldUsed)), 0)
	}
	constrainBitsIf(api, row.Effect.Fields[2], 128, effectSelectors[AuditEffectWithdrawal])
	constrainBitsIf(api, row.Effect.Fields[1], 128, effectSelectors[AuditEffectPublicDeposit])
	api.AssertIsEqual(
		api.Mul(
			effectSelectors[AuditEffectWithdrawal],
			api.Sub(
				1,
				api.Add(
					api.IsZero(api.Sub(row.Effect.Fields[0], 1)),
					api.IsZero(api.Sub(row.Effect.Fields[0], 2)),
				),
			),
		),
		0,
	)
	api.AssertIsEqual(
		api.Mul(
			effectSelectors[AuditEffectAssetRegistered],
			row.Effect.Fields[1],
			api.Sub(row.Effect.Fields[1], 1),
		),
		0,
	)
	statusValueValid := api.Add(
		api.IsZero(api.Sub(row.Effect.Fields[2], 1)),
		api.IsZero(api.Sub(row.Effect.Fields[2], 2)),
		api.IsZero(api.Sub(row.Effect.Fields[2], 3)),
	)
	api.AssertIsEqual(
		api.Mul(effectSelectors[AuditEffectUserStatusChanged], api.Sub(statusValueValid, 1)),
		0,
	)
	privateCiphertext := api.Add(
		effectSelectors[AuditEffectTransferOutput],
		effectSelectors[AuditEffectWithdrawal],
	)
	api.AssertIsEqual(api.Mul(privateCiphertext, api.Sub(1, sourceSelectors[1])), 0)

	effectHead, err := primitives.Poseidon377Hash7(
		api,
		auditEffectHeadDomain,
		[7]frontend.Variable{
			row.Effect.Kind,
			row.Effect.Fields[0],
			row.Effect.Fields[1],
			row.Effect.Fields[2],
			row.Effect.Fields[3],
			row.Effect.Fields[4],
			row.Effect.Fields[5],
		},
	)
	if err != nil {
		return nil, effectSelectors, err
	}
	effectCommitment, err := primitives.Poseidon377Hash7(
		api,
		auditEffectTailDomain,
		[7]frontend.Variable{
			effectHead,
			row.Effect.Fields[6],
			row.Effect.Fields[7],
			row.Effect.Fields[8],
			row.Effect.Fields[9],
			row.Effect.Fields[10],
			row.Effect.Fields[11],
		},
	)
	if err != nil {
		return nil, effectSelectors, err
	}
	recordCommitment, err := primitives.Poseidon377Hash3(
		api,
		auditRecordDomain,
		[3]frontend.Variable{1, sourceCommitment, effectCommitment},
	)
	return recordCommitment, effectSelectors, err
}

func commitAuditCandidateItem(
	api frontend.API,
	role frontend.Variable,
	txDigest frontend.Variable,
	projection frontend.Variable,
) (frontend.Variable, error) {
	return primitives.Poseidon377Hash3(
		api,
		seizureCandidateItemDomain,
		[3]frontend.Variable{role, txDigest, projection},
	)
}

func foldAuditCandidate(
	api frontend.API,
	domain *big.Int,
	fields []frontend.Variable,
) (frontend.Variable, error) {
	head := frontend.Variable(0)
	for _, field := range fields {
		next, err := primitives.Poseidon377Hash2(
			api,
			domain,
			[2]frontend.Variable{head, field},
		)
		if err != nil {
			return nil, err
		}
		head = next
	}
	return head, nil
}

func constrainBitsIf(api frontend.API, value frontend.Variable, bitCount int, selector frontend.Variable) {
	bits := api.ToBinary(value, decafgnark.FieldBits)
	for index := bitCount; index < len(bits); index++ {
		api.AssertIsEqual(api.Mul(selector, bits[index]), 0)
	}
}

func constrainScanState(api frontend.API, state SeizureScanState) error {
	api.ToBinary(state.Cursor, 96)
	api.ToBinary(state.LastHeight, 64)
	api.ToBinary(state.AuditRecordCount, 64)
	api.ToBinary(state.PublicCredits, 128)
	api.ToBinary(state.PublicDebits, 128)
	api.ToBinary(state.CandidateCount, 64)
	statusAbsent := api.IsZero(state.TargetStatus)
	statusActive := api.IsZero(api.Sub(state.TargetStatus, 1))
	statusFrozen := api.IsZero(api.Sub(state.TargetStatus, 2))
	statusSeized := api.IsZero(api.Sub(state.TargetStatus, 3))
	api.AssertIsEqual(api.Add(statusAbsent, statusActive, statusFrozen, statusSeized), 1)
	api.ToBinary(state.RegisteredAtHeight, 64)
	api.ToBinary(state.FreezeGeneration, 64)
	api.ToBinary(state.FrozenSinceHeight, 64)
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
			state.LastHeight,
			state.AuditRecordCount,
		},
	)
	if err != nil {
		return nil, err
	}
	tail, err := primitives.Poseidon377Hash7(
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
	if err != nil {
		return nil, err
	}
	return primitives.Poseidon377Hash5(
		api,
		seizureScanStateTailDomain,
		[5]frontend.Variable{
			tail,
			state.RegisteredAtHeight,
			state.FreezeGeneration,
			state.FrozenSinceHeight,
			0,
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
	targetIdentity, err := primitives.Poseidon377Hash5(
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
			targetIdentity,
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
	TerminalAuditLogLength            frontend.Variable `gnark:",public"`
	TerminalAuditLogHead              frontend.Variable `gnark:",public"`
	TerminalAuditLogHeight            frontend.Variable `gnark:",public"`
	RegisteredAtHeight                frontend.Variable `gnark:",public"`
	FreezeGeneration                  frontend.Variable `gnark:",public"`
	FrozenSinceHeight                 frontend.Variable `gnark:",public"`
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
	api.ToBinary(c.TerminalAuditLogLength, 64)
	api.ToBinary(c.TerminalAuditLogHeight, 64)
	api.ToBinary(c.RegisteredAtHeight, 64)
	api.ToBinary(c.FreezeGeneration, 64)
	api.ToBinary(c.FrozenSinceHeight, 64)
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

	api.AssertIsEqual(c.Scan.Cursor, c.TerminalAuditLogLength)
	api.AssertIsEqual(c.Scan.CanonicalRecordDigest, c.TerminalAuditLogHead)
	api.AssertIsEqual(c.Scan.LastHeight, c.TerminalAuditLogHeight)
	api.AssertIsEqual(c.Scan.TargetStatus, 2)
	api.AssertIsEqual(c.Scan.RegisteredAtHeight, c.RegisteredAtHeight)
	api.AssertIsEqual(c.Scan.FreezeGeneration, c.FreezeGeneration)
	api.AssertIsEqual(c.Scan.FrozenSinceHeight, c.FrozenSinceHeight)
	api.AssertIsEqual(c.TerminalAuditLogHeight, c.FrozenSinceHeight)
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

	totalCredits := api.Add(c.Scan.PublicCredits, c.Classification.ClassifiedCredits)
	totalDebits := api.Add(c.Scan.PublicDebits, c.Classification.ClassifiedDebits)
	api.ToBinary(totalCredits, 130)
	api.ToBinary(totalDebits, 129)
	api.AssertIsEqual(totalCredits, api.Add(totalDebits, c.Amount))
	return nil
}
