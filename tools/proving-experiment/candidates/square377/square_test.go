package square377

import (
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
	"math/big"
	"testing"
)

func TestCanonicalOracleAndAliasing(t *testing.T) {
	q := fp.Modulus()
	constants := RawInteger(fp.Element{q0, q1, q2, q3, q4, q5})
	low := uint64(q0)
	if constants.Cmp(q) != 0 || low*qInvNeg != ^uint64(0) {
		t.Fatal("Montgomery constants")
	}
	r := new(big.Int).Lsh(big.NewInt(1), 384)
	inverse := new(big.Int).ModInverse(r, q)
	values := Corpus()
	for i, input := range values {
		original := input
		var candidate, reference fp.Element
		Square(&candidate, &input)
		reference.Square(&input)
		if candidate != reference || input != original {
			t.Fatalf("distinct output/input mutation %d", i)
		}
		n := RawInteger(input)
		n.Mul(n, n)
		n.Mul(n, inverse)
		n.Mod(n, q)
		if RawInteger(candidate).Cmp(n) != 0 || RawInteger(candidate).Cmp(q) >= 0 {
			t.Fatalf("canonical oracle %d", i)
		}
		alias := input
		Square(&alias, &alias)
		if alias != reference {
			t.Fatalf("alias %d", i)
		}
	}
	t.Logf("%d canonical cases: independent big-integer oracle, current assembly, aliasing, input preservation", len(values))
}

func TestRepeatedInPlace(t *testing.T) {
	for i, input := range Corpus() {
		left, right := input, input
		for n := 0; n < 64; n++ {
			Square(&left, &left)
			right.Square(&right)
		}
		if left != right {
			t.Fatalf("64-step chain %d", i)
		}
	}
}
