package circuits

import (
	"fmt"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"math/big"

	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"golang.org/x/crypto/blake2b"
)

type TransferAuthSharedFields struct {
	AK           Point2D
	NK           frontend.Variable
	IVKReduced   frontend.Variable
	IVKQuotientA frontend.Variable
}

type TransferNotePayloadCircuitFields struct {
	Blinding frontend.Variable
	Amount   frontend.Variable
	ClueKey  frontend.Variable
}

type TransferStatePathCircuitFields struct {
	Position frontend.Variable
	Path     [StateCommitmentDepth][3]frontend.Variable
}

type TransferRequiredSpendNoteCircuitFields struct {
	TransferNotePayloadCircuitFields
	AssetID frontend.Variable
}

type TransferRequiredSpendCircuitFields struct {
	Nullifier      frontend.Variable
	RK             Point2D
	Note           TransferRequiredSpendNoteCircuitFields
	StateProof     TransferStatePathCircuitFields
	AuthRandomizer frontend.Variable
}

type TransferOptionalSpendCircuitFields struct {
	Nullifier          frontend.Variable
	RK                 Point2D
	Note               TransferNotePayloadCircuitFields
	StateProof         TransferStatePathCircuitFields
	AuthRandomizer     frontend.Variable
	IsDummy            frontend.Variable
	DummyNullifierSeed frontend.Variable
}

type TransferUserCircuitFields struct {
	DivGen         Point2D
	Transmission   Point2D
	SlotID         frontend.Variable
	SlotDerivation frontend.Variable
	D              frontend.Variable
	Path           [ComplianceQuadTreeDepth][3]frontend.Variable
	Position       frontend.Variable
}

type TransferReceiverOutputCircuitFields struct {
	NoteCommitment frontend.Variable
	Note           TransferNotePayloadCircuitFields
	Recipient      TransferUserCircuitFields
}

type TransferChangeOutputCircuitFields struct {
	NoteCommitment frontend.Variable
	Note           TransferNotePayloadCircuitFields
}

const (
	TransferCircuitInputs  = 2
	TransferCircuitOutputs = 2
)

type TransferCircuit struct {
	wiringTrace *WiringTranscript

	ClaimedStatementHash frontend.Variable `gnark:",public"`

	Anchor                frontend.Variable
	BalanceCommitment     Point2D
	AssetAnchor           frontend.Variable
	ComplianceAnchor      frontend.Variable
	TargetTimestamp       frontend.Variable
	ActionBalanceBlinding frontend.Variable
	IsRegulated           frontend.Variable

	Auth       TransferAuthSharedFields
	Asset      AssetTreeFields
	Sender     TransferUserCircuitFields
	Compliance TransferComplianceFields

	RequiredSpend  TransferRequiredSpendCircuitFields
	OptionalSpend  TransferOptionalSpendCircuitFields
	ReceiverOutput TransferReceiverOutputCircuitFields
	ChangeOutput   TransferChangeOutputCircuitFields
}

func transferStatementFieldCount() int {
	return TransferStatementBaseFields +
		TransferStatementFieldsPerInput*TransferCircuitInputs +
		TransferStatementFieldsPerOutput*TransferCircuitOutputs
}

func NewTransferCircuit() *TransferCircuit {
	return &TransferCircuit{}
}

func (c *TransferCircuit) Define(api frontend.API) error {
	c.bindWiringTrace(api)

	shared, err := c.verifySharedTransferContext(api)
	if err != nil {
		return err
	}
	statementData := c.newTransferStatementData()

	c.traceWiring("spend.begin", "spend0")
	if err := c.verifyRequiredTransferSpend(
		api,
		&shared,
		&statementData,
		&c.RequiredSpend,
	); err != nil {
		return err
	}
	c.traceWiring("spend.collect", "spend0", "amount->input_amounts", "nullifier->statement.nullifiers_and_rks", "rk_compressed->statement.nullifiers_and_rks")
	c.traceWiring("spend.begin", "spend1")
	if err := c.verifyOptionalTransferSpend(
		api,
		&shared,
		&statementData,
		&c.OptionalSpend,
	); err != nil {
		return err
	}
	c.traceWiring("spend.collect", "spend1", "amount->input_amounts", "nullifier->statement.nullifiers_and_rks", "rk_compressed->statement.nullifiers_and_rks")
	c.traceWiring("output.begin", "output0")
	if err := c.verifyTransferReceiverOutput(
		api,
		&shared,
		&statementData,
		&c.ReceiverOutput,
	); err != nil {
		return err
	}
	c.traceWiring("output.collect", "output0", "amount->output_amounts", "commitment->statement.output_commitments", "ack->receiver_ack")
	c.traceWiring("output.begin", "output1")
	if err := c.verifyTransferChangeOutput(
		api,
		&shared,
		&statementData,
		&c.ChangeOutput,
	); err != nil {
		return err
	}
	c.traceWiring("output.collect", "output1", "amount->output_amounts", "commitment->statement.output_commitments")
	c.traceWiring("compliance.begin", "tiers=sender_core,sender_ext,output_core,output_ext")
	if err := c.verifyTransferComplianceCiphertexts(api, &shared, &statementData); err != nil {
		return err
	}
	c.traceWiring("compliance.collect", "detection_ciphertext->statement", "tier_ciphertexts->statement", "dleq_proofs->statement")

	c.traceWiring("decaf.net_balance_commitment", "inputs=input_amounts", "outputs=output_amounts", "asset_id=shared.asset_id", "blinding=action_balance_blinding", "out=balance_commitment.computed")
	balanceCommitmentFq, err := c.assertTransferNetBalanceCommitment(api, &shared, &statementData)
	if err != nil {
		return err
	}

	c.traceWiring("statement.assemble", "shape=transfer2x2", "fields=transfer_statement_fields")
	fields, err := c.buildTransferStatementFields(api, balanceCommitmentFq, &statementData)
	if err != nil {
		return err
	}
	c.traceWiring("statement.hash", "family=transfer", "fields=statement_fields", "out=statement_hash")
	statementHash, err := TransferStatementHashForShape(
		api,
		TransferCircuitInputs,
		TransferCircuitOutputs,
		fields,
	)
	if err != nil {
		return err
	}
	c.traceWiring("assert.eq", "lhs=statement_hash", "rhs=claimed_statement_hash")
	api.AssertIsEqual(statementHash, c.ClaimedStatementHash)
	return nil
}

type transferSharedContext struct {
	claimedBalanceCommitment gnarkte.Point
	ak                       gnarkte.Point
	indexedLeaf              IndexedLeafInputs
	effectiveDKPub           gnarkte.Point
	effectiveRingPK          gnarkte.Point
	senderDivGen             gnarkte.Point
	senderTransmission       gnarkte.Point
	senderDivGenFq           frontend.Variable
	senderTransmissionFq     frontend.Variable
	senderAck                gnarkte.Point
	sharedAssetID            frontend.Variable
}

type transferStatementData struct {
	inputAmounts           []frontend.Variable
	outputAmounts          []frontend.Variable
	outputCommitments      []frontend.Variable
	nullifiersAndRKs       []frontend.Variable
	receiverAmount         frontend.Variable
	receiverDivGenFq       frontend.Variable
	receiverTransmissionFq frontend.Variable
	receiverSlotID         frontend.Variable
	receiverSlotDerivation frontend.Variable
	receiverAck            gnarkte.Point
	senderCoreEPKFq        frontend.Variable
	senderExtEPKFq         frontend.Variable
	outputCoreEPKFq        frontend.Variable
	outputExtEPKFq         frontend.Variable
}

func computeTransferNetBalanceCommitment(
	api frontend.API,
	inputAmounts []frontend.Variable,
	outputAmounts []frontend.Variable,
	assetID frontend.Variable,
	blinding frontend.Variable,
) (gnarkte.Point, error) {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return gnarkte.Point{}, err
	}
	hashedAssetID, err := Poseidon377Hash1(api, MustBigInt(vectors.Poseidon377.ValueGeneratorDomain), assetID)
	if err != nil {
		return gnarkte.Point{}, err
	}
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return gnarkte.Point{}, err
	}
	valueGenerator, err := decafgnark.EncodeToCurve(api, hashedAssetID)
	if err != nil {
		return gnarkte.Point{}, err
	}
	valueBlindingGenerator := gnarkte.Point{
		X: MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorX),
		Y: MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorY),
	}

	// The 128-bit width on every amount is the canonical note-amount range bound
	// (ZK-ASSUME-AMOUNT-RANGE): ScalarMulLE's api.ToBinary(amount, 128) makes any
	// amount >= 2^128 unsatisfiable, preventing field-overflow value inflation in
	// the net-balance sum. Load-bearing for balance soundness; pinned by
	// TestAmountRangeBoundIs128Bits.
	// Additive identity seed. Previously ScalarMulLE(valueGenerator, 0, 128),
	// a full 128-rung ladder over the constant scalar 0 that only ever yields
	// the identity (every Select folds to the running identity) while still
	// emitting a redundant doubling chain of valueGenerator. The identity point
	// is the correct seed directly; the first curve.Add folds the constant
	// operand. Semantic equality pinned by TestNetBalanceCommitmentGadgetParity.
	sum := gnarkte.Point{X: 0, Y: 1}
	for _, amount := range inputAmounts {
		sum = curve.Add(sum, ScalarMulLE(api, curve, valueGenerator, amount, 128))
	}
	for _, amount := range outputAmounts {
		sum = curve.Add(sum, curve.Neg(ScalarMulLE(api, curve, valueGenerator, amount, 128)))
	}
	blindingPoint := ScalarMulLE(
		api,
		curve,
		valueBlindingGenerator,
		blinding,
		MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen(),
	)
	return curve.Add(sum, blindingPoint), nil
}

// computeConservationNetBalanceCommitment is NB-1: the net-balance
// commitment for shapes that are conservation-exact by construction (every
// NoteReshape family: every supported shape has zero net value change on
// a single shared asset ID). Sigma(inputAmounts) = Sigma(outputAmounts) is
// asserted directly as one linear row instead of building the balance from
// per-amount value-generator ladders (computeTransferNetBalanceCommitment),
// and the commitment collapses to the blinding ladder alone - the correct
// value when conservation holds, since the value terms cancel exactly.
//
// The per-amount api.ToBinary(amount, 128) calls are the ZK-ASSUME-AMOUNT-RANGE
// enforcement carried over from the deleted ladders (load-bearing: without it
// amounts could overflow the scalar field and falsify the Sigma(in)=Sigma(out)
// assert); pinned by TestAmountRangeBoundIs128Bits and the parity test below.
// transfer/ics20 keep computeTransferNetBalanceCommitment unchanged - their
// net balance is not conservation-exact (fees, cross-chain amounts).
func computeConservationNetBalanceCommitment(
	api frontend.API,
	inputAmounts []frontend.Variable,
	outputAmounts []frontend.Variable,
	blinding frontend.Variable,
) (gnarkte.Point, error) {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return gnarkte.Point{}, err
	}
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return gnarkte.Point{}, err
	}
	valueBlindingGenerator := gnarkte.Point{
		X: MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorX),
		Y: MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorY),
	}

	sumIn := frontend.Variable(0)
	for _, amount := range inputAmounts {
		api.ToBinary(amount, 128)
		sumIn = api.Add(sumIn, amount)
	}
	sumOut := frontend.Variable(0)
	for _, amount := range outputAmounts {
		api.ToBinary(amount, 128)
		sumOut = api.Add(sumOut, amount)
	}
	api.AssertIsEqual(sumIn, sumOut)

	return ScalarMulLE(
		api,
		curve,
		valueBlindingGenerator,
		blinding,
		MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen(),
	), nil
}

func (c *TransferCircuit) verifySharedTransferContext(api frontend.API) (transferSharedContext, error) {
	c.traceWiring(
		"shared.bind",
		"claimed.balance_commitment=balance_commitment",
		"shared.ak=auth.ak",
		"shared.asset_id=spend0.note.asset_id",
		"sender.div_gen=sender.div_gen",
		"sender.transmission=sender.transmission",
	)
	shared := transferSharedContext{
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
		senderDivGen:       gnarkte.Point{X: c.Sender.DivGen.X, Y: c.Sender.DivGen.Y},
		senderTransmission: gnarkte.Point{X: c.Sender.Transmission.X, Y: c.Sender.Transmission.Y},
		sharedAssetID:      c.RequiredSpend.Note.AssetID,
	}

	unregulatedRingPK, unregulatedDKPub, err := UnregulatedComplianceKeys()
	if err != nil {
		return transferSharedContext{}, err
	}
	c.traceWiring("select.point", "cond=is_regulated", "if_true=asset.leaf.ring_pk", "if_false=unregulated.ring_pk", "out=effective.ring_pk")
	shared.effectiveRingPK = SelectPoint(api, c.IsRegulated, shared.indexedLeaf.RingPK, unregulatedRingPK)
	c.traceWiring("select.point", "cond=is_regulated", "if_true=asset.leaf.dk_pub", "if_false=unregulated.dk_pub", "out=effective.dk_pub")
	shared.effectiveDKPub = SelectPoint(api, c.IsRegulated, shared.indexedLeaf.DKPub, unregulatedDKPub)

	c.traceWiring("decaf.compress_to_field", "in=sender.div_gen", "out=sender.div_gen_fq")
	shared.senderDivGenFq, err = decafgnark.CompressToField(api, shared.senderDivGen)
	if err != nil {
		return transferSharedContext{}, err
	}
	c.traceWiring("decaf.compress_to_field", "in=sender.transmission", "out=sender.transmission_fq")
	shared.senderTransmissionFq, err = decafgnark.CompressToField(api, shared.senderTransmission)
	if err != nil {
		return transferSharedContext{}, err
	}
	c.traceWiring(
		"decaf.diversified_transmission_key",
		"nk=auth.nk",
		"ak=shared.ak",
		"div_gen=sender.div_gen",
		"ivk_reduced=auth.ivk_reduced",
		"ivk_quotient_a=auth.ivk_quotient_a",
		"out=sender.transmission.computed",
	)
	computedSenderTransmission, err := DiversifiedTransmissionKey(
		api,
		c.Auth.NK,
		shared.ak,
		shared.senderDivGen,
		c.Auth.IVKReduced,
		c.Auth.IVKQuotientA,
	)
	if err != nil {
		return transferSharedContext{}, err
	}
	c.traceWiring(
		"decaf.assert_equivalent",
		"lhs=sender.transmission.computed",
		"rhs=sender.transmission",
	)
	decafgnark.AssertEquivalent(api, computedSenderTransmission, shared.senderTransmission)

	c.traceWiring("gadget.asset_registry_imt", "asset_id=shared.asset_id", "is_regulated=is_regulated", "leaf=asset.leaf", "path=asset.path", "position=asset.position", "root=asset_anchor")
	if err := VerifyAssetRegistryIMT(
		api,
		shared.sharedAssetID,
		c.IsRegulated,
		shared.indexedLeaf,
		c.Asset.Path,
		c.Asset.Position,
		c.AssetAnchor,
	); err != nil {
		return transferSharedContext{}, err
	}

	c.traceWiring("gadget.compliance_leaf", "div_gen_fq=sender.div_gen_fq", "transmission_fq=sender.transmission_fq", "asset_id=shared.asset_id", "slot_id=sender.slot_id", "slot_derivation=sender.slot_derivation", "d=sender.d", "out=sender.leaf_commitment")
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
		return transferSharedContext{}, err
	}
	c.traceWiring("gadget.compliance_path", "leaf=sender.leaf_commitment", "path=sender.path", "position=sender.position", "out=sender.compliance_root")
	senderComplianceRoot, err := VerifyQuadPath(api, senderLeafCommitment, c.Sender.Path, c.Sender.Position)
	if err != nil {
		return transferSharedContext{}, err
	}
	c.traceWiring("assert.eq_if", "lhs=sender.compliance_root", "rhs=compliance_anchor", "cond=is_regulated")
	AssertEqualIf(api, senderComplianceRoot, c.ComplianceAnchor, c.IsRegulated)

	c.traceWiring("decaf.ack", "ring_pk=effective.ring_pk", "d=sender.d", "out=sender.ack")
	shared.senderAck, err = DeriveACKFromLeafD(api, shared.effectiveRingPK, c.Sender.D)
	if err != nil {
		return transferSharedContext{}, err
	}

	return shared, nil
}

func (c *TransferCircuit) newTransferStatementData() transferStatementData {
	return transferStatementData{
		inputAmounts:           make([]frontend.Variable, 0, TransferCircuitInputs),
		outputAmounts:          make([]frontend.Variable, 0, TransferCircuitOutputs),
		outputCommitments:      make([]frontend.Variable, 0, TransferCircuitOutputs),
		nullifiersAndRKs:       make([]frontend.Variable, 0, 2*TransferCircuitInputs),
		receiverAmount:         0,
		receiverDivGenFq:       0,
		receiverTransmissionFq: 0,
		receiverSlotID:         0,
		receiverSlotDerivation: 0,
		receiverAck:            gnarkte.Point{X: 0, Y: 0},
		senderCoreEPKFq:        0,
		senderExtEPKFq:         0,
		outputCoreEPKFq:        0,
		outputExtEPKFq:         0,
	}
}

func transferSyntheticDummyNullifierDomain() *big.Int {
	sum := blake2b.Sum512([]byte("shieldd.transfer.synthetic_dummy.nullifier"))
	return LittleEndianBytesToBigInt(sum[:])
}

func syntheticDummyNullifier(
	api frontend.API,
	seed frontend.Variable,
	authRandomizer frontend.Variable,
	slotIndex int,
) (frontend.Variable, error) {
	return Poseidon377Hash3(
		api,
		transferSyntheticDummyNullifierDomain(),
		[3]frontend.Variable{seed, authRandomizer, slotIndex},
	)
}

func (c *TransferCircuit) verifyRequiredTransferSpend(
	api frontend.API,
	shared *transferSharedContext,
	statementData *transferStatementData,
	spend *TransferRequiredSpendCircuitFields,
) error {
	return c.verifyTransferSpend(
		api,
		shared,
		statementData,
		transferSpendView{
			Nullifier:      spend.Nullifier,
			RK:             spend.RK,
			Note:           spend.Note.TransferNotePayloadCircuitFields,
			StateProof:     spend.StateProof,
			AuthRandomizer: spend.AuthRandomizer,
		},
		0,
		nil,
	)
}

func (c *TransferCircuit) verifyOptionalTransferSpend(
	api frontend.API,
	shared *transferSharedContext,
	statementData *transferStatementData,
	optional *TransferOptionalSpendCircuitFields,
) error {
	return c.verifyTransferSpend(
		api,
		shared,
		statementData,
		transferSpendView{
			Nullifier:      optional.Nullifier,
			RK:             optional.RK,
			Note:           optional.Note,
			StateProof:     optional.StateProof,
			AuthRandomizer: optional.AuthRandomizer,
		},
		1,
		optional,
	)
}

type transferSpendView struct {
	Nullifier      frontend.Variable
	RK             Point2D
	Note           TransferNotePayloadCircuitFields
	StateProof     TransferStatePathCircuitFields
	AuthRandomizer frontend.Variable
}

func (c *TransferCircuit) verifyTransferSpend(
	api frontend.API,
	shared *transferSharedContext,
	statementData *transferStatementData,
	spend transferSpendView,
	index int,
	optional *TransferOptionalSpendCircuitFields,
) error {
	rkClaimed := gnarkte.Point{X: spend.RK.X, Y: spend.RK.Y}
	name := fmt.Sprintf("spend%d", index)
	var isNotDummy frontend.Variable
	if optional != nil {
		c.traceWiring("assert.boolean", "var="+name+".is_dummy")
		api.AssertIsBoolean(optional.IsDummy)
		isNotDummy = api.Sub(1, optional.IsDummy)
	}

	c.traceWiring("gadget.note_commitment", "blinding="+name+".note.blinding", "amount="+name+".note.amount", "asset_id=shared.asset_id", "div_gen_fq=sender.div_gen_fq", "transmission_key_s=sender.transmission_fq", "clue_key="+name+".note.clue_key", "out="+name+".note.commitment.computed")
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
		return err
	}

	c.traceWiring("gadget.nullifier", "nk=auth.nk", "commitment="+name+".note.commitment.computed", "position="+name+".state_proof.position", "out="+name+".nullifier.real")
	realNullifier, err := Nullifier(api, c.Auth.NK, spentCommitment, spend.StateProof.Position)
	if err != nil {
		return err
	}

	statePath := make([][3]frontend.Variable, len(spend.StateProof.Path))
	copy(statePath, spend.StateProof.Path[:])
	c.traceWiring("gadget.state_commitment_path", "commitment="+name+".note.commitment.computed", "position="+name+".state_proof.position", "path="+name+".state_proof.path", "out="+name+".anchor.computed")
	anchor, err := VerifyStateCommitmentPath(api, spentCommitment, spend.StateProof.Position, statePath)
	if err != nil {
		return err
	}
	if optional == nil {
		c.traceWiring("assert.eq", "lhs="+name+".nullifier", "rhs="+name+".nullifier.real")
		api.AssertIsEqual(spend.Nullifier, realNullifier)
		c.traceWiring("assert.eq", "lhs="+name+".anchor.computed", "rhs=anchor")
		api.AssertIsEqual(anchor, c.Anchor)
	} else {
		c.traceWiring("gadget.synthetic_dummy_nullifier", "seed="+name+".dummy_nullifier_seed", "randomizer="+name+".auth_randomizer", "slot="+name, "out="+name+".nullifier.synthetic")
		syntheticNullifier, err := syntheticDummyNullifier(
			api,
			optional.DummyNullifierSeed,
			spend.AuthRandomizer,
			index,
		)
		if err != nil {
			return err
		}
		c.traceWiring("dummy.mux", "is_dummy="+name+".is_dummy", "real="+name+".nullifier.real", "synthetic="+name+".nullifier.synthetic", "out="+name+".nullifier")
		api.AssertIsEqual(
			spend.Nullifier,
			api.Add(
				api.Mul(isNotDummy, realNullifier),
				api.Mul(optional.IsDummy, syntheticNullifier),
			),
		)
		c.traceWiring("assert.eq_if", "lhs="+name+".anchor.computed", "rhs=anchor", "cond="+name+".is_not_dummy")
		AssertEqualIf(api, anchor, c.Anchor, isNotDummy)
	}

	c.traceWiring("decaf.randomized_verification_key", "ak=shared.ak", "randomizer="+name+".auth_randomizer", "out="+name+".rk.computed")
	computedRK, err := RandomizedVerificationKey(api, shared.ak, spend.AuthRandomizer)
	if err != nil {
		return err
	}
	if optional == nil {
		c.traceWiring("decaf.assert_equivalent", "lhs="+name+".rk.computed", "rhs="+name+".rk.claimed")
		decafgnark.AssertEquivalent(api, computedRK, rkClaimed)
	} else {
		c.traceWiring("decaf.assert_equivalent_if", "lhs="+name+".rk.computed", "rhs="+name+".rk.claimed", "cond="+name+".is_not_dummy")
		decafgnark.AssertEquivalentIf(api, computedRK, rkClaimed, isNotDummy)
		c.traceWiring("assert.eq_if", "lhs="+name+".note.amount", "rhs=0", "cond="+name+".is_dummy")
		AssertEqualIf(api, spend.Note.Amount, 0, optional.IsDummy)
	}

	statementData.inputAmounts = append(statementData.inputAmounts, spend.Note.Amount)
	statementData.nullifiersAndRKs = append(statementData.nullifiersAndRKs, spend.Nullifier)
	c.traceWiring("decaf.compress_to_field", "in="+name+".rk.claimed", "out="+name+".rk.compressed")
	rkFq, err := decafgnark.CompressToField(api, rkClaimed)
	if err != nil {
		return err
	}
	statementData.nullifiersAndRKs = append(statementData.nullifiersAndRKs, rkFq)
	return nil
}

func (c *TransferCircuit) verifyTransferReceiverOutput(
	api frontend.API,
	shared *transferSharedContext,
	statementData *transferStatementData,
	output *TransferReceiverOutputCircuitFields,
) error {
	recipientDivGen := gnarkte.Point{X: output.Recipient.DivGen.X, Y: output.Recipient.DivGen.Y}
	recipientTransmission := gnarkte.Point{X: output.Recipient.Transmission.X, Y: output.Recipient.Transmission.Y}
	c.traceWiring("gadget.is_zero", "in=output0.note.amount", "out=output0.is_dummy")
	receiverIsDummy := api.IsZero(output.Note.Amount)

	c.traceWiring("decaf.compress_to_field", "in=output0.recipient.div_gen", "out=output0.recipient.div_gen_fq")
	recipientDivGenFq, err := decafgnark.CompressToField(api, recipientDivGen)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.compress_to_field", "in=output0.recipient.transmission", "out=output0.recipient.transmission_fq")
	recipientTransmissionFq, err := decafgnark.CompressToField(api, recipientTransmission)
	if err != nil {
		return err
	}

	c.traceWiring("gadget.note_commitment", "blinding=output0.note.blinding", "amount=output0.note.amount", "asset_id=shared.asset_id", "div_gen_fq=output0.recipient.div_gen_fq", "transmission_key_s=output0.recipient.transmission_fq", "clue_key=output0.note.clue_key", "out=output0.note.commitment.computed")
	createdCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		output.Note.Blinding,
		output.Note.Amount,
		shared.sharedAssetID,
		recipientDivGenFq,
		recipientTransmissionFq,
		output.Note.ClueKey,
	)
	if err != nil {
		return err
	}
	c.traceWiring("assert.eq", "lhs=output0.note.commitment.computed", "rhs=output0.note_commitment")
	api.AssertIsEqual(createdCommitment, output.NoteCommitment)

	c.traceWiring("gadget.compliance_leaf", "div_gen_fq=output0.recipient.div_gen_fq", "transmission_fq=output0.recipient.transmission_fq", "asset_id=shared.asset_id", "slot_id=output0.recipient.slot_id", "slot_derivation=output0.recipient.slot_derivation", "d=output0.recipient.d", "out=output0.recipient.leaf_commitment")
	recipientLeafCommitment, err := ComplianceLeafCommitmentFromCompressed(
		api,
		recipientDivGenFq,
		recipientTransmissionFq,
		shared.sharedAssetID,
		output.Recipient.SlotID,
		output.Recipient.SlotDerivation,
		output.Recipient.D,
	)
	if err != nil {
		return err
	}
	c.traceWiring("gadget.compliance_path", "leaf=output0.recipient.leaf_commitment", "path=output0.recipient.path", "position=output0.recipient.position", "out=output0.recipient.compliance_root")
	recipientComplianceRoot, err := VerifyQuadPath(api, recipientLeafCommitment, output.Recipient.Path, output.Recipient.Position)
	if err != nil {
		return err
	}
	c.traceWiring("assert.eq_if", "lhs=output0.recipient.compliance_root", "rhs=compliance_anchor", "cond=is_regulated")
	AssertEqualIf(api, recipientComplianceRoot, c.ComplianceAnchor, c.IsRegulated)

	statementData.outputAmounts = append(statementData.outputAmounts, output.Note.Amount)
	statementData.outputCommitments = append(statementData.outputCommitments, output.NoteCommitment)
	c.traceWiring("assert.eq", "lhs=output0.is_dummy", "rhs=0")
	api.AssertIsEqual(receiverIsDummy, 0)
	c.traceWiring("decaf.ack", "ring_pk=effective.ring_pk", "d=output0.recipient.d", "out=receiver.ack")
	recipientAck, err := DeriveACKFromLeafD(api, shared.effectiveRingPK, output.Recipient.D)
	if err != nil {
		return err
	}
	statementData.receiverAmount = output.Note.Amount
	statementData.receiverDivGenFq = recipientDivGenFq
	statementData.receiverTransmissionFq = recipientTransmissionFq
	statementData.receiverSlotID = output.Recipient.SlotID
	statementData.receiverSlotDerivation = output.Recipient.SlotDerivation
	statementData.receiverAck = recipientAck
	return nil
}

func (c *TransferCircuit) verifyTransferChangeOutput(
	api frontend.API,
	shared *transferSharedContext,
	statementData *transferStatementData,
	output *TransferChangeOutputCircuitFields,
) error {
	c.traceWiring("gadget.note_commitment", "blinding=output1.note.blinding", "amount=output1.note.amount", "asset_id=shared.asset_id", "div_gen_fq=sender.div_gen_fq", "transmission_key_s=sender.transmission_fq", "clue_key=output1.note.clue_key", "out=output1.note.commitment.computed")
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
		return err
	}
	c.traceWiring("assert.eq", "lhs=output1.note.commitment.computed", "rhs=output1.note_commitment")
	api.AssertIsEqual(createdCommitment, output.NoteCommitment)
	statementData.outputAmounts = append(statementData.outputAmounts, output.Note.Amount)
	statementData.outputCommitments = append(statementData.outputCommitments, output.NoteCommitment)
	return nil
}

func (c *TransferCircuit) verifyTransferComplianceCiphertexts(
	api frontend.API,
	shared *transferSharedContext,
	statementData *transferStatementData,
) error {
	c.traceWiring("threshold.flag", "amount=receiver.amount", "threshold=asset.leaf.threshold", "out=is_flagged")
	isFlagged := ThresholdFlag(api, statementData.receiverAmount, shared.indexedLeaf.Threshold)

	senderCoreEPK := gnarkte.Point{X: c.Compliance.SenderCore.Epk.X, Y: c.Compliance.SenderCore.Epk.Y}
	senderExtEPK := gnarkte.Point{X: c.Compliance.SenderExt.Epk.X, Y: c.Compliance.SenderExt.Epk.Y}
	outputCoreEPK := gnarkte.Point{X: c.Compliance.OutputCore.Epk.X, Y: c.Compliance.OutputCore.Epk.Y}
	outputExtEPK := gnarkte.Point{X: c.Compliance.OutputExt.Epk.X, Y: c.Compliance.OutputExt.Epk.Y}

	c.traceWiring("decaf.compress_to_field", "in=compliance.sender_core.epk", "out=compliance.sender_core.epk_fq")
	senderCoreEPKFq, err := decafgnark.CompressToField(api, senderCoreEPK)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.compress_to_field", "in=compliance.sender_ext.epk", "out=compliance.sender_ext.epk_fq")
	senderExtEPKFq, err := decafgnark.CompressToField(api, senderExtEPK)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.compress_to_field", "in=compliance.output_core.epk", "out=compliance.output_core.epk_fq")
	outputCoreEPKFq, err := decafgnark.CompressToField(api, outputCoreEPK)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.compress_to_field", "in=compliance.output_ext.epk", "out=compliance.output_ext.epk_fq")
	outputExtEPKFq, err := decafgnark.CompressToField(api, outputExtEPK)
	if err != nil {
		return err
	}
	statementData.senderCoreEPKFq = senderCoreEPKFq
	statementData.senderExtEPKFq = senderExtEPKFq
	statementData.outputCoreEPKFq = outputCoreEPKFq
	statementData.outputExtEPKFq = outputExtEPKFq

	saltLabels := [5]*big.Int{
		TransferDetectionSaltLabel,
		TransferSenderCoreSaltLabel,
		TransferSenderExtSaltLabel,
		TransferOutputCoreSaltLabel,
		TransferOutputExtSaltLabel,
	}
	salts := [5]frontend.Variable{}
	for i, label := range saltLabels {
		c.traceWiring("gadget.transfer_salt", fmt.Sprintf("label=salt%d", i), "nonce_root=compliance.transfer_nonce_root", fmt.Sprintf("out=salt%d", i))
		salts[i], err = DeriveTransferSalt(api, c.Compliance.TransferNonceRoot, label)
		if err != nil {
			return err
		}
	}

	c.traceWiring("decaf.shared_secret", "tier=sender_core", "esk=compliance.sender_r_core", "ack=sender.ack", "dk_pub=effective.dk_pub", "flag=is_flagged", "epk=compliance.sender_core.epk", "out=sender_core.shared")
	ssDetection, _, senderCoreShared, err := DeriveSharedSecretsSpend(
		api,
		c.Compliance.SenderRCore,
		shared.senderAck,
		shared.effectiveDKPub,
		isFlagged,
		senderCoreEPK,
	)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.shared_secret", "tier=sender_ext", "esk=compliance.sender_r_ext", "ack=sender.ack", "dk_pub=effective.dk_pub", "flag=is_flagged", "epk=compliance.sender_ext.epk", "out=sender_ext.shared")
	_, _, senderExtShared, err := DeriveSharedSecretsSpend(
		api,
		c.Compliance.SenderRExt,
		shared.senderAck,
		shared.effectiveDKPub,
		isFlagged,
		senderExtEPK,
	)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.shared_secret", "tier=output_core", "esk=compliance.output_r_core", "ack=receiver.ack", "dk_pub=effective.dk_pub", "flag=is_flagged", "epk=compliance.output_core.epk", "out=output_core.shared")
	_, _, outputCoreShared, err := DeriveSharedSecretsSpend(
		api,
		c.Compliance.OutputRCore,
		statementData.receiverAck,
		shared.effectiveDKPub,
		isFlagged,
		outputCoreEPK,
	)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.shared_secret", "tier=output_ext", "esk=compliance.output_r_ext", "ack=receiver.ack", "dk_pub=effective.dk_pub", "flag=is_flagged", "epk=compliance.output_ext.epk", "out=output_ext.shared")
	_, _, outputExtShared, err := DeriveSharedSecretsSpend(
		api,
		c.Compliance.OutputRExt,
		statementData.receiverAck,
		shared.effectiveDKPub,
		isFlagged,
		outputExtEPK,
	)
	if err != nil {
		return err
	}

	c.traceWiring("gadget.poseidon_encryption.detection", "regulated=is_regulated", "flag=is_flagged", "ss=sender_core.ss_detection", "epk_fq=compliance.sender_core.epk_fq", "salt=salt0", "asset_id=shared.asset_id", "sender_slot=sender.slot_id", "receiver_slot=receiver.slot_id", "out=compliance.detection_ciphertext")
	if err := VerifyPoseidonEncryptionTransferDetection(
		api,
		c.IsRegulated,
		isFlagged,
		ssDetection,
		statementData.senderCoreEPKFq,
		salts[0],
		shared.sharedAssetID,
		c.Sender.SlotID,
		statementData.receiverSlotID,
		c.Compliance.DetectionCiphertext,
	); err != nil {
		return err
	}
	c.traceWiring("gadget.poseidon_encryption.amount", "tier=sender_core", "regulated=is_regulated", "ss=sender_core.shared", "c2=compliance.sender_core.c2", "amount=receiver.amount", "out=compliance.sender_core.ciphertext")
	if err := VerifyPoseidonEncryptionTransferAmount(
		api,
		c.IsRegulated,
		senderCoreShared,
		c.Compliance.SenderCore.C2,
		statementData.receiverAmount,
		c.Compliance.SenderCore.Ciphertext,
	); err != nil {
		return err
	}
	c.traceWiring("gadget.poseidon_encryption.address", "tier=sender_ext", "regulated=is_regulated", "ss=sender_ext.shared", "c2=compliance.sender_ext.c2", "div_gen_fq=receiver.div_gen_fq", "transmission_fq=receiver.transmission_fq", "out=compliance.sender_ext.ciphertext")
	if err := VerifyPoseidonEncryptionTransferAddress(
		api,
		c.IsRegulated,
		senderExtShared,
		c.Compliance.SenderExt.C2,
		statementData.receiverDivGenFq,
		statementData.receiverTransmissionFq,
		c.Compliance.SenderExt.Ciphertext,
	); err != nil {
		return err
	}
	c.traceWiring("gadget.poseidon_encryption.amount", "tier=output_core", "regulated=is_regulated", "ss=output_core.shared", "c2=compliance.output_core.c2", "amount=receiver.amount", "out=compliance.output_core.ciphertext")
	if err := VerifyPoseidonEncryptionTransferAmount(
		api,
		c.IsRegulated,
		outputCoreShared,
		c.Compliance.OutputCore.C2,
		statementData.receiverAmount,
		c.Compliance.OutputCore.Ciphertext,
	); err != nil {
		return err
	}
	c.traceWiring("gadget.poseidon_encryption.address", "tier=output_ext", "regulated=is_regulated", "ss=output_ext.shared", "c2=compliance.output_ext.c2", "div_gen_fq=sender.div_gen_fq", "transmission_fq=sender.transmission_fq", "out=compliance.output_ext.ciphertext")
	if err := VerifyPoseidonEncryptionTransferAddress(
		api,
		c.IsRegulated,
		outputExtShared,
		c.Compliance.OutputExt.C2,
		shared.senderDivGenFq,
		shared.senderTransmissionFq,
		c.Compliance.OutputExt.Ciphertext,
	); err != nil {
		return err
	}

	c.traceWiring("decaf.assert_equivalent", "lhs=compliance.sender_core.epk", "rhs=compliance.sender_core.proof.enc_cmt")
	decafgnark.AssertEquivalent(api, gnarkte.Point{X: c.Compliance.SenderCore.Epk.X, Y: c.Compliance.SenderCore.Epk.Y}, gnarkte.Point{X: c.Compliance.SenderCore.Proof.EncCmt.X, Y: c.Compliance.SenderCore.Proof.EncCmt.Y})
	c.traceWiring("decaf.assert_equivalent", "lhs=compliance.sender_ext.epk", "rhs=compliance.sender_ext.proof.enc_cmt")
	decafgnark.AssertEquivalent(api, gnarkte.Point{X: c.Compliance.SenderExt.Epk.X, Y: c.Compliance.SenderExt.Epk.Y}, gnarkte.Point{X: c.Compliance.SenderExt.Proof.EncCmt.X, Y: c.Compliance.SenderExt.Proof.EncCmt.Y})
	c.traceWiring("decaf.assert_equivalent", "lhs=compliance.output_core.epk", "rhs=compliance.output_core.proof.enc_cmt")
	decafgnark.AssertEquivalent(api, gnarkte.Point{X: c.Compliance.OutputCore.Epk.X, Y: c.Compliance.OutputCore.Epk.Y}, gnarkte.Point{X: c.Compliance.OutputCore.Proof.EncCmt.X, Y: c.Compliance.OutputCore.Proof.EncCmt.Y})
	c.traceWiring("decaf.assert_equivalent", "lhs=compliance.output_ext.epk", "rhs=compliance.output_ext.proof.enc_cmt")
	decafgnark.AssertEquivalent(api, gnarkte.Point{X: c.Compliance.OutputExt.Epk.X, Y: c.Compliance.OutputExt.Epk.Y}, gnarkte.Point{X: c.Compliance.OutputExt.Proof.EncCmt.X, Y: c.Compliance.OutputExt.Proof.EncCmt.Y})
	c.traceWiring("decaf.assert_equivalent", "lhs=sender.ack", "rhs=compliance.sender_core.proof.derived_pk")
	decafgnark.AssertEquivalent(api, shared.senderAck, gnarkte.Point{X: c.Compliance.SenderCore.Proof.DerivedPK.X, Y: c.Compliance.SenderCore.Proof.DerivedPK.Y})
	c.traceWiring("decaf.assert_equivalent", "lhs=sender.ack", "rhs=compliance.sender_ext.proof.derived_pk")
	decafgnark.AssertEquivalent(api, shared.senderAck, gnarkte.Point{X: c.Compliance.SenderExt.Proof.DerivedPK.X, Y: c.Compliance.SenderExt.Proof.DerivedPK.Y})
	c.traceWiring("decaf.assert_equivalent", "lhs=receiver.ack", "rhs=compliance.output_core.proof.derived_pk")
	decafgnark.AssertEquivalent(api, statementData.receiverAck, gnarkte.Point{X: c.Compliance.OutputCore.Proof.DerivedPK.X, Y: c.Compliance.OutputCore.Proof.DerivedPK.Y})
	c.traceWiring("decaf.assert_equivalent", "lhs=receiver.ack", "rhs=compliance.output_ext.proof.derived_pk")
	decafgnark.AssertEquivalent(api, statementData.receiverAck, gnarkte.Point{X: c.Compliance.OutputExt.Proof.DerivedPK.X, Y: c.Compliance.OutputExt.Proof.DerivedPK.Y})

	verifyProofStatement := func(
		proof TransferComplianceProofFields,
		expectedSubjectDerivation frontend.Variable,
		expectedTier frontend.Variable,
		expectedSalt frontend.Variable,
	) (frontend.Variable, error) {
		api.AssertIsEqual(proof.Statement.SubjectDerivation, expectedSubjectDerivation)
		// Policy-hash binding applies only to regulated transfers. For unregulated
		// transfers the asset is absent from the registry and `shared.indexedLeaf`
		// is an unrelated non-membership gap predecessor, so binding the synthetic
		// proof statement to its policy hashes is both wrong and a privacy leak.
		AssertEqualIf(api, proof.Statement.RingIDHash, shared.indexedLeaf.RingIDHash, c.IsRegulated)
		AssertEqualIf(api, proof.Statement.PolicyIDHash, shared.indexedLeaf.PolicyIDHash, c.IsRegulated)
		AssertEqualIf(api, proof.Statement.ResourceHash, shared.indexedLeaf.ResourceHash, c.IsRegulated)
		AssertEqualIf(api, proof.Statement.PermissionHash, shared.indexedLeaf.PermissionHash, c.IsRegulated)
		api.AssertIsEqual(proof.Statement.Tier, expectedTier)
		api.AssertIsEqual(proof.Statement.TargetTimestamp, c.TargetTimestamp)
		api.AssertIsEqual(proof.Statement.Salt, expectedSalt)
		return ComputeMetadataHash(
			api,
			proof.Statement.PolicyIDHash,
			proof.Statement.ResourceHash,
			proof.Statement.PermissionHash,
			proof.Statement.Tier,
			proof.Statement.TargetTimestamp,
			proof.Statement.Salt,
		)
	}

	senderCoreMetadataHash, err := verifyProofStatement(
		c.Compliance.SenderCore.Proof,
		c.Sender.SlotDerivation,
		1,
		salts[1],
	)
	if err != nil {
		return err
	}
	c.traceWiring("gadget.metadata_hash", "tier=sender_core", "out=sender_core.metadata_hash")
	senderExtMetadataHash, err := verifyProofStatement(
		c.Compliance.SenderExt.Proof,
		c.Sender.SlotDerivation,
		2,
		salts[2],
	)
	if err != nil {
		return err
	}
	c.traceWiring("gadget.metadata_hash", "tier=sender_ext", "out=sender_ext.metadata_hash")
	outputCoreMetadataHash, err := verifyProofStatement(
		c.Compliance.OutputCore.Proof,
		statementData.receiverSlotDerivation,
		3,
		salts[3],
	)
	if err != nil {
		return err
	}
	c.traceWiring("gadget.metadata_hash", "tier=output_core", "out=output_core.metadata_hash")
	outputExtMetadataHash, err := verifyProofStatement(
		c.Compliance.OutputExt.Proof,
		statementData.receiverSlotDerivation,
		4,
		salts[4],
	)
	if err != nil {
		return err
	}
	c.traceWiring("gadget.metadata_hash", "tier=output_ext", "out=output_ext.metadata_hash")

	c.traceWiring("gadget.dleq", "tier=sender_core", "derived_pk=compliance.sender_core.proof.derived_pk", "shared_point=compliance.sender_core.proof.shared_point", "enc_cmt=compliance.sender_core.proof.enc_cmt", "metadata=sender_core.metadata_hash", "challenge=compliance.sender_core.proof.challenge", "response=compliance.sender_core.proof.response")
	if err := VerifyDLEQ(
		api,
		gnarkte.Point{X: c.Compliance.SenderCore.Proof.DerivedPK.X, Y: c.Compliance.SenderCore.Proof.DerivedPK.Y},
		gnarkte.Point{X: c.Compliance.SenderCore.Proof.SharedPoint.X, Y: c.Compliance.SenderCore.Proof.SharedPoint.Y},
		gnarkte.Point{X: c.Compliance.SenderCore.Proof.EncCmt.X, Y: c.Compliance.SenderCore.Proof.EncCmt.Y},
		senderCoreMetadataHash,
		c.Compliance.SenderCore.Proof.Challenge,
		c.Compliance.SenderCore.Proof.Response,
		c.IsRegulated,
	); err != nil {
		return err
	}
	c.traceWiring("gadget.dleq", "tier=sender_ext", "derived_pk=compliance.sender_ext.proof.derived_pk", "shared_point=compliance.sender_ext.proof.shared_point", "enc_cmt=compliance.sender_ext.proof.enc_cmt", "metadata=sender_ext.metadata_hash", "challenge=compliance.sender_ext.proof.challenge", "response=compliance.sender_ext.proof.response")
	if err := VerifyDLEQ(
		api,
		gnarkte.Point{X: c.Compliance.SenderExt.Proof.DerivedPK.X, Y: c.Compliance.SenderExt.Proof.DerivedPK.Y},
		gnarkte.Point{X: c.Compliance.SenderExt.Proof.SharedPoint.X, Y: c.Compliance.SenderExt.Proof.SharedPoint.Y},
		gnarkte.Point{X: c.Compliance.SenderExt.Proof.EncCmt.X, Y: c.Compliance.SenderExt.Proof.EncCmt.Y},
		senderExtMetadataHash,
		c.Compliance.SenderExt.Proof.Challenge,
		c.Compliance.SenderExt.Proof.Response,
		c.IsRegulated,
	); err != nil {
		return err
	}
	c.traceWiring("gadget.dleq", "tier=output_core", "derived_pk=compliance.output_core.proof.derived_pk", "shared_point=compliance.output_core.proof.shared_point", "enc_cmt=compliance.output_core.proof.enc_cmt", "metadata=output_core.metadata_hash", "challenge=compliance.output_core.proof.challenge", "response=compliance.output_core.proof.response")
	if err := VerifyDLEQ(
		api,
		gnarkte.Point{X: c.Compliance.OutputCore.Proof.DerivedPK.X, Y: c.Compliance.OutputCore.Proof.DerivedPK.Y},
		gnarkte.Point{X: c.Compliance.OutputCore.Proof.SharedPoint.X, Y: c.Compliance.OutputCore.Proof.SharedPoint.Y},
		gnarkte.Point{X: c.Compliance.OutputCore.Proof.EncCmt.X, Y: c.Compliance.OutputCore.Proof.EncCmt.Y},
		outputCoreMetadataHash,
		c.Compliance.OutputCore.Proof.Challenge,
		c.Compliance.OutputCore.Proof.Response,
		c.IsRegulated,
	); err != nil {
		return err
	}
	c.traceWiring("gadget.dleq", "tier=output_ext", "derived_pk=compliance.output_ext.proof.derived_pk", "shared_point=compliance.output_ext.proof.shared_point", "enc_cmt=compliance.output_ext.proof.enc_cmt", "metadata=output_ext.metadata_hash", "challenge=compliance.output_ext.proof.challenge", "response=compliance.output_ext.proof.response")
	if err := VerifyDLEQ(
		api,
		gnarkte.Point{X: c.Compliance.OutputExt.Proof.DerivedPK.X, Y: c.Compliance.OutputExt.Proof.DerivedPK.Y},
		gnarkte.Point{X: c.Compliance.OutputExt.Proof.SharedPoint.X, Y: c.Compliance.OutputExt.Proof.SharedPoint.Y},
		gnarkte.Point{X: c.Compliance.OutputExt.Proof.EncCmt.X, Y: c.Compliance.OutputExt.Proof.EncCmt.Y},
		outputExtMetadataHash,
		c.Compliance.OutputExt.Proof.Challenge,
		c.Compliance.OutputExt.Proof.Response,
		c.IsRegulated,
	); err != nil {
		return err
	}

	return nil
}

func (c *TransferCircuit) assertTransferNetBalanceCommitment(
	api frontend.API,
	shared *transferSharedContext,
	statementData *transferStatementData,
) (frontend.Variable, error) {
	netBalanceCommitment, err := computeTransferNetBalanceCommitment(
		api,
		statementData.inputAmounts,
		statementData.outputAmounts,
		shared.sharedAssetID,
		c.ActionBalanceBlinding,
	)
	if err != nil {
		return nil, err
	}
	c.traceWiring("decaf.assert_equivalent", "lhs=balance_commitment.computed", "rhs=claimed.balance_commitment")
	decafgnark.AssertEquivalent(api, netBalanceCommitment, shared.claimedBalanceCommitment)

	c.traceWiring("decaf.compress_to_field", "in=balance_commitment.computed", "out=balance_commitment.fq")
	balanceCommitmentFq, err := decafgnark.CompressToField(api, netBalanceCommitment)
	if err != nil {
		return nil, err
	}
	return balanceCommitmentFq, nil
}

func (c *TransferCircuit) buildTransferStatementFields(
	api frontend.API,
	balanceCommitmentFq frontend.Variable,
	statementData *transferStatementData,
) ([]frontend.Variable, error) {
	fields := make([]frontend.Variable, 0, transferStatementFieldCount())
	fields = append(fields, c.Anchor)
	fields = append(fields, statementData.outputCommitments...)
	fields = append(fields, balanceCommitmentFq)
	fields = append(fields, statementData.nullifiersAndRKs...)
	fields = append(fields, c.AssetAnchor, c.ComplianceAnchor)
	fields = append(fields, c.Compliance.DetectionCiphertext[:]...)

	appendCoreTier := func(epkFq frontend.Variable, tier TransferComplianceCoreFields) {
		fields = append(fields, epkFq, tier.C2)
		fields = append(fields, tier.Ciphertext[:]...)
	}
	appendExtTier := func(epkFq frontend.Variable, tier TransferComplianceExtFields) {
		fields = append(fields, epkFq, tier.C2)
		fields = append(fields, tier.Ciphertext[:]...)
	}
	appendProofTier := func(label string, proof TransferComplianceProofFields) error {
		c.traceWiring("decaf.compress_to_field", "in="+label+".proof.derived_pk", "out="+label+".proof.derived_pk_fq")
		derivedPKFq, err := decafgnark.CompressToField(
			api,
			gnarkte.Point{X: proof.DerivedPK.X, Y: proof.DerivedPK.Y},
		)
		if err != nil {
			return err
		}
		c.traceWiring("decaf.compress_to_field", "in="+label+".proof.enc_cmt", "out="+label+".proof.enc_cmt_fq")
		encCmtFq, err := decafgnark.CompressToField(
			api,
			gnarkte.Point{X: proof.EncCmt.X, Y: proof.EncCmt.Y},
		)
		if err != nil {
			return err
		}
		c.traceWiring("decaf.compress_to_field", "in="+label+".proof.shared_point", "out="+label+".proof.shared_point_fq")
		sharedPointFq, err := decafgnark.CompressToField(
			api,
			gnarkte.Point{X: proof.SharedPoint.X, Y: proof.SharedPoint.Y},
		)
		if err != nil {
			return err
		}
		fields = append(
			fields,
			proof.Statement.SubjectDerivation,
			proof.Statement.RingIDHash,
			proof.Statement.PolicyIDHash,
			proof.Statement.ResourceHash,
			proof.Statement.PermissionHash,
			proof.Statement.Tier,
			proof.Statement.TargetTimestamp,
			proof.Statement.Salt,
			derivedPKFq,
			encCmtFq,
			sharedPointFq,
			proof.Challenge,
			proof.Response,
		)
		return nil
	}

	appendCoreTier(statementData.senderCoreEPKFq, c.Compliance.SenderCore)
	appendExtTier(statementData.senderExtEPKFq, c.Compliance.SenderExt)
	appendCoreTier(statementData.outputCoreEPKFq, c.Compliance.OutputCore)
	appendExtTier(statementData.outputExtEPKFq, c.Compliance.OutputExt)
	fields = append(fields, c.TargetTimestamp)
	if err := appendProofTier("sender_core", c.Compliance.SenderCore.Proof); err != nil {
		return nil, err
	}
	if err := appendProofTier("sender_ext", c.Compliance.SenderExt.Proof); err != nil {
		return nil, err
	}
	if err := appendProofTier("output_core", c.Compliance.OutputCore.Proof); err != nil {
		return nil, err
	}
	if err := appendProofTier("output_ext", c.Compliance.OutputExt.Proof); err != nil {
		return nil, err
	}

	expected := transferStatementFieldCount()
	if len(fields) != expected {
		return nil, fmt.Errorf("expected %d transfer statement fields, got %d", expected, len(fields))
	}
	return fields, nil
}
