// Development-only row attribution for selecting a validated DH key before multiplication.
package main

import (
	"encoding/json"
	"fmt"
	"github.com/consensys/gnark-crypto/ecc"
	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/consensys/gnark/logger"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"os"
)

type circuit struct {
	Esk          frontend.Variable
	Flag         frontend.Variable
	Ack          gnarkte.Point
	Issuer       gnarkte.Point
	EPK          gnarkte.Point
	Selected     gnarkte.Point
	SelectBefore bool `gnark:"-"`
}

func (c *circuit) Define(api frontend.API) error {
	var selected gnarkte.Point
	if !c.SelectBefore {
		_, _, point, err := compliance.DeriveSharedSecretsSpend(api, c.Esk, c.Ack, c.Issuer, c.Flag, c.EPK)
		if err != nil {
			return err
		}
		selected = point
	} else {
		api.AssertIsBoolean(c.Flag)
		curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
		if err != nil {
			return err
		}
		v, err := primitives.LoadPrototypeVectors()
		if err != nil {
			return err
		}
		g := gnarkte.Point{X: primitives.MustBigInt(v.Decaf377CompanionCurve.GeneratorX), Y: primitives.MustBigInt(v.Decaf377CompanionCurve.GeneratorY)}
		bits := api.ToBinary(c.Esk, primitives.MustBigInt(v.Decaf377CompanionCurve.Order).BitLen())
		epk := compliance.ScalarMulLEBits(api, curve, g, bits)
		decafgnark.AssertEquivalent(api, epk, c.EPK)
		key := gnarkte.Point{X: api.Select(c.Flag, c.Issuer.X, c.Ack.X), Y: api.Select(c.Flag, c.Issuer.Y, c.Ack.Y)}
		selected = compliance.ScalarMulWindow2LEBits(api, curve, key, bits)
	}
	api.AssertIsEqual(selected.X, c.Selected.X)
	api.AssertIsEqual(selected.Y, c.Selected.Y)
	return nil
}

type record struct {
	Schema               string `json:"schema"`
	CurrentRows          int    `json:"current_rows"`
	SelectedKeyRows      int    `json:"selected_key_rows"`
	SavedRowsPerTier     int    `json:"saved_rows_per_tier"`
	ThreeTierRowEstimate int    `json:"three_tier_row_estimate"`
	Limit                string `json:"limit"`
}

func run() error {
	logger.Disable()
	old, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, &circuit{})
	if err != nil {
		return err
	}
	selected, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, &circuit{SelectBefore: true})
	if err != nil {
		return err
	}
	delta := old.GetNbConstraints() - selected.GetNbConstraints()
	return json.NewEncoder(os.Stdout).Encode(record{"shieldd.proving_experiment.shared_dh_cost.v1", old.GetNbConstraints(), selected.GetNbConstraints(), delta, 3 * delta, "Isolated gadget row attribution only. Not a changed full Transfer relation, a proof, or measured proving speedup. Tier zero's unconditional issuer detection is retained; only the other three tiers are candidates. All authentication/subgroup and scalar boundaries remain obligations of their unchanged enclosing circuit."})
}
func main() {
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
