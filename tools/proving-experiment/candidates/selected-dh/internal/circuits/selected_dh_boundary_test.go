package circuits_test

import (
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
	"testing"
)

func TestSelectedDHUnselectedKeysRemainChecked(t *testing.T) {
	ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, circuits.NewTransferCircuit())
	if err != nil {
		t.Fatal(err)
	}
	for _, scenario := range []string{"transfer", "transfer_flagged", "transfer_unregulated"} {
		for _, key := range []string{"sender_ack", "receiver_ack", "issuer_dk"} {
			t.Run(scenario+"/"+key, func(t *testing.T) {
				a, _, err := abi.NewTransferCircuitAssignmentFromWitness(testfixtures.LoadTransferWitness(scenario))
				if err != nil {
					t.Fatal(err)
				}
				switch key {
				case "sender_ack":
					a.Sender.Capk.X = 0
					a.Sender.Capk.Y = 0
				case "receiver_ack":
					a.ReceiverOutput.Recipient.Capk.X = 0
					a.ReceiverOutput.Recipient.Capk.Y = 0
				case "issuer_dk":
					a.Asset.Leaf.DKPub.X = 0
					a.Asset.Leaf.DKPub.Y = 0
				}
				w, err := frontend.NewWitness(a, primitives.ScalarField())
				if err != nil {
					t.Fatal(err)
				}
				if _, err = ccs.Solve(w); err == nil {
					t.Fatal("malformed selected or unselected key accepted")
				}
			})
		}
	}
}
