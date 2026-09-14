"""Create separate comparator Groth16 subset keys with all six generation checks."""
from pathlib import Path
import hashlib,json,subprocess
from selected_gate import fixtures
from api_gate import CACHE,require,digest

def main():
    binary=CACHE/"a-comparator377-source/bin/gnarkctl"
    out=CACHE/"a-comparator377-keys"
    require(not out.exists(),"preserve existing keys")
    source=json.loads((CACHE/"a-comparator377-source/identity.json").read_text())
    for path,h in source["files"].items(): require(digest(Path(path).read_bytes())==h,"source changed")
    inputs=fixtures("B")
    command=[str(binary),"setup","--circuit","transfer","--out-dir",str(out)]
    for f in inputs:
        require(digest(f.path.read_bytes())==f.sha256,"witness changed")
        command += ["--proof-case",f.scenario,"--witness",str(f.path)]
    subprocess.run(command,check=True)
    metadata=json.loads((out/"circuit_metadata.json").read_text())
    provenance=json.loads((out/"setup_provenance.json").read_text())
    tests=provenance["generation_self_tests"]
    require(len(tests)==6 and all(t["proved_and_verified_in_process"] for t in tests),"generation proof checks missing")
    expected={f.scenario:f.sha256 for f in inputs}
    require({t["proof_case"]:t["witness_sha256_hex"] for t in tests}==expected,"generation witness identity mismatch")
    record={"schema":"shieldd.comparator377.groth16_setup.v1","binary_sha256":digest(binary.read_bytes()),"source_identity_sha256":digest((CACHE/"a-comparator377-source/identity.json").read_bytes()),"command":command,"files":{p.name:digest(p.read_bytes()) for p in sorted(out.iterdir()) if p.is_file()},"six_proved_and_verified":True,"metadata":metadata}
    (out/"complete.json").write_text(json.dumps(record,indent=2)+"\n")

if __name__=="__main__":main()
