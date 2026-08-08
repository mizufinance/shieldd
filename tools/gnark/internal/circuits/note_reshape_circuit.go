package circuits

import (
	"fmt"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"

	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"golang.org/x/crypto/blake2b"
)

type NoteReshapeOutputCircuitFields struct {
	NoteCommitment frontend.Variable
	Note           NoteFields
}

type NoteReshapeSpendCircuitFields struct {
	Nullifier      frontend.Variable
	RK             Point2D
	Note           NoteFields
	StateProof     StateCommitmentFields
	AuthRandomizer frontend.Variable
}

type NoteReshapeSyntheticSpendCircuitFields struct {
	NoteReshapeSpendCircuitFields
	IsDummy            frontend.Variable
	DummyNullifierSeed frontend.Variable
	DummySpendAuthKey  frontend.Variable
}

type NoteReshapeCircuit struct {
	label       string
	nIn         int
	nOut        int
	wiringTrace *WiringTranscript

	ClaimedStatementHash frontend.Variable `gnark:",public"`

	Anchor                frontend.Variable
	BalanceCommitment     Point2D
	ActionBalanceBlinding frontend.Variable

	Auth            TransferAuthSharedFields
	Spends          []NoteReshapeSpendCircuitFields
	SyntheticSpends []NoteReshapeSyntheticSpendCircuitFields
	Outputs         []NoteReshapeOutputCircuitFields
}

func NewNoteReshapeCircuit(label string, nIn, nOut int) *NoteReshapeCircuit {
	circuit := &NoteReshapeCircuit{
		label:   label,
		nIn:     nIn,
		nOut:    nOut,
		Outputs: make([]NoteReshapeOutputCircuitFields, nOut),
	}
	if family, ok := generated.NoteReshapeFamilyByLabel(label); ok &&
		family.InputPadding == generated.InputPaddingSyntheticPrivate {
		circuit.SyntheticSpends = make([]NoteReshapeSyntheticSpendCircuitFields, nIn)
	} else {
		circuit.Spends = make([]NoteReshapeSpendCircuitFields, nIn)
	}
	return circuit
}

func (c *NoteReshapeCircuit) Define(api frontend.API) error {
	c.bindWiringTrace(api)
	family, ok := generated.NoteReshapeFamilyByLabel(c.label)
	if !ok {
		return fmt.Errorf("unsupported note reshape family %q", c.label)
	}
	if c.nIn <= 0 || c.nOut <= 0 {
		return fmt.Errorf("%s circuit shape must be positive, got %dx%d", c.label, c.nIn, c.nOut)
	}
	if len(c.Outputs) != c.nOut {
		return fmt.Errorf("%s circuit output shape mismatch: expected %d, got %d", c.label, c.nOut, len(c.Outputs))
	}
	if family.InputPadding == generated.InputPaddingSyntheticPrivate {
		if len(c.Spends) != 0 || len(c.SyntheticSpends) != c.nIn {
			return fmt.Errorf("%s synthetic input shape mismatch: expected %d synthetic spends and no fixed spends, got %d and %d", c.label, c.nIn, len(c.SyntheticSpends), len(c.Spends))
		}
	} else if len(c.Spends) != c.nIn || len(c.SyntheticSpends) != 0 {
		return fmt.Errorf("%s fixed input shape mismatch: expected %d fixed spends and no synthetic spends, got %d and %d", c.label, c.nIn, len(c.Spends), len(c.SyntheticSpends))
	}
	if family.NIn != c.nIn || family.NOut != c.nOut {
		return fmt.Errorf("%s circuit shape mismatch: registry requires %dx%d, got %dx%d", c.label, family.NIn, family.NOut, c.nIn, c.nOut)
	}
	if family.InputPadding == generated.InputPaddingSyntheticPrivate {
		if err := c.validateSyntheticInputSelectors(api, family); err != nil {
			return err
		}
	}

	sharedAK := gnarkte.Point{X: c.Auth.AK.X, Y: c.Auth.AK.Y}
	claimedBalanceCommitment := gnarkte.Point{X: c.BalanceCommitment.X, Y: c.BalanceCommitment.Y}
	var firstSpend NoteReshapeSpendCircuitFields
	if family.InputPadding == generated.InputPaddingSyntheticPrivate {
		firstSpend = c.SyntheticSpends[0].NoteReshapeSpendCircuitFields
	} else {
		firstSpend = c.Spends[0]
	}
	sharedDivGen := gnarkte.Point{X: firstSpend.Note.DivGen.X, Y: firstSpend.Note.DivGen.Y}
	sharedTransmission := gnarkte.Point{X: firstSpend.Note.Transmission.X, Y: firstSpend.Note.Transmission.Y}
	sharedAssetID := firstSpend.Note.AssetID
	c.traceWiring(
		"shared.bind",
		"shared.ak=auth.ak",
		"claimed.balance_commitment=balance_commitment",
		"shared.div_gen=spend0.note.div_gen",
		"shared.transmission=spend0.note.transmission",
		"shared.asset_id=spend0.note.asset_id",
	)
	c.traceWiring("decaf.assert_on_curve", "point=claimed.balance_commitment")
	assertDecafPointOnCurve(api, claimedBalanceCommitment)
	c.traceWiring("decaf.assert_on_curve", "point=shared.div_gen")
	assertDecafPointOnCurve(api, sharedDivGen)
	c.traceWiring("decaf.assert_on_curve", "point=shared.transmission")
	assertDecafPointOnCurve(api, sharedTransmission)

	// T1-f: decaf compress is coset-invariant, so every note's div_gen (which
	// is only ever bound by AssertEquivalent to shared.div_gen, never
	// consumed directly by the note commitment) can use the shared point's
	// compressed field element instead of re-compressing its own. Nothing
	// downstream depends on the per-note div_gen beyond the equivalence
	// assert, so this is sound; membership still flows through
	// shared.div_gen's on-curve assert (:79) + this single compress.
	c.traceWiring("decaf.compress_to_field", "in=shared.div_gen", "out=shared.div_gen_fq")
	sharedDivGenFq, err := decafgnark.CompressToField(api, sharedDivGen)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.compress_to_field", "in=shared.transmission", "out=shared.transmission_fq")
	sharedTransmissionFq, err := decafgnark.CompressToField(api, sharedTransmission)
	if err != nil {
		return err
	}

	// T1-d: DTK depends only on circuit-global nk/ak/ivk and shared.div_gen
	// (every note's div_gen is asserted decaf-equivalent to shared.div_gen,
	// and scalar-mul commutes with the decaf coset), so compute it once here
	// instead of once per spend/output. The per-note transmission≡shared
	// asserts below carry the binding through to each note.
	c.traceWiring("decaf.diversified_transmission_key", "nk=auth.nk", "ak=shared.ak", "div_gen=shared.div_gen", "ivk_reduced=auth.ivk_reduced", "ivk_quotient_a=auth.ivk_quotient_a", "out=shared.transmission.computed")
	computedSharedTransmission, err := DiversifiedTransmissionKey(
		api,
		c.Auth.NK,
		sharedAK,
		sharedDivGen,
		c.Auth.IVKReduced,
		c.Auth.IVKQuotientA,
	)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.assert_equivalent", "lhs=shared.transmission.computed", "rhs=shared.transmission")
	decafgnark.AssertEquivalent(api, computedSharedTransmission, sharedTransmission)

	inputAmounts := make([]frontend.Variable, 0, c.nIn)
	outputAmounts := make([]frontend.Variable, 0, c.nOut)
	statementFields := make([]frontend.Variable, 0, NoteReshapeStatementFieldCount(c.nIn, c.nOut))
	outputCommitments := make([]frontend.Variable, 0, c.nOut)
	nullifiersAndRKs := make([]frontend.Variable, 0, 2*c.nIn)

	for i := 0; i < c.nIn; i++ {
		spendName := fmt.Sprintf("spend%d", i)
		c.traceWiring("spend.begin", spendName)
		var amount, nullifier, rkCompressed frontend.Variable
		if family.InputPadding == generated.InputPaddingSyntheticPrivate {
			amount, nullifier, rkCompressed, err = c.verifyPaddedNoteReshapeSpend(
				api,
				spendName,
				sharedAK,
				sharedDivGen,
				sharedDivGenFq,
				sharedTransmission,
				sharedTransmissionFq,
				sharedAssetID,
				&c.SyntheticSpends[i],
				i,
			)
		} else {
			amount, nullifier, rkCompressed, err = c.verifyFixedNoteReshapeSpend(
				api,
				spendName,
				sharedAK,
				sharedDivGen,
				sharedDivGenFq,
				sharedTransmission,
				sharedTransmissionFq,
				sharedAssetID,
				&c.Spends[i],
			)
		}
		if err != nil {
			return err
		}
		c.traceWiring("spend.collect", spendName, "amount->input_amounts", "nullifier->statement.nullifiers_and_rks", "rk_compressed->statement.nullifiers_and_rks")
		inputAmounts = append(inputAmounts, amount)
		nullifiersAndRKs = append(nullifiersAndRKs, nullifier, rkCompressed)
	}

	for i := range c.Outputs {
		outputName := fmt.Sprintf("output%d", i)
		c.traceWiring("output.begin", outputName)
		amount, commitment, err := c.verifyFixedNoteReshapeOutput(
			api,
			outputName,
			sharedAK,
			sharedDivGen,
			sharedDivGenFq,
			sharedTransmission,
			sharedTransmissionFq,
			sharedAssetID,
			&c.Outputs[i],
		)
		if err != nil {
			return err
		}
		c.traceWiring("output.collect", outputName, "amount->output_amounts", "commitment->statement.output_commitments")
		outputAmounts = append(outputAmounts, amount)
		outputCommitments = append(outputCommitments, commitment)
	}

	// NB-1: note_reshape is always conservation-exact (single asset ID shared
	// by every spend/output, net value change is always zero), so the
	// balance commitment collapses to a Sigma(in)=Sigma(out) assert plus the
	// blinding ladder - no per-amount value-generator ladders are needed.
	c.traceWiring("decaf.conservation_net_balance_commitment", "inputs=input_amounts", "outputs=output_amounts", "blinding=action_balance_blinding", "out=balance_commitment.computed")
	balanceCommitmentPoint, err := computeConservationNetBalanceCommitment(
		api,
		inputAmounts,
		outputAmounts,
		c.ActionBalanceBlinding,
	)
	if err != nil {
		return err
	}
	c.traceWiring("decaf.assert_equivalent", "lhs=balance_commitment.computed", "rhs=claimed.balance_commitment")
	decafgnark.AssertEquivalent(api, balanceCommitmentPoint, claimedBalanceCommitment)
	c.traceWiring("decaf.compress_to_field", "in=balance_commitment.computed", "out=balance_commitment.fq")
	balanceCommitmentFq, err := decafgnark.CompressToField(api, balanceCommitmentPoint)
	if err != nil {
		return err
	}

	c.traceWiring("statement.append", "field=anchor")
	statementFields = append(statementFields, c.Anchor)
	c.traceWiring("statement.append_all", "fields=output_commitments")
	statementFields = append(statementFields, outputCommitments...)
	c.traceWiring("statement.append", "field=balance_commitment.fq")
	statementFields = append(statementFields, balanceCommitmentFq)
	c.traceWiring("statement.append_all", "fields=nullifiers_and_rks")
	statementFields = append(statementFields, nullifiersAndRKs...)
	c.traceWiring("statement.hash", "family="+c.label, "fields=statement_fields", "out=statement_hash")
	statementHash, err := noteReshapeStatementHash(api, c.label, c.nIn, c.nOut, statementFields)
	if err != nil {
		return err
	}
	c.traceWiring("assert.eq", "lhs=statement_hash", "rhs=claimed_statement_hash")
	api.AssertIsEqual(statementHash, c.ClaimedStatementHash)
	return nil
}

func (c *NoteReshapeCircuit) validateSyntheticInputSelectors(api frontend.API, family generated.NoteReshapeFamilySpec) error {
	for index, spend := range c.SyntheticSpends {
		c.traceWiring("assert.boolean", fmt.Sprintf("value=spend%d.is_dummy", index))
		api.AssertIsBoolean(spend.IsDummy)
	}
	c.traceWiring("assert.dummy_suffix", "flags=spends.is_dummy")
	assertDummySuffix(api, func(index int) frontend.Variable { return c.SyntheticSpends[index].IsDummy }, c.nIn)
	activeInputs := frontend.Variable(0)
	for _, spend := range c.SyntheticSpends {
		activeInputs = api.Add(activeInputs, api.Sub(1, spend.IsDummy))
	}
	c.traceWiring("assert.active_range", "value=active_input_count", fmt.Sprintf("min=%d", family.MinRealInputs), fmt.Sprintf("max=%d", family.MaxRealInputs))
	assertIntegerRange(api, activeInputs, family.MinRealInputs, family.MaxRealInputs)
	return nil
}

func assertDummySuffix(api frontend.API, flag func(int) frontend.Variable, length int) {
	api.AssertIsEqual(flag(0), 0)
	for index := 1; index < length; index++ {
		api.AssertIsEqual(
			api.Mul(flag(index-1), api.Sub(1, flag(index))),
			0,
		)
	}
}

func assertIntegerRange(api frontend.API, value frontend.Variable, min, max int) {
	product := frontend.Variable(1)
	for allowed := min; allowed <= max; allowed++ {
		product = api.Mul(product, api.Sub(value, allowed))
	}
	api.AssertIsEqual(product, 0)
}

func noteReshapeSyntheticDummyNullifier(
	api frontend.API,
	seed frontend.Variable,
	authRandomizer frontend.Variable,
	slotIndex int,
) (frontend.Variable, error) {
	domainBytes := blake2b.Sum512([]byte("shieldd.note_reshape.synthetic_dummy.nullifier"))
	domain := LittleEndianBytesToBigInt(domainBytes[:])
	return Poseidon377Hash3(api, domain, [3]frontend.Variable{seed, authRandomizer, slotIndex})
}

func noteReshapeStatementHash(
	api frontend.API,
	label string,
	nIn, nOut int,
	fields []frontend.Variable,
) (frontend.Variable, error) {
	return NoteReshapeStatementHashForShape(api, label, nIn, nOut, fields)
}

func (c *NoteReshapeCircuit) verifyPaddedNoteReshapeSpend(
	api frontend.API,
	name string,
	sharedAK gnarkte.Point,
	sharedDivGen gnarkte.Point,
	sharedDivGenFq frontend.Variable,
	sharedTransmission gnarkte.Point,
	sharedTransmissionFq frontend.Variable,
	sharedAssetID frontend.Variable,
	spend *NoteReshapeSyntheticSpendCircuitFields,
	index int,
) (frontend.Variable, frontend.Variable, frontend.Variable, error) {
	spentDivGen := gnarkte.Point{X: spend.Note.DivGen.X, Y: spend.Note.DivGen.Y}
	spentTransmission := gnarkte.Point{X: spend.Note.Transmission.X, Y: spend.Note.Transmission.Y}
	rkClaimed := gnarkte.Point{X: spend.RK.X, Y: spend.RK.Y}
	isNotDummy := api.Sub(1, spend.IsDummy)

	c.traceWiring(
		"gadget.note_commitment",
		"blinding="+name+".note.blinding",
		"amount="+name+".note.amount",
		"asset_id="+name+".note.asset_id",
		"div_gen_fq="+name+".note.div_gen_fq",
		"transmission_key_s="+name+".note.transmission_key_s",
		"out="+name+".note.commitment.computed",
	)
	spentCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		spend.Note.Blinding,
		spend.Note.Amount,
		spend.Note.AssetID,
		sharedDivGenFq,
		spend.Note.TransmissionKeyS,
	)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("assert.eq_if", "lhs="+name+".note.commitment.computed", "rhs="+name+".state_proof.commitment", "enabled="+name+".is_real")
	AssertEqualIf(api, spentCommitment, spend.StateProof.Commitment, isNotDummy)

	c.traceWiring("gadget.nullifier", "nk=auth.nk", "commitment="+name+".state_proof.commitment", "position="+name+".state_proof.position", "out="+name+".nullifier.real")
	realNullifier, err := Nullifier(api, c.Auth.NK, spend.StateProof.Commitment, spend.StateProof.Position)
	if err != nil {
		return nil, nil, nil, err
	}
	statePath := make([][3]frontend.Variable, len(spend.StateProof.Path))
	copy(statePath, spend.StateProof.Path[:])
	c.traceWiring("gadget.state_commitment_path", "commitment="+name+".state_proof.commitment", "position="+name+".state_proof.position", "path="+name+".state_proof.path", "out="+name+".anchor.computed")
	anchor, err := VerifyStateCommitmentPath(api, spend.StateProof.Commitment, spend.StateProof.Position, statePath)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("assert.eq_if", "lhs="+name+".anchor.computed", "rhs=anchor", "enabled="+name+".is_real")
	AssertEqualIf(api, anchor, c.Anchor, isNotDummy)

	c.traceWiring("gadget.synthetic_dummy_nullifier", "seed="+name+".dummy_nullifier_seed", "randomizer="+name+".auth_randomizer", fmt.Sprintf("slot=%d", index), "out="+name+".nullifier.dummy")
	syntheticNullifier, err := noteReshapeSyntheticDummyNullifier(
		api,
		spend.DummyNullifierSeed,
		spend.AuthRandomizer,
		index,
	)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("dummy.mux", "flag="+name+".is_dummy", "real="+name+".nullifier.real", "dummy="+name+".nullifier.dummy", "out="+name+".nullifier.selected")
	nullifier := api.Add(
		api.Mul(isNotDummy, realNullifier),
		api.Mul(spend.IsDummy, syntheticNullifier),
	)
	c.traceWiring("assert.eq", "lhs="+name+".nullifier", "rhs="+name+".nullifier.selected")
	api.AssertIsEqual(spend.Nullifier, nullifier)

	c.traceWiring("decaf.randomized_verification_key", "ak=shared.ak", "randomizer="+name+".auth_randomizer", "out="+name+".rk.real")
	computedRK, err := RandomizedVerificationKey(api, sharedAK, spend.AuthRandomizer)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("decaf.randomized_verification_key.dummy", "ak="+name+".dummy_spend_auth_key", "randomizer="+name+".auth_randomizer", "out="+name+".rk.dummy")
	dummyRK, err := syntheticDummyVerificationKey(api, spend.DummySpendAuthKey, spend.AuthRandomizer)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("decaf.assert_equivalent_if", "lhs="+name+".rk.real", "rhs="+name+".rk.claimed", "enabled="+name+".is_real")
	decafgnark.AssertEquivalentIf(api, computedRK, rkClaimed, isNotDummy)
	c.traceWiring("decaf.assert_equivalent_if", "lhs="+name+".rk.dummy", "rhs="+name+".rk.claimed", "enabled="+name+".is_dummy")
	decafgnark.AssertEquivalentIf(api, dummyRK, rkClaimed, spend.IsDummy)

	c.traceWiring("decaf.diversified_transmission_key", "nk=auth.nk", "ak=shared.ak", "div_gen="+name+".note.div_gen", "ivk_reduced=auth.ivk_reduced", "ivk_quotient_a=auth.ivk_quotient_a", "out="+name+".transmission.computed")
	computedSpentTransmission, err := DiversifiedTransmissionKey(
		api,
		c.Auth.NK,
		sharedAK,
		spentDivGen,
		c.Auth.IVKReduced,
		c.Auth.IVKQuotientA,
	)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("decaf.assert_equivalent_if", "lhs="+name+".transmission.computed", "rhs="+name+".note.transmission", "enabled="+name+".is_real")
	decafgnark.AssertEquivalentIf(api, computedSpentTransmission, spentTransmission, isNotDummy)
	c.traceWiring("assert.eq_if", "lhs="+name+".note.amount", "rhs=0", "enabled="+name+".is_dummy")
	AssertEqualIf(api, spend.Note.Amount, 0, spend.IsDummy)

	c.traceWiring("decaf.assert_on_curve", "point="+name+".note.transmission")
	assertDecafPointOnCurve(api, spentTransmission)
	c.traceWiring("decaf.assert_equivalent", "lhs="+name+".note.div_gen", "rhs=shared.div_gen")
	decafgnark.AssertEquivalent(api, spentDivGen, sharedDivGen)
	c.traceWiring("decaf.assert_equivalent", "lhs="+name+".note.transmission", "rhs=shared.transmission")
	decafgnark.AssertEquivalent(api, spentTransmission, sharedTransmission)
	c.traceWiring("assert.eq_if", "lhs="+name+".note.transmission_key_s", "rhs=shared.transmission_fq", "enabled="+name+".is_real")
	AssertEqualIf(api, spend.Note.TransmissionKeyS, sharedTransmissionFq, isNotDummy)
	c.traceWiring("assert.eq", "lhs="+name+".note.asset_id", "rhs=shared.asset_id")
	api.AssertIsEqual(spend.Note.AssetID, sharedAssetID)

	c.traceWiring("decaf.compress_to_field", "in="+name+".rk.claimed", "out="+name+".rk.compressed")
	rkCompressed, err := decafgnark.CompressToField(api, rkClaimed)
	if err != nil {
		return nil, nil, nil, err
	}
	return spend.Note.Amount, nullifier, rkCompressed, nil
}

func (c *NoteReshapeCircuit) verifyFixedNoteReshapeSpend(
	api frontend.API,
	name string,
	sharedAK gnarkte.Point,
	sharedDivGen gnarkte.Point,
	sharedDivGenFq frontend.Variable,
	sharedTransmission gnarkte.Point,
	sharedTransmissionFq frontend.Variable,
	sharedAssetID frontend.Variable,
	spend *NoteReshapeSpendCircuitFields,
) (frontend.Variable, frontend.Variable, frontend.Variable, error) {
	spentDivGen := gnarkte.Point{X: spend.Note.DivGen.X, Y: spend.Note.DivGen.Y}
	spentTransmission := gnarkte.Point{X: spend.Note.Transmission.X, Y: spend.Note.Transmission.Y}
	rkClaimed := gnarkte.Point{X: spend.RK.X, Y: spend.RK.Y}

	// T1-f: use shared.div_gen's compressed form (computed once in Define);
	// the per-note div_gen is bound only by the AssertEquivalent below.
	c.traceWiring(
		"gadget.note_commitment",
		"blinding="+name+".note.blinding",
		"amount="+name+".note.amount",
		"asset_id="+name+".note.asset_id",
		"div_gen_fq="+name+".note.div_gen_fq",
		"transmission_key_s="+name+".note.transmission_key_s",
		"out="+name+".note.commitment.computed",
	)
	spentCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		spend.Note.Blinding,
		spend.Note.Amount,
		spend.Note.AssetID,
		sharedDivGenFq,
		spend.Note.TransmissionKeyS,
	)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("assert.eq", "lhs="+name+".note.commitment.computed", "rhs="+name+".state_proof.commitment")
	api.AssertIsEqual(spentCommitment, spend.StateProof.Commitment)

	c.traceWiring("gadget.nullifier", "nk=auth.nk", "commitment="+name+".state_proof.commitment", "position="+name+".state_proof.position", "out="+name+".nullifier.computed")
	nullifier, err := Nullifier(api, c.Auth.NK, spend.StateProof.Commitment, spend.StateProof.Position)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("assert.eq", "lhs="+name+".nullifier.computed", "rhs="+name+".nullifier")
	api.AssertIsEqual(nullifier, spend.Nullifier)

	statePath := make([][3]frontend.Variable, len(spend.StateProof.Path))
	copy(statePath, spend.StateProof.Path[:])
	c.traceWiring("gadget.state_commitment_path", "commitment="+name+".state_proof.commitment", "position="+name+".state_proof.position", "path="+name+".state_proof.path", "out="+name+".anchor.computed")
	anchor, err := VerifyStateCommitmentPath(api, spend.StateProof.Commitment, spend.StateProof.Position, statePath)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("assert.eq", "lhs="+name+".anchor.computed", "rhs=anchor")
	api.AssertIsEqual(anchor, c.Anchor)

	c.traceWiring("decaf.randomized_verification_key", "ak=shared.ak", "randomizer="+name+".auth_randomizer", "out="+name+".rk.computed")
	computedRK, err := RandomizedVerificationKey(api, sharedAK, spend.AuthRandomizer)
	if err != nil {
		return nil, nil, nil, err
	}
	c.traceWiring("decaf.assert_equivalent", "lhs="+name+".rk.computed", "rhs="+name+".rk.claimed")
	decafgnark.AssertEquivalent(api, computedRK, rkClaimed)
	c.traceWiring("decaf.compress_to_field", "in="+name+".rk.claimed", "out="+name+".rk.compressed")
	rkCompressed, err := decafgnark.CompressToField(api, rkClaimed)
	if err != nil {
		return nil, nil, nil, err
	}

	c.traceWiring("decaf.assert_on_curve", "point="+name+".note.transmission")
	assertDecafPointOnCurve(api, spentTransmission)
	c.traceWiring("decaf.assert_equivalent", "lhs="+name+".note.div_gen", "rhs=shared.div_gen")
	decafgnark.AssertEquivalent(api, spentDivGen, sharedDivGen)
	c.traceWiring("decaf.assert_equivalent", "lhs="+name+".note.transmission", "rhs=shared.transmission")
	decafgnark.AssertEquivalent(api, spentTransmission, sharedTransmission)
	c.traceWiring("assert.eq", "lhs="+name+".note.transmission_key_s", "rhs=shared.transmission_fq")
	api.AssertIsEqual(spend.Note.TransmissionKeyS, sharedTransmissionFq)
	c.traceWiring("assert.eq", "lhs="+name+".note.asset_id", "rhs=shared.asset_id")
	api.AssertIsEqual(spend.Note.AssetID, sharedAssetID)

	return spend.Note.Amount, nullifier, rkCompressed, nil
}

func (c *NoteReshapeCircuit) verifyFixedNoteReshapeOutput(
	api frontend.API,
	name string,
	sharedAK gnarkte.Point,
	sharedDivGen gnarkte.Point,
	sharedDivGenFq frontend.Variable,
	sharedTransmission gnarkte.Point,
	sharedTransmissionFq frontend.Variable,
	sharedAssetID frontend.Variable,
	output *NoteReshapeOutputCircuitFields,
) (frontend.Variable, frontend.Variable, error) {
	createdDivGen := gnarkte.Point{X: output.Note.DivGen.X, Y: output.Note.DivGen.Y}
	createdTransmission := gnarkte.Point{X: output.Note.Transmission.X, Y: output.Note.Transmission.Y}

	// T1-f: use shared.div_gen's compressed form (computed once in Define);
	// the per-note div_gen is bound only by the AssertEquivalent below.
	c.traceWiring(
		"gadget.note_commitment",
		"blinding="+name+".note.blinding",
		"amount="+name+".note.amount",
		"asset_id="+name+".note.asset_id",
		"div_gen_fq="+name+".note.div_gen_fq",
		"transmission_key_s="+name+".note.transmission_key_s",
		"out="+name+".note.commitment.computed",
	)
	noteCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		output.Note.Blinding,
		output.Note.Amount,
		output.Note.AssetID,
		sharedDivGenFq,
		output.Note.TransmissionKeyS,
	)
	if err != nil {
		return nil, nil, err
	}
	c.traceWiring("assert.eq", "lhs="+name+".note.commitment.computed", "rhs="+name+".note_commitment")
	api.AssertIsEqual(noteCommitment, output.NoteCommitment)

	c.traceWiring("decaf.assert_on_curve", "point="+name+".note.transmission")
	assertDecafPointOnCurve(api, createdTransmission)
	c.traceWiring("decaf.assert_equivalent", "lhs="+name+".note.div_gen", "rhs=shared.div_gen")
	decafgnark.AssertEquivalent(api, createdDivGen, sharedDivGen)
	c.traceWiring("decaf.assert_equivalent", "lhs="+name+".note.transmission", "rhs=shared.transmission")
	decafgnark.AssertEquivalent(api, createdTransmission, sharedTransmission)
	c.traceWiring("assert.eq", "lhs="+name+".note.transmission_key_s", "rhs=shared.transmission_fq")
	api.AssertIsEqual(output.Note.TransmissionKeyS, sharedTransmissionFq)
	c.traceWiring("assert.eq", "lhs="+name+".note.asset_id", "rhs=shared.asset_id")
	api.AssertIsEqual(output.Note.AssetID, sharedAssetID)

	return output.Note.Amount, noteCommitment, nil
}
