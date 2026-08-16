package main

import (
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"

	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func TestIndexedGenerationCircuitCompilesAndSolves(t *testing.T) {
	template, assignment, _, err := circuits(0, 0, 1<<32)
	if err != nil {
		t.Fatal(err)
	}
	ccs, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, template)
	if err != nil {
		t.Fatal(err)
	}
	t.Logf("indexed historical generation constraints=%d", ccs.GetNbConstraints())
	witness, err := frontend.NewWitness(assignment, ecc.BLS12_377.ScalarField())
	if err != nil {
		t.Fatal(err)
	}
	if err := ccs.IsSolved(witness); err != nil {
		t.Fatal(err)
	}
}

func TestIndexedGenerationCircuitRejectsMalformedClaims(t *testing.T) {
	template, assignment, _, err := circuits(0, 0, 1<<32)
	if err != nil {
		t.Fatal(err)
	}
	ccs, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, template)
	if err != nil {
		t.Fatal(err)
	}
	outsideGenerationRange := new(big.Int).Lsh(big.NewInt(1), 64)
	outsidePositionRange := new(big.Int).Lsh(big.NewInt(1), 48)
	outsideLeafRange := new(big.Int).Lsh(big.NewInt(1), treeDepth*2)
	for _, testCase := range []struct {
		name   string
		mutate func(*innerCircuit)
	}{
		{name: "forged root", mutate: func(c *innerCircuit) { c.GenerationRoot = 1 }},
		{name: "wrong protocol version", mutate: func(c *innerCircuit) { c.ProtocolVersion = protocolVersion + 1 }},
		{name: "public nullifier mismatch", mutate: func(c *innerCircuit) { c.PublicNullifier = 8 }},
		{name: "generation outside 64 bits", mutate: func(c *innerCircuit) { c.GenerationIndex = outsideGenerationRange }},
		{name: "start outside 48 bits", mutate: func(c *innerCircuit) { c.GenerationStartPosition = outsidePositionRange }},
		{name: "end outside 48 bits", mutate: func(c *innerCircuit) { c.GenerationEndPosition = outsidePositionRange }},
		{name: "reversed interval", mutate: func(c *innerCircuit) { c.GenerationStartPosition = uint64(1) << 33 }},
		{name: "nonboolean sentinel", mutate: func(c *innerCircuit) { c.Leaf.IsLowerSentinel = 2 }},
		{name: "nonboolean terminal", mutate: func(c *innerCircuit) { c.Leaf.IsTerminal = 2 }},
		{name: "sentinel away from zero", mutate: func(c *innerCircuit) { c.Leaf.IsLowerSentinel = 1 }},
		{name: "ordinary leaf at zero", mutate: func(c *innerCircuit) { c.LeafPosition = 0 }},
		{name: "leaf position outside 40 bits", mutate: func(c *innerCircuit) { c.LeafPosition = outsideLeafRange }},
		{name: "successor index outside 40 bits", mutate: func(c *innerCircuit) {
			c.Leaf.IsTerminal = 0
			c.Leaf.NextIndex = outsideLeafRange
			c.Leaf.NextValue = 10
		}},
		{name: "nonterminal zero successor index", mutate: func(c *innerCircuit) {
			c.Leaf.IsTerminal = 0
			c.Leaf.NextValue = 10
		}},
		{name: "terminal successor index", mutate: func(c *innerCircuit) { c.Leaf.NextIndex = 2 }},
		{name: "terminal successor value", mutate: func(c *innerCircuit) { c.Leaf.NextValue = 10 }},
		{name: "predecessor equals nullifier", mutate: func(c *innerCircuit) { c.Leaf.Value = 9 }},
		{name: "predecessor above nullifier", mutate: func(c *innerCircuit) { c.Leaf.Value = 10 }},
		{name: "successor equals nullifier", mutate: func(c *innerCircuit) {
			c.Leaf.IsTerminal = 0
			c.Leaf.NextIndex = 2
			c.Leaf.NextValue = 9
		}},
		{name: "successor below nullifier", mutate: func(c *innerCircuit) {
			c.Leaf.IsTerminal = 0
			c.Leaf.NextIndex = 2
			c.Leaf.NextValue = 8
		}},
		{name: "forged path", mutate: func(c *innerCircuit) { c.Path[0][0] = 1 }},
		{name: "forged start head", mutate: func(c *innerCircuit) { c.StartHistoryHead = 1 }},
		{name: "forged end head", mutate: func(c *innerCircuit) { c.EndHistoryHead = 1 }},
	} {
		t.Run(testCase.name, func(t *testing.T) {
			malformed := *assignment
			testCase.mutate(&malformed)
			witness, err := frontend.NewWitness(&malformed, ecc.BLS12_377.ScalarField())
			if err == nil {
				err = ccs.IsSolved(witness)
			}
			if err == nil {
				t.Fatal("malformed historical generation claim unexpectedly solved")
			}
		})
	}
}

type quadPathCircuit struct {
	Leaf     frontend.Variable
	Path     [treeDepth][3]frontend.Variable
	Position frontend.Variable
	Root     frontend.Variable `gnark:",public"`
}

func (c *quadPathCircuit) Define(api frontend.API) error {
	root, err := verifyQuadPath20(api, c.Leaf, c.Path, c.Position)
	if err != nil {
		return err
	}
	api.AssertIsEqual(root, c.Root)
	return nil
}

func TestQuadPathPlacesTheLeafInEveryChildPosition(t *testing.T) {
	template := &quadPathCircuit{}
	ccs, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, template)
	if err != nil {
		t.Fatal(err)
	}
	children := [4]*big.Int{big.NewInt(11), big.NewInt(22), big.NewInt(33), big.NewInt(44)}
	firstRoot, err := primitives.Poseidon377Hash4Native(big.NewInt(0), children)
	if err != nil {
		t.Fatal(err)
	}
	zero := make([]*big.Int, treeDepth)
	zero[0] = big.NewInt(0)
	root := new(big.Int).Set(firstRoot)
	for level := 1; level < treeDepth; level++ {
		zero[level], err = primitives.Poseidon377Hash4Native(
			big.NewInt(0),
			[4]*big.Int{zero[level-1], zero[level-1], zero[level-1], zero[level-1]},
		)
		if err != nil {
			t.Fatal(err)
		}
		root, err = primitives.Poseidon377Hash4Native(
			big.NewInt(0),
			[4]*big.Int{root, zero[level], zero[level], zero[level]},
		)
		if err != nil {
			t.Fatal(err)
		}
	}
	for position := 0; position < 4; position++ {
		t.Run(big.NewInt(int64(position)).String(), func(t *testing.T) {
			assignment := &quadPathCircuit{Leaf: children[position], Position: position, Root: root}
			sibling := 0
			for child := 0; child < 4; child++ {
				if child != position {
					assignment.Path[0][sibling] = children[child]
					sibling++
				}
			}
			for level := 1; level < treeDepth; level++ {
				assignment.Path[level] = [3]frontend.Variable{zero[level], zero[level], zero[level]}
			}
			witness, err := frontend.NewWitness(assignment, ecc.BLS12_377.ScalarField())
			if err != nil {
				t.Fatal(err)
			}
			if err := ccs.IsSolved(witness); err != nil {
				t.Fatal(err)
			}

			assignment.Path[0][0] = 99
			forged, err := frontend.NewWitness(assignment, ecc.BLS12_377.ScalarField())
			if err == nil {
				err = ccs.IsSolved(forged)
			}
			if err == nil {
				t.Fatal("forged sibling unexpectedly solved")
			}
		})
	}
}

func TestEmptyGenerationSentinelCoversFieldBoundaries(t *testing.T) {
	template := &innerCircuit{}
	ccs, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, template)
	if err != nil {
		t.Fatal(err)
	}
	zero := make([]*big.Int, treeDepth+1)
	zero[0] = big.NewInt(0)
	for level := 1; level <= treeDepth; level++ {
		zero[level], err = primitives.Poseidon377Hash4Native(
			big.NewInt(0),
			[4]*big.Int{zero[level-1], zero[level-1], zero[level-1], zero[level-1]},
		)
		if err != nil {
			t.Fatal(err)
		}
	}
	leafHash, err := primitives.Poseidon377Hash5Native(
		leafDomain,
		[5]*big.Int{big.NewInt(0), big.NewInt(0), big.NewInt(0), big.NewInt(1), big.NewInt(1)},
	)
	if err != nil {
		t.Fatal(err)
	}
	root := new(big.Int).Set(leafHash)
	for level := 0; level < treeDepth; level++ {
		root, err = primitives.Poseidon377Hash4Native(
			big.NewInt(0),
			[4]*big.Int{root, zero[level], zero[level], zero[level]},
		)
		if err != nil {
			t.Fatal(err)
		}
	}
	start, end, err := historyHeads(0, root)
	if err != nil {
		t.Fatal(err)
	}
	maximum := new(big.Int).Sub(ecc.BLS12_377.ScalarField(), big.NewInt(1))
	for _, nullifier := range []*big.Int{big.NewInt(0), maximum} {
		assignment := &innerCircuit{
			Nullifier:               nullifier,
			Leaf:                    indexedLeaf{Value: 0, NextIndex: 0, NextValue: 0, IsLowerSentinel: 1, IsTerminal: 1},
			LeafPosition:            0,
			ProtocolVersion:         protocolVersion,
			PublicNullifier:         nullifier,
			GenerationIndex:         0,
			GenerationRoot:          root,
			GenerationStartPosition: 0,
			GenerationEndPosition:   uint64(1) << 32,
			StartHistoryHead:        start,
			EndHistoryHead:          end,
		}
		for level := 0; level < treeDepth; level++ {
			assignment.Path[level] = [3]frontend.Variable{zero[level], zero[level], zero[level]}
		}
		witness, err := frontend.NewWitness(assignment, ecc.BLS12_377.ScalarField())
		if err != nil {
			t.Fatal(err)
		}
		if err := ccs.IsSolved(witness); err != nil {
			t.Fatal(err)
		}
	}
}
