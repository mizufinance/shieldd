package extractor

import (
	"fmt"
	"strings"
)

// Ladder folding renders a maximal contiguous run of identical self-threading
// gadget calls as a single recursive `<gadget>_ladder` definition instead of
// unrolling it into an n-deep continuation chain. This keeps the extracted Lean
// term inductive (one rung per recursion step) so downstream soundness proofs
// can proceed by structural induction rather than crossing an n-deep flat term.
//
// Folding is opt-in by gadget name (see CircuitToLeanWithFold). The deployed
// R1CS is unchanged: the Go circuit still emits the same flat gates; only the
// Lean rendering changes. The shape is verified against the real constraint
// system by the gnark/Picus fidelity tests.

// minLadderRun is the shortest run worth folding. Opt-in gadgets only appear in
// long ladders, so this is a guard against pathological tiny repeats.
const minLadderRun = 8

// LadderRun is a maximal contiguous run of identical self-threading gadget
// calls in a circuit's flat Code that can be rendered recursively.
type LadderRun struct {
	Start    int       // first App index in Code (inclusive)
	End      int       // one past the last App index (exclusive)
	Gadget   *ExGadget // the repeated gadget
	Width    int       // state width = number of gadget outputs
	BitsGate Operand   // source Gate of the iterated arg (position 0)
	InitArgs []Operand // first step's state args (Width operands)
}

// projParts decomposes a Proj operand into (source, index, ok).
func projParts(op Operand) (source Operand, index int, ok bool) {
	p, isProj := op.(Proj)
	if !isProj {
		return nil, 0, false
	}
	return p.Operand, p.Index, true
}

// detectLadderRuns finds non-overlapping ladder runs whose gadget name is in
// foldNames. A run requires:
//   - the iterated arg at position 0: an ascending Proj into a fixed Gate,
//     starting at index 0;
//   - the remaining Width args threading the immediately-preceding step's full
//     output in order (Proj{Gate{j-1}, 0..Width-1}).
//
// Anything that deviates closes the run, so the renderer falls back to flat
// unrolling for non-matching code. This keeps detection conservative.
func detectLadderRuns(code []App, foldNames map[string]bool) []LadderRun {
	runs := []LadderRun{}
	i := 0
	for i < len(code) {
		g, ok := code[i].Op.(*ExGadget)
		if !ok || !foldNames[g.Name] {
			i++
			continue
		}
		w := len(g.OutputsFlat)
		if w == 0 || len(code[i].Args) != w+1 {
			i++
			continue
		}
		bitsGate, bidx, bok := projParts(code[i].Args[0])
		if !bok || bidx != 0 {
			i++
			continue
		}
		start := i
		initArgs := append([]Operand{}, code[i].Args[1:]...)
		j := i + 1
		for j < len(code) {
			gj, okj := code[j].Op.(*ExGadget)
			if !okj || gj.Name != g.Name || len(code[j].Args) != w+1 {
				break
			}
			bg, bi, ok0 := projParts(code[j].Args[0])
			if !ok0 || bg != bitsGate || bi != j-start {
				break
			}
			threaded := true
			for w0 := 0; w0 < w; w0++ {
				src, idx, oks := projParts(code[j].Args[1+w0])
				if !oks || src != (Gate{j - 1}) || idx != w0 {
					threaded = false
					break
				}
			}
			if !threaded {
				break
			}
			j++
		}
		if j-start >= minLadderRun {
			runs = append(runs, LadderRun{
				Start: start, End: j, Gadget: g, Width: w,
				BitsGate: bitsGate, InitArgs: initArgs,
			})
			i = j
		} else {
			i++
		}
	}
	return runs
}

// exportLadderDef emits the recursive ladder definition for a gadget. The
// definition is generic over the bit-vector length and recurses structurally on
// a fuel counter, advancing an index `i` into the iterated vector and threading
// a Width-wide state vector through each rung.
func exportLadderDef(g *ExGadget) string {
	w := len(g.OutputsFlat)
	name := g.Name + "_ladder"
	states := make([]string, w)
	for i := range states {
		states[i] = fmt.Sprintf("st[%d]", i)
	}
	return fmt.Sprintf(
		"def %s {n: Nat} (bits: List.Vector F n) (k: List.Vector F %d -> Prop) : Nat -> Nat -> List.Vector F %d -> Prop\n"+
			"  | 0, _, st => k st\n"+
			"  | Nat.succ fuel, i, st => %s bits[i]! %s (fun st' => %s bits k fuel (i+1) st')",
		name, w, w, g.Name, strings.Join(states, " "), name)
}

// exportLadderDefs emits each distinct foldable gadget's ladder definition once.
func exportLadderDefs(gadgets []*ExGadget) string {
	seen := map[string]bool{}
	defs := []string{}
	for _, g := range gadgets {
		if seen[g.Name] {
			continue
		}
		seen[g.Name] = true
		defs = append(defs, exportLadderDef(g))
	}
	return strings.Join(defs, "\n\n")
}

// genCircuitBodyFolded renders the circuit body with ladder runs collapsed into
// recursive calls. Returns the body and the distinct gadgets that need a ladder
// definition emitted. Falls back to the flat genCircuitBody when no run folds.
func genCircuitBodyFolded(circuit ExCircuit, foldNames map[string]bool) (string, []*ExGadget) {
	runs := detectLadderRuns(circuit.Code, foldNames)
	if len(runs) == 0 {
		return genCircuitBody(circuit), nil
	}

	gateVars := assignGateVars(circuit.Code)
	runAt := map[int]LadderRun{}
	usedGadgets := []*ExGadget{}
	for _, r := range runs {
		runAt[r.Start] = r
		usedGadgets = append(usedGadgets, r.Gadget)
	}

	var b strings.Builder
	closers := []string{} // LIFO stack of trailing ladder applications

	i := 0
	for i < len(circuit.Code) {
		if r, ok := runAt[i]; ok {
			name := r.Gadget.Name + "_ladder"
			bitsExpr := operandExpr(r.BitsGate, circuit.Inputs, gateVars)
			initVec := fmt.Sprintf("vec![%s]",
				strings.Join(operandExprs(r.InitArgs, circuit.Inputs, gateVars), ", "))
			lastGate := gateVars[r.End-1]
			if lastGate == "" {
				lastGate = "_ignored_"
			}
			count := r.End - r.Start
			b.WriteString(fmt.Sprintf("    %s %s (fun %s =>\n", name, bitsExpr, lastGate))
			closers = append(closers, fmt.Sprintf("    ) %d 0 %s\n", count, initVec))
			i = r.End
			continue
		}
		b.WriteString(genLine(circuit.Code[i], gateVars[i], circuit.Inputs, gateVars))
		i++
	}
	b.WriteString("    True\n")
	for k := len(closers) - 1; k >= 0; k-- {
		b.WriteString(closers[k])
	}
	return b.String(), usedGadgets
}
