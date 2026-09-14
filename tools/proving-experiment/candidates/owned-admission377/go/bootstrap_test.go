package main

import (
	"bytes"
	"encoding/binary"
	"encoding/json"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"os"
	"strings"
	"testing"
)

func put(out *bytes.Buffer, value any) {
	b, e := json.Marshal(value)
	if e != nil {
		panic(e)
	}
	binary.Write(out, binary.BigEndian, uint32(len(b)))
	out.Write(b)
}
func fixture() (admission, [][]byte) {
	_, _, g, _ := curve.Generators()
	a := admission{Schema: admissionSchema, Curve: "bls12-377-g1", Protocol: "shieldd-subset-pari377-v1", FFT: 8, Retained: 7, Constraints: 4, Instances: 2, Witnesses: 5, KeySHA256: strings.Repeat("1", 64), VKSHA256: strings.Repeat("2", 64), IndexSHA256: strings.Repeat("3", 64), SessionNonce: strings.Repeat("4", 32)}
	counts := []int{5, 2, 10, 8, 16}
	payloads := make([][]byte, 5)
	for i, n := range counts {
		payloads[i] = bytes.Repeat(encode(&g), n)
		a.Queries = append(a.Queries, queryBinding{Name: queryNames[i], Count: n, SHA256: hash(payloads[i])})
	}
	return a, payloads
}
func bootstrap(a admission, payloads [][]byte) []byte {
	var out bytes.Buffer
	put(&out, a)
	raw, _ := json.Marshal(a)
	for i, q := range a.Queries {
		put(&out, queryFrame{Op: "query", Name: q.Name, Count: q.Count})
		out.Write(payloads[i])
	}
	put(&out, finishFrame{Op: "admit", Binding: hash(raw)})
	return out.Bytes()
}
func TestOwnedBootstrapAndCombinedMSM(t *testing.T) {
	a, p := fixture()
	views, n, binding, e := admit(bytes.NewReader(bootstrap(a, p)))
	raw, _ := json.Marshal(a)
	if e != nil || binding != hash(raw) || n != 41*96 || len(views["commitment"]) != 15 || len(views["opening"]) != 24 {
		t.Fatal("admission", e, n)
	}
	if &views["witness"][0] != &views["commitment"][0] || &views["quotient"][0] != &views["commitment"][5] {
		t.Fatal("queries copied rather than shared")
	}
	scalars := make([]byte, 32*15)
	scalars[31] = 1
	var r response
	encoded, e := compute(views["commitment"], scalars, &r)
	_, _, g, _ := curve.Generators()
	if e != nil || !bytes.Equal(encoded, encode(&g)) {
		t.Fatal("actual MSM", e)
	}
	fr.Modulus().FillBytes(scalars[:32])
	if _, e = compute(views["commitment"], scalars, &r); e == nil {
		t.Fatal("noncanonical scalar")
	}
}
func TestBootstrapRejectsMetadataOrderLengthsAndTruncation(t *testing.T) {
	a, p := fixture()
	valid := bootstrap(a, p)
	cases := [][]byte{valid[:1], valid[:len(valid)-1], append(append([]byte{}, valid...), 0), []byte{0, 0, 32, 0}}
	for _, change := range []func(*admission){func(a *admission) { a.Curve = "bls12-381-g1" }, func(a *admission) { a.Protocol = "other" }, func(a *admission) { a.FFT = 9 }, func(a *admission) { a.Retained = 8 }, func(a *admission) { a.Instances = 1 }, func(a *admission) { a.Constraints = 8 }, func(a *admission) { a.Witnesses = 0 }, func(a *admission) { a.KeySHA256 = "bad" }, func(a *admission) { a.VKSHA256 = "bad" }, func(a *admission) { a.IndexSHA256 = "bad" }, func(a *admission) { a.SessionNonce = "" }, func(a *admission) { a.Queries[0].Count++ }, func(a *admission) { a.Queries[0], a.Queries[1] = a.Queries[1], a.Queries[0] }, func(a *admission) { a.Queries[0].SHA256 = strings.Repeat("0", 64) }} {
		q, points := fixture()
		change(&q)
		cases = append(cases, bootstrap(q, points))
	}
	cases = append(cases, bytes.Replace(valid, []byte(`"op":"query"`), []byte(`"op":"bogus"`), 1))
	for i, b := range cases {
		if _, _, _, e := admit(bytes.NewReader(b)); e == nil {
			t.Fatal("invalid bootstrap", i)
		}
	}
	for _, body := range []string{`{"schema":"x","extra":1}`, `{} {}`, `null`} {
		var b bytes.Buffer
		binary.Write(&b, binary.BigEndian, uint32(len(body)))
		b.WriteString(body)
		if _, _, _, e := admit(&b); e == nil {
			t.Fatal("invalid header accepted")
		}
	}
}
func TestBootstrapPointCanonicalityAndOrderedDigest(t *testing.T) {
	for _, change := range []func([]byte){func(p []byte) { fp.Modulus().FillBytes(p[1:49]) }, func(p []byte) { p[0] = 2 }, func(p []byte) { p[96] ^= 1 }, func(p []byte) { p[0] = 0; p[1] = 1 }} {
		a, points := fixture()
		change(points[0][:97])
		a.Queries[0].SHA256 = hash(points[0])
		if _, _, _, e := admit(bytes.NewReader(bootstrap(a, points))); e == nil {
			t.Fatal("bad point accepted")
		}
	}
	a, p := fixture()
	_, _, g, _ := curve.Generators()
	var minus curve.G1Affine
	minus.Neg(&g)
	copy(p[0][:97], encode(&minus))
	a.Queries[0].SHA256 = hash(p[0])
	first := append([]byte{}, p[0][:97]...)
	copy(p[0][:97], p[0][97:194])
	copy(p[0][97:194], first)
	if _, _, _, e := admit(bytes.NewReader(bootstrap(a, p))); e == nil {
		t.Fatal("reordered points accepted")
	}
	// Full subgroup rejection belongs to Rust's opaque checked-key admission, not this private parser.
}

func TestBoundedFrames(t *testing.T) {
	for _, body := range []string{`{"schema":"` + schema + `","op":"msm","name":"masks","payload_bytes":67108865}`, `{"schema":"` + schema + `","op":"msm","name":"masks","payload_bytes":1}`, `{"schema":"` + schema + `","op":"msm","name":"masks","payload_bytes":0,"extra":1}`} {
		var buffer bytes.Buffer
		binary.Write(&buffer, binary.BigEndian, uint32(len(body)))
		buffer.WriteString(body)
		if _, _, _, err := read(&buffer); err == nil {
			t.Fatal("bad frame accepted")
		}
	}
}

func TestPrivateChildHasNoCallerFileMode(t *testing.T) {
	old := os.Args
	defer func() { os.Args = old }()
	os.Args = []string{"private-child", "untrusted-cache"}
	if run() == nil {
		t.Fatal("public file mode accepted")
	}
}
func TestFinishAndFrameBindingsReject(t *testing.T) {
	a, p := fixture()
	valid := bootstrap(a, p)
	raw, _ := json.Marshal(a)
	for _, bad := range [][]byte{
		bytes.Replace(valid, []byte(`"op":"admit"`), []byte(`"op":"other"`), 1),
		bytes.Replace(valid, []byte(hash(raw)), []byte(strings.Repeat("0", 64)), 1),
		bytes.Replace(valid, []byte(`"op":"query","name":"witness","count":5`), []byte(`"op":"query","name":"masksxx","count":5`), 1),
	} {
		if _, _, _, e := admit(bytes.NewReader(bad)); e == nil {
			t.Fatal("finish/query frame mismatch accepted")
		}
	}
}
