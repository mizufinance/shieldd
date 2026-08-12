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

// ShieldedIcs20WithdrawalAssetLeafCircuitFields carries only the committed
// IMT leaf view needed by the withdrawal relation. Policy openings are checked
// against native state at execution time.
type ShieldedIcs20WithdrawalAssetLeafCircuitFields struct {
	Value      frontend.Variable
	NextIndex  frontend.Variable
	NextValue  frontend.Variable
	ParamsHash frontend.Variable
	RingHash   frontend.Variable
}

type ShieldedIcs20WithdrawalAssetCircuitFields struct {
	Leaf     ShieldedIcs20WithdrawalAssetLeafCircuitFields
	Path     [ComplianceQuadTreeDepth][3]frontend.Variable
	Position frontend.Variable
}

type ShieldedIcs20WithdrawalCircuit struct {
	nIn         int
	wiringTrace *WiringTranscript

	ClaimedStatementHash  frontend.Variable `gnark:",public"`
	RoutingTag            frontend.Variable
	RoutingParameterSetID frontend.Variable

	Anchor                    frontend.Variable
	AssetAnchor               frontend.Variable
	ComplianceAnchor          frontend.Variable
	TargetTimestamp           frontend.Variable
	OutboundAssetID           frontend.Variable
	OutboundAmount            frontend.Variable
	WithdrawalEffectHashLimbs [4]frontend.Variable
	ActionBalanceBlinding     frontend.Variable
	IsRegulated               frontend.Variable
	RegulatedPrecision        frontend.Variable
	UnregulatedPrecision      frontend.Variable
	RoutingAsOfHeight         frontend.Variable
	RoutingNonce              frontend.Variable

	Auth   TransferAuthSharedFields
	Asset  ShieldedIcs20WithdrawalAssetCircuitFields
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
	c.bindWiringTrace(api)
	c.bindShieldedIcs20WithdrawalWitnessSemantics()
	c.traceWiring("assert.boolean", "var=is_regulated")
	api.AssertIsBoolean(c.IsRegulated)

	shared, err := c.verifySharedContext(api)
	if err != nil {
		return err
	}
	if err := verifySingleRoutingTag(
		api,
		c.traceWiring,
		c.RoutingTag,
		c.RoutingParameterSetID,
		c.IsRegulated,
		c.RegulatedPrecision,
		c.UnregulatedPrecision,
		c.RoutingAsOfHeight,
		c.RoutingNonce,
		shared.senderTransmissionFq,
	); err != nil {
		return err
	}

	c.traceWiring("spend.begin", "spend0")
	requiredAmount, requiredNullifier, requiredRK, err :=
		c.verifyRequiredSpend(api, &shared, &c.RequiredSpend, "spend0")
	if err != nil {
		return err
	}
	c.traceWiring("spend.collect", "spend0", "amount->input_amounts", "nullifier->statement.nullifiers_and_rks", "rk_compressed->statement.nullifiers_and_rks")
	c.traceWiring("spend.begin", "spend1")
	optionalAmount, optionalNullifier, optionalRK, err :=
		c.verifyOptionalSpend(api, &shared, &c.OptionalSpend, "spend1")
	if err != nil {
		return err
	}
	c.traceWiring("spend.collect", "spend1", "amount->input_amounts", "nullifier->statement.nullifiers_and_rks", "rk_compressed->statement.nullifiers_and_rks")
	inputAmounts := []frontend.Variable{requiredAmount, optionalAmount}
	nullifiersAndRKs := []frontend.Variable{
		requiredNullifier,
		requiredRK,
		optionalNullifier,
		optionalRK,
	}

	c.traceWiring("output.begin", "output0")
	changeAmount, changeCommitment, err := c.verifyChangeOutput(api, &shared, &c.ChangeOutput)
	if err != nil {
		return err
	}
	c.traceWiring("output.collect", "output0", "amount->output_amounts", "commitment->statement.change_commitment")
	c.traceWiring(
		"decaf.conservation_net_balance_commitment2",
		"inputs=input_amounts",
		"outputs=change_amount,outbound_amount",
		"blinding=action.balance_blinding",
		"out=balance_commitment.computed",
	)
	balanceCommitmentPoint, err := computeConservationNetBalanceCommitment(
		api,
		inputAmounts,
		[]frontend.Variable{changeAmount, c.OutboundAmount},
		c.ActionBalanceBlinding,
	)
	if err != nil {
		return err
	}
	c.bindSemantic(
		"balance_commitment.computed",
		balanceCommitmentPoint.X,
		balanceCommitmentPoint.Y,
	)
	c.traceWiring(
		"decaf.compress_to_field",
		"in=balance_commitment.computed",
		"out=balance_commitment.fq",
	)
	balanceCommitmentFq, err := decafgnark.CompressToField(api, balanceCommitmentPoint)
	if err != nil {
		return err
	}
	c.bindSemantic("balance_commitment.fq", balanceCommitmentFq)

	c.traceWiring(
		"statement.assemble",
		"shape=shielded_ics20_withdrawal2x1",
		"fields=shielded_ics20_withdrawal_statement_fields",
	)
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
	fields = append(fields, c.RoutingTag, c.RoutingParameterSetID)

	for index, field := range fields {
		c.bindSemantic(fmt.Sprintf("statement.field.%03d", index), field)
	}
	c.bindSemantic("statement.fields", fields...)
	statementHash, err := c.hashShieldedIcs20WithdrawalStatement(api, fields)
	if err != nil {
		return err
	}
	c.bindSemantic("statement.hash", statementHash)
	c.traceWiring("assert.eq", "lhs=statement.hash", "rhs=claimed.statement_hash")
	api.AssertIsEqual(statementHash, c.ClaimedStatementHash)
	return nil
}

func (c *ShieldedIcs20WithdrawalCircuit) bindShieldedIcs20WithdrawalWitnessSemantics() {
	c.bindSemantic("claimed.statement_hash", c.ClaimedStatementHash)
	c.bindSemantic("anchor", c.Anchor)
	c.bindSemantic("asset_anchor", c.AssetAnchor)
	c.bindSemantic("compliance_anchor", c.ComplianceAnchor)
	c.bindSemantic("target_timestamp", c.TargetTimestamp)
	c.bindSemantic("outbound.asset_id", c.OutboundAssetID)
	c.bindSemantic("outbound.amount", c.OutboundAmount)
	c.bindSemantic("withdrawal_effect_hash_limbs", c.WithdrawalEffectHashLimbs[:]...)
	c.bindSemantic("action.balance_blinding", c.ActionBalanceBlinding)
	c.bindSemantic("is_regulated", c.IsRegulated)
	c.bindSemantic("routing.tag", c.RoutingTag)
	c.bindSemantic("routing.parameter_set_id", c.RoutingParameterSetID)
	c.bindSemantic("routing.regulated_precision", c.RegulatedPrecision)
	c.bindSemantic("routing.unregulated_precision", c.UnregulatedPrecision)
	c.bindSemantic("routing.as_of_height", c.RoutingAsOfHeight)
	c.bindSemantic("routing.nonce", c.RoutingNonce)

	c.bindSemantic("auth.ak", c.Auth.AK.X, c.Auth.AK.Y)
	c.bindSemantic("auth.nk", c.Auth.NK)
	c.bindSemantic("auth.ivk_reduced", c.Auth.IVKReduced)
	c.bindSemantic("auth.ivk_quotient_a", c.Auth.IVKQuotientA)

	c.bindSemantic("asset.leaf.value", c.Asset.Leaf.Value)
	c.bindSemantic("asset.leaf.next_index", c.Asset.Leaf.NextIndex)
	c.bindSemantic("asset.leaf.next_value", c.Asset.Leaf.NextValue)
	c.bindSemantic("asset.leaf.params_hash", c.Asset.Leaf.ParamsHash)
	c.bindSemantic("asset.leaf.ring_hash", c.Asset.Leaf.RingHash)
	c.bindSemantic("asset.path", quadPathVariables(c.Asset.Path)...)
	c.bindSemantic("asset.position", c.Asset.Position)

	c.bindSemantic("sender.div_gen", c.Sender.DivGen.X, c.Sender.DivGen.Y)
	c.bindSemantic("sender.slot_id", c.Sender.SlotID)
	c.bindSemantic("sender.slot_derivation", c.Sender.SlotDerivation)
	c.bindSemantic("sender.d", c.Sender.D)
	c.bindSemantic("sender.path", quadPathVariables(c.Sender.Path)...)
	c.bindSemantic("sender.position", c.Sender.Position)

	c.bindShieldedIcs20WithdrawalSpendWitness(
		"spend0",
		&c.RequiredSpend,
	)
	c.bindShieldedIcs20WithdrawalSpendWitness(
		"spend1",
		&c.OptionalSpend.ShieldedIcs20WithdrawalRequiredSpendCircuitFields,
	)
	c.bindSemantic("spend1.is_dummy", c.OptionalSpend.IsDummy)
	c.bindSemantic("spend1.dummy_nullifier_seed", c.OptionalSpend.DummyNullifierSeed)

	c.bindSemantic("output0.note_commitment.claimed", c.ChangeOutput.NoteCommitment)
	c.bindSemantic("output0.note.blinding", c.ChangeOutput.Note.Blinding)
	c.bindSemantic("output0.note.amount", c.ChangeOutput.Note.Amount)
}

func (c *ShieldedIcs20WithdrawalCircuit) bindShieldedIcs20WithdrawalSpendWitness(
	name string,
	spend *ShieldedIcs20WithdrawalRequiredSpendCircuitFields,
) {
	c.bindSemantic(name+".nullifier.claimed", spend.Nullifier)
	c.bindSemantic(name+".rk.claimed", spend.RK.X, spend.RK.Y)
	c.bindSemantic(name+".note.blinding", spend.Note.Blinding)
	c.bindSemantic(name+".note.amount", spend.Note.Amount)
	c.bindSemantic(name+".state_proof.position", spend.StateProof.Position)
	c.bindSemantic(
		name+".state_proof.path",
		statePathVariables(spend.StateProof.Path)...,
	)
	c.bindSemantic(name+".auth_randomizer", spend.AuthRandomizer)
}

func shieldedIcs20WithdrawalStatementHashConstant(suffix string) *big.Int {
	sum := blake2b.Sum512(
		[]byte(
			"shieldd.shielded_pool.shielded_ics20_withdrawal.public_input_hash." +
				suffix,
		),
	)
	return LittleEndianBytesToBigInt(sum[:])
}

func (c *ShieldedIcs20WithdrawalCircuit) hashShieldedIcs20WithdrawalStatement(
	api frontend.API,
	fields []frontend.Variable,
) (frontend.Variable, error) {
	if len(fields) != ShieldedIcs20WithdrawalStatementFieldCount(c.nIn) {
		return nil, fmt.Errorf(
			"invalid shielded ICS-20 withdrawal statement field count: got %d",
			len(fields),
		)
	}
	domain := shieldedIcs20WithdrawalStatementHashConstant("v3")
	pad1 := shieldedIcs20WithdrawalStatementHashConstant("pad1")

	c.traceWiring(
		"statement.hash",
		"block=0",
		"inputs=statement.field.000..006",
		"out=statement.hash.block0",
	)
	block0, err := Poseidon377Hash7(
		api,
		domain,
		[7]frontend.Variable{
			fields[0], fields[1], fields[2], fields[3],
			fields[4], fields[5], fields[6],
		},
	)
	if err != nil {
		return nil, err
	}
	c.bindSemantic("statement.hash.block0", block0)

	c.traceWiring(
		"statement.hash",
		"block=1",
		"inputs=statement.hash.block0,statement.field.007..012",
		"out=statement.hash.block1",
	)
	block1, err := Poseidon377Hash7(
		api,
		domain,
		[7]frontend.Variable{
			block0,
			fields[7], fields[8], fields[9],
			fields[10], fields[11], fields[12],
		},
	)
	if err != nil {
		return nil, err
	}
	c.bindSemantic("statement.hash.block1", block1)

	c.traceWiring(
		"statement.hash",
		"block=2",
		"inputs=statement.hash.block1,statement.field.013..017,pad1",
		"out=statement.hash.block2",
	)
	block2, err := Poseidon377Hash7(
		api,
		domain,
		[7]frontend.Variable{
			block1,
			fields[13], fields[14], fields[15],
			fields[16], fields[17], pad1,
		},
	)
	if err != nil {
		return nil, err
	}
	c.bindSemantic("statement.hash.block2", block2)
	return block2, nil
}

type shieldedIcs20WithdrawalSharedContext struct {
	ak                   gnarkte.Point
	assetLeaf            ShieldedIcs20WithdrawalAssetLeafCircuitFields
	senderDivGen         gnarkte.Point
	senderDivGenFq       frontend.Variable
	senderTransmission   gnarkte.Point
	senderTransmissionFq frontend.Variable
	sharedAssetID        frontend.Variable
}

func (c *ShieldedIcs20WithdrawalCircuit) verifySharedContext(
	api frontend.API,
) (shieldedIcs20WithdrawalSharedContext, error) {
	c.traceWiring(
		"shared.bind",
		"shared.ak=auth.ak",
		"shared.asset_id=outbound.asset_id",
		"sender.div_gen=sender.div_gen",
	)
	shared := shieldedIcs20WithdrawalSharedContext{
		ak: gnarkte.Point{X: c.Auth.AK.X, Y: c.Auth.AK.Y},
		assetLeaf: ShieldedIcs20WithdrawalAssetLeafCircuitFields{
			Value:      c.Asset.Leaf.Value,
			NextIndex:  c.Asset.Leaf.NextIndex,
			NextValue:  c.Asset.Leaf.NextValue,
			ParamsHash: c.Asset.Leaf.ParamsHash,
			RingHash:   c.Asset.Leaf.RingHash,
		},
		senderDivGen:  gnarkte.Point{X: c.Sender.DivGen.X, Y: c.Sender.DivGen.Y},
		sharedAssetID: c.OutboundAssetID,
	}
	c.bindSemantic("shared.asset_id", shared.sharedAssetID)

	c.traceWiring(
		"assert.decaf_non_identity",
		"point=auth.ak",
		"coordinate=x",
	)
	AssertDecafNonIdentity(api, shared.ak)
	c.traceWiring(
		"assert.decaf_non_identity",
		"point=sender.div_gen",
		"coordinate=x",
	)
	AssertDecafNonIdentity(api, shared.senderDivGen)

	var err error
	c.traceWiring(
		"decaf.compress_to_field",
		"in=sender.div_gen",
		"out=sender.div_gen_fq",
	)
	shared.senderDivGenFq, err = decafgnark.CompressToField(api, shared.senderDivGen)
	if err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}
	c.bindSemantic("sender.div_gen_fq", shared.senderDivGenFq)
	c.traceWiring("assert.ne", "lhs=auth.ivk_reduced", "rhs=0")
	AssertIncomingViewingKeyNonzero(api, c.Auth.IVKReduced)
	c.traceWiring(
		"decaf.diversified_transmission_key",
		"nk=auth.nk",
		"ak=shared.ak",
		"div_gen=sender.div_gen",
		"ivk_reduced=auth.ivk_reduced",
		"ivk_quotient_a=auth.ivk_quotient_a",
		"out=sender.transmission.computed",
	)
	shared.senderTransmission, err = diversifiedTransmissionKeyAfterIvkNonzero(
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
	c.bindSemantic(
		"sender.transmission.computed",
		shared.senderTransmission.X,
		shared.senderTransmission.Y,
	)
	c.traceWiring(
		"decaf.compress_to_field",
		"in=sender.transmission.computed",
		"out=sender.transmission_fq",
	)
	shared.senderTransmissionFq, err = decafgnark.CompressToField(api, shared.senderTransmission)
	if err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}
	c.bindSemantic("sender.transmission_fq", shared.senderTransmissionFq)
	c.traceWiring(
		"assert.decaf_non_identity",
		"point=sender.transmission.computed",
		"coordinate=x",
	)
	AssertDecafNonIdentity(api, shared.senderTransmission)

	if err := c.verifyShieldedIcs20WithdrawalAssetRegistry(api, &shared); err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}

	c.traceWiring(
		"gadget.compliance_leaf",
		"div_gen_fq=sender.div_gen_fq",
		"transmission_fq=sender.transmission_fq",
		"asset_id=shared.asset_id",
		"slot_id=sender.slot_id",
		"slot_derivation=sender.slot_derivation",
		"d=sender.d",
		"out=sender.leaf_commitment",
	)
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
	c.bindSemantic("sender.leaf_commitment", senderLeafCommitment)
	c.traceWiring(
		"gadget.compliance_path",
		"leaf=sender.leaf_commitment",
		"path=sender.path",
		"position=sender.position",
		"out=sender.compliance_root",
	)
	senderComplianceRoot, err := VerifyQuadPath(api, senderLeafCommitment, c.Sender.Path, c.Sender.Position)
	if err != nil {
		return shieldedIcs20WithdrawalSharedContext{}, err
	}
	c.bindSemantic("sender.compliance_root", senderComplianceRoot)
	c.traceWiring(
		"assert.eq_if",
		"lhs=sender.compliance_root",
		"rhs=compliance_anchor",
		"cond=is_regulated",
	)
	AssertEqualIf(api, senderComplianceRoot, c.ComplianceAnchor, c.IsRegulated)

	return shared, nil
}

func (c *ShieldedIcs20WithdrawalCircuit) verifyShieldedIcs20WithdrawalAssetRegistry(
	api frontend.API,
	shared *shieldedIcs20WithdrawalSharedContext,
) error {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return err
	}

	c.traceWiring(
		"gadget.asset_registry_leaf_hash",
		"value=asset.leaf.value",
		"next_index=asset.leaf.next_index",
		"next_value=asset.leaf.next_value",
		"params_hash=asset.leaf.params_hash",
		"ring_hash=asset.leaf.ring_hash",
		"out=asset.leaf.commitment",
	)
	assetLeafCommitment, err := Poseidon377Hash5(
		api,
		MustBigInt(vectors.Poseidon377.IMTLeafDomain),
		[5]frontend.Variable{
			shared.assetLeaf.Value,
			shared.assetLeaf.NextIndex,
			shared.assetLeaf.NextValue,
			shared.assetLeaf.ParamsHash,
			shared.assetLeaf.RingHash,
		},
	)
	if err != nil {
		return err
	}
	c.bindSemantic("asset.leaf.commitment", assetLeafCommitment)

	c.traceWiring(
		"gadget.asset_registry_path",
		"leaf=asset.leaf.commitment",
		"path=asset.path",
		"position=asset.position",
		"out=asset.root.computed",
	)
	assetRoot, err := VerifyQuadPath(
		api,
		assetLeafCommitment,
		c.Asset.Path,
		c.Asset.Position,
	)
	if err != nil {
		return err
	}
	c.bindSemantic("asset.root.computed", assetRoot)
	c.traceWiring("assert.eq", "lhs=asset.root.computed", "rhs=asset_anchor")
	api.AssertIsEqual(assetRoot, c.AssetAnchor)

	// The low leaf at value zero is the reserved IMT sentinel, never an asset
	// policy. Rejecting zero here prevents regulated equality from treating a
	// custom sentinel proof as policy authorization.
	c.traceWiring("assert.ne", "lhs=shared.asset_id", "rhs=0")
	api.AssertIsDifferent(shared.sharedAssetID, 0)

	c.traceWiring(
		"gadget.asset_registry_gap",
		"asset_id=shared.asset_id",
		"is_regulated=is_regulated",
		"value=asset.leaf.value",
		"next_value=asset.leaf.next_value",
		"out=asset.gap_valid",
	)
	validProof := AssetRegistryGap(
		api,
		shared.sharedAssetID,
		c.IsRegulated,
		shared.assetLeaf.Value,
		shared.assetLeaf.NextValue,
	)
	c.bindSemantic("asset.gap_valid", validProof)
	c.traceWiring("assert.eq", "lhs=asset.gap_valid", "rhs=1")
	api.AssertIsEqual(validProof, 1)
	return nil
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
	name string,
) (shieldedIcs20WithdrawalVerifiedSpend, error) {
	rkClaimed := gnarkte.Point{X: spend.RK.X, Y: spend.RK.Y}

	c.bindSemantic(
		name+".note_commitment.inputs",
		spend.Note.Blinding,
		spend.Note.Amount,
		shared.sharedAssetID,
		shared.senderDivGenFq,
		shared.senderTransmissionFq,
	)
	c.traceWiring(
		"gadget.note_commitment",
		"blinding="+name+".note.blinding",
		"amount="+name+".note.amount",
		"asset_id=shared.asset_id",
		"div_gen_fq=sender.div_gen_fq",
		"transmission_key_s=sender.transmission_fq",
		"out="+name+".note.commitment.computed",
	)
	spentCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		spend.Note.Blinding,
		spend.Note.Amount,
		shared.sharedAssetID,
		shared.senderDivGenFq,
		shared.senderTransmissionFq,
	)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}
	c.bindSemantic(name+".note.commitment.computed", spentCommitment)

	c.traceWiring(
		"gadget.nullifier",
		"nk=auth.nk",
		"commitment="+name+".note.commitment.computed",
		"position="+name+".state_proof.position",
		"out="+name+".nullifier.real",
	)
	realNullifier, err := Nullifier(api, c.Auth.NK, spentCommitment, spend.StateProof.Position)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}
	c.bindSemantic(name+".nullifier.real", realNullifier)
	statePath := make([][3]frontend.Variable, len(spend.StateProof.Path))
	copy(statePath, spend.StateProof.Path[:])
	c.traceWiring(
		"gadget.state_commitment_path",
		"commitment="+name+".note.commitment.computed",
		"position="+name+".state_proof.position",
		"path="+name+".state_proof.path",
		"out="+name+".anchor.computed",
	)
	anchor, err := VerifyStateCommitmentPath(api, spentCommitment, spend.StateProof.Position, statePath)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}
	c.bindSemantic(name+".anchor.computed", anchor)

	c.traceWiring(
		"decaf.randomized_verification_key",
		"ak=shared.ak",
		"randomizer="+name+".auth_randomizer",
		"out="+name+".rk.computed",
	)
	computedRK, err := RandomizedVerificationKey(api, shared.ak, spend.AuthRandomizer)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}
	c.bindSemantic(name+".rk.computed", computedRK.X, computedRK.Y)
	c.traceWiring(
		"decaf.compress_to_field",
		"in="+name+".rk.claimed",
		"out="+name+".rk.compressed",
	)
	rkFq, err := decafgnark.CompressToField(api, rkClaimed)
	if err != nil {
		return shieldedIcs20WithdrawalVerifiedSpend{}, err
	}
	c.bindSemantic(name+".rk.compressed", rkFq)
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
	name string,
) (frontend.Variable, frontend.Variable, frontend.Variable, error) {
	verified, err := c.verifySpendFacts(api, shared, spend, name)
	if err != nil {
		return nil, nil, nil, err
	}
	c.bindSemantic(name+".nullifier.selected", verified.realNullifier)
	c.traceWiring("assert.eq", "lhs="+name+".nullifier.claimed", "rhs="+name+".nullifier.real")
	api.AssertIsEqual(spend.Nullifier, verified.realNullifier)
	c.traceWiring("assert.eq", "lhs="+name+".anchor.computed", "rhs=anchor")
	api.AssertIsEqual(verified.anchor, c.Anchor)
	c.traceWiring(
		"decaf.assert_equivalent",
		"lhs="+name+".rk.computed",
		"rhs="+name+".rk.claimed",
	)
	decafgnark.AssertEquivalent(api, verified.computedRK, verified.rkClaimed)
	return spend.Note.Amount, spend.Nullifier, verified.rkFq, nil
}

func (c *ShieldedIcs20WithdrawalCircuit) verifyOptionalSpend(
	api frontend.API,
	shared *shieldedIcs20WithdrawalSharedContext,
	spend *ShieldedIcs20WithdrawalOptionalSpendCircuitFields,
	name string,
) (frontend.Variable, frontend.Variable, frontend.Variable, error) {
	verified, err := c.verifySpendFacts(
		api,
		shared,
		&spend.ShieldedIcs20WithdrawalRequiredSpendCircuitFields,
		name,
	)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("assert.boolean", "var="+name+".is_dummy")
	api.AssertIsBoolean(spend.IsDummy)
	isNotDummy := api.Sub(1, spend.IsDummy)
	c.bindSemantic(name+".is_not_dummy", isNotDummy)
	c.traceWiring(
		"gadget.synthetic_dummy_nullifier",
		"seed="+name+".dummy_nullifier_seed",
		"randomizer="+name+".auth_randomizer",
		"slot="+name,
		"out="+name+".nullifier.synthetic",
	)
	syntheticNullifier, err := shieldedIcs20WithdrawalSyntheticDummyNullifier(
		api,
		spend.DummyNullifierSeed,
		spend.AuthRandomizer,
	)
	if err != nil {
		return nil, nil, nil, err
	}
	c.bindSemantic(name+".nullifier.synthetic", syntheticNullifier)
	c.traceWiring(
		"dummy.mux",
		"is_dummy="+name+".is_dummy",
		"real="+name+".nullifier.real",
		"synthetic="+name+".nullifier.synthetic",
		"out="+name+".nullifier.selected",
	)
	selectedNullifier := api.Add(
		api.Mul(isNotDummy, verified.realNullifier),
		api.Mul(spend.IsDummy, syntheticNullifier),
	)
	c.bindSemantic(name+".nullifier.selected", selectedNullifier)
	c.traceWiring(
		"assert.eq",
		"lhs="+name+".nullifier.claimed",
		"rhs="+name+".nullifier.selected",
	)
	api.AssertIsEqual(spend.Nullifier, selectedNullifier)
	c.traceWiring(
		"assert.eq_if",
		"lhs="+name+".anchor.computed",
		"rhs=anchor",
		"cond="+name+".is_not_dummy",
	)
	AssertEqualIf(api, verified.anchor, c.Anchor, isNotDummy)

	// Consensus verifies a transaction-effect-hash signature for every
	// serialized RK, including the synthetic dummy slot. The circuit only
	// relates a real optional slot's RK to the shared AK and randomizer because a
	// dummy slot authorizes no state spend.
	c.traceWiring(
		"decaf.assert_equivalent_if",
		"lhs="+name+".rk.computed",
		"rhs="+name+".rk.claimed",
		"cond="+name+".is_not_dummy",
	)
	decafgnark.AssertEquivalentIf(api, verified.computedRK, verified.rkClaimed, isNotDummy)
	c.traceWiring(
		"assert.eq_if",
		"lhs="+name+".note.amount",
		"rhs=0",
		"cond="+name+".is_dummy",
	)
	AssertEqualIf(api, spend.Note.Amount, 0, spend.IsDummy)

	return spend.Note.Amount, spend.Nullifier, verified.rkFq, nil
}

func (c *ShieldedIcs20WithdrawalCircuit) verifyChangeOutput(
	api frontend.API,
	shared *shieldedIcs20WithdrawalSharedContext,
	output *ShieldedIcs20WithdrawalChangeCircuitFields,
) (frontend.Variable, frontend.Variable, error) {
	c.bindSemantic(
		"output0.note_commitment.inputs",
		output.Note.Blinding,
		output.Note.Amount,
		shared.sharedAssetID,
		shared.senderDivGenFq,
		shared.senderTransmissionFq,
	)
	c.traceWiring(
		"gadget.note_commitment",
		"blinding=output0.note.blinding",
		"amount=output0.note.amount",
		"asset_id=shared.asset_id",
		"div_gen_fq=sender.div_gen_fq",
		"transmission_key_s=sender.transmission_fq",
		"out=output0.note.commitment.computed",
	)
	createdCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		output.Note.Blinding,
		output.Note.Amount,
		shared.sharedAssetID,
		shared.senderDivGenFq,
		shared.senderTransmissionFq,
	)
	if err != nil {
		return nil, nil, err
	}
	c.bindSemantic("output0.note.commitment.computed", createdCommitment)
	c.traceWiring(
		"assert.eq",
		"lhs=output0.note.commitment.computed",
		"rhs=output0.note_commitment.claimed",
	)
	api.AssertIsEqual(createdCommitment, output.NoteCommitment)

	return output.Note.Amount, output.NoteCommitment, nil
}
