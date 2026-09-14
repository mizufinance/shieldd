package main

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strconv"
	"strings"
	"syscall"
	"time"
)

type Process struct {
	PID, Parent, Group int
	RSSBytes           uint64
}

func parseProcesses(b []byte) ([]Process, error) {
	var rows []Process
	for _, line := range strings.Split(strings.TrimSpace(string(b)), "\n") {
		fields := strings.Fields(line)
		if len(fields) == 0 || fields[0] == "PID" {
			continue
		}
		if len(fields) != 4 {
			return nil, errors.New("unexpected numeric ps row")
		}
		p, e := strconv.Atoi(fields[0])
		if e != nil {
			return nil, e
		}
		parent, e := strconv.Atoi(fields[1])
		if e != nil {
			return nil, e
		}
		group, e := strconv.Atoi(fields[2])
		if e != nil {
			return nil, e
		}
		rss, e := strconv.ParseUint(fields[3], 10, 64)
		if e != nil {
			return nil, e
		}
		if p <= 0 || parent < 0 || group < 0 {
			return nil, errors.New("invalid process identifiers")
		}
		rows = append(rows, Process{p, parent, group, rss * 1024})
	}
	return rows, nil
}
func ownedProcesses(rows []Process, root, expected int) Resource {
	owned := map[int]bool{root: true}
	found := false
	for _, p := range rows {
		if p.PID == root && p.Group == root {
			found = true
		}
		if p.Group == root {
			owned[p.PID] = true
		}
	}
	for {
		changed := false
		for _, p := range rows {
			if owned[p.Parent] && !owned[p.PID] {
				owned[p.PID] = true
				changed = true
			}
		}
		if !changed {
			break
		}
	}
	r := Resource{}
	seen := map[int]bool{}
	for _, p := range rows {
		if owned[p.PID] && !seen[p.PID] {
			seen[p.PID] = true
			r.PIDs = append(r.PIDs, p.PID)
			r.TreeRSSBytes += p.RSSBytes
		}
	}
	r.RSSComplete = found && len(r.PIDs) >= expected
	return r
}
func census(ctx context.Context) ([]Process, error) {
	ctx, cancel := context.WithTimeout(ctx, 2*time.Second)
	defer cancel()
	b, e := exec.CommandContext(ctx, "/system/bin/ps", "-A", "-o", "PID,PPID,PGID,RSS").Output()
	if e != nil {
		return nil, e
	}
	return parseProcesses(b)
}
func checkFloor(available, floor uint64) error {
	if available < floor {
		return fmt.Errorf("memory pressure: %d available bytes below %d", available, floor)
	}
	return nil
}
func sensorLoop(ctx context.Context, pid int, backend string, updates chan Resource) {
	ticker := time.NewTicker(time.Second)
	defer ticker.Stop()
	var status *int
	lastThermal := time.Time{}
	expected := 1
	if backend == "B" {
		expected = 3
	}
	for {
		select {
		case <-ctx.Done():
			return
		default:
		}
		start := time.Now()
		rows, e := census(ctx)
		r := Resource{PIDs: []int{pid}}
		if e == nil {
			r = ownedProcesses(rows, pid, expected)
		} else if b, e := os.ReadFile(fmt.Sprintf("/proc/%d/status", pid)); e == nil {
			r.TreeRSSBytes = memoryFields(b)["VmRSS"]
		}
		if time.Since(lastThermal) >= 5*time.Second {
			status = thermal(ctx)
			lastThermal = time.Now()
		}
		r.ThermalStatus = status
		r.SensorTimeNS = time.Now().UnixNano()
		r.SensorBodyNS = time.Since(start).Nanoseconds()
		select {
		case updates <- r:
		case <-ctx.Done():
			return
		}
		select {
		case <-ticker.C:
		case <-ctx.Done():
			return
		}
	}
}

type ProofInputs struct {
	Backend      string
	WorkerSchema string
	Command      []string
	Artifacts    []Artifact
	Scenarios    []Scenario
	Invalid      Artifact
}

func proofInputs(c Config) (ProofInputs, error) {
	if len(c.Artifacts) < 2 || len(c.Command) == 0 || !strings.HasSuffix(c.Artifacts[0].Path, "/bin/supervisor") || c.Artifacts[1].Path != c.Command[0] || c.Artifacts[0].Path == c.Command[0] {
		return ProofInputs{}, errors.New("supervisor/worker artifact roles")
	}
	for _, a := range c.Artifacts[1:] {
		if a.Path == c.Artifacts[0].Path {
			return ProofInputs{}, errors.New("duplicate supervisor role")
		}
	}
	return ProofInputs{c.Backend, c.WorkerSchema, c.Command, c.Artifacts[1:], c.Scenarios, c.Invalid}, nil
}
func sameProofInputs(a, b Config) error {
	left, e := proofInputs(a)
	if e != nil {
		return e
	}
	right, e := proofInputs(b)
	if e != nil {
		return e
	}
	x, e := json.Marshal(left)
	if e != nil {
		return e
	}
	y, e := json.Marshal(right)
	if e != nil {
		return e
	}
	if string(x) != string(y) {
		return errors.New("gate proof inputs changed")
	}
	return nil
}

func resourceProbe(out string) error {
	if _, e := os.Stat(out); !os.IsNotExist(e) {
		return errors.New("preserve resource probe")
	}
	cmd := exec.Command("/system/bin/sh", "-c", "sleep 20 & wait")
	cmd.SysProcAttr = &syscall.SysProcAttr{Setpgid: true}
	if e := cmd.Start(); e != nil {
		return e
	}
	pid := cmd.Process.Pid
	defer func() { _ = syscall.Kill(-pid, syscall.SIGKILL); _ = cmd.Wait() }()
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()
	var r Resource
	var rows []Process
	for i := 0; i < 20; i++ {
		var e error
		rows, e = census(ctx)
		if e != nil {
			return e
		}
		r = ownedProcesses(rows, pid, 2)
		if r.RSSComplete {
			break
		}
		time.Sleep(100 * time.Millisecond)
	}
	if !r.RSSComplete {
		return errors.New("owned child census incomplete")
	}
	b, e := os.ReadFile(fmt.Sprintf("/proc/%d/status", pid))
	if e != nil {
		return e
	}
	native := memoryFields(b)["VmRSS"]
	var psRoot uint64
	for _, p := range rows {
		if p.PID == pid {
			psRoot = p.RSSBytes
		}
	}
	if native == 0 || psRoot == 0 || psRoot > native*2 || native > psRoot*2 {
		return errors.New("ps RSS units differ from VmRSS")
	}
	return writeJSON(filepath.Clean(out), struct {
		Schema           string   `json:"schema"`
		Resource         Resource `json:"resource"`
		ProcRootRSSBytes uint64   `json:"proc_root_rss_bytes"`
		PSRootRSSBytes   uint64   `json:"ps_root_rss_bytes"`
	}{"shieldd.android_resource_probe.v2", r, native, psRoot})
}
