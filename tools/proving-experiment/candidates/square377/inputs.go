package square377

import (
	"crypto/sha512"
	"encoding/binary"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
	"math/big"
)

// RawInteger reads the six Montgomery limbs without converting out of Montgomery form.
func RawInteger(x fp.Element) *big.Int {
	var bytes [48]byte
	for i, limb := range x {
		binary.BigEndian.PutUint64(bytes[(5-i)*8:], limb)
	}
	return new(big.Int).SetBytes(bytes[:])
}

func rawElement(n *big.Int) fp.Element {
	var bytes [48]byte
	n.FillBytes(bytes[:])
	var out fp.Element
	for i := range out {
		out[i] = binary.BigEndian.Uint64(bytes[(5-i)*8:])
	}
	return out
}

// Corpus combines modular boundaries, limb transitions and reproducible canonical raw limbs.
func Corpus() []fp.Element {
	q := fp.Modulus()
	values := []fp.Element{{}, rawElement(big.NewInt(1)), rawElement(new(big.Int).Sub(q, big.NewInt(1))), rawElement(new(big.Int).Sub(q, big.NewInt(2)))}
	for bit := 0; bit < 377; bit++ {
		for _, offset := range []int64{-1, 0, 1} {
			n := new(big.Int).Lsh(big.NewInt(1), uint(bit))
			n.Add(n, big.NewInt(offset))
			n.Mod(n, q)
			values = append(values, rawElement(n))
		}
	}
	for i := 0; i < 4096; i++ {
		input := []byte("shieldd.square377.primitive.v1\x00")
		var counter [8]byte
		binary.LittleEndian.PutUint64(counter[:], uint64(i))
		h := sha512.Sum512(append(input, counter[:]...))
		n := new(big.Int).SetBytes(h[:])
		n.Mod(n, q)
		values = append(values, rawElement(n))
	}
	return values
}
