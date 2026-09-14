"""Export and solve the real comparator377 Transfer relation without keys."""
from dataclasses import asdict, dataclass
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tarfile

HERE=Path(__file__).resolve().parent
CACHE=HERE/"cache"
SOURCE=HERE/"candidates/comparator377"


@dataclass
class Request:
    op: str
    scenario: str=""
    path: str=""


@dataclass
class Metadata:
    schema: str
    modulus: str
    constraints: int
    public: int
    secret: int
    internal: int
    circuit_sha256: str


@dataclass
class Response:
    peak_rss_bytes: int
    error: str=""
    metadata: dict|None=None
    scenario: str=""
    witness_sha256: str=""
    assignment: str=""
    statement: str=""
    proof: str=""
    compile_ns: int=0
    key_load_ns: int=0
    witness_ns: int=0
    solve_ns: int=0
    prove_ns: int=0
    encode_ns: int=0


def digest(path):return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    assert len(sys.argv)==2,"usage: comparator377_compile.py NEW_CACHE_DIRECTORY"
    out=Path(sys.argv[1]).resolve()
    assert out.is_relative_to(CACHE) and not out.exists()
    facts=json.loads((CACHE/"logical-facts.json").read_text())["facts"]
    assert [f["scenario"] for f in facts]==["transfer","transfer_unregulated","transfer_flagged","transfer_accumulating","transfer_over_limit_disclosure","transfer_accumulator_continuation"]
    paths=[p for p in SOURCE.rglob("*") if p.is_file()]
    paths += [Path(__file__).resolve(),HERE/"guard.py",CACHE/"logical-facts.json",HERE/"examples/comparator_compile.rs",HERE/"src/bridge.rs",HERE/"src/lowering.rs",HERE/"Cargo.toml",HERE/"Cargo.lock"]
    identities={str(p):digest(p) for p in sorted(paths)}
    out.mkdir();shutil.copy2(CACHE/"comparator377-proofspike",out/"worker")
    with tarfile.open(out/"source.tar.gz","x:gz") as archive:
        for path in sorted(paths):archive.add(path,arcname=str(path.relative_to(HERE)))
    identity={"schema":"shieldd.comparator377_sources.v1","files":identities,"worker":digest(out/"worker"),"source_archive":digest(out/"source.tar.gz")}
    (out/"identity.json").write_text(json.dumps(identity,indent=2)+"\n")
    with (out/"worker.log").open("x") as log:
        process=subprocess.Popen([str(out/"worker"),str(out)],stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=log,text=True)
        def call(request):
            process.stdin.write(json.dumps(asdict(request))+"\n");process.stdin.flush()
            line=process.stdout.readline();assert line,"worker closed"
            return Response(**json.loads(line))
        try:
            ready=call(Request("init"));assert not ready.error and ready.metadata
            metadata=Metadata(**ready.metadata)
            assert metadata.schema=="shieldd.proof_spike.assignment.v1" and metadata.public==2
            (out/"initialization.json").write_text(json.dumps(asdict(ready),indent=2)+"\n")
            (out/"metadata.json").write_text(json.dumps(asdict(metadata),indent=2)+"\n")
            exported=call(Request("export",path=str(out/"transfer.r1cs")));assert not exported.error
            assert digest(out/"transfer.r1cs")==metadata.circuit_sha256
            disclosure=HERE.parent/"zkpari-spike/cache/99228210a891ffa23aeb/over_limit_disclosure.bin"
            for fact in facts:
                solved=call(Request("solve",fact["scenario"],str(disclosure) if fact["scenario"]=="transfer_over_limit_disclosure" else ""))
                assert not solved.error and solved.assignment and not solved.proof
                assert solved.witness_sha256==fact["witness_sha256"]
                assert solved.statement==bytes.fromhex(fact["claimed_statement"])[::-1].hex()
                (out/f"{fact['scenario']}.json").write_text(json.dumps(asdict(solved),indent=2)+"\n")
                print(f"{fact['scenario']}: real Transfer assignment solved",flush=True)
            invalid=call(Request("solve","transfer_accumulator_over_limit"))
            assert invalid.error and not invalid.assignment and not invalid.proof
            (out/"invalid.json").write_text(json.dumps(asdict(invalid),indent=2)+"\n")
        finally:
            process.stdin.close()
            if process.poll() is None:
                process.wait(timeout=30)
        assert process.returncode==0
    assert identities=={str(p):digest(p) for p in sorted(paths)},"source changed"
    (out/"solved-complete.json").write_text(json.dumps({"schema":"shieldd.comparator377_solved.v1","files":{p.name:digest(p) for p in sorted(out.iterdir()) if p.is_file()}},indent=2)+"\n")


if __name__=="__main__":main()
