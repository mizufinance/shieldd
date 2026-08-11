package compliance

import (
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/consensys/gnark/test"
	decaf377 "github.com/mizufinance/decaf377-go"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

type spendSharedSecretsConstraintProbe struct {
	ESK       frontend.Variable
	AckX      frontend.Variable
	AckY      frontend.Variable
	DKPubX    frontend.Variable
	DKPubY    frontend.Variable
	IsFlagged frontend.Variable
	EPKX      frontend.Variable
	EPKY      frontend.Variable

	Legacy bool
}

func deriveSharedSecretsSpendLegacyForTest(
	api frontend.API,
	esk frontend.Variable,
	ackCore gnarkte.Point,
	dkPub gnarkte.Point,
	isFlagged frontend.Variable,
	publishedEPK gnarkte.Point,
) (gnarkte.Point, gnarkte.Point, gnarkte.Point, error) {
	api.AssertIsBoolean(isFlagged)
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return gnarkte.Point{}, gnarkte.Point{}, gnarkte.Point{}, err
	}
	generator, err := decafGeneratorPoint()
	if err != nil {
		return gnarkte.Point{}, gnarkte.Point{}, gnarkte.Point{}, err
	}
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return gnarkte.Point{}, gnarkte.Point{}, gnarkte.Point{}, err
	}
	nBits := primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen()

	computedEPK := ScalarMulLEBits(api, curve, generator, api.ToBinary(esk, nBits))
	decafgnark.AssertEquivalent(api, computedEPK, publishedEPK)
	ssCoreUser := ScalarMulWindow2LEBits(
		api,
		curve,
		ackCore,
		api.ToBinary(esk, nBits),
	)
	ssIssuer := ScalarMulWindow2LEBits(
		api,
		curve,
		dkPub,
		api.ToBinary(esk, nBits),
	)
	ssCore := gnarkte.Point{
		X: api.Select(isFlagged, ssIssuer.X, ssCoreUser.X),
		Y: api.Select(isFlagged, ssIssuer.Y, ssCoreUser.Y),
	}
	return ssIssuer, ssCoreUser, ssCore, nil
}

func (c *spendSharedSecretsConstraintProbe) Define(api frontend.API) error {
	ack := gnarkte.Point{X: c.AckX, Y: c.AckY}
	dkPub := gnarkte.Point{X: c.DKPubX, Y: c.DKPubY}
	epk := gnarkte.Point{X: c.EPKX, Y: c.EPKY}
	if c.Legacy {
		_, _, _, err := deriveSharedSecretsSpendLegacyForTest(
			api, c.ESK, ack, dkPub, c.IsFlagged, epk,
		)
		return err
	}
	_, _, _, err := DeriveSharedSecretsSpend(
		api, c.ESK, ack, dkPub, c.IsFlagged, epk,
	)
	return err
}

type spendSharedSecretsParityCircuit spendSharedSecretsConstraintProbe

func (c *spendSharedSecretsParityCircuit) Define(api frontend.API) error {
	ack := gnarkte.Point{X: c.AckX, Y: c.AckY}
	dkPub := gnarkte.Point{X: c.DKPubX, Y: c.DKPubY}
	epk := gnarkte.Point{X: c.EPKX, Y: c.EPKY}
	issuer, user, selected, err := DeriveSharedSecretsSpend(
		api, c.ESK, ack, dkPub, c.IsFlagged, epk,
	)
	if err != nil {
		return err
	}
	legacyIssuer, legacyUser, legacySelected, err := deriveSharedSecretsSpendLegacyForTest(
		api, c.ESK, ack, dkPub, c.IsFlagged, epk,
	)
	if err != nil {
		return err
	}
	decafgnark.AssertEquivalent(api, issuer, legacyIssuer)
	decafgnark.AssertEquivalent(api, user, legacyUser)
	decafgnark.AssertEquivalent(api, selected, legacySelected)
	return nil
}

type binaryDecompositionConstraintProbe struct {
	Scalar frontend.Variable
	NBits  int
}

func (c *binaryDecompositionConstraintProbe) Define(api frontend.API) error {
	api.ToBinary(c.Scalar, c.NBits)
	return nil
}

func compileSpendSharedProbe(t *testing.T, circuit frontend.Circuit) int {
	t.Helper()
	ccs, err := frontend.Compile(
		ecc.BLS12_377.ScalarField(),
		r1cs.NewBuilder,
		circuit,
	)
	if err != nil {
		t.Fatal(err)
	}
	return ccs.GetNbConstraints()
}

func TestDeriveSharedSecretsSpendReusesScalarBits(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	nBits := primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen()
	legacy := compileSpendSharedProbe(
		t,
		&spendSharedSecretsConstraintProbe{Legacy: true},
	)
	optimized := compileSpendSharedProbe(t, &spendSharedSecretsConstraintProbe{})
	oneDecomposition := compileSpendSharedProbe(
		t,
		&binaryDecompositionConstraintProbe{NBits: nBits},
	)
	saved := legacy - optimized
	t.Logf(
		"spend shared-secret constraints: legacy=%d optimized=%d saved=%d",
		legacy,
		optimized,
		saved,
	)
	if saved != 2*oneDecomposition {
		t.Fatalf(
			"expected reuse to remove exactly two %d-constraint decompositions, saved %d",
			oneDecomposition,
			saved,
		)
	}
}

func TestDeriveSharedSecretsSpendBitReuseWitnessParity(t *testing.T) {
	generator, err := decaf377.Generator()
	if err != nil {
		t.Fatal(err)
	}
	for _, isFlagged := range []int{0, 1} {
		assignment := &spendSharedSecretsParityCircuit{
			ESK:       1,
			AckX:      generator.X,
			AckY:      generator.Y,
			DKPubX:    generator.X,
			DKPubY:    generator.Y,
			IsFlagged: isFlagged,
			EPKX:      generator.X,
			EPKY:      generator.Y,
		}
		if err := test.IsSolved(
			&spendSharedSecretsParityCircuit{},
			assignment,
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("flag=%d: reused scalar bits disagree with legacy ladders: %v", isFlagged, err)
		}
	}
}
