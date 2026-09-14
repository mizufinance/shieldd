package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"fmt"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"io"
)

const admissionSchema = "shieldd.proving_experiment.owned_admission.v1"

var queryNames = [5]string{"witness", "masks", "quotient", "opening_a", "opening_r"}

type queryBinding struct {
	Name   string `json:"name"`
	Count  int    `json:"count"`
	SHA256 string `json:"sha256"`
}
type admission struct {
	Schema       string         `json:"schema"`
	Curve        string         `json:"curve"`
	Protocol     string         `json:"protocol"`
	FFT          int            `json:"fft"`
	Retained     int            `json:"retained"`
	Constraints  int            `json:"constraints"`
	Instances    int            `json:"instances"`
	Witnesses    int            `json:"witnesses"`
	KeySHA256    string         `json:"key_sha256"`
	VKSHA256     string         `json:"vk_sha256"`
	IndexSHA256  string         `json:"index_sha256"`
	SessionNonce string         `json:"session_nonce"`
	Queries      []queryBinding `json:"queries"`
}
type queryFrame struct {
	Op    string `json:"op"`
	Name  string `json:"name"`
	Count int    `json:"count"`
}
type finishFrame struct {
	Op      string `json:"op"`
	Binding string `json:"binding"`
}

func hash(b []byte) string { h := sha256.Sum256(b); return hex.EncodeToString(h[:]) }
func hashFormat(s string) bool {
	b, e := hex.DecodeString(s)
	return e == nil && len(b) == 32 && hex.EncodeToString(b) == s
}
func frame(input io.Reader, value any) ([]byte, error) {
	var n [4]byte
	if _, e := io.ReadFull(input, n[:]); e != nil {
		return nil, e
	}
	size := binary.BigEndian.Uint32(n[:])
	if size < 1 || size > 4096 {
		return nil, fmt.Errorf("bootstrap frame length")
	}
	b := make([]byte, size)
	if _, e := io.ReadFull(input, b); e != nil {
		return nil, e
	}
	d := json.NewDecoder(bytes.NewReader(b))
	d.DisallowUnknownFields()
	if e := d.Decode(value); e != nil {
		return nil, e
	}
	if d.Decode(new(any)) != io.EOF {
		return nil, fmt.Errorf("bootstrap trailing JSON")
	}
	return b, nil
}
func (a admission) validate() error {
	if a.Schema != admissionSchema || a.Curve != "bls12-377-g1" || a.Protocol != "shieldd-subset-pari377-v1" || a.FFT < 8 || a.FFT > 1<<20 || a.FFT&(a.FFT-1) != 0 || a.Retained != a.FFT-a.FFT/8 || a.Instances != 2 || a.Constraints < a.Instances || a.Constraints > a.Retained || a.Witnesses < 1 || a.Witnesses > a.Retained || len(a.Queries) != 5 || !hashFormat(a.KeySHA256) || !hashFormat(a.VKSHA256) || !hashFormat(a.IndexSHA256) || len(a.SessionNonce) != 32 || !hashFormat(a.SessionNonce+a.SessionNonce) {
		return fmt.Errorf("admission metadata")
	}
	counts := [5]int{a.Witnesses, 2, a.Retained + 3, a.Retained + 1, 2*a.Retained + 2}
	for i, q := range a.Queries {
		if q.Name != queryNames[i] || q.Count != counts[i] || !hashFormat(q.SHA256) {
			return fmt.Errorf("query binding")
		}
	}
	return nil
}

// Only admit calls this on the owning parent's bootstrap pipe after Rust's full checks.
// This canonical/curve parse does not assert subgroup membership for arbitrary callers.
func admittedPoint(b []byte) (curve.G1Affine, error) {
	var p curve.G1Affine
	if len(b) != 97 {
		return p, fmt.Errorf("point length")
	}
	if b[0] == 0 {
		for _, v := range b[1:] {
			if v != 0 {
				return p, fmt.Errorf("noncanonical identity")
			}
		}
		p.SetInfinity()
		return p, nil
	}
	if b[0] != 1 {
		return p, fmt.Errorf("point tag")
	}
	if e := p.X.SetBytesCanonical(b[1:49]); e != nil {
		return p, e
	}
	if e := p.Y.SetBytesCanonical(b[49:97]); e != nil {
		return p, e
	}
	if p.IsInfinity() || !p.IsOnCurve() {
		return p, fmt.Errorf("off-curve point")
	}
	if !bytes.Equal(encode(&p), b) {
		return p, fmt.Errorf("noncanonical point")
	}
	return p, nil
}
func admit(input io.Reader) (map[string][]curve.G1Affine, int, string, error) {
	fail := func(e error) (map[string][]curve.G1Affine, int, string, error) { return nil, 0, "", e }
	var a admission
	raw, e := frame(input, &a)
	if e != nil {
		return fail(e)
	}
	if e = a.validate(); e != nil {
		return fail(e)
	}
	binding := hash(raw)
	commitment := make([]curve.G1Affine, a.Queries[0].Count+a.Queries[2].Count)
	opening := make([]curve.G1Affine, a.Queries[3].Count+a.Queries[4].Count)
	views := map[string][]curve.G1Affine{"witness": commitment[:a.Witnesses], "quotient": commitment[a.Witnesses:], "masks": make([]curve.G1Affine, 2), "opening_a": opening[:a.Retained+1], "opening_r": opening[a.Retained+1:], "commitment": commitment, "opening": opening}
	total := 0
	buffer := make([]byte, 97*512)
	for _, q := range a.Queries {
		var f queryFrame
		if _, e = frame(input, &f); e != nil {
			return fail(e)
		}
		if f.Op != "query" || f.Name != q.Name || f.Count != q.Count {
			return fail(fmt.Errorf("query order/count"))
		}
		h := sha256.New()
		dst := views[q.Name]
		for offset := 0; offset < len(dst); {
			count := min(512, len(dst)-offset)
			b := buffer[:97*count]
			if _, e = io.ReadFull(input, b); e != nil {
				return fail(e)
			}
			h.Write(b)
			for j := 0; j < count; j++ {
				p, err := admittedPoint(b[j*97 : (j+1)*97])
				if err != nil {
					return fail(err)
				}
				dst[offset+j] = p
			}
			offset += count
		}
		if hex.EncodeToString(h.Sum(nil)) != q.SHA256 {
			return fail(fmt.Errorf("query content/order digest"))
		}
		total += q.Count * 96
	}
	var done finishFrame
	if _, e = frame(input, &done); e != nil {
		return fail(e)
	}
	if done.Op != "admit" || done.Binding != binding {
		return fail(fmt.Errorf("finish binding"))
	}
	var extra [1]byte
	if n, err := input.Read(extra[:]); n != 0 || err != io.EOF {
		return fail(fmt.Errorf("trailing bootstrap data or missing EOF"))
	}
	return views, total, binding, nil
}
