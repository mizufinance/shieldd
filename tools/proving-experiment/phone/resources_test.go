package main

import (
	"encoding/json"
	"testing"
)

func TestOwnedAndroidProcessesAndRSSUnits(t *testing.T) {
	rows, e := parseProcesses([]byte("PID PPID PGID RSS\n100 9 100 2048\n101 100 100 1024\n102 101 100 512\n102 101 100 512\n200 9 200 9000\n"))
	if e != nil {
		t.Fatal(e)
	}
	r := ownedProcesses(rows, 100, 3)
	if !r.RSSComplete || len(r.PIDs) != 3 || r.TreeRSSBytes != 3584*1024 {
		t.Fatalf("wrong owned census: %+v", r)
	}
	if ownedProcesses(rows, 999, 1).RSSComplete {
		t.Fatal("missing root reported complete")
	}
	if ownedProcesses(rows[:2], 100, 3).RSSComplete {
		t.Fatal("missing child reported complete")
	}
	if _, e = parseProcesses([]byte("PID PPID PGID RSS\n100 9 100 denied\n")); e == nil {
		t.Fatal("unreadable RSS accepted")
	}
}

func TestPressureFloorBoundary(t *testing.T) {
	const floor = 512 * 1024 * 1024
	if checkFloor(floor, floor) != nil {
		t.Fatal("reserve boundary rejected")
	}
	if checkFloor(floor-1, floor) == nil {
		t.Fatal("reserve crossing accepted")
	}
}

func cloneConfig(c Config) Config {
	b, _ := json.Marshal(c)
	var out Config
	_ = json.Unmarshal(b, &out)
	return out
}
func TestGateReuseBindsProofInputs(t *testing.T) {
	old := Config{Backend: "A", WorkerSchema: "proof-v1", Command: []string{"/run/bin/A", "serve", "A", "/run/key"}, Artifacts: []Artifact{{"/run/bin/supervisor", "old"}, {"/run/bin/A", "worker"}, {"/run/key", "key"}}, Scenarios: []Scenario{{Name: "transfer", Witness: Artifact{"witness", "hash"}, Statement: "statement"}}, Invalid: Artifact{"invalid", "hash"}, MinimumAvailableBytes: 1024 * 1024 * 1024}
	resourceOnly := cloneConfig(old)
	resourceOnly.Schema = "v2"
	resourceOnly.GuardPolicy = "stage-aware-v2"
	resourceOnly.MinimumAvailableBytes = 512 * 1024 * 1024
	resourceOnly.Artifacts[0] = Artifact{"/run/v2/bin/supervisor", "new"}
	if e := sameProofInputs(old, resourceOnly); e != nil {
		t.Fatal(e)
	}
	mutations := []func(*Config){
		func(c *Config) { c.Backend = "C" },
		func(c *Config) { c.WorkerSchema = "other" },
		func(c *Config) { c.Command[3] = "/run/other-key" },
		func(c *Config) { c.Artifacts[1].SHA256 = "other-worker" },
		func(c *Config) { c.Artifacts[2].SHA256 = "other-key" },
		func(c *Config) { c.Scenarios[0].Statement = "other-statement" },
		func(c *Config) { c.Scenarios[0].Witness.SHA256 = "other-witness" },
		func(c *Config) { c.Invalid.SHA256 = "other-invalid" },
	}
	for i, mutate := range mutations {
		changed := cloneConfig(resourceOnly)
		mutate(&changed)
		if sameProofInputs(old, changed) == nil {
			t.Fatalf("accepted changed proof input %d", i)
		}
	}
}
