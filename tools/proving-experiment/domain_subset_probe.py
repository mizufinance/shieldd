"""Check domain-subset polynomial identities; this does not construct a SNARK."""

import hashlib
import json
import random
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
MODULI = {
    "BLS12-377-Fr": 8444461749428370424248824938781546531375899335154063827935233455917409239041,
    "BLS12-381-Fr": 52435875175126190479447740508185965837690552500527637822603658699938581184513,
}


def trim(a):
    while len(a) > 1 and a[-1] == 0:
        a.pop()
    return a


def add(a, b, p):
    c = [0] * max(len(a), len(b))
    for i, x in enumerate(a):
        c[i] += x
    for i, x in enumerate(b):
        c[i] += x
    return trim([x % p for x in c])


def scale(a, x, p):
    return trim([v * x % p for v in a])


def mul(a, b, p):
    c = [0] * (len(a) + len(b) - 1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            c[i + j] = (c[i + j] + x * y) % p
    return trim(c)


def div(a, b, p):
    a = a.copy()
    q = [0] * max(1, len(a) - len(b) + 1)
    inv = pow(b[-1], -1, p)
    while a != [0] and len(a) >= len(b):
        k = len(a) - len(b)
        v = a[-1] * inv % p
        q[k] = v
        for j, x in enumerate(b):
            a[j + k] = (a[j + k] - v * x) % p
        trim(a)
    return trim(q), trim(a)


def evaluate(a, x, p):
    out = 0
    for v in reversed(a):
        out = (out * x + v) % p
    return out


def root(n, p):
    for g in range(2, 100):
        w = pow(g, (p - 1) // n, p)
        if pow(w, n, p) == 1 and pow(w, n // 2, p) != 1:
            return w
    raise AssertionError("root unavailable")


def inverse_dft(values, w, p):
    n = len(values)
    inv_n = pow(n, -1, p)
    return trim([
        sum(v * pow(w, (-i * j) % n, p) for j, v in enumerate(values)) * inv_n % p
        for i in range(n)
    ])


def domain_checks():
    rng = random.Random(934013)
    results = []
    for field, p in MODULI.items():
        n = 64
        w = root(n, p)
        domain = [pow(w, i, p) for i in range(n)]
        for removed_size in (4, 8, 16):
            # Remove a nontrivial coset of the subgroup of this size.
            c = pow(w, removed_size, p)
            missing = [-c % p] + [0] * (removed_size - 1) + [1]
            full = [-1 % p] + [0] * (n - 1) + [1]
            z, remainder = div(full, missing, p)
            assert remainder == [0]
            retained = [x for x in domain if evaluate(missing, x, p) != 0]
            m = len(retained)
            assert m == n - removed_size and len(z) == m + 1
            assert all(evaluate(z, x, p) == 0 for x in retained)
            for _ in range(8):
                a = [rng.randrange(p) for _ in range(m)]
                # Extend weighted samples by zero on missing points, then divide.
                weighted = [evaluate(a, x, p) * evaluate(missing, x, p) % p for x in domain]
                reconstructed, remainder = div(inverse_dft(weighted, w, p), missing, p)
                assert remainder == [0] and reconstructed == trim(a.copy())
                # B is the degree-<m interpolant of A^2 on the retained domain.
                q, b = div(mul(a, a, p), z, p)
                h = [rng.randrange(p), rng.randrange(p)]
                masked = add(a, mul(h, z, p), p)
                expanded = add(add(q, scale(mul(h, a, p), 2, p), p), mul(mul(h, h, p), z, p), p)
                actual, remainder = div(add(mul(masked, masked, p), scale(b, -1, p), p), z, p)
                assert remainder == [0] and actual == expanded
                assert len(actual) <= m + 3
                # A single changed constraint evaluation must break divisibility.
                bad_b = add(b, [1], p)
                _, bad_remainder = div(add(mul(masked, masked, p), scale(bad_b, -1, p), p), z, p)
                assert bad_remainder != [0]
            results.append({"field": field, "full_size": n, "retained_size": m,
                            "cases": 8, "interpolation": True, "masked_quotient": True,
                            "tampered_relation_rejected": True})
    return results


def scalar_inventory():
    manifest_path = ROOT / "tools/proving-experiment/cache/gnark-msm-operands/manifest.json"
    manifest = json.loads(manifest_path.read_text())
    results = []
    p = MODULI["BLS12-377-Fr"]
    for op in manifest["operations"]:
        path = Path(op["scalars"]["path"])
        data = path.read_bytes()
        assert hashlib.sha256(data).hexdigest() == op["scalars"]["sha256"]
        assert len(data) == 32 * op["count"]
        counts = dict.fromkeys(("zero", "one", "minus_one", "other_signed_u16", "other_signed_u64", "other_signed_u128", "large"), 0)
        for i in range(0, len(data), 32):
            s = int.from_bytes(data[i:i + 32], "big")
            assert s < p
            k = min(s, p - s)
            key = ("zero" if s == 0 else "one" if s == 1 else "minus_one" if s == p - 1
                   else "other_signed_u16" if k < 2**16 else "other_signed_u64" if k < 2**64
                   else "other_signed_u128" if k < 2**128 else "large")
            counts[key] += 1
        results.append({"operation": op["name"], "count": op["count"], "counts": counts})
    return {"manifest_sha256": hashlib.sha256(manifest_path.read_bytes()).hexdigest(), "operations": results}


if __name__ == "__main__":
    output = ROOT / "docs/research/zkpari-second-pass-evidence.json"
    result = {"scope": "Algebra checks at size 64 in both actual scalar fields, and aggregate inventory of previously captured synthetic proof operands. No production proof, speed measurement, or security proof.",
              "source_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
              "domain_checks": domain_checks(), "B_scalar_inventory": scalar_inventory(),
              "domain_sizes": [{"size": m, "reduction_fraction": 1 - m / 262144,
                                "B_fits_current": m >= 241626, "C_fits_current": m >= 232703,
                                "C_fits_affine_projection": m >= 220029}
                               for m in (245760, 229376, 212992, 196608)]}
    output.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))
