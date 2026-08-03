package circuits_test

import (
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/test"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

type transferMutation struct {
	name   string
	mutate func(*circuits.TransferCircuit)
}

func loadTransferAssignment(t *testing.T) *circuits.TransferCircuit {
	t.Helper()
	fixtureBytes := testfixtures.LoadTransferWitnessV1("transfer")
	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV1(fixtureBytes)
	if err != nil {
		t.Fatalf("decode transfer witness fixture: %v", err)
	}
	validateTransferMutationFixture(t, assignment)
	return assignment
}

func validateTransferMutationFixture(t *testing.T, assignment *circuits.TransferCircuit) {
	t.Helper()
	// These metamorphic tests assume the fixed 2-input, 2-output transfer fixture
	// used by the transfer circuit and mutate the first spend/output path directly.
	if len(assignment.Spends) == 0 {
		t.Fatalf("transfer witness fixture must contain at least one spend")
	}
	if len(assignment.Outputs) < 2 {
		t.Fatalf("transfer witness fixture must contain at least two outputs")
	}
	if len(assignment.Spends[0].StateProof.Path) == 0 {
		t.Fatalf("transfer witness fixture first spend must contain a state path")
	}
}

func assertTransferMutationRejected(t *testing.T, mutation transferMutation) {
	t.Helper()
	assignment := loadTransferAssignment(t)
	mutation.mutate(assignment)

	if err := test.IsSolved(circuits.NewTransferCircuit(), assignment, ecc.BLS12_377.ScalarField()); err == nil {
		t.Fatalf("expected transfer circuit to reject mutation %q", mutation.name)
	}
}

func le32FromBigInt(t *testing.T, value *big.Int) [32]byte {
	t.Helper()
	var out [32]byte
	if value.Sign() < 0 {
		t.Fatalf("negative field value %s", value.String())
	}
	bytes := value.Bytes()
	if len(bytes) > len(out) {
		t.Fatalf("field value %s exceeds 32 bytes", value.String())
	}
	for i := range bytes {
		out[i] = bytes[len(bytes)-1-i]
	}
	return out
}

func fieldElementStrings(fields [][32]byte) []*big.Int {
	out := make([]*big.Int, 0, len(fields))
	for i := range fields {
		out = append(out, primitives.LittleEndianBytesToBigInt(fields[i][:]))
	}
	return out
}

func pointFromNative(t *testing.T, x, y *big.Int) circuits.Point2D {
	t.Helper()
	return circuits.Point2D{X: x.String(), Y: y.String()}
}

func transferAssignmentWithFalseRegulatedBranch(t *testing.T) *circuits.TransferCircuit {
	t.Helper()

	fixtureBytes := testfixtures.LoadTransferWitnessV1("transfer")
	witness, _, err := abi.DecodeTransferWitnessV1(fixtureBytes)
	if err != nil {
		t.Fatalf("decode transfer witness fixture: %v", err)
	}
	if !witness.IsRegulated {
		t.Fatalf("transfer fixture must start regulated for this regression")
	}
	if len(witness.Outputs) == 0 || !witness.Outputs[0].IsReceiver {
		t.Fatalf("transfer fixture must expose receiver output first")
	}

	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV1(fixtureBytes)
	if err != nil {
		t.Fatalf("build transfer assignment: %v", err)
	}

	unregulatedRingPK, _, err := compliance.UnregulatedComplianceKeys()
	if err != nil {
		t.Fatalf("derive unregulated compliance keys: %v", err)
	}
	senderAck, err := compliance.DeriveACKFromLeafDNative(
		unregulatedRingPK,
		primitives.LittleEndianBytesToBigInt(witness.SenderD[:]),
	)
	if err != nil {
		t.Fatalf("derive unregulated sender ACK: %v", err)
	}
	receiverAck, err := compliance.DeriveACKFromLeafDNative(
		unregulatedRingPK,
		primitives.LittleEndianBytesToBigInt(witness.Outputs[0].RecipientD[:]),
	)
	if err != nil {
		t.Fatalf("derive unregulated receiver ACK: %v", err)
	}

	senderPoint := abi.PointAffineBinary{
		X: le32FromBigInt(t, senderAck.X.(*big.Int)),
		Y: le32FromBigInt(t, senderAck.Y.(*big.Int)),
	}
	receiverPoint := abi.PointAffineBinary{
		X: le32FromBigInt(t, receiverAck.X.(*big.Int)),
		Y: le32FromBigInt(t, receiverAck.Y.(*big.Int)),
	}
	witness.SenderCore.DerivedPKAffine = senderPoint
	witness.SenderExt.DerivedPKAffine = senderPoint
	witness.OutputCore.DerivedPKAffine = receiverPoint
	witness.OutputExt.DerivedPKAffine = receiverPoint

	fields, err := abi.ReconstructedTransferStatementFieldsFromWitnessV1(witness)
	if err != nil {
		t.Fatalf("reconstruct transfer statement fields: %v", err)
	}
	statementHash, err := primitives.TransferStatementHashNativeForShape(
		fieldElementStrings(fields),
		circuits.TransferCircuitInputs,
		circuits.TransferCircuitOutputs,
	)
	if err != nil {
		t.Fatalf("compute transfer statement hash: %v", err)
	}

	assignment.IsRegulated = 0
	assignment.ClaimedStatementHash = statementHash.String()
	assignment.Compliance.SenderCore.Proof.DerivedPK = pointFromNative(t, senderAck.X.(*big.Int), senderAck.Y.(*big.Int))
	assignment.Compliance.SenderExt.Proof.DerivedPK = pointFromNative(t, senderAck.X.(*big.Int), senderAck.Y.(*big.Int))
	assignment.Compliance.OutputCore.Proof.DerivedPK = pointFromNative(t, receiverAck.X.(*big.Int), receiverAck.Y.(*big.Int))
	assignment.Compliance.OutputExt.Proof.DerivedPK = pointFromNative(t, receiverAck.X.(*big.Int), receiverAck.Y.(*big.Int))
	return assignment
}

func TestTransferCircuitRejectsRegulatedAssetRoutedAsUnregulated(t *testing.T) {
	assignment := transferAssignmentWithFalseRegulatedBranch(t)
	if err := test.IsSolved(circuits.NewTransferCircuit(), assignment, ecc.BLS12_377.ScalarField()); err == nil {
		t.Fatalf("expected transfer circuit to reject regulated asset routed through unregulated branch")
	}
}

func TestShieldedIcs20WithdrawalCircuitRejectsRegulatedAssetRoutedAsUnregulated(t *testing.T) {
	fixtureBytes := testfixtures.LoadShieldedIcs20WithdrawalWitnessV1("shielded_ics20_withdrawal")
	witness, family, err := abi.DecodeShieldedIcs20WithdrawalWitnessV1(fixtureBytes)
	if err != nil {
		t.Fatalf("decode shielded ICS-20 withdrawal fixture: %v", err)
	}
	if !witness.IsRegulated {
		t.Fatalf("shielded ICS-20 withdrawal fixture must start regulated for this regression")
	}
	assignment, _, err := abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV1(fixtureBytes)
	if err != nil {
		t.Fatalf("build shielded ICS-20 withdrawal assignment: %v", err)
	}
	assignment.IsRegulated = 0

	if err := test.IsSolved(
		circuits.NewShieldedIcs20WithdrawalCircuit(family.NIn),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatalf("expected shielded ICS-20 withdrawal circuit to reject regulated asset routed through unregulated branch")
	}
}

func TestTransferCircuitRejectsTransferOwnedMutations(t *testing.T) {
	mutations := []transferMutation{
		{
			name: "statement hash",
			mutate: func(c *circuits.TransferCircuit) {
				c.ClaimedStatementHash = mutateFieldByOne(c.ClaimedStatementHash)
			},
		},
		{
			name: "spend nullifier",
			mutate: func(c *circuits.TransferCircuit) {
				c.Spends[0].Nullifier = mutateFieldByOne(c.Spends[0].Nullifier)
			},
		},
		{
			name: "randomized verification key",
			mutate: func(c *circuits.TransferCircuit) {
				c.Spends[0].RK.X = mutateFieldByOne(c.Spends[0].RK.X)
			},
		},
		{
			name: "state path",
			mutate: func(c *circuits.TransferCircuit) {
				c.Spends[0].StateProof.Path[0][0] = mutateFieldByOne(c.Spends[0].StateProof.Path[0][0])
			},
		},
		{
			name: "output note commitment",
			mutate: func(c *circuits.TransferCircuit) {
				c.Outputs[0].NoteCommitment = mutateFieldByOne(c.Outputs[0].NoteCommitment)
			},
		},
		{
			name: "balance commitment",
			mutate: func(c *circuits.TransferCircuit) {
				c.BalanceCommitment.X = mutateFieldByOne(c.BalanceCommitment.X)
			},
		},
		{
			name: "output ordering",
			mutate: func(c *circuits.TransferCircuit) {
				c.Outputs[0].IsReceiver = 0
				c.Outputs[1].IsReceiver = 1
			},
		},
	}

	for _, mutation := range mutations {
		t.Run(mutation.name, func(t *testing.T) {
			assertTransferMutationRejected(t, mutation)
		})
	}
}

func TestTransferCircuitRejectsComplianceTierMutations(t *testing.T) {
	for _, mutation := range complianceTierMutations() {
		t.Run(mutation.name, func(t *testing.T) {
			assertTransferMutationRejected(t, mutation)
		})
	}
}

func complianceTierMutations() []transferMutation {
	var mutations []transferMutation
	mutations = append(mutations, senderCoreMutations()...)
	mutations = append(mutations, senderExtMutations()...)
	mutations = append(mutations, outputCoreMutations()...)
	mutations = append(mutations, outputExtMutations()...)
	return mutations
}

func senderCoreMutations() []transferMutation {
	return []transferMutation{
		{name: "sender core ciphertext", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.Ciphertext[0] = mutateFieldByOne(c.Compliance.SenderCore.Ciphertext[0])
		}},
		{name: "sender core c2", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.C2 = mutateFieldByOne(c.Compliance.SenderCore.C2)
		}},
		{name: "sender core swapped statement", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.Proof.Statement = c.Compliance.SenderExt.Proof.Statement
		}},
		{name: "sender core swapped challenge", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.Proof.Challenge = c.Compliance.SenderExt.Proof.Challenge
		}},
		{name: "sender core derived pk", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.Proof.DerivedPK.X = mutateFieldByOne(c.Compliance.SenderCore.Proof.DerivedPK.X)
		}},
	}
}

func senderExtMutations() []transferMutation {
	return []transferMutation{
		{name: "sender ext ciphertext", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.Ciphertext[0] = mutateFieldByOne(c.Compliance.SenderExt.Ciphertext[0])
		}},
		{name: "sender ext c2", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.C2 = mutateFieldByOne(c.Compliance.SenderExt.C2)
		}},
		{name: "sender ext swapped statement", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.Proof.Statement = c.Compliance.SenderCore.Proof.Statement
		}},
		{name: "sender ext swapped challenge", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.Proof.Challenge = c.Compliance.SenderCore.Proof.Challenge
		}},
		{name: "sender ext derived pk", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.Proof.DerivedPK.X = mutateFieldByOne(c.Compliance.SenderExt.Proof.DerivedPK.X)
		}},
	}
}

func outputCoreMutations() []transferMutation {
	return []transferMutation{
		{name: "output core ciphertext", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.Ciphertext[0] = mutateFieldByOne(c.Compliance.OutputCore.Ciphertext[0])
		}},
		{name: "output core c2", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.C2 = mutateFieldByOne(c.Compliance.OutputCore.C2)
		}},
		{name: "output core swapped statement", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.Proof.Statement = c.Compliance.OutputExt.Proof.Statement
		}},
		{name: "output core swapped challenge", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.Proof.Challenge = c.Compliance.OutputExt.Proof.Challenge
		}},
		{name: "output core derived pk", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.Proof.DerivedPK.X = mutateFieldByOne(c.Compliance.OutputCore.Proof.DerivedPK.X)
		}},
	}
}

func outputExtMutations() []transferMutation {
	return []transferMutation{
		{name: "output ext ciphertext", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.Ciphertext[0] = mutateFieldByOne(c.Compliance.OutputExt.Ciphertext[0])
		}},
		{name: "output ext c2", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.C2 = mutateFieldByOne(c.Compliance.OutputExt.C2)
		}},
		{name: "output ext swapped statement", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.Proof.Statement = c.Compliance.OutputCore.Proof.Statement
		}},
		{name: "output ext swapped challenge", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.Proof.Challenge = c.Compliance.OutputCore.Proof.Challenge
		}},
		{name: "output ext derived pk", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.Proof.DerivedPK.X = mutateFieldByOne(c.Compliance.OutputExt.Proof.DerivedPK.X)
		}},
	}
}

func TestTransferCircuitRejectsTierMetadataMutations(t *testing.T) {
	for _, mutation := range tierMetadataMutations() {
		t.Run(mutation.name, func(t *testing.T) {
			assertTransferMutationRejected(t, mutation)
		})
	}
}

func tierMetadataMutations() []transferMutation {
	type tier struct {
		name  string
		apply func(*circuits.TransferCircuit, func(*circuits.TransferComplianceStatementFields))
	}
	tiers := []tier{
		{name: "sender core", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceStatementFields)) {
			mutate(&c.Compliance.SenderCore.Proof.Statement)
		}},
		{name: "sender ext", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceStatementFields)) {
			mutate(&c.Compliance.SenderExt.Proof.Statement)
		}},
		{name: "output core", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceStatementFields)) {
			mutate(&c.Compliance.OutputCore.Proof.Statement)
		}},
		{name: "output ext", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceStatementFields)) {
			mutate(&c.Compliance.OutputExt.Proof.Statement)
		}},
	}
	fields := []struct {
		name   string
		mutate func(*circuits.TransferComplianceStatementFields)
	}{
		{name: "tier label", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.Tier = mutateFieldByOne(s.Tier)
		}},
		{name: "policy hash", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.PolicyIDHash = mutateFieldByOne(s.PolicyIDHash)
		}},
		{name: "resource hash", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.ResourceHash = mutateFieldByOne(s.ResourceHash)
		}},
		{name: "permission hash", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.PermissionHash = mutateFieldByOne(s.PermissionHash)
		}},
		{name: "timestamp", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.TargetTimestamp = mutateFieldByOne(s.TargetTimestamp)
		}},
		{name: "authorization id", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.AuthorizationID = mutateFieldByOne(s.AuthorizationID)
		}},
		{name: "salt", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.Salt = mutateFieldByOne(s.Salt)
		}},
	}

	var mutations []transferMutation
	for _, tier := range tiers {
		for _, field := range fields {
			tier := tier
			field := field
			mutations = append(mutations, transferMutation{
				name: tier.name + " " + field.name,
				mutate: func(c *circuits.TransferCircuit) {
					tier.apply(c, field.mutate)
				},
			})
		}
	}
	return mutations
}

func TestTransferCircuitRejectsTierProofPointMutations(t *testing.T) {
	for _, mutation := range tierProofPointMutations() {
		t.Run(mutation.name, func(t *testing.T) {
			assertTransferMutationRejected(t, mutation)
		})
	}
}

func tierProofPointMutations() []transferMutation {
	type tier struct {
		name  string
		apply func(*circuits.TransferCircuit, func(*circuits.TransferComplianceProofFields))
	}
	tiers := []tier{
		{name: "sender core", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceProofFields)) {
			mutate(&c.Compliance.SenderCore.Proof)
		}},
		{name: "sender ext", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceProofFields)) {
			mutate(&c.Compliance.SenderExt.Proof)
		}},
		{name: "output core", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceProofFields)) {
			mutate(&c.Compliance.OutputCore.Proof)
		}},
		{name: "output ext", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceProofFields)) {
			mutate(&c.Compliance.OutputExt.Proof)
		}},
	}
	fields := []struct {
		name   string
		mutate func(*circuits.TransferComplianceProofFields)
	}{
		{name: "shared point", mutate: func(p *circuits.TransferComplianceProofFields) {
			p.SharedPoint.X = mutateFieldByOne(p.SharedPoint.X)
		}},
		{name: "enc commitment", mutate: func(p *circuits.TransferComplianceProofFields) {
			p.EncCmt.X = mutateFieldByOne(p.EncCmt.X)
		}},
		{name: "response", mutate: func(p *circuits.TransferComplianceProofFields) {
			p.Response = mutateFieldByOne(p.Response)
		}},
	}

	var mutations []transferMutation
	for _, tier := range tiers {
		for _, field := range fields {
			tier := tier
			field := field
			mutations = append(mutations, transferMutation{
				name: tier.name + " " + field.name,
				mutate: func(c *circuits.TransferCircuit) {
					tier.apply(c, field.mutate)
				},
			})
		}
	}
	return mutations
}
