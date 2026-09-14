package edwards

import (
	"fmt"
	"github.com/consensys/gnark-crypto/ecc"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"runtime"
	"sync"
	"unsafe"
)

// Execute bounds preparation and scalar partitioning to two workers.
func Execute(n int, work func(int, int), requested ...int) {
	workers := 2
	if len(requested) > 0 && requested[0] < workers {
		workers = requested[0]
	}
	if workers > n {
		workers = n
	}
	var wg sync.WaitGroup
	for i := 0; i < workers; i++ {
		start, end := i*n/workers, (i+1)*n/workers
		wg.Add(1)
		go func() { defer wg.Done(); work(start, end) }()
	}
	wg.Wait()
}

type Prepared struct{ points []G1EdMSM }

func (p *Prepared) Len() int           { return len(p.points) }
func (p *Prepared) ResidentBytes() int { return len(p.points) * int(unsafe.Sizeof(G1EdMSM{})) }

// Prepare accepts only checked prime-subgroup points, with a distinct identity map.
func Prepare(points []curve.G1Affine) (*Prepared, error) {
	if runtime.GOMAXPROCS(0) != 2 {
		return nil, fmt.Errorf("two workers required")
	}
	failures := make(chan error, 2)
	Execute(len(points), func(start, end int) {
		var one, d fp.Element
		one.SetOne()
		for i := start; i < end; i++ {
			p := &points[i]
			if !p.IsOnCurve() || !p.IsInSubGroup() {
				failures <- fmt.Errorf("point %d outside prime subgroup", i)
				return
			}
			if p.IsInfinity() {
				continue
			}
			d.Add(&p.X, &one).Add(&d, &sqrtThree)
			if p.Y.IsZero() || d.IsZero() {
				failures <- fmt.Errorf("point %d exceptional rational map", i)
				return
			}
		}
	})
	close(failures)
	for err := range failures {
		return nil, err
	}
	return &Prepared{BatchFromAffineSWC(points)}, nil
}
func (p *Prepared) MSM(scalars []fr.Element) (curve.G1Affine, error) {
	if len(p.points) != len(scalars) || runtime.GOMAXPROCS(0) != 2 {
		return curve.G1Affine{}, fmt.Errorf("MSM shape/profile mismatch")
	}
	var result G1EdExtended
	if _, err := result.MultiExp(p.points, scalars, ecc.MultiExpConfig{NbTasks: 2}); err != nil {
		return curve.G1Affine{}, err
	}
	return toAffine(&result)
}

func toAffine(p *G1EdExtended) (curve.G1Affine, error) {
	var out curve.G1Affine
	if p.Z.IsZero() {
		return out, fmt.Errorf("exceptional Edwards output Z=0")
	}
	var xy, zt fp.Element
	xy.Mul(&p.X, &p.Y)
	zt.Mul(&p.Z, &p.T)
	if !xy.Equal(&zt) {
		return out, fmt.Errorf("inconsistent extended coordinates")
	}
	if p.IsInfinity() {
		return out, nil
	}
	var d1, d2, n, one fp.Element
	one.SetOne()
	d1.Sub(&p.Z, &p.Y)
	d2.Mul(&p.X, &invSqrtMinusA)
	if d1.IsZero() || d2.IsZero() {
		return out, fmt.Errorf("exceptional inverse rational map")
	}
	inverses := fp.BatchInvert([]fp.Element{d1, d2})
	n.Add(&p.Z, &p.Y).Mul(&n, &inverses[0]).Mul(&n, &sqrtThree)
	out.X.Sub(&n, &one)
	out.Y.Mul(&n, &p.Z).Mul(&out.Y, &inverses[1])
	if !out.IsOnCurve() || !out.IsInSubGroup() {
		return out, fmt.Errorf("mapped output outside prime subgroup")
	}
	return out, nil
}
