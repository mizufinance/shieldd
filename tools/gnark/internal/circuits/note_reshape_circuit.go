package circuits

import (
	"fmt"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"

	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

type NoteReshapeOutputCircuitFields struct {
	NoteCommitment frontend.Variable
	Note           NoteFields
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

	Auth    TransferAuthSharedFields
	Spends  []TransferSpendCircuitFields
	Outputs []NoteReshapeOutputCircuitFields
}

func NewConsolidateCircuit(nIn int) *NoteReshapeCircuit {
	return &NoteReshapeCircuit{
		label:   fmt.Sprintf("consolidate%dx1", nIn),
		nIn:     nIn,
		nOut:    1,
		Spends:  make([]TransferSpendCircuitFields, nIn),
		Outputs: make([]NoteReshapeOutputCircuitFields, 1),
	}
}

func NewSplitCircuit(nOut int) *NoteReshapeCircuit {
	return &NoteReshapeCircuit{
		label:   fmt.Sprintf("split1x%d", nOut),
		nIn:     1,
		nOut:    nOut,
		Spends:  make([]TransferSpendCircuitFields, 1),
		Outputs: make([]NoteReshapeOutputCircuitFields, nOut),
	}
}

func (c *NoteReshapeCircuit) Define(api frontend.API) error {
	c.bindWiringTrace(api)
	if c.nIn <= 0 || c.nOut <= 0 {
		return fmt.Errorf("%s circuit shape must be positive, got %dx%d", c.label, c.nIn, c.nOut)
	}
	if len(c.Spends) != c.nIn || len(c.Outputs) != c.nOut {
		return fmt.Errorf("%s circuit shape mismatch: expected %dx%d, got %dx%d", c.label, c.nIn, c.nOut, len(c.Spends), len(c.Outputs))
	}

	sharedAK := gnarkte.Point{X: c.Auth.AK.X, Y: c.Auth.AK.Y}
	claimedBalanceCommitment := gnarkte.Point{X: c.BalanceCommitment.X, Y: c.BalanceCommitment.Y}
	sharedDivGen := gnarkte.Point{X: c.Spends[0].Note.DivGen.X, Y: c.Spends[0].Note.DivGen.Y}
	sharedTransmission := gnarkte.Point{X: c.Spends[0].Note.Transmission.X, Y: c.Spends[0].Note.Transmission.Y}
	sharedAssetID := c.Spends[0].Note.AssetID
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

	for i := range c.Spends {
		spendName := fmt.Sprintf("spend%d", i)
		c.traceWiring("spend.begin", spendName)
		amount, nullifier, rkCompressed, err := c.verifyNoteReshapeSpend(
			api,
			spendName,
			sharedAK,
			sharedDivGen,
			sharedDivGenFq,
			sharedTransmission,
			sharedAssetID,
			&c.Spends[i],
		)
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
		amount, commitment, err := c.verifyNoteReshapeOutput(
			api,
			outputName,
			sharedAK,
			sharedDivGen,
			sharedDivGenFq,
			sharedTransmission,
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

	c.traceWiring("decaf.net_balance_commitment", "inputs=input_amounts", "outputs=output_amounts", "asset_id=shared.asset_id", "blinding=action_balance_blinding", "out=balance_commitment.computed")
	balanceCommitmentPoint, err := computeTransferNetBalanceCommitment(
		api,
		inputAmounts,
		outputAmounts,
		sharedAssetID,
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

func noteReshapeStatementHash(
	api frontend.API,
	label string,
	nIn, nOut int,
	fields []frontend.Variable,
) (frontend.Variable, error) {
	switch label {
	case fmt.Sprintf("consolidate%dx1", nIn):
		return ConsolidateStatementHashForShape(api, nIn, fields)
	case fmt.Sprintf("split1x%d", nOut):
		return SplitStatementHashForShape(api, nOut, fields)
	default:
		return nil, fmt.Errorf("unsupported note reshape statement hash label %q", label)
	}
}

func (c *NoteReshapeCircuit) verifyNoteReshapeSpend(
	api frontend.API,
	name string,
	sharedAK gnarkte.Point,
	sharedDivGen gnarkte.Point,
	sharedDivGenFq frontend.Variable,
	sharedTransmission gnarkte.Point,
	sharedAssetID frontend.Variable,
	spend *TransferSpendCircuitFields,
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
		"clue_key="+name+".note.clue_key",
		"out="+name+".note.commitment.computed",
	)
	spentCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		spend.Note.Blinding,
		spend.Note.Amount,
		spend.Note.AssetID,
		sharedDivGenFq,
		spend.Note.TransmissionKeyS,
		spend.Note.ClueKey,
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
	c.traceWiring("assert.eq", "lhs="+name+".note.asset_id", "rhs=shared.asset_id")
	api.AssertIsEqual(spend.Note.AssetID, sharedAssetID)

	return spend.Note.Amount, nullifier, rkCompressed, nil
}

func (c *NoteReshapeCircuit) verifyNoteReshapeOutput(
	api frontend.API,
	name string,
	sharedAK gnarkte.Point,
	sharedDivGen gnarkte.Point,
	sharedDivGenFq frontend.Variable,
	sharedTransmission gnarkte.Point,
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
		"clue_key="+name+".note.clue_key",
		"out="+name+".note.commitment.computed",
	)
	noteCommitment, err := NoteCommitmentWithCompressedDivGen(
		api,
		output.Note.Blinding,
		output.Note.Amount,
		output.Note.AssetID,
		sharedDivGenFq,
		output.Note.TransmissionKeyS,
		output.Note.ClueKey,
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
	c.traceWiring("assert.eq", "lhs="+name+".note.asset_id", "rhs=shared.asset_id")
	api.AssertIsEqual(output.Note.AssetID, sharedAssetID)

	return output.Note.Amount, noteCommitment, nil
}
