"""Summarize raw observations; never infer missing cells or network TPS."""
from collections import defaultdict
import json
import math
from pathlib import Path
import random
import statistics


def quantile(values, p):
    values = sorted(values)
    rank = (len(values)-1) * p
    lo, hi = math.floor(rank), math.ceil(rank)
    return values[lo] + (values[hi]-values[lo]) * (rank-lo)


def summary(values):
    return {"n": len(values), "median": statistics.median(values), "p95": quantile(values, .95),
            "min": min(values), "max": max(values)}


def speedup_interval(baseline, candidate, seed=173):
    """Paired block bootstrap of the ratio of medians, preserving backend pairing."""
    if len(baseline) != len(candidate) or len(baseline) < 2:
        raise ValueError("paired samples required")
    rng = random.Random(seed)
    ratios = []
    for _ in range(4000):
        indices = [rng.randrange(len(baseline)) for _ in baseline]
        ratios.append(statistics.median([baseline[i] for i in indices]) / statistics.median([candidate[i] for i in indices]))
    return {"ratio": statistics.median(baseline)/statistics.median(candidate),
            "ci95_low": quantile(ratios, .025), "ci95_high": quantile(ratios, .975), "method": "paired-block bootstrap, ratio of medians, 4000 resamples"}


def report(cache):
    from run import ARTIFACTS, COUNTS, SCENARIOS, canonical_hash, digest, read, require, save, load_samples
    cache = Path(cache)
    output = cache / "report"
    output.mkdir(exist_ok=True)
    source = read(cache / "source.json")
    samples_path = cache / "samples.jsonl"
    if not samples_path.exists():
        failure = read(cache / "interrupted.json") if (cache / "interrupted.json").exists() else {"error": "measurements have not run"}
        save(output / "results.json", {"status": "incomplete", "failure": failure, "source": source})
        (output / "report.md").write_text("# Shieldd proof spike — incomplete\n\n" + failure["error"] + "\n\nNo throughput comparison is available.\n")
        return
    samples = load_samples(samples_path)
    groups = defaultdict(list)
    for s in samples:
        groups[(s["kind"], s["workers"], s.get("scenario", s.get("count")), s["backend"])].append(s)
    cells = []
    for key, rows in sorted(groups.items()):
        kind, workers, case, backend = key
        metric = {"warm":"request_wall_ns", "first":"first_proof_ns", "individual":"verify_checked_ns", "batch":"batch_checked_ns"}[kind]
        rows.sort(key=lambda r: r["block"])
        values = [r["metrics"][metric] for r in rows]
        cell = {"kind":kind, "workers":workers, "case":case, "backend":backend, "metric":metric, "ns":summary(values),
                "blocks":[r["block"] for r in rows], "raw_ns":values}
        if kind == "first":
            # Five fresh processes do not support a meaningful tail estimate.
            del cell["ns"]["p95"]
        for extra in ("verify_prepared_ns", "batch_verify_ns", "batch_preparation_ns", "aggregation_ns", "aggregation_preparation_ns", "aggregation_checked_ns", "combined_ns"):
            if rows[0]["metrics"].get(extra):
                cell[extra] = summary([r["metrics"][extra] for r in rows])
        if kind == "batch":
            cell.update(real_count=case, padded_count=rows[0]["metrics"]["padded_count"],
                        proofs_per_second=case*1e9/cell["ns"]["median"], ns_per_real_proof=cell["ns"]["median"]/case,
                        proof_bytes=rows[0]["metrics"]["proof_bytes"], aggregate_bytes=rows[0]["metrics"]["aggregate_bytes"],
                        statement_bytes=rows[0]["metrics"]["statement_bytes"])
        cell["rust_lifetime_peak_rss_bytes"] = max(r["metrics"].get("peak_rss_bytes", r["metrics"].get("rust_peak_rss_bytes", 0)) for r in rows)
        cell["go_lifetime_peak_rss_bytes"] = max(r["metrics"].get("go_peak_rss_bytes", 0) for r in rows)
        cells.append(cell)
    indexed = {(c["kind"],c["workers"],c["case"],c["backend"]):c for c in cells}
    comparisons = []
    for cell in cells:
        if cell["backend"] != "groth16" or cell["kind"] == "first": continue
        other = indexed.get((cell["kind"],cell["workers"],cell["case"],"zkpari"))
        if other and other["blocks"] == cell["blocks"] and len(cell["blocks"]) >= 2:
            comparisons.append({"kind":cell["kind"],"workers":cell["workers"],"case":cell["case"],
                                **speedup_interval(cell["raw_ns"],other["raw_ns"])})
    expected = {(kind,workers,case,backend):n for kind, cases, n in (("warm",SCENARIOS,30),("individual",SCENARIOS,30),("first",SCENARIOS,5),("batch",COUNTS,30))
                for workers in (1,2) for case in cases for backend in ("groth16","zkpari")}
    complete = len(indexed) == len(expected) and all(k in indexed and indexed[k]["ns"]["n"] == n for k,n in expected.items())
    if complete:
        require(read(cache / "measurement-complete.json")["raw_samples_sha256"] == digest(samples_path), "raw samples changed")
    initialization = {str(w):read(cache / f"initialization-{w}.json") for w in (1,2) if (cache / f"initialization-{w}.json").exists()}
    verifier_initialization = {str(w):read(cache / f"verifier-initialization-{w}.json") for w in (1,2) if (cache / f"verifier-initialization-{w}.json").exists()}
    gates = [json.loads(line) for line in (cache / "candidate-gate.jsonl").read_text().splitlines()]
    footprint = {"groth16_proving_key_bytes": (ARTIFACTS/"proving_key.bin").stat().st_size,
                 "groth16_gnark_verifying_key_bytes": (ARTIFACTS/"verifying_key.bin").stat().st_size,
                 "zkpari_proving_key_bytes": (cache/"zkpari.pk").stat().st_size,
                 "zkpari_verifying_key_bytes": (cache/"zkpari.vk").stat().st_size,
                 "snarkpack_srs_initialization": {str(w):read(cache/f"srs-initialization-{w}.json") for w in (1,2) if (cache/f"srs-initialization-{w}.json").exists()}}
    tests = read(cache / "tests.json") if (cache / "tests.json").exists() else {"status":"not run"}
    result = {"status":"complete" if complete else "incomplete", "source":source, "raw_samples_sha256":digest(samples_path),
              "cells":cells, "comparisons":comparisons, "initialization":initialization, "verifier_initialization":verifier_initialization, "gate":gates, "tests":tests, "footprint":footprint}
    save(output / "results.json", result)
    lines = ["# Shieldd Groth16/SnarkPack versus ZK-Pari", "", f"Status: **{result['status']}**. Transfer on BLS12-377; local hardware only.", "",
             f"Shieldd `{source['shieldd_revision']}`; ZK-Pari `{source['zkpari_revision']}`. Hardware: {source['cpu']} ({source['os']}).", "",
             "The primary batch comparison includes checked statement preparation and the current SnarkPack v1 verifier (including preflight), versus checked individual-proof decoding and ZK-Pari batch verification. SnarkPack aggregation is separate. Proof throughput is not network/payment TPS.", "",
             "The shared corpus contains 4,096 freshly randomized, individually verified proofs per backend. Statements repeat across six representative scenarios; this is proof-layer data, not an executable block.", "",
             "The existing `transfer_accumulator_over_limit` witness is intentionally invalid and remains a rejection test. The sixth positive witness is a separate valid over-limit disclosure built in the spike cache. It shares the disclosure branch with the existing flagged witness; it does not add a new circuit branch.", "",
             "Warm times include Go witness preparation and solving, process bridge/encoding, and the backend's proving work. ZK-Pari's development bridge additionally checks every original and converted constraint; the upstream prover then repeats synthesis/conversion. These costs are retained in request wall time. Diagnostic proof-from-assignment gate timings are not complete proving times.", "",
             "## Batch verification", "", "| Workers | Real/padded (SnarkPack) | SnarkPack checked ms | ZK-Pari checked ms | Speedup (95% CI) | SnarkPack aggregate ms | Combined ms |", "|---:|---:|---:|---:|---:|---:|---:|"]
    for c in comparisons:
        if c["kind"] != "batch": continue
        a=indexed[("batch",c["workers"],c["case"],"groth16")]; b=indexed[("batch",c["workers"],c["case"],"zkpari")]
        lines.append(f"| {c['workers']} | {c['case']}/{a['padded_count']} | {a['ns']['median']/1e6:.3f} | {b['ns']['median']/1e6:.3f} | {c['ratio']:.2f}× ({c['ci95_low']:.2f}–{c['ci95_high']:.2f}) | {a['aggregation_ns']['median']/1e6:.3f} | {a['combined_ns']['median']/1e6:.3f} |")
    lines += ["", "## Proving and individual verification", "", "| Workers | Scenario | Groth16 warm median/p95 s | ZK-Pari warm median/p95 s | Proving regression | Groth16 / ZK-Pari checked verify ms |", "|---:|---|---:|---:|---:|---:|"]
    for w in (1,2):
        for s in SCENARIOS:
            a=indexed.get(("warm",w,s,"groth16")); b=indexed.get(("warm",w,s,"zkpari"))
            va=indexed.get(("individual",w,s,"groth16")); vb=indexed.get(("individual",w,s,"zkpari"))
            if not all((a,b,va,vb)):continue
            lines.append(f"| {w} | {s} | {a['ns']['median']/1e9:.3f}/{a['ns']['p95']/1e9:.3f} | {b['ns']['median']/1e9:.3f}/{b['ns']['p95']/1e9:.3f} | {b['ns']['median']/a['ns']['median']:.2f}× | {va['ns']['median']/1e6:.3f}/{vb['ns']['median']/1e6:.3f} |")
    lines += ["", "## Fresh-process first proofs", "", "Five values per scenario/profile, in seconds. These include process creation, initialization, key loading/preparation, and the first complete proof. The OS page cache was not flushed. No cold-tail percentile is claimed.", ""]
    for c in cells:
        if c["kind"] == "first":
            lines.append(f"- {c['workers']} workers, {c['backend']}, {c['case']}: {', '.join(f'{v/1e9:.3f}' for v in c['raw_ns'])}; median {c['ns']['median']/1e9:.3f}.")
    lines += ["", "## Footprint and interpretation", "",
              "Individual compressed proofs: Groth16 192 bytes; ZK-Pari 128 bytes. The complete ZK-Pari batch retains every proof. At 4,096 proofs this is 524,288 proof bytes, plus 131,072 bytes of public statement hashes, before transport framing. SnarkPack's wrapped aggregate sizes are in results.json; statements remain linear in the real count.", "",
              "RSS values are native per-process lifetime high-water marks, including setup and cached keys. Individual and batch verification use fresh verification-only workers without Go solvers, circuits or proving keys, so their memory results exclude prover memory. The resource log also samples simultaneous worker RSS once per second; sampled values can miss brief peaks and include idle workers. They are not per-operation allocation counts. All builds/jobs ran sequentially; profiles set matched Go/Rayon environment limits of one and two. The shipping SnarkPack aggregation path explicitly creates a single-thread pool; this behavior is retained in both profiles.", "",
              "Speedup intervals use a paired block bootstrap of the ratio of medians. They describe this run's local variation, not other hardware or phone performance. Warm p95 uses linear interpolation of 30 observations. Prepared verifier timing, initialization, key generation, phase timings, encoded sizes and every raw observation are retained in results.json and samples.jsonl.", ""]
    lines += ["Key and SRS footprint:", "", "```json", json.dumps(footprint,indent=2), "```", ""]
    for w in (1,2):
        points=[c for c in comparisons if c['kind']=='batch' and c['workers']==w]
        transitions=[(a['case'],b['case']) for a,b in zip(points,points[1:]) if (a['ratio']>1)!=(b['ratio']>1)]
        lines.append(f"- {w} workers: observed checked-verifier crossover intervals: {transitions or 'none in measured counts'}. No interpolation outside measured points.")
    lines += ["", "Production adoption and phone acceptability remain undecided. A verifier win alone does not establish a better protocol: weigh the measured proving regression, memory and complete-batch bandwidth against it. SnarkPack remains the production baseline.", "", "## Verification record", "", "```json", json.dumps(tests,indent=2), "```", "", "Formal specifications and evidence were not added; they belong in shieldd-security.", ""]
    (output / "report.md").write_text("\n".join(lines))
    plots(cells, output)
    print(f"Report: {output / 'report.md'}", flush=True)


def plots(cells, output):
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    plt.rcParams.update({"font.size":9, "figure.dpi":150})
    for kind, title in (("warm","Warm complete proving"),("first","Fresh-process first proof"),("individual","Individual checked verification")):
        fig, axes=plt.subplots(1,2,figsize=(13,4),layout="constrained")
        for ax,w in zip(axes,(1,2)):
            for backend in ("groth16","zkpari"):
                rows=[c for c in cells if c['kind']==kind and c['workers']==w and c['backend']==backend]
                ax.plot([c['case'].replace('transfer_','') for c in rows],[c['ns']['median']/1e6 for c in rows],marker='o',label=backend)
            ax.set(title=f"{w} workers",ylabel="Median ms (log)",yscale="log")
            ax.tick_params(axis='x',rotation=65); ax.legend(); ax.grid(alpha=.2)
        fig.suptitle(title);fig.savefig(output / f"{kind}.svg");plt.close(fig)
    fig, axes=plt.subplots(2,2,figsize=(12,8),layout="constrained")
    for column,w in enumerate((1,2)):
        for backend in ("groth16","zkpari"):
            rows=sorted([c for c in cells if c['kind']=='batch' and c['workers']==w and c['backend']==backend],key=lambda c:c['case'])
            axes[0,column].plot([c['case'] for c in rows],[c['ns']['median']/1e6 for c in rows],marker='.',label=backend+' checked verify')
            axes[1,column].plot([c['case'] for c in rows],[c['rust_lifetime_peak_rss_bytes']/1024**2 for c in rows],marker='.',label=backend+' lifetime RSS')
            if backend=='groth16':
                for metric,label in (("aggregation_ns","SnarkPack aggregation"),("combined_ns","SnarkPack combined")):
                    axes[0,column].plot([c['case'] for c in rows],[c[metric]['median']/1e6 for c in rows],label=label)
        axes[0,column].set(title=f"{w} workers",ylabel="Median ms",yscale='log')
        axes[1,column].set(ylabel="Native lifetime peak RSS, MiB")
        for ax in axes[:,column]:ax.set(xscale='log',xlabel='Real proof count');ax.legend();ax.grid(alpha=.2)
    fig.savefig(output/'batch-scaling.svg');plt.close(fig)
    fig,axes=plt.subplots(1,2,figsize=(11,4),layout='constrained')
    for backend in ("groth16","zkpari"):
        rows=sorted([c for c in cells if c['kind']=='batch' and c['workers']==2 and c['backend']==backend],key=lambda c:c['case'])
        axes[0].plot([c['case'] for c in rows],[c['aggregate_bytes'] or c['proof_bytes'] for c in rows],marker='.',label=backend)
        axes[1].plot([c['case'] for c in rows],[c['padded_count']/c['case'] for c in rows],marker='.',label=backend)
    axes[0].set(ylabel='Proof bytes (excluding statements)',yscale='log');axes[1].set(ylabel='Padded / real count')
    for ax in axes:ax.set(xscale='log',xlabel='Real proof count');ax.legend();ax.grid(alpha=.2)
    fig.savefig(output/'bytes-padding.svg');plt.close(fig)
