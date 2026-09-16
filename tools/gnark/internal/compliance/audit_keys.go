package compliance

import (
	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"math/big"
)

var AuditKeysDomain = transferSaltConstant("shieldd.audit.keys.v2")

type AuditKeysInputs struct {
	Epoch    frontend.Variable
	Amount   gnarkte.Point
	Sender   gnarkte.Point
	Receiver gnarkte.Point
	Checking gnarkte.Point
}

func AuditKeysCommitment(api frontend.API, keys AuditKeysInputs) (frontend.Variable, error) {
	api.ToBinary(keys.Epoch, 64)
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return nil, err
	}
	fields := [5]frontend.Variable{keys.Epoch}
	for i, point := range []gnarkte.Point{keys.Amount, keys.Sender, keys.Receiver, keys.Checking} {
		curve.AssertIsOnCurve(point)
		api.AssertIsDifferent(point.X, 0)
		fields[i+1], err = decafgnark.CompressToField(api, point)
		if err != nil {
			return nil, err
		}
	}
	return primitives.Poseidon377Hash5(api, AuditKeysDomain, fields)
}

func AuditKeysCommitmentNative(keys AuditKeysInputs) (*big.Int, error) {
	fields := [5]*big.Int{new(big.Int).SetUint64(keys.Epoch.(uint64))}
	var err error
	for i, point := range []gnarkte.Point{keys.Amount, keys.Sender, keys.Receiver, keys.Checking} {
		fields[i+1], err = decafgnark.CompressToFieldNative(point)
		if err != nil {
			return nil, err
		}
	}
	return primitives.Poseidon377Hash5Native(AuditKeysDomain, fields)
}
