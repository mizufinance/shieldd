package groth16

import (
	"bytes"
	"encoding/binary"
	"fmt"
	"io"
	"math/big"
	"math/bits"

	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr/fft"
)

const subsetKeyMagic = "SHGSD001"

func subsetLagranges(d *fft.Domain, tau fr.Element, count int) []fr.Element {
	n, s := int(d.Cardinality), int(d.Cardinality)/4
	var excluded, zs, zh, one, factor fr.Element
	one.SetOne()
	excluded.Exp(d.Generator, big.NewInt(int64(s)))
	zs.Exp(tau, big.NewInt(int64(s))).Sub(&zs, &excluded)
	zh.Exp(tau, big.NewInt(int64(n))).Sub(&zh, &one)
	factor.Inverse(&zs).Mul(&factor, &zh).Mul(&factor, &d.CardinalityInv)
	roots, denominators, weights := make([]fr.Element, count), make([]fr.Element, count), make([]fr.Element, count)
	root, rootS := fr.One(), fr.One()
	for i, j := 0, 0; j < count; i++ {
		if i%4 != 1 {
			roots[j] = root
			denominators[j].Sub(&tau, &root)
			weights[j].Sub(&rootS, &excluded)
			j++
		}
		root.Mul(&root, &d.Generator)
		rootS.Mul(&rootS, &excluded)
	}
	inverses := fr.BatchInvert(denominators)
	for i := range weights {
		weights[i].Mul(&weights[i], &roots[i]).Mul(&weights[i], &inverses[i]).Mul(&weights[i], &factor)
	}
	return weights
}

func subsetVanishing(d *fft.Domain, tau fr.Element) fr.Element {
	s := d.Cardinality / 4
	var c, t, pow, z fr.Element
	c.Exp(d.Generator, new(big.Int).SetUint64(s))
	t.Exp(tau, new(big.Int).SetUint64(s))
	pow.SetOne()
	for i := 0; i < 4; i++ {
		z.Mul(&z, &t).Add(&z, &pow)
		pow.Mul(&pow, &c)
	}
	return z
}

func subsetQueries(d *fft.Domain, tau, deltaInverse fr.Element) []fr.Element {
	n, m := int(d.Cardinality), 3*int(d.Cardinality)/4
	natural := make([]fr.Element, m-1)
	z := subsetVanishing(d, tau)
	z.Mul(&z, &deltaInverse)
	for i := range natural {
		natural[i] = z
		z.Mul(&z, &tau)
	}
	result := make([]fr.Element, 0, m-1)
	shift := uint(bits.UintSize - bits.TrailingZeros(uint(n)))
	for i := 0; i < n; i++ {
		degree := int(bits.Reverse(uint(i)) >> shift)
		if degree < m-1 {
			result = append(result, natural[degree])
		}
	}
	return result
}

func (pk *ProvingKey) prepareSubset() error {
	e, err := NewSubsetExperiment(int(pk.Domain.Cardinality))
	if err != nil {
		return err
	}
	if pk.SubsetRemoved != uint64(e.s) || len(pk.G1.Z) != e.m-1 {
		return fmt.Errorf("subset key descriptor/query mismatch")
	}
	// The canonical domain is already checked by the reader or freshly generated setup.
	e.domain = &pk.Domain
	pk.subset = e
	return nil
}

func (pk *ProvingKey) writeSubsetDomain(w io.Writer) (int64, error) {
	n := pk.Domain.Cardinality
	if n < 8 || n > 1<<20 || n&(n-1) != 0 || pk.SubsetRemoved != n/4 || len(pk.G1.Z) != int(3*n/4)-1 {
		return 0, fmt.Errorf("invalid subset key")
	}
	var header [24]byte
	copy(header[:8], subsetKeyMagic)
	binary.BigEndian.PutUint64(header[8:16], n)
	binary.BigEndian.PutUint64(header[16:], pk.SubsetRemoved)
	count, err := w.Write(header[:])
	if err != nil {
		return int64(count), err
	}
	if count != len(header) {
		return int64(count), io.ErrShortWrite
	}
	written, err := pk.Domain.WriteTo(w)
	return int64(count) + written, err
}

func (pk *ProvingKey) readSubsetDomain(r io.Reader) (int64, error) {
	var header [24]byte
	count, err := io.ReadFull(r, header[:])
	if err != nil {
		return int64(count), err
	}
	n, s := binary.BigEndian.Uint64(header[8:16]), binary.BigEndian.Uint64(header[16:])
	if string(header[:8]) != subsetKeyMagic || n < 8 || n > 1<<20 || n&(n-1) != 0 || s != n/4 {
		return 24, fmt.Errorf("invalid subset descriptor")
	}
	domain := fft.NewDomain(n)
	var canonical bytes.Buffer
	if _, err := domain.WriteTo(&canonical); err != nil {
		return 24, err
	}
	encoded := make([]byte, canonical.Len())
	count, err = io.ReadFull(r, encoded)
	if err != nil {
		return 24 + int64(count), err
	}
	if !bytes.Equal(encoded, canonical.Bytes()) {
		return 24 + int64(count), fmt.Errorf("noncanonical or mismatched FFT domain")
	}
	pk.Domain = *domain
	pk.SubsetRemoved = s
	return 24 + int64(count), nil
}
