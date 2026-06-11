package primitives

import (
	"fmt"
	"math/big"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/reilabs/gnark-lean-extractor/v3/abstractor"
)

type poseidonRateConfig struct {
	alpha         uint32
	fullRounds    int
	partialRounds int
	width         int
	rate          int
	mds           []*big.Int
	arc           []*big.Int
}

func poseidonConfigFromVectors(raw PoseidonRateVectors) poseidonRateConfig {
	return poseidonRateConfig{
		alpha:         raw.Alpha,
		fullRounds:    raw.FullRounds,
		partialRounds: raw.PartialRounds,
		width:         raw.Width,
		rate:          raw.Rate,
		mds:           MustBigIntSlice(raw.MDS),
		arc:           MustBigIntSlice(raw.ARC),
	}
}

func loadPoseidonRateParams(rate int) (poseidonRateConfig, error) {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return poseidonRateConfig{}, err
	}

	switch rate {
	case 1:
		return poseidonConfigFromVectors(vectors.Poseidon377.Rate1), nil
	case 2:
		return poseidonConfigFromVectors(vectors.Poseidon377.Rate2), nil
	case 3:
		return poseidonConfigFromVectors(vectors.Poseidon377.Rate3), nil
	case 4:
		return poseidonConfigFromVectors(vectors.Poseidon377.Rate4), nil
	case 5:
		return poseidonConfigFromVectors(vectors.Poseidon377.Rate5), nil
	case 6:
		return poseidonConfigFromVectors(vectors.Poseidon377.Rate6), nil
	case 7:
		return poseidonConfigFromVectors(vectors.Poseidon377.Rate7), nil
	default:
		return poseidonRateConfig{}, fmt.Errorf("unsupported poseidon377 rate %d", rate)
	}
}

func pow17(api frontend.API, value frontend.Variable) frontend.Variable {
	value2 := api.Mul(value, value)
	value4 := api.Mul(value2, value2)
	value8 := api.Mul(value4, value4)
	value16 := api.Mul(value8, value8)
	return api.Mul(value16, value)
}

func mixLayerMDS(api frontend.API, state []frontend.Variable, mds []*big.Int) []frontend.Variable {
	next := make([]frontend.Variable, len(state))
	for row := range next {
		sum := api.Mul(mds[row*len(state)], state[0])
		for col := 1; col < len(state); col++ {
			sum = api.Add(sum, api.Mul(mds[row*len(state)+col], state[col]))
		}
		next[row] = sum
	}
	return next
}

func pow17Native(value, modulus *big.Int) *big.Int {
	value2 := new(big.Int).Mul(value, value)
	value2.Mod(value2, modulus)
	value4 := new(big.Int).Mul(value2, value2)
	value4.Mod(value4, modulus)
	value8 := new(big.Int).Mul(value4, value4)
	value8.Mod(value8, modulus)
	value16 := new(big.Int).Mul(value8, value8)
	value16.Mod(value16, modulus)
	result := new(big.Int).Mul(value16, value)
	result.Mod(result, modulus)
	return result
}

func mixLayerMDSNative(state []*big.Int, mds []*big.Int, modulus *big.Int) []*big.Int {
	next := make([]*big.Int, len(state))
	for row := range next {
		sum := new(big.Int).Mul(mds[row*len(state)], state[0])
		sum.Mod(sum, modulus)
		for col := 1; col < len(state); col++ {
			term := new(big.Int).Mul(mds[row*len(state)+col], state[col])
			term.Mod(term, modulus)
			sum.Add(sum, term)
			sum.Mod(sum, modulus)
		}
		next[row] = sum
	}
	return next
}

// poseidonFullRound / poseidonPartialRound wrap one Poseidon377 round as an
// extractor gadget so the Lean extraction emits one reusable `def` per round
// kind plus one call per round, instead of inlining every round's gates at every
// hash site. Each round consumes the state and this round's `width` constants and
// returns the new state. The rate's MDS is loaded inside DefineGadget (the
// extractor clones gadgets with copystructure, which drops unexported fields, so
// nothing rate-specific may be carried on the struct beyond the exported slices).
// During proving the call inlines, so the constraint system is byte-identical.
type poseidonFullRound struct {
	State  []frontend.Variable
	Consts []frontend.Variable
}

func (g poseidonFullRound) DefineGadget(api frontend.API) interface{} {
	cfg, err := loadPoseidonRateParams(len(g.State) - 1)
	if err != nil {
		panic(err)
	}
	st := make([]frontend.Variable, len(g.State))
	for i := range g.State {
		st[i] = pow17(api, api.Add(g.State[i], g.Consts[i]))
	}
	return mixLayerMDS(api, st, cfg.mds)
}

type poseidonPartialRound struct {
	State  []frontend.Variable
	Consts []frontend.Variable
}

func (g poseidonPartialRound) DefineGadget(api frontend.API) interface{} {
	cfg, err := loadPoseidonRateParams(len(g.State) - 1)
	if err != nil {
		panic(err)
	}
	st := make([]frontend.Variable, len(g.State))
	for i := range g.State {
		st[i] = api.Add(g.State[i], g.Consts[i])
	}
	st[0] = pow17(api, st[0])
	return mixLayerMDS(api, st, cfg.mds)
}

func poseidonHash(api frontend.API, cfg poseidonRateConfig, domainSeparator frontend.Variable, inputs []frontend.Variable) (frontend.Variable, error) {
	if cfg.alpha != 17 {
		return nil, fmt.Errorf("unexpected poseidon alpha %d", cfg.alpha)
	}
	if len(inputs) != cfg.rate {
		return nil, fmt.Errorf("poseidon input count mismatch: got %d want %d", len(inputs), cfg.rate)
	}
	if len(cfg.mds) != cfg.width*cfg.width {
		return nil, fmt.Errorf("poseidon mds size mismatch: got %d want %d", len(cfg.mds), cfg.width*cfg.width)
	}
	expectedArc := cfg.width * (cfg.fullRounds + cfg.partialRounds)
	if len(cfg.arc) != expectedArc {
		return nil, fmt.Errorf("poseidon arc size mismatch: got %d want %d", len(cfg.arc), expectedArc)
	}

	state := make([]frontend.Variable, cfg.width)
	state[0] = domainSeparator
	copy(state[1:], inputs)

	roundConstantIndex := 0
	fullHalf := cfg.fullRounds / 2
	nextConsts := func() []frontend.Variable {
		c := make([]frontend.Variable, cfg.width)
		for i := 0; i < cfg.width; i++ {
			c[i] = cfg.arc[roundConstantIndex]
			roundConstantIndex++
		}
		return c
	}

	for round := 0; round < fullHalf; round++ {
		state = abstractor.Call1(api, poseidonFullRound{State: state, Consts: nextConsts()})
	}

	for round := 0; round < cfg.partialRounds; round++ {
		state = abstractor.Call1(api, poseidonPartialRound{State: state, Consts: nextConsts()})
	}

	for round := 0; round < fullHalf; round++ {
		state = abstractor.Call1(api, poseidonFullRound{State: state, Consts: nextConsts()})
	}

	return state[1], nil
}

func poseidonHashNative(cfg poseidonRateConfig, domainSeparator *big.Int, inputs []*big.Int) (*big.Int, error) {
	if cfg.alpha != 17 {
		return nil, fmt.Errorf("unexpected poseidon alpha %d", cfg.alpha)
	}
	if len(inputs) != cfg.rate {
		return nil, fmt.Errorf("poseidon input count mismatch: got %d want %d", len(inputs), cfg.rate)
	}
	if len(cfg.mds) != cfg.width*cfg.width {
		return nil, fmt.Errorf("poseidon mds size mismatch: got %d want %d", len(cfg.mds), cfg.width*cfg.width)
	}
	expectedArc := cfg.width * (cfg.fullRounds + cfg.partialRounds)
	if len(cfg.arc) != expectedArc {
		return nil, fmt.Errorf("poseidon arc size mismatch: got %d want %d", len(cfg.arc), expectedArc)
	}

	modulus := ecc.BLS12_377.ScalarField()
	state := make([]*big.Int, cfg.width)
	state[0] = new(big.Int).Set(domainSeparator)
	for i, input := range inputs {
		state[i+1] = new(big.Int).Set(input)
	}

	roundConstantIndex := 0
	fullHalf := cfg.fullRounds / 2
	applyRoundConstants := func() {
		for i := range state {
			state[i].Add(state[i], cfg.arc[roundConstantIndex])
			state[i].Mod(state[i], modulus)
			roundConstantIndex++
		}
	}

	for round := 0; round < fullHalf; round++ {
		applyRoundConstants()
		for i := range state {
			state[i] = pow17Native(state[i], modulus)
		}
		state = mixLayerMDSNative(state, cfg.mds, modulus)
	}

	for round := 0; round < cfg.partialRounds; round++ {
		applyRoundConstants()
		state[0] = pow17Native(state[0], modulus)
		state = mixLayerMDSNative(state, cfg.mds, modulus)
	}

	for round := 0; round < fullHalf; round++ {
		applyRoundConstants()
		for i := range state {
			state[i] = pow17Native(state[i], modulus)
		}
		state = mixLayerMDSNative(state, cfg.mds, modulus)
	}

	return state[1], nil
}

func Poseidon377Hash1(api frontend.API, domainSeparator frontend.Variable, input frontend.Variable) (frontend.Variable, error) {
	return abstractor.Call(api, poseidonPerm1{Domain: domainSeparator, In0: input}), nil
}

// poseidonPerm{1,2,3,4,6,7} wrap one Poseidon377 permutation at a fixed rate as an
// extractor gadget so the Lean extraction emits a single reusable `def
// poseidonPerm{N}` plus one call per hash site, instead of inlining ~600–2300
// gates at every call. The rate config is loaded inside DefineGadget because the
// extractor clones gadgets with copystructure, which drops unexported fields —
// so nothing rate-specific may be carried on the struct. During proving the call
// runs DefineGadget inline, so the constraint system is unchanged.
type poseidonPerm1 struct {
	Domain frontend.Variable
	In0    frontend.Variable
}

func (g poseidonPerm1) DefineGadget(api frontend.API) interface{} {
	cfg, err := loadPoseidonRateParams(1)
	if err != nil {
		panic(err)
	}
	out, err := poseidonHash(api, cfg, g.Domain, []frontend.Variable{g.In0})
	if err != nil {
		panic(err)
	}
	return out
}

type poseidonPerm2 struct {
	Domain frontend.Variable
	In0    frontend.Variable
	In1    frontend.Variable
}

func (g poseidonPerm2) DefineGadget(api frontend.API) interface{} {
	cfg, err := loadPoseidonRateParams(2)
	if err != nil {
		panic(err)
	}
	out, err := poseidonHash(api, cfg, g.Domain, []frontend.Variable{g.In0, g.In1})
	if err != nil {
		panic(err)
	}
	return out
}

type poseidonPerm3 struct {
	Domain frontend.Variable
	In0    frontend.Variable
	In1    frontend.Variable
	In2    frontend.Variable
}

func (g poseidonPerm3) DefineGadget(api frontend.API) interface{} {
	cfg, err := loadPoseidonRateParams(3)
	if err != nil {
		panic(err)
	}
	out, err := poseidonHash(api, cfg, g.Domain, []frontend.Variable{g.In0, g.In1, g.In2})
	if err != nil {
		panic(err)
	}
	return out
}

type poseidonPerm4 struct {
	Domain frontend.Variable
	In0    frontend.Variable
	In1    frontend.Variable
	In2    frontend.Variable
	In3    frontend.Variable
}

func (g poseidonPerm4) DefineGadget(api frontend.API) interface{} {
	cfg, err := loadPoseidonRateParams(4)
	if err != nil {
		panic(err)
	}
	out, err := poseidonHash(api, cfg, g.Domain, []frontend.Variable{g.In0, g.In1, g.In2, g.In3})
	if err != nil {
		panic(err)
	}
	return out
}

type poseidonPerm6 struct {
	Domain frontend.Variable
	In0    frontend.Variable
	In1    frontend.Variable
	In2    frontend.Variable
	In3    frontend.Variable
	In4    frontend.Variable
	In5    frontend.Variable
}

func (g poseidonPerm6) DefineGadget(api frontend.API) interface{} {
	cfg, err := loadPoseidonRateParams(6)
	if err != nil {
		panic(err)
	}
	out, err := poseidonHash(api, cfg, g.Domain, []frontend.Variable{g.In0, g.In1, g.In2, g.In3, g.In4, g.In5})
	if err != nil {
		panic(err)
	}
	return out
}

type poseidonPerm7 struct {
	Domain frontend.Variable
	In0    frontend.Variable
	In1    frontend.Variable
	In2    frontend.Variable
	In3    frontend.Variable
	In4    frontend.Variable
	In5    frontend.Variable
	In6    frontend.Variable
}

func (g poseidonPerm7) DefineGadget(api frontend.API) interface{} {
	cfg, err := loadPoseidonRateParams(7)
	if err != nil {
		panic(err)
	}
	out, err := poseidonHash(api, cfg, g.Domain, []frontend.Variable{g.In0, g.In1, g.In2, g.In3, g.In4, g.In5, g.In6})
	if err != nil {
		panic(err)
	}
	return out
}

func Poseidon377Hash2(api frontend.API, domainSeparator frontend.Variable, inputs [2]frontend.Variable) (frontend.Variable, error) {
	return abstractor.Call(api, poseidonPerm2{Domain: domainSeparator, In0: inputs[0], In1: inputs[1]}), nil
}

func Poseidon377Hash3(api frontend.API, domainSeparator frontend.Variable, inputs [3]frontend.Variable) (frontend.Variable, error) {
	return abstractor.Call(api, poseidonPerm3{Domain: domainSeparator, In0: inputs[0], In1: inputs[1], In2: inputs[2]}), nil
}

func Poseidon377Hash4(api frontend.API, domainSeparator frontend.Variable, inputs [4]frontend.Variable) (frontend.Variable, error) {
	return abstractor.Call(api, poseidonPerm4{Domain: domainSeparator, In0: inputs[0], In1: inputs[1], In2: inputs[2], In3: inputs[3]}), nil
}

func Poseidon377Hash5(api frontend.API, domainSeparator frontend.Variable, inputs [5]frontend.Variable) (frontend.Variable, error) {
	cfg, err := loadPoseidonRateParams(5)
	if err != nil {
		return nil, err
	}
	return poseidonHash(api, cfg, domainSeparator, []frontend.Variable{inputs[0], inputs[1], inputs[2], inputs[3], inputs[4]})
}

func Poseidon377Hash6(api frontend.API, domainSeparator frontend.Variable, inputs [6]frontend.Variable) (frontend.Variable, error) {
	return abstractor.Call(api, poseidonPerm6{
		Domain: domainSeparator,
		In0:    inputs[0],
		In1:    inputs[1],
		In2:    inputs[2],
		In3:    inputs[3],
		In4:    inputs[4],
		In5:    inputs[5],
	}), nil
}

func Poseidon377Hash7(
	api frontend.API,
	domainSeparator frontend.Variable,
	inputs [7]frontend.Variable,
) (frontend.Variable, error) {
	return abstractor.Call(api, poseidonPerm7{
		Domain: domainSeparator,
		In0:    inputs[0],
		In1:    inputs[1],
		In2:    inputs[2],
		In3:    inputs[3],
		In4:    inputs[4],
		In5:    inputs[5],
		In6:    inputs[6],
	}), nil
}

func Poseidon377Hash1Native(domainSeparator, input *big.Int) (*big.Int, error) {
	cfg, err := loadPoseidonRateParams(1)
	if err != nil {
		return nil, err
	}
	return poseidonHashNative(cfg, domainSeparator, []*big.Int{input})
}

func Poseidon377Hash2Native(domainSeparator *big.Int, inputs [2]*big.Int) (*big.Int, error) {
	cfg, err := loadPoseidonRateParams(2)
	if err != nil {
		return nil, err
	}
	return poseidonHashNative(cfg, domainSeparator, []*big.Int{inputs[0], inputs[1]})
}

func Poseidon377Hash3Native(domainSeparator *big.Int, inputs [3]*big.Int) (*big.Int, error) {
	cfg, err := loadPoseidonRateParams(3)
	if err != nil {
		return nil, err
	}
	return poseidonHashNative(cfg, domainSeparator, []*big.Int{inputs[0], inputs[1], inputs[2]})
}

func Poseidon377Hash4Native(domainSeparator *big.Int, inputs [4]*big.Int) (*big.Int, error) {
	cfg, err := loadPoseidonRateParams(4)
	if err != nil {
		return nil, err
	}
	return poseidonHashNative(cfg, domainSeparator, []*big.Int{inputs[0], inputs[1], inputs[2], inputs[3]})
}

func Poseidon377Hash5Native(domainSeparator *big.Int, inputs [5]*big.Int) (*big.Int, error) {
	cfg, err := loadPoseidonRateParams(5)
	if err != nil {
		return nil, err
	}
	return poseidonHashNative(cfg, domainSeparator, []*big.Int{inputs[0], inputs[1], inputs[2], inputs[3], inputs[4]})
}

func Poseidon377Hash6Native(domainSeparator *big.Int, inputs [6]*big.Int) (*big.Int, error) {
	cfg, err := loadPoseidonRateParams(6)
	if err != nil {
		return nil, err
	}
	return poseidonHashNative(cfg, domainSeparator, []*big.Int{inputs[0], inputs[1], inputs[2], inputs[3], inputs[4], inputs[5]})
}

func Poseidon377Hash7Native(domainSeparator *big.Int, inputs [7]*big.Int) (*big.Int, error) {
	cfg, err := loadPoseidonRateParams(7)
	if err != nil {
		return nil, err
	}
	return poseidonHashNative(cfg, domainSeparator, []*big.Int{
		inputs[0],
		inputs[1],
		inputs[2],
		inputs[3],
		inputs[4],
		inputs[5],
		inputs[6],
	})
}
