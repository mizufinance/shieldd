package circuits

// C3 parity: the ACL2 bool-select proof models the gadget's R1CS as three
// hand-written constraints. That proof is only meaningful if those constraints
// are *exactly* what gnark compiles. This test exports gadget-bool-select and
// asserts its R1CS matches the constraints embedded in
// formal/acl2/bool-select-proof.lisp, wire-for-wire. It is the bridge between
// "the real compiled gadget" and "the ACL2 model" — without it the ACL2
// theorem could be about a different circuit.
//
// If gnark's compilation of BoolSelectGadget ever changes shape, this test
// fails and the ACL2 model must be updated in lockstep.

import (
	"testing"

	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/mizufinance/penumbra/tools/gnark/internal/artifacts"
	"github.com/mizufinance/penumbra/tools/gnark/internal/primitives"
)

func TestBoolSelectAcl2ModelParity(t *testing.T) {
	field := primitives.ScalarField()
	ccs, err := frontend.Compile(field, r1cs.NewBuilder, &BoolSelectGadget{})
	if err != nil {
		t.Fatalf("compile: %v", err)
	}
	axe, err := artifacts.BuildAxeR1CS(ccs, &BoolSelectGadget{})
	if err != nil {
		t.Fatalf("build axe r1cs: %v", err)
	}

	// Field used by the ACL2 proof (*fr*).
	wantPrime := "8444461749428370424248824938781546531375899335154063827935233455917409239041"
	if axe.Prime != wantPrime {
		t.Fatalf("prime %s != ACL2 *fr* %s", axe.Prime, wantPrime)
	}

	// Expected wire layout the ACL2 model assumes.
	wantWires := []struct {
		name string
		vis  string
	}{
		{"ONE", "one"}, {"Cond", "public"}, {"IfTrue", "public"},
		{"IfFalse", "public"}, {"Valid", "secret"}, {"internal_5", "internal"},
	}
	if axe.NbWires != len(wantWires) {
		t.Fatalf("nb_wires %d != ACL2 model %d", axe.NbWires, len(wantWires))
	}
	for i, w := range wantWires {
		if axe.Wires[i].Name != w.name || axe.Wires[i].Visibility != w.vis {
			t.Fatalf("wire %d = (%s,%s), ACL2 model expects (%s,%s)",
				i, axe.Wires[i].Name, axe.Wires[i].Visibility, w.name, w.vis)
		}
	}

	// Expected constraints, as the ACL2 proof transcribes them (coeff,wire):
	//   c0: Cond*(1-Cond) = 0      => A:[(1,1)] B:[(1,0)(-1,1)] C:[]
	//   c1: Cond*(IfTrue-IfFalse)=w5 => A:[(1,1)] B:[(1,2)(-1,3)] C:[(1,5)]
	//   c2: 1*Valid = IfFalse + w5  => A:[(1,0)] B:[(1,4)] C:[(1,3)(1,5)]
	want := []artifacts.AxeConstraintJSON{
		{A: terms("1", 1), B: terms("1", 0, "-1", 1), C: terms("0", 0)},
		{A: terms("1", 1), B: terms("1", 2, "-1", 3), C: terms("1", 5)},
		{A: terms("1", 0), B: terms("1", 4), C: terms("1", 3, "1", 5)},
	}
	if len(axe.Constraints) != len(want) {
		t.Fatalf("nb_constraints %d != ACL2 model %d", len(axe.Constraints), len(want))
	}
	for i := range want {
		assertTermsEqual(t, i, "A", axe.Constraints[i].A, want[i].A)
		assertTermsEqual(t, i, "B", axe.Constraints[i].B, want[i].B)
		assertTermsEqual(t, i, "C", axe.Constraints[i].C, want[i].C)
	}
}

func terms(pairs ...interface{}) []artifacts.AxeTermJSON {
	out := make([]artifacts.AxeTermJSON, 0, len(pairs)/2)
	for i := 0; i < len(pairs); i += 2 {
		out = append(out, artifacts.AxeTermJSON{Coeff: pairs[i].(string), Wire: pairs[i+1].(int)})
	}
	return out
}

func assertTermsEqual(t *testing.T, ci int, slot string, got, want []artifacts.AxeTermJSON) {
	t.Helper()
	if len(got) != len(want) {
		t.Fatalf("c%d.%s len %d != ACL2 model %d (got %v)", ci, slot, len(got), len(want), got)
	}
	for j := range want {
		if got[j] != want[j] {
			t.Fatalf("c%d.%s term %d = %v, ACL2 model expects %v", ci, slot, j, got[j], want[j])
		}
	}
}
