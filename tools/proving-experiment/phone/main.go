// Device-side request clocks include child IPC and exclude ADB transport.
package main

import (
	"bufio"
	"bytes"
	"context"
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"os"
	"os/exec"
	"os/signal"
	"path/filepath"
	"strconv"
	"strings"
	"syscall"
	"time"
)

type Artifact struct {
	Path   string `json:"path"`
	SHA256 string `json:"sha256"`
}
type Scenario struct {
	Name      string   `json:"name"`
	Witness   Artifact `json:"witness"`
	Statement string   `json:"statement"`
}
type Config struct {
	Schema                string     `json:"schema"`
	Backend               string     `json:"backend"`
	WorkerSchema          string     `json:"worker_schema"`
	Command               []string   `json:"command"`
	Artifacts             []Artifact `json:"artifacts"`
	Scenarios             []Scenario `json:"scenarios"`
	Invalid               Artifact   `json:"invalid"`
	MinimumStartBytes     uint64     `json:"minimum_start_bytes"`
	MinimumAvailableBytes uint64     `json:"minimum_available_bytes"`
	GuardPolicy           string     `json:"guard_policy,omitempty"`
	ReuseGateConfig       *Artifact  `json:"reuse_gate_config,omitempty"`
}
type Header struct {
	Schema       string `json:"schema"`
	Op           string `json:"op"`
	PayloadBytes uint32 `json:"payload_bytes"`
	Error        string `json:"error,omitempty"`
	Statement    string `json:"statement,omitempty"`
	Verified     bool   `json:"verified,omitempty"`
}
type Frame struct {
	Header  Header
	Payload []byte
	Raw     json.RawMessage
}
type Resource struct {
	TimeNS         int64  `json:"time_ns"`
	AvailableBytes uint64 `json:"available_bytes"`
	TreeRSSBytes   uint64 `json:"tree_rss_bytes"`
	RSSComplete    bool   `json:"rss_complete"`
	PIDs           []int  `json:"pids"`
	ThermalStatus  *int   `json:"thermal_status"`
	SensorTimeNS   int64  `json:"sensor_time_ns"`
	SensorBodyNS   int64  `json:"sensor_body_ns"`
}
type Sample struct {
	Schema       string          `json:"schema"`
	Backend      string          `json:"backend"`
	Stage        string          `json:"stage"`
	Scenario     string          `json:"scenario"`
	Index        int             `json:"index"`
	WallNS       int64           `json:"wall_ns"`
	Proof        Artifact        `json:"proof"`
	EncodedBytes int             `json:"encoded_bytes"`
	Verified     bool            `json:"verified"`
	Rejections   []string        `json:"rejections,omitempty"`
	Response     json.RawMessage `json:"response"`
}
type Completion struct {
	Schema                 string     `json:"schema"`
	Backend                string     `json:"backend"`
	Mode                   string     `json:"mode"`
	ConfigSHA256           string     `json:"config_sha256"`
	Samples                Artifact   `json:"samples"`
	Resources              Artifact   `json:"resources"`
	Proofs                 []Artifact `json:"proofs"`
	InvalidWitnessRejected bool       `json:"invalid_witness_rejected"`
}

func hash(data []byte) string { h := sha256.Sum256(data); return hex.EncodeToString(h[:]) }
func identify(path string) (Artifact, error) {
	f, e := os.Open(path)
	if e != nil {
		return Artifact{}, e
	}
	defer f.Close()
	h := sha256.New()
	if _, e = io.Copy(h, f); e != nil {
		return Artifact{}, e
	}
	return Artifact{path, hex.EncodeToString(h.Sum(nil))}, nil
}
func checked(a Artifact) ([]byte, error) {
	b, e := os.ReadFile(a.Path)
	if e != nil {
		return nil, e
	}
	if hash(b) != a.SHA256 {
		return nil, fmt.Errorf("artifact changed: %s", a.Path)
	}
	return b, nil
}
func readFrame(r io.Reader, schema string) (Frame, error) {
	var f Frame
	var n uint32
	if e := binary.Read(r, binary.BigEndian, &n); e != nil {
		return f, e
	}
	if n == 0 || n > 4096 {
		return f, errors.New("header bound")
	}
	f.Raw = make([]byte, n)
	if _, e := io.ReadFull(r, f.Raw); e != nil {
		return f, e
	}
	if e := json.Unmarshal(f.Raw, &f.Header); e != nil {
		return f, e
	}
	if f.Header.Schema != schema || f.Header.PayloadBytes > 1024*1024 {
		return f, errors.New("response schema/payload bound")
	}
	f.Payload = make([]byte, f.Header.PayloadBytes)
	_, e := io.ReadFull(r, f.Payload)
	return f, e
}
func writeFrame(w io.Writer, h Header, p []byte) error {
	if len(p) > 1024*1024 {
		return errors.New("request payload bound")
	}
	h.PayloadBytes = uint32(len(p))
	b, e := json.Marshal(h)
	if e != nil {
		return e
	}
	if e = binary.Write(w, binary.BigEndian, uint32(len(b))); e != nil {
		return e
	}
	if _, e = io.Copy(w, bytes.NewReader(b)); e != nil {
		return e
	}
	_, e = io.Copy(w, bytes.NewReader(p))
	return e
}

type Worker struct {
	cmd    *exec.Cmd
	in     io.WriteCloser
	out    *bufio.Reader
	schema string
	done   chan error
	cancel context.CancelFunc
}

func startWorker(ctx context.Context, c Config) (*Worker, error) {
	ctx, cancel := context.WithCancel(ctx)
	cmd := exec.Command(c.Command[0], c.Command[1:]...)
	cmd.Env = append(os.Environ(), "GOMAXPROCS=2", "RAYON_NUM_THREADS=2")
	cmd.SysProcAttr = &syscall.SysProcAttr{Setpgid: true}
	cmd.Stderr = os.Stderr
	input, e := cmd.StdinPipe()
	if e != nil {
		cancel()
		return nil, e
	}
	output, e := cmd.StdoutPipe()
	if e != nil {
		cancel()
		return nil, e
	}
	if e = cmd.Start(); e != nil {
		cancel()
		return nil, e
	}
	w := &Worker{cmd, input, bufio.NewReader(output), c.WorkerSchema, make(chan error, 1), cancel}
	go func() { <-ctx.Done(); _ = syscall.Kill(-cmd.Process.Pid, syscall.SIGKILL) }()
	return w, nil
}
func (w *Worker) close() error {
	_ = w.in.Close()
	go func() { w.done <- w.cmd.Wait() }()
	defer w.cancel()
	select {
	case e := <-w.done:
		return e
	case <-time.After(10 * time.Second):
		w.cancel()
		<-w.done
		return errors.New("worker shutdown timeout")
	}
}
func (w *Worker) call(op string, p []byte, statement string) (Frame, error) {
	if e := writeFrame(w.in, Header{Schema: w.schema, Op: op, Statement: statement}, p); e != nil {
		return Frame{}, e
	}
	f, e := readFrame(w.out, w.schema)
	if e == nil && f.Header.Op != op {
		return f, errors.New("response operation mismatch")
	}
	return f, e
}
func memoryFields(b []byte) map[string]uint64 {
	out := make(map[string]uint64)
	for _, line := range strings.Split(string(b), "\n") {
		f := strings.Fields(line)
		if len(f) == 3 && f[2] == "kB" {
			if n, e := strconv.ParseUint(f[1], 10, 64); e == nil {
				out[strings.TrimSuffix(f[0], ":")] = n * 1024
			}
		}
	}
	return out
}
func available() (uint64, error) {
	b, e := os.ReadFile("/proc/meminfo")
	if e != nil {
		return 0, e
	}
	n, ok := memoryFields(b)["MemAvailable"]
	if !ok {
		return 0, errors.New("MemAvailable unavailable")
	}
	return n, nil
}
func thermal(ctx context.Context) *int {
	ctx, cancel := context.WithTimeout(ctx, 2*time.Second)
	defer cancel()
	b, e := exec.CommandContext(ctx, "/system/bin/dumpsys", "thermalservice").Output()
	if e != nil {
		return nil
	}
	for _, line := range strings.Split(string(b), "\n") {
		if strings.HasPrefix(strings.TrimSpace(line), "Thermal Status:") {
			n, e := strconv.Atoi(strings.TrimSpace(strings.SplitN(line, ":", 2)[1]))
			if e == nil {
				return &n
			}
		}
	}
	return nil
}
func monitor(ctx context.Context, c Config, pid int, path string) error {
	f, e := os.OpenFile(path, os.O_CREATE|os.O_EXCL|os.O_WRONLY, 0600)
	if e != nil {
		return e
	}
	defer f.Close()
	enc := json.NewEncoder(f)
	ticker := time.NewTicker(250 * time.Millisecond)
	defer ticker.Stop()
	sensorCtx, stopSensors := context.WithCancel(ctx)
	defer stopSensors()
	updates := make(chan Resource, 1)
	done := make(chan struct{})
	go func() { defer close(done); sensorLoop(sensorCtx, pid, c.Backend, updates) }()
	defer func() { stopSensors(); <-done }()
	latest := Resource{}
	for {
		select {
		case <-ctx.Done():
			return nil
		default:
		}
		n, e := available()
		if e != nil {
			return e
		}
		select {
		case latest = <-updates:
		default:
		}
		row := latest
		row.TimeNS = time.Now().UnixNano()
		row.AvailableBytes = n
		if row.TimeNS-row.SensorTimeNS > 3_000_000_000 {
			row.RSSComplete = false
		}
		if e = enc.Encode(row); e != nil {
			return e
		}
		if e = checkFloor(n, c.MinimumAvailableBytes); e != nil {
			return e
		}
		if row.ThermalStatus != nil && *row.ThermalStatus >= 3 {
			return fmt.Errorf("severe thermal status %d", *row.ThermalStatus)
		}
		select {
		case <-ctx.Done():
			return nil
		case <-ticker.C:
		}
	}
}
func writeJSON(path string, v any) error {
	b, e := json.MarshalIndent(v, "", "  ")
	if e != nil {
		return e
	}
	return os.WriteFile(path, append(b, '\n'), 0600)
}

func validateScenarios(scenarios []Scenario) error {
	expected := map[string]bool{"transfer": true, "transfer_unregulated": true, "transfer_flagged": true, "transfer_accumulating": true, "transfer_over_limit_disclosure": true, "transfer_accumulator_continuation": true}
	if len(scenarios) != len(expected) {
		return errors.New("six intended scenarios required")
	}
	for _, s := range scenarios {
		if !expected[s.Name] {
			return errors.New("unexpected or repeated scenario")
		}
		delete(expected, s.Name)
	}
	return nil
}

func run(configPath, mode, out string) (err error) {
	raw, e := os.ReadFile(configPath)
	if e != nil {
		return e
	}
	var c Config
	decoder := json.NewDecoder(bytes.NewReader(raw))
	decoder.DisallowUnknownFields()
	if e = decoder.Decode(&c); e != nil {
		return e
	}
	if c.Schema != "shieldd.phone_config.v2" || len(c.Command) == 0 || len(c.Scenarios) != 6 || c.GuardPolicy != "stage-aware-v2" || c.MinimumAvailableBytes < 512*1024*1024 || c.MinimumStartBytes < c.MinimumAvailableBytes {
		return errors.New("config contract")
	}
	if mode != "gate" && mode != "measure" {
		return errors.New("mode must be gate or measure")
	}
	expectedSchema := map[string]string{"A": "shieldd.proving_experiment.gnark_worker.v1", "B": "shieldd.proving_experiment.selected_b.v1", "C": "shieldd.proving_experiment.selected_c.v1"}
	if expectedSchema[c.Backend] != c.WorkerSchema || c.WorkerSchema == "" {
		return errors.New("backend schema mismatch")
	}
	if e = validateScenarios(c.Scenarios); e != nil {
		return e
	}
	witnesses := make([][]byte, len(c.Scenarios))
	names := map[string]bool{}
	for i, s := range c.Scenarios {
		if names[s.Name] || len(s.Statement) != 64 {
			return errors.New("scenario identity")
		}
		names[s.Name] = true
		witnesses[i], e = checked(s.Witness)
		if e != nil {
			return e
		}
	}
	invalid, e := checked(c.Invalid)
	if e != nil {
		return e
	}
	self, e := os.Executable()
	if e != nil {
		return e
	}
	if len(c.Artifacts) == 0 || c.Artifacts[0].Path != self {
		return errors.New("supervisor artifact differs from running executable")
	}
	for _, a := range c.Artifacts {
		id, e := identify(a.Path)
		if e != nil {
			return e
		}
		if id != a {
			return fmt.Errorf("artifact changed: %s", a.Path)
		}
	}
	hashes := map[string]bool{}
	if mode == "measure" {
		gatePath := filepath.Join(filepath.Dir(out), "gate", "complete.json")
		data, e := os.ReadFile(gatePath)
		if e != nil {
			return e
		}
		var gate Completion
		if e = json.Unmarshal(data, &gate); e != nil {
			return e
		}
		if gate.Schema != "shieldd.phone_complete.v1" || gate.Mode != "gate" || !gate.InvalidWitnessRejected || len(gate.Proofs) != 6 {
			return errors.New("matching gate required")
		}
		if gate.ConfigSHA256 != hash(raw) {
			if c.ReuseGateConfig == nil || c.ReuseGateConfig.SHA256 != gate.ConfigSHA256 {
				return errors.New("gate config binding mismatch")
			}
			previous, e := checked(*c.ReuseGateConfig)
			if e != nil {
				return e
			}
			var old Config
			if e = json.Unmarshal(previous, &old); e != nil {
				return e
			}
			if e = sameProofInputs(old, c); e != nil {
				return e
			}
		}
		for _, a := range append(gate.Proofs, gate.Samples, gate.Resources) {
			id, e := identify(a.Path)
			if e != nil {
				return e
			}
			if id != a {
				return errors.New("gate evidence changed")
			}
		}
		for _, a := range gate.Proofs {
			hashes[a.SHA256] = true
		}
	}
	if e = os.Mkdir(out, 0700); e != nil {
		return e
	}
	defer func() {
		if err != nil {
			_ = writeJSON(filepath.Join(out, "failure.json"), struct {
				Error string `json:"error"`
			}{err.Error()})
		}
	}()
	n, e := available()
	if e != nil {
		return e
	}
	if n < c.MinimumStartBytes {
		return fmt.Errorf("preflight requires %d available bytes; found %d", c.MinimumStartBytes, n)
	}
	if e = writeJSON(filepath.Join(out, "process.json"), struct {
		SupervisorPID int    `json:"supervisor_pid"`
		ConfigSHA256  string `json:"config_sha256"`
	}{os.Getpid(), hash(raw)}); e != nil {
		return e
	}
	f, e := os.OpenFile(filepath.Join(out, "samples.jsonl"), os.O_CREATE|os.O_EXCL|os.O_WRONLY, 0600)
	if e != nil {
		return e
	}
	defer f.Close()
	enc := json.NewEncoder(f)
	ctx, stop := signal.NotifyContext(context.Background(), os.Interrupt, syscall.SIGTERM)
	defer stop()
	ctx, cancel := context.WithTimeout(ctx, 30*time.Minute)
	defer cancel()
	status := thermal(ctx)
	if status != nil && *status >= 3 {
		return fmt.Errorf("preflight severe thermal status %d", *status)
	}
	firstStart := time.Now()
	w, e := startWorker(ctx, c)
	if e != nil {
		return e
	}
	monitorCtx, monitorCancel := context.WithCancel(ctx)
	monitorDone := make(chan error, 1)
	go func() {
		e := monitor(monitorCtx, c, w.cmd.Process.Pid, filepath.Join(out, "resources.jsonl"))
		if e != nil {
			cancel()
		}
		monitorDone <- e
	}()
	closed := false
	defer func() {
		if !closed {
			monitorCancel()
			monitorErr := <-monitorDone
			closeErr := w.close()
			if monitorErr != nil {
				err = monitorErr
			} else if err == nil {
				err = closeErr
			}
		}
	}()
	ready, e := readFrame(w.out, c.WorkerSchema)
	if e != nil {
		return e
	}
	if ready.Header.Op != "ready" || ready.Header.Error != "" || len(ready.Payload) != 0 {
		return fmt.Errorf("initialization rejected: %s", ready.Header.Error)
	}
	proofs := []Artifact{}
	prove := func(s Scenario, payload []byte, stage string, index int, first bool, negatives bool) error {
		start := time.Now()
		if first {
			start = firstStart
		}
		proof, e := w.call("prove", payload, "")
		wall := time.Since(start).Nanoseconds()
		if e != nil {
			return e
		}
		if len(proofs) == 0 {
			if e = writeJSON(filepath.Join(out, "initialization.json"), ready.Raw); e != nil {
				return e
			}
		}
		if proof.Header.Error != "" || proof.Header.Statement != s.Statement || len(proof.Payload) < 100 {
			return fmt.Errorf("proof rejected: %s", proof.Header.Error)
		}
		h := hash(proof.Payload)
		if hashes[h] {
			return errors.New("duplicate proof bytes")
		}
		v, e := w.call("verify", proof.Payload, s.Statement)
		if e != nil {
			return e
		}
		if v.Header.Error != "" || !v.Header.Verified {
			return errors.New("generated proof did not verify")
		}
		rejected := []string{}
		if negatives {
			altered := bytes.Clone(proof.Payload)
			altered[90] ^= 1
			for _, test := range []struct {
				name      string
				proof     []byte
				statement string
			}{{"truncated", proof.Payload[:len(proof.Payload)-1], s.Statement}, {"altered_proof", altered, s.Statement}, {"wrong_statement", proof.Payload, strings.Repeat("0", 64)}, {"trailing", append(bytes.Clone(proof.Payload), 0), s.Statement}} {
				v, e := w.call("verify", test.proof, test.statement)
				if e != nil {
					return e
				}
				if v.Header.Error == "" && v.Header.Verified {
					return fmt.Errorf("negative accepted: %s", test.name)
				}
				rejected = append(rejected, test.name)
			}
		}
		path := filepath.Join(out, fmt.Sprintf("%s-%s-%02d.proof", stage, s.Name, index))
		if e = os.WriteFile(path, proof.Payload, 0600); e != nil {
			return e
		}
		a := Artifact{path, h}
		hashes[h] = true
		proofs = append(proofs, a)
		row := Sample{"shieldd.phone_sample.v1", c.Backend, stage, s.Name, index, wall, a, len(proof.Payload), true, rejected, proof.Raw}
		if e = enc.Encode(row); e != nil {
			return e
		}
		return json.NewEncoder(os.Stdout).Encode(row)
	}
	invalidRejected := false
	if mode == "gate" {
		for i, s := range c.Scenarios {
			if e = prove(s, witnesses[i], "gate", i, false, true); e != nil {
				return e
			}
		}
		v, e := w.call("prove", invalid, "")
		if e != nil {
			return e
		}
		if v.Header.Error == "" || len(v.Payload) != 0 {
			return errors.New("invalid witness accepted")
		}
		invalidRejected = true
	} else {
		i := 0
		for j, s := range c.Scenarios {
			if s.Name == "transfer" {
				i = j
			}
		}
		if e = prove(c.Scenarios[i], witnesses[i], "first", 0, true, false); e != nil {
			return e
		}
		for j := 0; j < 2; j++ {
			if e = prove(c.Scenarios[i], witnesses[i], "warmup", j, false, false); e != nil {
				return e
			}
		}
		for j := 0; j < 5; j++ {
			if e = prove(c.Scenarios[i], witnesses[i], "warm", j, false, false); e != nil {
				return e
			}
		}
	}
	monitorCancel()
	monitorErr := <-monitorDone
	e = w.close()
	closed = true
	if monitorErr != nil {
		return monitorErr
	}
	if e != nil {
		return e
	}
	if e = f.Sync(); e != nil {
		return e
	}
	samples, e := identify(filepath.Join(out, "samples.jsonl"))
	if e != nil {
		return e
	}
	resources, e := identify(filepath.Join(out, "resources.jsonl"))
	if e != nil {
		return e
	}
	return writeJSON(filepath.Join(out, "complete.json"), Completion{"shieldd.phone_complete.v1", c.Backend, mode, hash(raw), samples, resources, proofs, invalidRejected})
}
func main() {
	if len(os.Args) == 3 && os.Args[1] == "resource-probe" {
		if e := resourceProbe(os.Args[2]); e != nil {
			fmt.Fprintln(os.Stderr, e)
			os.Exit(1)
		}
		return
	}
	if len(os.Args) != 4 {
		fmt.Fprintln(os.Stderr, "phone-supervisor CONFIG gate|measure NEW_OUTPUT")
		os.Exit(2)
	}
	if e := run(os.Args[1], os.Args[2], os.Args[3]); e != nil {
		fmt.Fprintln(os.Stderr, e)
		os.Exit(1)
	}
}
