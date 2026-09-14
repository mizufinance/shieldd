"""Validate and render the bounded hinted-scalar count/solve evidence."""
from dataclasses import asdict, dataclass
import hashlib
import json
from pathlib import Path
import statistics

HERE = Path(__file__).resolve().parent
CACHE = HERE / "cache"
OUT = HERE.parents[1] / "docs/research/native-hinted-scalar-screen"


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def complete(root):
    record = json.loads((root / "complete.json").read_text())
    assert record["schema"] == "shieldd.hinted_scalar_screen.complete.v1"
    for name, expected in record["files"].items():
        assert sha(root/name) == expected, name


@dataclass(frozen=True)
class Scenario:
    scenario: str
    construction_ms: float
    mapping_ms: float
    checked_ms: float
    checked_values_ms: list[float]


def checked_report(root, mode, version):
    raw = json.loads((root/f"{mode}.json").read_text())
    assert raw["schema"] == f"shieldd.hinted_transfer_screen.v{version}" and raw["mode"] == mode
    assert raw["invalid_witness_rejected"] and raw["altered_statement_rejected"]
    assert len(raw["facts"]) == 6 and len(raw["samples"]) == 18
    rows = []
    for fact in raw["facts"]:
        samples = [s for s in raw["samples"] if s["scenario"] == fact["scenario"]]
        assert [s["sample"] for s in samples] == [0, 1, 2]
        assert all(s["original_valid"] and s["converted_valid"] and s["statement"] == fact["claimed_statement"] for s in samples)
        rows.append(Scenario(fact["scenario"], statistics.median(s["construction_ns"] for s in samples)/1e6,
                             statistics.median(s["mapping_ns"] for s in samples)/1e6,
                             statistics.median(s["complete_checked_ns"] for s in samples)/1e6,
                             [s["complete_checked_ns"]/1e6 for s in samples]))
    return raw, rows


def main():
    initial, selected = CACHE/"hinted-scalar-full", CACHE/"hinted-scalar-prepared"
    for root in (initial, selected):
        complete(root)
    source = json.loads((selected/"identity.json").read_text())
    for path, expected in source["files"].items():
        assert sha(Path(path)) == expected, path
    control, rows_control = checked_report(selected, "control", 2)
    hinted, rows_hinted = checked_report(selected, "hinted", 2)
    old_control, _ = checked_report(initial, "control", 1)
    old_hinted, _ = checked_report(initial, "hinted", 1)
    assert control["facts"] == hinted["facts"] == old_control["facts"] == old_hinted["facts"]
    for new, old in ((control, old_control), (hinted, old_hinted)):
        assert all(new[k] == old[k] for k in ("rows", "columns", "relation", "retained_domain", "fft_domain"))
    assert (control["rows"], hinted["rows"]) == (220009, 213619)
    assert (control["columns"], hinted["columns"]) == (220029, 213576)
    assert control["retained_domain"] == hinted["retained_domain"] == 229376
    assert control["fft_domain"] == hinted["fft_domain"] == 262144
    gadget = json.loads((selected/"gadget.json").read_text())
    assert [c["gadget_rows"] for c in gadget["costs"]] == [5537, 4827]
    assert all(c["original_valid"] and c["converted_valid"] for c in gadget["costs"])
    checks = ["hinted-jubjub-dynamic-tests", "hinted-scalar-full-run", "hinted-scalar-prepared-run"]
    guards = []
    for name in checks:
        record = json.loads((CACHE/f"{name}.exit.json").read_text())
        assert record["code"] == 0 and record["failure"] is None
        resources = [json.loads(line) for line in (CACHE/f"{name}.resources.jsonl").read_text().splitlines()]
        assert resources and all(r["swap_bytes"] == 0 and not r["competing_heavy_pids"] for r in resources)
        guards.append({"name": name, "peak_rss_bytes": max(r["tree_rss_bytes"] for r in resources)})
    assert "7 passed; 0 failed" in (CACHE/"hinted-jubjub-dynamic-tests.log").read_text()
    data = {"schema": "shieldd.hinted_scalar_report.v1", "decision": "retain_component_defer_setup",
            "gadget_rows": [5537, 4827], "transfer_rows": [control["rows"], hinted["rows"]],
            "transfer_columns": [control["columns"], hinted["columns"]], "retained_domain": 229376, "fft_domain": 262144,
            "control": [asdict(s) for s in rows_control], "hinted": [asdict(s) for s in rows_hinted], "guards": guards,
            "evidence": {str(p.relative_to(HERE)): sha(p) for p in (selected/"complete.json", initial/"complete.json", selected/"identity.json")}}
    OUT.with_suffix(".json").write_text(json.dumps(data, indent=2)+"\n")
    table = "\n".join(f"| {a.scenario} | {a.construction_ms:.3f} / {b.construction_ms:.3f} | {a.mapping_ms:.3f} / {b.mapping_ms:.3f} | {a.checked_ms:.3f} / {b.checked_ms:.3f} |" for a,b in zip(rows_control,rows_hinted))
    text = f'''# Corrected hinted-scalar Transfer screen

Retain the corrected gadget as a component; defer new setup and proof timing until a larger combined circuit reduction gives a stronger cost case. Nine native Transfer multiplications save **6,390 constraints (2.90%)**, but M229376/N262144 stays unchanged. Prepared witness timings are broadly unchanged across six scenarios. This does not establish a proving speedup or alter the selected A/B/C proving comparison.

| Count | Current native affine | Corrected hinted |
| --- | ---: | ---: |
| Complete 252-bit variable gadget rows | 5,537 | 4,827 |
| Full Transfer square constraints | 220,009 | 213,619 |
| Full Transfer columns | 220,029 | 213,576 |
| Retained domain | 229,376 | 229,376 |
| FFT domain | 262,144 | 262,144 |

The 12.82% gadget reduction includes signed integer decomposition, 128-bit bounds, six non-native limb equations, bounded carries, nonzero denominator, full cofactor8 output binding and a signed joint multiplication. Both gadgets share the canonical scalar/input-subgroup boundary. Integration replaces two authorization, five audit and two recovery multiplications. Precomputed fixed-base and 129-bit balance paths remain unchanged. Exact Jubjub coordinates and all six existing statements are preserved. [Algebra and call-site argument](native-hinted-scalar-design.md)

| Scenario | Construction, control / hinted (ms) | Prepared mapping, control / hinted (ms) | Complete checked solve, control / hinted (ms) |
| --- | ---: | ---: | ---: |
{table}

Each cell is the median of three observations, with no warmups. The control process ran before the candidate. This is a bounded count/solve diagnostic, without balanced backend order or uncertainty estimates; small differences are not reliable speedups. Construction includes live EEA, point multiplication and preimage hints. Prepared mapping uses the same `witness_prepared` path as the retained native prover. Complete checked time additionally includes decoding, both original and converted satisfaction checks and cleanup. It excludes proof construction, keys and cryptographic verification. No phone or throughput claim follows.

Seven release gadget/dynamic tests pass: 4,100 host fraction cases, original/converted group boundaries, malformed numerators/denominators/quotients/signs/carries, a native-field-wrapped integer equality, off-curve/subgroup inputs and outputs, wrong preimages, zero/canonical scalar boundaries, and dynamic witness construction. The even-denominator torsion test first confirms that its wrong output satisfies the unbound MSM, then requires the cofactor-corrected circuit to reject it.

Both full Transfer variants accept all six original and converted assignments, preserve manifest witness/statement hashes and reject the saved invalid witness and an altered statement. Each variant has18 checked solves in the prepared run. An earlier independent unprepared-mapping run also passed18 per variant; it is retained as a correctness gate, not used for production-path timings. The unchanged control reproduces its exact prior relation digest. Sources, locks, parameters, witnesses and optimized binaries are bound by hashes and remain stable throughout each run.

All recorded guards exit0 with zero swap and no competing heavy job; Go/Rayon/Cargo bounds are two on the M4 Pro. Raw process-tree RSS is saved for these count/solve jobs, not presented as proving memory. There were no new setups, real proofs, production release-gated prover tests or formal certification in this screen. Prior proof measurements remain separate.

The initial ordinary binary joint schedule saved only233 rows/site; its source archive and typed output remain cached. The retained signed schedule saves710/site. Further window/profile sweeps are not justified by this result. Applying the method to A/B still requires preserving their exact Decaf representatives; no same-curve Groth16/ZK-Pari gain is claimed here. The next combined candidate should be supported by an actual full-circuit/domain reduction before fresh keys.

[Compact checkpoint](../../tools/proving-experiment/checkpoints/2026-09-14-hinted-scalar/README.md). Reproduce with the [screen runner](../../tools/proving-experiment/hinted_scalar_screen.py); build the isolated `candidates/hinted-jubjub` binaries using Rust1.95, Cargo jobs2 and the shared native target, then run under the existing resource guard with a new cache directory.

![Constraint and prepared witness comparison](native-hinted-scalar-screen.png)
'''
    OUT.with_suffix(".md").write_text(text)
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    fig, axes = plt.subplots(1, 2, figsize=(10, 3.8), constrained_layout=True)
    labels, colors = ["Current affine", "Corrected hinted"], ["#65758b", "#237d8c"]
    bars = axes[0].bar(labels, data["transfer_rows"], color=colors)
    axes[0].bar_label(bars, fmt="%.0f", padding=4)
    axes[0].set(title="Full Transfer constraints", ylabel="Square constraints", ylim=(0,255000))
    for i, row in enumerate((rows_control[0], rows_hinted[0])):
        axes[1].scatter([i]*3, row.checked_values_ms, color=colors[i])
        axes[1].plot([i-.15, i+.15], [row.checked_ms]*2, color="black")
    axes[1].set(title="Standard regulated · checked solve", ylabel="Milliseconds · three observations", xticks=[0,1], xticklabels=labels)
    fig.suptitle("Corrected hinted Jubjub · unchanged FFT size · no proving measurement")
    fig.savefig(OUT.with_suffix(".png"), dpi=170)
    fig.savefig(OUT.with_suffix(".svg"))
    svg = OUT.with_suffix(".svg")
    svg.write_text("\n".join(line.rstrip() for line in svg.read_text().splitlines())+"\n")


if __name__ == "__main__":
    main()
