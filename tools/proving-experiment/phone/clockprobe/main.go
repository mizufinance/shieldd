//go:build linux || android

// Compare independent device clock domains without changing power settings.
package main

import (
	"encoding/json"
	"fmt"
	"os"
	"syscall"
	"time"
	"unsafe"
)

type Clocks struct {
	RealtimeNS   int64 `json:"realtime_ns"`
	MonotonicNS  int64 `json:"monotonic_ns"`
	BoottimeNS   int64 `json:"boottime_ns"`
	GoRealtimeNS int64 `json:"go_realtime_ns"`
}

func clock(id uintptr) (int64, error) {
	var t syscall.Timespec
	_, _, e := syscall.RawSyscall(syscall.SYS_CLOCK_GETTIME, id, uintptr(unsafe.Pointer(&t)), 0)
	if e != 0 {
		return 0, e
	}
	return t.Sec*1_000_000_000 + t.Nsec, nil
}

func capture() (Clocks, error) {
	var c Clocks
	var e error
	if c.RealtimeNS, e = clock(0); e != nil {
		return c, e
	}
	if c.MonotonicNS, e = clock(1); e != nil {
		return c, e
	}
	if c.BoottimeNS, e = clock(7); e != nil {
		return c, e
	}
	c.GoRealtimeNS = time.Now().UnixNano()
	return c, nil
}

func run() error {
	a, e := capture()
	if e != nil {
		return e
	}
	start := time.Now()
	time.Sleep(5 * time.Second)
	goElapsed := time.Since(start).Nanoseconds()
	b, e := capture()
	if e != nil {
		return e
	}
	return json.NewEncoder(os.Stdout).Encode(struct {
		Schema               string `json:"schema"`
		Before               Clocks `json:"before"`
		After                Clocks `json:"after"`
		GoMonotonicElapsedNS int64  `json:"go_monotonic_elapsed_ns"`
	}{"shieldd.phone_clock_probe.v1", a, b, goElapsed})
}

func main() {
	if e := run(); e != nil {
		fmt.Fprintln(os.Stderr, e)
		os.Exit(1)
	}
}
