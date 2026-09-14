// Development-only persistent gnark-crypto MSM worker with checked resident bases.
package main

import (
	"bufio"
	"bytes"
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"runtime"
	"syscall"
	"time"

	"github.com/consensys/gnark-crypto/ecc"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
)

const schema = "shieldd.proving_experiment.gnark_msm_worker.v1"

type fileIdentity struct {
	Path   string `json:"path"`
	SHA256 string `json:"sha256"`
}
type operation struct {
	Name           string       `json:"name"`
	Count          int          `json:"count"`
	Bases          fileIdentity `json:"bases"`
	Scalars        fileIdentity `json:"scalars"`
	Expected       fileIdentity `json:"expected"`
	ReferenceMSMNS uint64       `json:"reference_msm_ns"`
}
type manifest struct {
	Schema                   string         `json:"schema"`
	Boundary                 string         `json:"boundary"`
	Workers                  int            `json:"workers"`
	Sources                  []fileIdentity `json:"sources"`
	Key                      fileIdentity   `json:"key"`
	SolvedWitness            fileIdentity   `json:"solved_witness"`
	Proof                    fileIdentity   `json:"proof"`
	Statement                string         `json:"statement"`
	Operations               []operation    `json:"operations"`
	PreparationNS            uint64         `json:"preparation_ns"`
	ProvingWallWithCaptureNS uint64         `json:"proving_wall_with_capture_ns"`
	NonMSMNS                 uint64         `json:"non_msm_ns"`
}
type request struct {
	Schema       string `json:"schema"`
	Op           string `json:"op"`
	Name         string `json:"name"`
	PayloadBytes uint32 `json:"payload_bytes"`
}
type response struct {
	MSMAllocatedBytes uint64 `json:"msm_allocated_bytes"`
	PeakRSSBytes      int64  `json:"peak_rss_bytes"`
	Schema            string `json:"schema"`
	Op                string `json:"op"`
	Name              string `json:"name"`
	PayloadBytes      int    `json:"payload_bytes"`
	Error             string `json:"error"`
	Workers           int    `json:"workers"`
	InitializationNS  int64  `json:"initialization_ns"`
	ResidentBaseBytes int    `json:"resident_base_bytes"`
	PayloadReadNS     int64  `json:"payload_read_ns"`
	ScalarDecodeNS    int64  `json:"scalar_decode_ns"`
	MSMNS             int64  `json:"msm_ns"`
	EncodingNS        int64  `json:"encoding_ns"`
	WorkerNS          int64  `json:"worker_ns"`
	HeapAllocBytes    uint64 `json:"heap_alloc_bytes"`
	HeapSysBytes      uint64 `json:"heap_sys_bytes"`
}

func point(bytes []byte) (curve.G1Affine, error) {
	var p curve.G1Affine
	if len(bytes) != 97 {
		return p, fmt.Errorf("point length")
	}
	if bytes[0] == 0 {
		for _, b := range bytes[1:] {
			if b != 0 {
				return p, fmt.Errorf("noncanonical identity")
			}
		}
		p.SetInfinity()
		return p, nil
	}
	if bytes[0] != 1 {
		return p, fmt.Errorf("point tag")
	}
	if err := p.X.SetBytesCanonical(bytes[1:49]); err != nil {
		return p, err
	}
	if err := p.Y.SetBytesCanonical(bytes[49:97]); err != nil {
		return p, err
	}
	if p.IsInfinity() || !p.IsOnCurve() || !p.IsInSubGroup() {
		return p, fmt.Errorf("invalid finite subgroup point")
	}
	return p, nil
}
func encode(p *curve.G1Affine) []byte {
	out := make([]byte, 97)
	if p.IsInfinity() {
		return out
	}
	out[0] = 1
	x, y := p.X.Bytes(), p.Y.Bytes()
	copy(out[1:49], x[:])
	copy(out[49:], y[:])
	return out
}
func checkedFile(id fileIdentity) ([]byte, error) {
	b, err := os.ReadFile(id.Path)
	if err != nil {
		return nil, err
	}
	h := sha256.Sum256(b)
	if hex.EncodeToString(h[:]) != id.SHA256 {
		return nil, fmt.Errorf("artifact hash mismatch: %s", id.Path)
	}
	return b, nil
}
func load(dir string) (map[string][]curve.G1Affine, int, error) {
	f, err := os.Open(filepath.Join(dir, "manifest.json"))
	if err != nil {
		return nil, 0, err
	}
	defer f.Close()
	var m manifest
	d := json.NewDecoder(f)
	d.DisallowUnknownFields()
	if err = d.Decode(&m); err != nil {
		return nil, 0, err
	}
	if m.Schema != "shieldd.proving_experiment.msm_operands.v1" || m.Workers != 2 || len(m.Operations) != 5 {
		return nil, 0, fmt.Errorf("operand manifest identity")
	}
	out := make(map[string][]curve.G1Affine)
	counts := make(map[string]int)
	for _, op := range m.Operations {
		if op.Count < 1 || op.Count > 1<<21 || counts[op.Name] != 0 {
			return nil, 0, fmt.Errorf("operation count/duplicate")
		}
		counts[op.Name] = op.Count
	}
	for _, name := range []string{"witness", "masks", "quotient", "opening_a", "opening_r"} {
		if counts[name] == 0 {
			return nil, 0, fmt.Errorf("missing operation")
		}
	}
	// Immutable views share these allocations; combined calls never copy bases.
	commitment := make([]curve.G1Affine, counts["witness"]+counts["quotient"])
	opening := make([]curve.G1Affine, counts["opening_a"]+counts["opening_r"])
	views := map[string][]curve.G1Affine{
		"witness":   commitment[:counts["witness"]],
		"quotient":  commitment[counts["witness"]:],
		"opening_a": opening[:counts["opening_a"]],
		"opening_r": opening[counts["opening_a"]:],
		"masks":     make([]curve.G1Affine, counts["masks"]),
	}
	total := 0
	for _, op := range m.Operations {
		switch op.Name {
		case "witness", "masks", "quotient", "opening_a", "opening_r":
		default:
			return nil, 0, fmt.Errorf("unknown operation")
		}
		if _, exists := out[op.Name]; exists || op.Count < 1 || op.Count > 1<<21 {
			return nil, 0, fmt.Errorf("operation count/duplicate")
		}
		data, err := checkedFile(op.Bases)
		if err != nil {
			return nil, 0, err
		}
		if len(data) != 97*op.Count {
			return nil, 0, fmt.Errorf("base count")
		}
		bases := views[op.Name]
		errors := make(chan error, 2)
		for worker := 0; worker < 2; worker++ {
			go func(worker int) {
				for i := worker; i < len(bases); i += 2 {
					p, err := point(data[i*97 : (i+1)*97])
					if err != nil {
						errors <- err
						return
					}
					bases[i] = p
				}
				errors <- nil
			}(worker)
		}
		first, second := <-errors, <-errors
		if first != nil {
			return nil, 0, first
		}
		if second != nil {
			return nil, 0, second
		}
		out[op.Name] = bases
		total += len(bases) * 96
	}
	out["commitment"] = commitment
	out["opening"] = opening
	return out, total, nil
}
func read(input io.Reader) (request, []byte, int64, error) {
	var req request
	var length [4]byte
	if _, err := io.ReadFull(input, length[:]); err != nil {
		return req, nil, 0, err
	}
	n := binary.BigEndian.Uint32(length[:])
	if n < 1 || n > 4096 {
		return req, nil, 0, fmt.Errorf("header length")
	}
	header := make([]byte, n)
	if _, err := io.ReadFull(input, header); err != nil {
		return req, nil, 0, err
	}
	d := json.NewDecoder(bytes.NewReader(header))
	d.DisallowUnknownFields()
	if err := d.Decode(&req); err != nil {
		return req, nil, 0, err
	}
	var extra any
	if d.Decode(&extra) != io.EOF {
		return req, nil, 0, fmt.Errorf("trailing header")
	}
	if req.Schema != schema || req.Op != "msm" || req.PayloadBytes > 64<<20 {
		return req, nil, 0, fmt.Errorf("request identity/size")
	}
	start := time.Now()
	payload := make([]byte, req.PayloadBytes)
	_, err := io.ReadFull(input, payload)
	return req, payload, time.Since(start).Nanoseconds(), err
}
func write(output io.Writer, r response, payload []byte) error {
	r.PayloadBytes = len(payload)
	header, err := json.Marshal(r)
	if err != nil {
		return err
	}
	var length [4]byte
	binary.BigEndian.PutUint32(length[:], uint32(len(header)))
	for _, part := range [][]byte{length[:], header, payload} {
		if _, err = output.Write(part); err != nil {
			return err
		}
	}
	if f, ok := output.(interface{ Flush() error }); ok {
		return f.Flush()
	}
	return nil
}
func compute(bases []curve.G1Affine, payload []byte, r *response) ([]byte, error) {
	start := time.Now()
	if len(payload) != 32*len(bases) {
		return nil, fmt.Errorf("scalar count")
	}
	scalars := make([]fr.Element, len(bases))
	for i := range scalars {
		if err := scalars[i].SetBytesCanonical(payload[i*32 : (i+1)*32]); err != nil {
			return nil, err
		}
	}
	r.ScalarDecodeNS = time.Since(start).Nanoseconds()
	var before runtime.MemStats
	runtime.ReadMemStats(&before)
	phase := time.Now()
	var jac curve.G1Jac
	if _, err := jac.MultiExp(bases, scalars, ecc.MultiExpConfig{NbTasks: 2}); err != nil {
		return nil, err
	}
	r.MSMNS = time.Since(phase).Nanoseconds()
	var after runtime.MemStats
	runtime.ReadMemStats(&after)
	r.MSMAllocatedBytes = after.TotalAlloc - before.TotalAlloc
	phase = time.Now()
	var affine curve.G1Affine
	affine.FromJacobian(&jac)
	result := encode(&affine)
	r.EncodingNS = time.Since(phase).Nanoseconds()
	r.WorkerNS = time.Since(start).Nanoseconds()
	return result, nil
}
func run() error {
	if len(os.Args) != 2 || runtime.GOMAXPROCS(0) != 2 {
		return fmt.Errorf("usage: GOMAXPROCS=2 msmworker OPERANDS_DIRECTORY")
	}
	start := time.Now()
	bases, size, err := load(os.Args[1])
	if err != nil {
		return err
	}
	output := bufio.NewWriterSize(os.Stdout, 65536)
	input := bufio.NewReaderSize(os.Stdin, 65536)
	if err = write(output, response{Schema: schema, Op: "ready", Workers: 2, InitializationNS: time.Since(start).Nanoseconds(), ResidentBaseBytes: size}, nil); err != nil {
		return err
	}
	for {
		if _, err = input.Peek(1); err == io.EOF {
			return nil
		} else if err != nil {
			return err
		}
		req, payload, readNS, err := read(input)
		if err != nil {
			return err
		}
		r := response{Schema: schema, Op: req.Op, Name: req.Name, Workers: 2, PayloadReadNS: readNS}
		b, ok := bases[req.Name]
		var result []byte
		if !ok {
			err = fmt.Errorf("unknown base class")
		} else {
			result, err = compute(b, payload, &r)
		}
		if err != nil {
			r.Error = err.Error()
		}
		var mem runtime.MemStats
		runtime.ReadMemStats(&mem)
		r.HeapAllocBytes = mem.HeapAlloc
		r.HeapSysBytes = mem.HeapSys
		var usage syscall.Rusage
		if err := syscall.Getrusage(syscall.RUSAGE_SELF, &usage); err != nil {
			return err
		}
		r.PeakRSSBytes = usage.Maxrss
		if runtime.GOOS == "linux" {
			r.PeakRSSBytes *= 1024
		}
		if err = write(output, r, result); err != nil {
			return err
		}
	}
}
func main() {
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
