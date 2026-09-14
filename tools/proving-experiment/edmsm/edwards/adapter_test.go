package edwards

import (
	"crypto/sha256"
	"fmt"
	"github.com/consensys/gnark-crypto/ecc"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"math/big"
	"testing"
)

func compare(t *testing.T, points []curve.G1Affine, scalars []fr.Element) {
	t.Helper()
	p, err := Prepare(points)
	if err != nil {
		t.Fatal(err)
	}
	got, err := p.MSM(scalars)
	if err != nil {
		t.Fatal(err)
	}
	var want curve.G1Affine
	if _, err = want.MultiExp(points, scalars, ecc.MultiExpConfig{NbTasks: 2}); err != nil {
		t.Fatal(err)
	}
	if !got.Equal(&want) {
		t.Fatal("Edwards MSM differs from gnark")
	}
}
func TestIdentityInverseDoublingAndSignedScalarBoundaries(t *testing.T) {
	_, _, g, _ := curve.Generators()
	var neg, identity curve.G1Affine
	neg.Neg(&g)
	values := []*big.Int{big.NewInt(0), big.NewInt(1), big.NewInt(2), big.NewInt(15), big.NewInt(16), big.NewInt(31), new(big.Int).Sub(fr.Modulus(), big.NewInt(1))}
	for _, n := range values {
		var scalar, one fr.Element
		scalar.SetBigInt(n)
		one.SetOne()
		compare(t, []curve.G1Affine{g, identity, neg, g}, []fr.Element{scalar, one, scalar, one})
	}
	var one fr.Element
	one.SetOne()
	compare(t, []curve.G1Affine{g, neg}, []fr.Element{one, one})
	compare(t, nil, nil)
}
func TestDenseDeterministicMSMAgainstIndependentScalarProducts(t *testing.T) {
	_, _, g, _ := curve.Generators()
	points := make([]curve.G1Affine, 257)
	scalars := make([]fr.Element, 257)
	var sum curve.G1Jac
	for i := range points {
		points[i].ScalarMultiplication(&g, big.NewInt(int64(i+1)))
		h := sha256.Sum256([]byte(fmt.Sprintf("edmsm-wide-scalar-%d", i)))
		scalars[i].SetBytes(h[:])
		if i%13 == 0 {
			points[i] = curve.G1Affine{}
		}
		if i%11 == 0 {
			scalars[i].SetZero()
		}
		var tmp curve.G1Jac
		var n big.Int
		scalars[i].BigInt(&n)
		tmp.FromAffine(&points[i])
		tmp.ScalarMultiplication(&tmp, &n)
		sum.AddAssign(&tmp)
	}
	p, err := Prepare(points)
	if err != nil {
		t.Fatal(err)
	}
	got, err := p.MSM(scalars)
	if err != nil {
		t.Fatal(err)
	}
	var want curve.G1Affine
	want.FromJacobian(&sum)
	if !got.Equal(&want) {
		t.Fatal("independent scalar sum mismatch")
	}
}
func TestExceptionalAndOffSubgroupMapsReject(t *testing.T) {
	var order2, order3, bad curve.G1Affine
	order2.X.SetOne().Neg(&order2.X)
	order3.Y.SetOne()
	bad.X.SetUint64(5)
	bad.Y.SetUint64(7)
	for _, p := range []curve.G1Affine{order2, order3, bad} {
		if _, err := Prepare([]curve.G1Affine{p}); err == nil {
			t.Fatal("accepted non-subgroup input")
		}
	}
	var invalid G1EdExtended
	if _, err := toAffine(&invalid); err == nil {
		t.Fatal("zero Z accepted")
	}
	invalid.X.SetOne()
	invalid.Y.SetOne()
	invalid.Z.SetOne()
	if _, err := toAffine(&invalid); err == nil {
		t.Fatal("inconsistent T accepted")
	}
	invalid.X.SetZero()
	invalid.Y.Neg(&invalid.Z)
	invalid.T.SetZero()
	if _, err := toAffine(&invalid); err == nil {
		t.Fatal("order-two Edwards output accepted")
	}
}
