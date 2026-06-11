package circuits

import (
	"fmt"
	"strings"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
)

const wiringTranscriptSchema = "shieldd.gnark.wiring.v1"

// WiringTranscript records the semantic call graph emitted by a circuit Define.
type WiringTranscript struct {
	circuit string
	nIn     int
	nOut    int
	events  []wiringEvent
}

type wiringEvent struct {
	op   string
	args []string
}

func newWiringTranscript(circuit string, nIn, nOut int) *WiringTranscript {
	return &WiringTranscript{circuit: circuit, nIn: nIn, nOut: nOut}
}

func (t *WiringTranscript) record(op string, args ...string) {
	if t == nil {
		return
	}
	t.events = append(t.events, wiringEvent{op: op, args: args})
}

func (t *WiringTranscript) canonical() (string, error) {
	var b strings.Builder
	fmt.Fprintf(&b, "schema %s\n", wiringTranscriptSchema)
	fmt.Fprintf(&b, "circuit %s\n", t.circuit)
	fmt.Fprintf(&b, "shape n_in=%d n_out=%d\n", t.nIn, t.nOut)
	for i, event := range t.events {
		if strings.ContainsAny(event.op, " \t\r\n") {
			return "", fmt.Errorf("wiring transcript op contains whitespace: %q", event.op)
		}
		fmt.Fprintf(&b, "%04d %s", i+1, event.op)
		for _, arg := range event.args {
			if strings.ContainsAny(arg, " \t\r\n") {
				return "", fmt.Errorf("wiring transcript arg contains whitespace: %q", arg)
			}
			b.WriteByte(' ')
			b.WriteString(arg)
		}
		b.WriteByte('\n')
	}
	return b.String(), nil
}

func (c *NoteReshapeCircuit) traceWiring(op string, args ...string) {
	if c.wiringTrace != nil {
		c.wiringTrace.record(op, args...)
	}
}

func noteReshapeCircuitWithTranscript(nIn int, transcript *WiringTranscript) frontend.Circuit {
	circuit := NewConsolidateCircuit(nIn)
	circuit.wiringTrace = transcript
	return circuit
}

// ExportConsolidate2x1WiringTranscript returns the canonical transcript for the
// checked-in consolidate2x1 Define path.
func ExportConsolidate2x1WiringTranscript() (string, error) {
	transcript := newWiringTranscript("consolidate2x1", 2, 1)
	if _, err := frontend.Compile(
		ecc.BLS12_377.ScalarField(),
		r1cs.NewBuilder,
		noteReshapeCircuitWithTranscript(2, transcript),
	); err != nil {
		return "", fmt.Errorf("compile consolidate2x1 for wiring transcript: %w", err)
	}
	return transcript.canonical()
}
