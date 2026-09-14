package main

import (
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
	"os"
	"runtime"
	square "shieldd.local/square377"
	"slices"
	"time"
)

type Sample struct {
	Block       int    `json:"block"`
	Method      string `json:"method"`
	Warmup      bool   `json:"warmup"`
	Nanoseconds int64  `json:"nanoseconds"`
	Operations  int    `json:"operations"`
	OutputHash  string `json:"output_sha256"`
	Exact       bool   `json:"exact_output"`
}
type Report struct {
	Schema       string   `json:"schema"`
	Architecture string   `json:"architecture"`
	GoVersion    string   `json:"go_version"`
	MaxProcs     int      `json:"gomaxprocs"`
	CorpusHash   string   `json:"corpus_sha256"`
	Inputs       int      `json:"inputs"`
	Passes       int      `json:"passes"`
	Samples      []Sample `json:"samples"`
	Limits       string   `json:"limits"`
}

func hash(values []fp.Element) string {
	h := sha256.New()
	var b [8]byte
	for _, value := range values {
		for _, limb := range value {
			binary.LittleEndian.PutUint64(b[:], limb)
			h.Write(b[:])
		}
	}
	return hex.EncodeToString(h.Sum(nil))
}
func reference(z, x *fp.Element) *fp.Element { return z.Square(x) }

func main() {
	if runtime.GOARCH != "arm64" || runtime.GOMAXPROCS(0) != 2 || len(os.Args) != 2 {
		panic("arm64, GOMAXPROCS=2 and new output path required")
	}
	if _, err := os.Stat(os.Args[1]); !os.IsNotExist(err) {
		panic("preserve existing output")
	}
	corpus := square.Corpus()
	const passes = 256
	oracle := slices.Clone(corpus)
	for j := 0; j < passes; j++ {
		for i := range oracle {
			oracle[i].Square(&oracle[i])
		}
	}
	report := Report{Schema: "shieldd.square377_primitive.v1", Architecture: runtime.GOARCH, GoVersion: runtime.Version(), MaxProcs: runtime.GOMAXPROCS(0), CorpusHash: hash(corpus), Inputs: len(corpus), Passes: passes, Limits: "Six-limb BLS12-377 base-field primitive, synthetic canonical boundary/random corpus. Each method uses identical indirect-call loops with 256 dependent in-place passes. Cloning, equality, hashing and disposal outside clocks. Three warmups/five measurements; no MSM, complete proving, scalar-field, phone or protocol speed claim."}
	for block := 0; block < 8; block++ {
		order := []string{"reference", "dedicated"}
		if block%2 == 1 {
			slices.Reverse(order)
		}
		for _, method := range order {
			values := slices.Clone(corpus)
			fn := reference
			if method == "dedicated" {
				fn = square.Square
			}
			start := time.Now()
			for j := 0; j < passes; j++ {
				for i := range values {
					fn(&values[i], &values[i])
				}
			}
			ns := time.Since(start).Nanoseconds()
			if !slices.Equal(values, oracle) {
				panic("output mismatch")
			}
			report.Samples = append(report.Samples, Sample{Block: block, Method: method, Warmup: block < 3, Nanoseconds: ns, Operations: len(values) * passes, OutputHash: hash(values), Exact: true})
		}
	}
	output, err := json.MarshalIndent(report, "", "  ")
	if err != nil {
		panic(err)
	}
	file, err := os.OpenFile(os.Args[1], os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0600)
	if err != nil {
		panic(err)
	}
	if _, err = file.Write(append(output, '\n')); err != nil {
		panic(err)
	}
	if err = file.Close(); err != nil {
		panic(err)
	}
	fmt.Println(string(output))
}
