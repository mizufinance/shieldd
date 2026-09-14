// Copyright 2020 ConsenSys Software Inc.
// Licensed under the Apache License, Version 2.0. See LICENSE-Apache.
// Adapted from the pinned ZPrize mobile harness; provenance in upstream.json.
package square377

import (
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
	"math/bits"
)

const (
	q0      uint64 = 9586122913090633729
	q1      uint64 = 1660523435060625408
	q2      uint64 = 2230234197602682880
	q3      uint64 = 1883307231910630287
	q4      uint64 = 14284016967150029115
	q5      uint64 = 121098312706494698
	qInvNeg uint64 = 9586122913090633727
)

// Square computes a canonical Montgomery square for a canonical input, allowing z == x.
func Square(z, x *fp.Element) *fp.Element {
	// see Mul for algorithm documentation

	var t0, t1, t2, t3, t4, t5 uint64
	var u0, u1, u2, u3, u4, u5 uint64
	var lo0, lo1, lo2, lo3, lo4, lo5 uint64

	// note that if hi, _ = bits.Mul64() didn't generate
	// UMULH and MUL, (but just UMULH) we could use same pattern
	// as in mulRaw and reduce the stack space of this function (no need for lo..)
	{

		var c0, c2 uint64

		// for j=i+1 to N-1
		//     p,C,t[j] = 2*a[j]*a[i] + t[j] + (p,C)
		// A = C
		u0, lo1 = bits.Mul64(x[0], x[0])
		u1, t1 = bits.Mul64(x[1], x[0])
		u2, t2 = bits.Mul64(x[2], x[0])
		u3, t3 = bits.Mul64(x[3], x[0])
		u4, t4 = bits.Mul64(x[4], x[0])
		u5, t5 = bits.Mul64(x[5], x[0])

		// propagate lo, from t[j] to end, twice.
		t1, c0 = bits.Add64(t1, t1, 0)
		t2, c0 = bits.Add64(t2, t2, c0)
		t3, c0 = bits.Add64(t3, t3, c0)
		t4, c0 = bits.Add64(t4, t4, c0)
		t5, c0 = bits.Add64(t5, t5, c0)
		c2, _ = bits.Add64(c2, 0, c0)

		t0, c0 = bits.Add64(lo1, t0, 0)

		// propagate u0 + hi
		t1, c0 = bits.Add64(u0, t1, c0)
		t2, c0 = bits.Add64(u1, t2, c0)
		t3, c0 = bits.Add64(u2, t3, c0)
		t4, c0 = bits.Add64(u3, t4, c0)
		t5, c0 = bits.Add64(u4, t5, c0)
		c2, _ = bits.Add64(u5, c2, c0)

		// hi again
		t2, c0 = bits.Add64(u1, t2, 0)
		t3, c0 = bits.Add64(u2, t3, c0)
		t4, c0 = bits.Add64(u3, t4, c0)
		t5, c0 = bits.Add64(u4, t5, c0)
		c2, _ = bits.Add64(c2, u5, c0)

		// this part is unchanged.
		m := qInvNeg * t0
		u0, lo0 = bits.Mul64(m, q0)
		u1, lo1 = bits.Mul64(m, q1)
		u2, lo2 = bits.Mul64(m, q2)
		u3, lo3 = bits.Mul64(m, q3)
		u4, lo4 = bits.Mul64(m, q4)
		u5, lo5 = bits.Mul64(m, q5)
		_, c0 = bits.Add64(t0, lo0, 0)
		t0, c0 = bits.Add64(t1, lo1, c0)
		t1, c0 = bits.Add64(t2, lo2, c0)
		t2, c0 = bits.Add64(t3, lo3, c0)
		t3, c0 = bits.Add64(t4, lo4, c0)
		t4, c0 = bits.Add64(0, lo5, c0)
		u5, _ = bits.Add64(u5, 0, c0)
		t0, c0 = bits.Add64(u0, t0, 0)
		t1, c0 = bits.Add64(u1, t1, c0)
		t2, c0 = bits.Add64(u2, t2, c0)
		t3, c0 = bits.Add64(u3, t3, c0)
		t4, c0 = bits.Add64(u4, t4, c0)
		c2, _ = bits.Add64(c2, 0, c0)
		t4, c0 = bits.Add64(t5, t4, 0)
		t5, _ = bits.Add64(u5, c2, c0)
	}
	{

		var c0, c2 uint64

		// for j=i+1 to N-1
		//     p,C,t[j] = 2*a[j]*a[i] + t[j] + (p,C)
		// A = C
		u1, lo1 = bits.Mul64(x[1], x[1])
		u2, lo2 = bits.Mul64(x[2], x[1])
		u3, lo3 = bits.Mul64(x[3], x[1])
		u4, lo4 = bits.Mul64(x[4], x[1])
		u5, lo5 = bits.Mul64(x[5], x[1])

		// propagate lo, from t[j] to end, twice.
		lo2, c0 = bits.Add64(lo2, lo2, 0)
		lo3, c0 = bits.Add64(lo3, lo3, c0)
		lo4, c0 = bits.Add64(lo4, lo4, c0)
		lo5, c0 = bits.Add64(lo5, lo5, c0)
		c2, _ = bits.Add64(c2, 0, c0)
		t2, c0 = bits.Add64(lo2, t2, 0)
		t3, c0 = bits.Add64(lo3, t3, c0)
		t4, c0 = bits.Add64(lo4, t4, c0)
		t5, c0 = bits.Add64(lo5, t5, c0)
		c2, _ = bits.Add64(c2, 0, c0)

		t1, c0 = bits.Add64(lo1, t1, 0)

		// propagate u1 + hi
		t2, c0 = bits.Add64(u1, t2, c0)
		t3, c0 = bits.Add64(u2, t3, c0)
		t4, c0 = bits.Add64(u3, t4, c0)
		t5, c0 = bits.Add64(u4, t5, c0)
		c2, _ = bits.Add64(u5, c2, c0)

		// hi again
		t3, c0 = bits.Add64(u2, t3, 0)
		t4, c0 = bits.Add64(u3, t4, c0)
		t5, c0 = bits.Add64(u4, t5, c0)
		c2, _ = bits.Add64(c2, u5, c0)

		// this part is unchanged.
		m := qInvNeg * t0
		u0, lo0 = bits.Mul64(m, q0)
		u1, lo1 = bits.Mul64(m, q1)
		u2, lo2 = bits.Mul64(m, q2)
		u3, lo3 = bits.Mul64(m, q3)
		u4, lo4 = bits.Mul64(m, q4)
		u5, lo5 = bits.Mul64(m, q5)
		_, c0 = bits.Add64(t0, lo0, 0)
		t0, c0 = bits.Add64(t1, lo1, c0)
		t1, c0 = bits.Add64(t2, lo2, c0)
		t2, c0 = bits.Add64(t3, lo3, c0)
		t3, c0 = bits.Add64(t4, lo4, c0)
		t4, c0 = bits.Add64(0, lo5, c0)
		u5, _ = bits.Add64(u5, 0, c0)
		t0, c0 = bits.Add64(u0, t0, 0)
		t1, c0 = bits.Add64(u1, t1, c0)
		t2, c0 = bits.Add64(u2, t2, c0)
		t3, c0 = bits.Add64(u3, t3, c0)
		t4, c0 = bits.Add64(u4, t4, c0)
		c2, _ = bits.Add64(c2, 0, c0)
		t4, c0 = bits.Add64(t5, t4, 0)
		t5, _ = bits.Add64(u5, c2, c0)
	}
	{

		var c0, c2 uint64

		// for j=i+1 to N-1
		//     p,C,t[j] = 2*a[j]*a[i] + t[j] + (p,C)
		// A = C
		u2, lo2 = bits.Mul64(x[2], x[2])
		u3, lo3 = bits.Mul64(x[3], x[2])
		u4, lo4 = bits.Mul64(x[4], x[2])
		u5, lo5 = bits.Mul64(x[5], x[2])

		// propagate lo, from t[j] to end, twice.
		lo3, c0 = bits.Add64(lo3, lo3, 0)
		lo4, c0 = bits.Add64(lo4, lo4, c0)
		lo5, c0 = bits.Add64(lo5, lo5, c0)
		c2, _ = bits.Add64(c2, 0, c0)
		t3, c0 = bits.Add64(lo3, t3, 0)
		t4, c0 = bits.Add64(lo4, t4, c0)
		t5, c0 = bits.Add64(lo5, t5, c0)
		c2, _ = bits.Add64(c2, 0, c0)

		t2, c0 = bits.Add64(lo2, t2, 0)

		// propagate u2 + hi
		t3, c0 = bits.Add64(u2, t3, c0)
		t4, c0 = bits.Add64(u3, t4, c0)
		t5, c0 = bits.Add64(u4, t5, c0)
		c2, _ = bits.Add64(u5, c2, c0)

		// hi again
		t4, c0 = bits.Add64(u3, t4, 0)
		t5, c0 = bits.Add64(u4, t5, c0)
		c2, _ = bits.Add64(c2, u5, c0)

		// this part is unchanged.
		m := qInvNeg * t0
		u0, lo0 = bits.Mul64(m, q0)
		u1, lo1 = bits.Mul64(m, q1)
		u2, lo2 = bits.Mul64(m, q2)
		u3, lo3 = bits.Mul64(m, q3)
		u4, lo4 = bits.Mul64(m, q4)
		u5, lo5 = bits.Mul64(m, q5)
		_, c0 = bits.Add64(t0, lo0, 0)
		t0, c0 = bits.Add64(t1, lo1, c0)
		t1, c0 = bits.Add64(t2, lo2, c0)
		t2, c0 = bits.Add64(t3, lo3, c0)
		t3, c0 = bits.Add64(t4, lo4, c0)
		t4, c0 = bits.Add64(0, lo5, c0)
		u5, _ = bits.Add64(u5, 0, c0)
		t0, c0 = bits.Add64(u0, t0, 0)
		t1, c0 = bits.Add64(u1, t1, c0)
		t2, c0 = bits.Add64(u2, t2, c0)
		t3, c0 = bits.Add64(u3, t3, c0)
		t4, c0 = bits.Add64(u4, t4, c0)
		c2, _ = bits.Add64(c2, 0, c0)
		t4, c0 = bits.Add64(t5, t4, 0)
		t5, _ = bits.Add64(u5, c2, c0)
	}
	{

		var c0, c2 uint64

		// for j=i+1 to N-1
		//     p,C,t[j] = 2*a[j]*a[i] + t[j] + (p,C)
		// A = C
		u3, lo3 = bits.Mul64(x[3], x[3])
		u4, lo4 = bits.Mul64(x[4], x[3])
		u5, lo5 = bits.Mul64(x[5], x[3])

		// propagate lo, from t[j] to end, twice.
		lo4, c0 = bits.Add64(lo4, lo4, 0)
		lo5, c0 = bits.Add64(lo5, lo5, c0)
		c2, _ = bits.Add64(c2, 0, c0)
		t4, c0 = bits.Add64(lo4, t4, 0)
		t5, c0 = bits.Add64(lo5, t5, c0)
		c2, _ = bits.Add64(c2, 0, c0)

		t3, c0 = bits.Add64(lo3, t3, 0)

		// propagate u3 + hi
		t4, c0 = bits.Add64(u3, t4, c0)
		t5, c0 = bits.Add64(u4, t5, c0)
		c2, _ = bits.Add64(u5, c2, c0)

		// hi again
		t5, c0 = bits.Add64(u4, t5, 0)
		c2, _ = bits.Add64(c2, u5, c0)

		// this part is unchanged.
		m := qInvNeg * t0
		u0, lo0 = bits.Mul64(m, q0)
		u1, lo1 = bits.Mul64(m, q1)
		u2, lo2 = bits.Mul64(m, q2)
		u3, lo3 = bits.Mul64(m, q3)
		u4, lo4 = bits.Mul64(m, q4)
		u5, lo5 = bits.Mul64(m, q5)
		_, c0 = bits.Add64(t0, lo0, 0)
		t0, c0 = bits.Add64(t1, lo1, c0)
		t1, c0 = bits.Add64(t2, lo2, c0)
		t2, c0 = bits.Add64(t3, lo3, c0)
		t3, c0 = bits.Add64(t4, lo4, c0)
		t4, c0 = bits.Add64(0, lo5, c0)
		u5, _ = bits.Add64(u5, 0, c0)
		t0, c0 = bits.Add64(u0, t0, 0)
		t1, c0 = bits.Add64(u1, t1, c0)
		t2, c0 = bits.Add64(u2, t2, c0)
		t3, c0 = bits.Add64(u3, t3, c0)
		t4, c0 = bits.Add64(u4, t4, c0)
		c2, _ = bits.Add64(c2, 0, c0)
		t4, c0 = bits.Add64(t5, t4, 0)
		t5, _ = bits.Add64(u5, c2, c0)
	}
	{

		var c0, c2 uint64

		// for j=i+1 to N-1
		//     p,C,t[j] = 2*a[j]*a[i] + t[j] + (p,C)
		// A = C
		u4, lo4 = bits.Mul64(x[4], x[4])
		u5, lo5 = bits.Mul64(x[5], x[4])

		// propagate lo, from t[j] to end, twice.
		lo5, c0 = bits.Add64(lo5, lo5, 0)
		c2, _ = bits.Add64(c2, 0, c0)
		t5, c0 = bits.Add64(lo5, t5, 0)
		c2, _ = bits.Add64(c2, 0, c0)

		t4, c0 = bits.Add64(lo4, t4, 0)

		// propagate u4 + hi
		t5, c0 = bits.Add64(u4, t5, c0)
		c2, _ = bits.Add64(u5, c2, c0)

		// hi again
		c2, _ = bits.Add64(c2, u5, 0)

		// this part is unchanged.
		m := qInvNeg * t0
		u0, lo0 = bits.Mul64(m, q0)
		u1, lo1 = bits.Mul64(m, q1)
		u2, lo2 = bits.Mul64(m, q2)
		u3, lo3 = bits.Mul64(m, q3)
		u4, lo4 = bits.Mul64(m, q4)
		u5, lo5 = bits.Mul64(m, q5)
		_, c0 = bits.Add64(t0, lo0, 0)
		t0, c0 = bits.Add64(t1, lo1, c0)
		t1, c0 = bits.Add64(t2, lo2, c0)
		t2, c0 = bits.Add64(t3, lo3, c0)
		t3, c0 = bits.Add64(t4, lo4, c0)
		t4, c0 = bits.Add64(0, lo5, c0)
		u5, _ = bits.Add64(u5, 0, c0)
		t0, c0 = bits.Add64(u0, t0, 0)
		t1, c0 = bits.Add64(u1, t1, c0)
		t2, c0 = bits.Add64(u2, t2, c0)
		t3, c0 = bits.Add64(u3, t3, c0)
		t4, c0 = bits.Add64(u4, t4, c0)
		c2, _ = bits.Add64(c2, 0, c0)
		t4, c0 = bits.Add64(t5, t4, 0)
		t5, _ = bits.Add64(u5, c2, c0)
	}
	{

		var c0, c2 uint64

		// for j=i+1 to N-1
		//     p,C,t[j] = 2*a[j]*a[i] + t[j] + (p,C)
		// A = C
		u5, lo5 = bits.Mul64(x[5], x[5])

		// propagate lo, from t[j] to end, twice.

		t5, c0 = bits.Add64(lo5, t5, 0)

		// propagate u5 + hi
		c2, _ = bits.Add64(u5, c2, c0)

		// hi again

		// this part is unchanged.
		m := qInvNeg * t0
		u0, lo0 = bits.Mul64(m, q0)
		u1, lo1 = bits.Mul64(m, q1)
		u2, lo2 = bits.Mul64(m, q2)
		u3, lo3 = bits.Mul64(m, q3)
		u4, lo4 = bits.Mul64(m, q4)
		u5, lo5 = bits.Mul64(m, q5)
		_, c0 = bits.Add64(t0, lo0, 0)
		t0, c0 = bits.Add64(t1, lo1, c0)
		t1, c0 = bits.Add64(t2, lo2, c0)
		t2, c0 = bits.Add64(t3, lo3, c0)
		t3, c0 = bits.Add64(t4, lo4, c0)
		t4, c0 = bits.Add64(0, lo5, c0)
		u5, _ = bits.Add64(u5, 0, c0)
		t0, c0 = bits.Add64(u0, t0, 0)
		t1, c0 = bits.Add64(u1, t1, c0)
		t2, c0 = bits.Add64(u2, t2, c0)
		t3, c0 = bits.Add64(u3, t3, c0)
		t4, c0 = bits.Add64(u4, t4, c0)
		c2, _ = bits.Add64(c2, 0, c0)
		t4, c0 = bits.Add64(t5, t4, 0)
		t5, _ = bits.Add64(u5, c2, c0)
	}
	z[0] = t0
	z[1] = t1
	z[2] = t2
	z[3] = t3
	z[4] = t4
	z[5] = t5

	var d fp.Element
	var borrow uint64
	d[0], borrow = bits.Sub64(z[0], q0, 0)
	d[1], borrow = bits.Sub64(z[1], q1, borrow)
	d[2], borrow = bits.Sub64(z[2], q2, borrow)
	d[3], borrow = bits.Sub64(z[3], q3, borrow)
	d[4], borrow = bits.Sub64(z[4], q4, borrow)
	d[5], borrow = bits.Sub64(z[5], q5, borrow)
	mask := uint64(0) - borrow
	for i := range z {
		z[i] = (z[i] & mask) | (d[i] &^ mask)
	}
	return z
}
