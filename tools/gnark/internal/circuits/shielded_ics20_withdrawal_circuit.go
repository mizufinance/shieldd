package circuits

import (
	"fmt"
	"math/big"

	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"golang.org/x/crypto/blake2b"
)

type ShieldedIcs20WithdrawalRequiredSpendCircuitFields struct {
	Nullifier      frontend.Variable
	RK             Point2D
	Note           ShieldedIcs20WithdrawalNoteCircuitFields
	StateProof     ShieldedIcs20WithdrawalStatePathCircuitFields
	AuthRandomizer frontend.Variable
}

type ShieldedIcs20WithdrawalNoteCircuitFields struct {
	Blinding frontend.Variable
	Amount   frontend.Variable
	ClueKey  frontend.Variable
}

type ShieldedIcs20WithdrawalStatePathCircuitFields struct {
	Position frontend.Variable
	Path     [StateCommitmentDepth][3]frontend.Variable
}

type ShieldedIcs20WithdrawalOptionalSpendCircuitFields struct {
	ShieldedIcs20WithdrawalRequiredSpendCircuitFields
	IsDummy            frontend.Variable
	DummyNullifierSeed frontend.Variable
}

type ShieldedIcs20WithdrawalChangeCircuitFields struct {
	NoteCommitment frontend.Variable
	Note           ShieldedIcs20WithdrawalNoteCircuitFields
}

type ShieldedIcs20WithdrawalSenderCircuitFields struct {
	DivGen         Point2D
	SlotID         frontend.Variable
	SlotDerivation frontend.Variable
	D              frontend.Variable
	Path           [ComplianceQuadTreeDepth][3]frontend.Variable
	Position       frontend.Variable
}

type ShieldedIcs20WithdrawalCircuit struct {
	nIn int

	ClaimedStatementHash frontend.Variable `gnark:",public"`

	Anchor                    frontend.Variable
	BalanceCommitment         Point2D
	AssetAnchor               frontend.Variable
	ComplianceAnchor          frontend.Variable
	TargetTimestamp           frontend.Variable
	OutboundAssetID           frontend.Variable
	OutboundAmount            frontend.Variable
	WithdrawalEffectHashLimbs [4]frontend.Variable
	ActionBalanceBlinding     frontend.Variable
	IsRegulated               frontend.Variable

	Auth   TransferAuthSharedFields
	Asset  AssetTreeFields
	Sender ShieldedIcs20WithdrawalSenderCircuitFields

	RequiredSpend ShieldedIcs20WithdrawalRequiredSpendCircuitFields
	OptionalSpend ShieldedIcs20WithdrawalOptionalSpendCircuitFields
	ChangeOutput  ShieldedIcs20WithdrawalChangeCircuitFields
}

func NewShieldedIcs20WithdrawalCircuit(nIn int) *ShieldedIcs20WithdrawalCircuit {
	return &ShieldedIcs20WithdrawalCircuit{nIn: nIn}
}

func (c *ShieldedIcs20WithdrawalCircuit) Define(api frontend.API) error {
	if c.nIn != 2 {
		return fmt.Errorf("shielded ICS-20 withdrawal circuit requires one required and one optional spend, got n_in=%d", c.nIn)
	}

	shared, err := c.verifySharedContext(api)
	if err != nil {
		return err
	}

	requiredAmount, requiredNullifier, requiredRK, err :=
		c.verifyRequiredSpend(api, &shared, &c.RequiredSpend)
	if err != nil {
		return err
	}
	optionalAmount, optionalNullifier, optionalRK, err :=
		c.verifyOptionalSpend(api, &shared, &c.OptionalSpend)
	if err != nil {
		return err
	}
	inputAmounts := []frontend.Variable{requiredAmount, optionalAmount}
	nullifiersAndRKs := []frontend.Variable{
		requiredNullifier,
		requiredRK,
		optionalNullifier,
		optionalRK,
	}

	changeAmount, changeCommitment, err := c.verifyChangeOutput(api, &shared, &c.ChangeOutput)
	if err != nil {
		return err
	}
	balanceCommitmentPoint, err := computeTransferNetBalanceCommitment(
		api,
		inputAmounts,
		[]frontend.Variable{changeAmount, c.OutboundAmount},
		shared.sharedAssetID,
		c.ActionBalanceBlinding,
	)
	if err != nil {
		return err
	}
	decafgnark.AssertEquivalent(api, balanceCommitmentPoint, shared.claimedBalanceCommitment)
	balanceCommitmentFq, err := decafgnark.CompressToField(api, balanceCommitmentPoint)
	if err != nil {
		return err
	}

	fields := make([]frontend.Variable, 0, ShieldedIcs20WithdrawalStatementFieldCount(c.nIn))
	fields = append(fields, c.Anchor, changeCommitment, balanceCommitmentFq)
	fields = append(fields, nullifiersAndRKs...)
	fields = append(
		fields,
		c.AssetAnchor,
		c.ComplianceAnchor,
		c.TargetTimestamp,
		c.OutboundAssetID,
		c.OutboundAmount,
	)
	fields = append(fields, c.WithdrawalEffectHashLimbs[:]...)

	statementHash, err := ShieldedIcs20WithdrawalStatementHashForShape(api, c.nIn, fields)
	if err != nil {
		return err
	}
	api.AssertIsEqual(statementHash, c.ClaimedStatementHash)
	return nil
}

type shieldedIcs20WithdrawalSharedContext struct {
	claimedBalanceCommitment gnarkte.Point
	ak                       gnarkte.Point
	indexedLeaf              IndexedLeafInputs
	senderDivGen             gnarkte.Point
	senderDivGenFq           frontend.Variable
	senderTransmission       gnarkte.Point
	senderTransmissionFq     frontend.Variable
	sharedAssetID            frontend.Variable
}

func (c *ShieldedIcs20WithdrawalCircuit) verifySharedContext(
	api frontend.API,
) (shieldedIcs20WithdrawalSharedContext, error) {
	shared := shieldedIcs20WithdrawalSharedContext{
		claimedBalanceCommitment: gnarkte.Point{X: c.BalanceCommitment.X, Y: c.BalanceCommitment.Y},
		ak:                       gnarkte.Point{X: c.Auth.AK.X, Y: c.Auth.AK.Y},
		indexedLeaf: IndexedLeafInputs{
			Value:          c.Asset.Leaf.Value,
			NextIndex:      c.Asset.Leaf.NextIndex,
			NextValue:      c.Asset.Leaf.NextValue,
			DKPub:          gnarkte.Point{X: c.Asset.Leaf.DKPub.X, Y: c.Asset.Leaf.DKPub.Y},
			Threshold:      c.Asset.Leaf.Threshold,
			SlotCount:      c.Asset.Leaf.SlotCount,
			ChannelsHash:   c.Asset.Leaf.ChannelsHash,
			RingPK:         gnarkte.Point{X: c.Asset.Leaf.RingPK.X, Y: c.Asset.Leaf.RingPK.Y},
			RingIDHash:     c.Asset.Leaf.RingIDHash,
			PolicyIDHash:   c.Asset.Leaf.PolicyIDHash,
			PermissionHash: c.Asset.Leaf.PermissionHash,
			ResourceHash:   c.Asset.Leaf.ResourceHash,
		},
		senderDivGen:  gnarkte.Point{X: c.Sender.DivGen.X, Y: c.Sender.DivGen.Y},
		sharedAssetID: c.OutboundAssetID,
	}

	var err error
	shared.senderDivGenFq, err = decafgnark.CompressToField(api, shared.senderDivGen)
	if err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}
	shared.senderTransmission, err = DiversifiedTransmissionKey(
		api,
		c.Auth.NK,
		shared.ak,
		shared.senderDivGen,
		c.Auth.IVKReduced,
		c.Auth.IVKQuotientA,
	)
	if err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}
	shared.senderTransmissionFq, err = decafgnark.CompressToField(api, shared.senderTransmission)
	if err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}

	if err := VerifyAssetRegistryIMT(
		api,
		shared.sharedAssetID,
		c.IsRegulated,
		shared.indexedLeaf,
		c.Asset.Path,
		c.Asset.Position,
		c.AssetAnchor,
	); err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}

	senderLeafCommitment, err := ComplianceLeafCommitmentFromCompressed(
		api,
		shared.senderDivGenFq,
		shared.senderTransmissionFq,
		shared.sharedAssetID,
		c.Sender.SlotID,
		c.Sender.SlotDerivation,
		c.Sender.D,
	)
	if err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}
	senderComplianceRoot, err := VerifyQuadPath(api, senderLeafCommitment, c.Sender.Path, c.Sender.Position)
	if err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}
	AssertEqualIf(api, senderComplianceRoot, c.ComplianceAnchor, c.IsRegulated)

	return shared, nil
}

func shieldedIcs20WithdrawalSyntheticDummyNullifierDomain() *big.Int {
	sum := blake2b.Sum512([]byte("shieldd.shielded_ics20_withdrawal.synthetic_dummy.nullifier"))
	return LittleEndianBytesToBigInt(sum[:])
}

func shieldedIcs20WithdrawalSyntheticDummyNullifier(
	api frontend.API,
	seed frontend.Variable,
	authRandomizer frontend.Variable,
) (frontend.Variable, error) {
	return Poseidon377Hash3(
		api,
		shieldedIcs20WithdrawalSyntheticDummyNullifierDomain(),
		[3]frontend.Variable{seed, authRandomizer, 1},
	)
}

type shieldedIcs20WithdrawalVerifiedSpend struct {
	realNullifier frontend.Variable
	anchor        frontend.Variable
	computedRK    gnarkte.Point
	rkClaimed     gnarkte.Point
	rkFq          frontend.Variable
}

func (c *ShieldedIcs20WithdrawalCircuit) verifySpendFacts(
	api frontend.API,
	shared *shieldedIcs20WithdrawalSharedContext,
	spend *ShieldedIcs20WithdrawalRequiredSpendCircuitFields,
) (shieldedIcs20WithdrawalVerifiedSpend, error) {
	rkClaimed := gnarkte.Point{X: spend.RK.X, Y: spend.RK.Y}

	spentCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		spend.Note.Blinding,
		spend.Note.Amount,
		shared.sharedAssetID,
		shared.senderDivGenFq,
		shared.senderTransmissionFq,
		spend.Note.ClueKey,
	)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}

	realNullifier, err := Nullifier(api, c.Auth.NK, spentCommitment, spend.StateProof.Position)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}
	statePath := make([][3]frontend.Variable, len(spend.StateProof.Path))
	copy(statePath, spend.StateProof.Path[:])
	anchor, err := VerifyStateCommitmentPath(api, spentCommitment, spend.StateProof.Position, statePath)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}

	computedRK, err := RandomizedVerificationKey(api, shared.ak, spend.AuthRandomizer)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}
	rkFq, err := decafgnark.CompressToField(api, rkClaimed)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}
	return shieldedIcs20WithdrawalVerifiedSpend{
		realNullifier: realNullifier,
		anchor:        anchor,
		computedRK:    computedRK,
		rkClaimed:     rkClaimed,
		rkFq:          rkFq,
	}, nil
}

func (c *ShieldedIcs20WithdrawalCircuit) verifyRequiredSpend(
	api frontend.API,
	shared *shieldedIcs20WithdrawalSharedContext,
	spend *ShieldedIcs20WithdrawalRequiredSpendCircuitFields,
) (frontend.Variable, frontend.Variable, frontend.Variable, error) {
	verified, err := c.verifySpendFacts(api, shared, spend)
	if err != nil {
		return nil, nil, nil, err
	}
	api.AssertIsEqual(spend.Nullifier, verified.realNullifier)
	api.AssertIsEqual(verified.anchor, c.Anchor)
	decafgnark.AssertEquivalent(api, verified.computedRK, verified.rkClaimed)
	return spend.Note.Amount, spend.Nullifier, verified.rkFq, nil
}

func (c *ShieldedIcs20WithdrawalCircuit) verifyOptionalSpend(
	api frontend.API,
	shared *shieldedIcs20WithdrawalSharedContext,
	spend *ShieldedIcs20WithdrawalOptionalSpendCircuitFields,
) (frontend.Variable, frontend.Variable, frontend.Variable, error) {
	verified, err := c.verifySpendFacts(
		api,
		shared,
		&spend.ShieldedIcs20WithdrawalRequiredSpendCircuitFields,
	)
	if err != nil {
		return nil, nil, nil, err
	}
	api.AssertIsBoolean(spend.IsDummy)
	isNotDummy := api.Sub(1, spend.IsDummy)
	syntheticNullifier, err := shieldedIcs20WithdrawalSyntheticDummyNullifier(
		api,
		spend.DummyNullifierSeed,
		spend.AuthRandomizer,
	)
	if err != nil {
		return nil, nil, nil, err
	}
	api.AssertIsEqual(
		spend.Nullifier,
		api.Add(
			api.Mul(isNotDummy, verified.realNullifier),
			api.Mul(spend.IsDummy, syntheticNullifier),
		),
	)
	AssertEqualIf(api, verified.anchor, c.Anchor, isNotDummy)

	// Dummy RKs are authenticated by the transaction-layer signature and do not
	// authorize a state spend, so only real optional inputs require this relation.
	decafgnark.AssertEquivalentIf(api, verified.computedRK, verified.rkClaimed, isNotDummy)
	AssertEqualIf(api, spend.Note.Amount, 0, spend.IsDummy)

	return spend.Note.Amount, spend.Nullifier, verified.rkFq, nil
}

func (c *ShieldedIcs20WithdrawalCircuit) verifyChangeOutput(
	api frontend.API,
	shared *shieldedIcs20WithdrawalSharedContext,
	output *ShieldedIcs20WithdrawalChangeCircuitFields,
) (frontend.Variable, frontend.Variable, error) {
	createdCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		output.Note.Blinding,
		output.Note.Amount,
		shared.sharedAssetID,
		shared.senderDivGenFq,
		shared.senderTransmissionFq,
		output.Note.ClueKey,
	)
	if err != nil {
		return nil, nil, err
	}
	api.AssertIsEqual(createdCommitment, output.NoteCommitment)

	return output.Note.Amount, output.NoteCommitment, nil
}
