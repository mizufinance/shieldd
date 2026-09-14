package main

import (
	"bytes"
	"encoding/binary"
	"io"
	"testing"
)

type shortReader struct{ io.Reader }

func (s shortReader) Read(p []byte) (int, error) {
	if len(p) > 1 {
		p = p[:1]
	}
	return s.Reader.Read(p)
}
func TestFramingPartialReadsAndCorruption(t *testing.T) {
	var b bytes.Buffer
	if e := writeFrame(&b, Header{Schema: "test", Op: "verify"}, []byte{1, 2, 3}); e != nil {
		t.Fatal(e)
	}
	raw := bytes.Clone(b.Bytes())
	f, e := readFrame(shortReader{bytes.NewReader(raw)}, "test")
	if e != nil || !bytes.Equal(f.Payload, []byte{1, 2, 3}) {
		t.Fatalf("partial frame: %v", e)
	}
	for n := 0; n < len(raw); n++ {
		if _, e = readFrame(bytes.NewReader(raw[:n]), "test"); e == nil {
			t.Fatalf("accepted truncated frame %d", n)
		}
	}
	if _, e = readFrame(bytes.NewReader(raw), "other"); e == nil {
		t.Fatal("wrong schema accepted")
	}
	for _, n := range []uint32{0, 4097, 0xffffffff} {
		var b bytes.Buffer
		_ = binary.Write(&b, binary.BigEndian, n)
		if _, e = readFrame(&b, "test"); e == nil {
			t.Fatal("unbounded header accepted")
		}
	}
}
func TestAndroidMemoryAvailability(t *testing.T) {
	got := memoryFields([]byte("MemTotal: 5763068 kB\nMemFree: 170884 kB\nMemAvailable: 1607648 kB\nVmRSS: 123 kB\nBroken: unknown kB\n"))
	if got["MemAvailable"] != 1607648*1024 || got["VmRSS"] != 123*1024 {
		t.Fatal(got)
	}
	if _, ok := got["Broken"]; ok {
		t.Fatal("malformed memory field accepted")
	}
	if _, ok := memoryFields([]byte("MemFree: 12 kB\n"))["MemAvailable"]; ok {
		t.Fatal("free memory substituted for availability")
	}
}

func TestIntendedScenariosRequired(t *testing.T) {
	names := []string{"transfer", "transfer_unregulated", "transfer_flagged", "transfer_accumulating", "transfer_over_limit_disclosure", "transfer_accumulator_continuation"}
	scenarios := make([]Scenario, len(names))
	for i, name := range names {
		scenarios[i].Name = name
	}
	if e := validateScenarios(scenarios); e != nil {
		t.Fatal(e)
	}
	scenarios[0].Name = "another_valid_but_unrepresentative_scenario"
	if e := validateScenarios(scenarios); e == nil {
		t.Fatal("missing standard Transfer accepted")
	}
	scenarios[0].Name = names[1]
	if e := validateScenarios(scenarios); e == nil {
		t.Fatal("repeated scenario accepted")
	}
}
