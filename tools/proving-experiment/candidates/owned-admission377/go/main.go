// Private arithmetic child: only the owning checked Rust prover supplies bootstrap points.
package main

import (
	"bufio"
	"bytes"
	"encoding/binary"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"runtime"
	"syscall"
	"time"

	"github.com/consensys/gnark-crypto/ecc"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
)

const schema = "shieldd.proving_experiment.owned_msm_worker.v1"

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
	if len(os.Args) != 1 || runtime.GOMAXPROCS(0) != 2 {
		return fmt.Errorf("private child requires no arguments and two workers")
	}
	start := time.Now()
	commands := os.NewFile(3, "owned-command-channel")
	if commands == nil {
		return fmt.Errorf("missing owned command channel")
	}
	defer commands.Close()
	info, err := commands.Stat()
	if err != nil || info.Mode()&os.ModeSocket == 0 {
		return fmt.Errorf("owned command channel is not a socket")
	}
	bases, size, binding, err := admit(os.Stdin)
	if err != nil {
		return err
	}
	output := bufio.NewWriterSize(os.Stdout, 65536)
	input := bufio.NewReaderSize(commands, 65536)
	if err = write(output, response{Schema: schema, Op: "ready", Name: binding, Workers: 2, InitializationNS: time.Since(start).Nanoseconds(), ResidentBaseBytes: size}, nil); err != nil {
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
