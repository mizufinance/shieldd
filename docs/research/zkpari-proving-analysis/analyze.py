"""Reproduce static lowering counts and summarize the existing proof samples."""

import collections
import hashlib
import json
from pathlib import Path
import re
import statistics
import sys


def classify(a, b, modulus):
    an = {i: c for i, c in a.items() if i}
    bn = {i: c for i, c in b.items() if i}
    if not an or not bn:
        return "linear", None
    if a == b:
        return "exact_square", (1, 0)
    if an.keys() == bn.keys():
        j = next(iter(an))
        if all((an[i] * bn[j] - bn[i] * an[j]) % modulus == 0 for i in an):
            k = bn[j] * pow(an[j], -1, modulus) % modulus
            d = (b.get(0, 0) - k * a.get(0, 0)) % modulus
            return "affine_proportional", (k, d)
    return "general_product", None


def rows(path, modulus, wires):
    for line in path.open():
        if not line.startswith("(constraint"):
            continue
        sides = []
        for side in re.findall(r"\[([^\]]*)\]", line):
            terms = {}
            for coefficient, wire in re.findall(r"\(\s*(-?\d+)\s+(\d+)\s*\)", side):
                index = int(wire)
                assert 0 <= index < wires
                terms[index] = (terms.get(index, 0) + int(coefficient)) % modulus
            sides.append({i: c for i, c in terms.items() if c})
        assert len(sides) == 3
        yield sides


def main(cache):
    metadata = json.loads((cache / "metadata.json").read_text())
    modulus = int(metadata["modulus"])
    wires = sum(metadata[k] for k in ("public", "secret", "internal"))
    relation = cache / "transfer.r1cs"
    relation_hash = hashlib.sha256(relation.read_bytes()).hexdigest()
    assert relation_hash == metadata["circuit_sha256"]
    sample_bytes = (cache / "samples.jsonl").read_bytes()
    samples = [json.loads(line) for line in sample_bytes.splitlines()]
    scenarios = sorted({x["scenario"] for x in samples if x["kind"] == "warm"})
    assignments = []
    for name in scenarios:
        record = json.loads((cache / f"{name}.json").read_text())
        raw = bytes.fromhex(record["assignment"])
        assert len(raw) == wires * 32
        values = [int.from_bytes(raw[i:i + 32], "little") for i in range(0, len(raw), 32)]
        assert values[0] == 1 and all(v < modulus for v in values)
        assert values[1] == int.from_bytes(bytes.fromhex(record["statement"]), "little")
        assignments.append(values)
    counts = collections.Counter()
    checks = 0
    for a, b, c in rows(relation, modulus, wires):
        kind, parameters = classify(a, b, modulus)
        counts[kind] += 1
        for values in assignments:
            av, bv, cv = (sum(co * values[i] for i, co in side.items()) % modulus for side in (a, b, c))
            assert (av * bv - cv) % modulus == 0
            # Evaluate each proposed row, without creating a circuit or proof.
            if parameters is not None:
                k, d = parameters
                assert (bv - k * av - d) % modulus == 0
                assert ((2 * k * av + d) ** 2 - (4 * k * cv + d * d)) % modulus == 0
                # Perturb C: the residual must scale by nonzero 4k.
                assert ((2 * k * av + d) ** 2 - (4 * k * (cv + 1) + d * d)) % modulus == (-4 * k) % modulus
            elif kind == "linear":
                assert (av * bv - cv) % modulus == 0  # 0^2 = A*B-C, a linear expression.
            else:
                t = (av - bv) ** 2 % modulus
                assert ((av + bv) ** 2 - 4 * cv - t) % modulus == 0
            checks += 1
    assert sum(counts.values()) == metadata["constraints"]
    # Exhaustively check the affine-product algebra over a small odd field,
    # including unsatisfied relations. This is arithmetic testing, not formal verification.
    toy_checks = 0
    for k in range(1, 11):
        for d in range(11):
            for a in range(11):
                for c in range(11):
                    assert ((2*k*a+d)**2 - (4*k*c+d*d) - 4*k*(a*(k*a+d)-c)) % 11 == 0
                    toy_checks += 1
    body_count = sum(counts.values()) + counts["general_product"]
    result = {
        "cache": str(cache), "relation_sha256": relation_hash,
        "samples_sha256": hashlib.sha256(sample_bytes).hexdigest(), "sample_records": len(samples),
        "classification": dict(counts), "original_constraints": metadata["constraints"],
        "proposed_sr1cs_body_rows": body_count,
        "proposed_rows_with_three_boundary_rows": body_count + 3,
        "proposed_radix2_domain": 1 << (body_count + 2).bit_length(),
        "scenario_assignments_checked": scenarios, "row_assignment_checks": checks,
        "small_field_identity_checks": toy_checks,
        "limits": "Static arithmetic checks only; no new SR1CS key, compiler, or proof was produced.",
        "warm_transfer_seconds": {}, "poa_batch_seconds": {},
    }
    for backend in ("groth16", "zkpari"):
        cell = [x["metrics"] for x in samples if x["kind"] == "warm" and x["workers"] == 1 and x["scenario"] == "transfer" and x["backend"] == backend]
        result["warm_transfer_seconds"][backend] = {
            "n": len(cell), "request_wall": statistics.median(x["request_wall_ns"] for x in cell) / 1e9,
            "phases": {section: {k: statistics.median(x[section].get(k, 0) for x in cell) / 1e9
                                  for k in cell[0][section] if any(x[section].get(k, 0) for x in cell)}
                       for section in ("go", "rust")},
        }
    for count in (64, 256, 1024, 4096):
        result["poa_batch_seconds"][count] = {}
        for backend in ("groth16", "zkpari"):
            cell = [x["metrics"] for x in samples if x["kind"] == "batch" and x["workers"] == 1 and x["count"] == count and x["backend"] == backend]
            result["poa_batch_seconds"][count][backend] = {
                "n": len(cell), **{k: statistics.median(x[k] for x in cell) / 1e9
                                  for k in ("aggregation_checked_ns", "batch_checked_ns", "combined_ns")},
                "proof_bytes": cell[0]["proof_bytes"], "aggregate_bytes": cell[0]["aggregate_bytes"],
                "statement_bytes": cell[0]["statement_bytes"],
            }
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main(Path(sys.argv[1]).resolve())
