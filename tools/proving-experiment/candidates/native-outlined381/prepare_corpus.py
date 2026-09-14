"""Bind the six admitted, randomized Transfer proofs into a verifier-screen pool."""
from pathlib import Path
import hashlib,json,sys

def main():
    gate=Path(sys.argv[1]);output=Path(sys.argv[2]);assert not output.exists(),'preserve completed corpus'
    manifest=json.loads((gate/'complete.json').read_text());assert len(manifest['gate'])==6
    entries=[]
    for item in manifest['gate']:
        proof=(gate/'proofs'/(item['scenario']+'.bin')).read_bytes()
        assert hashlib.sha256(proof).hexdigest()==item['proof_sha256'] and item['verified']
        entries.append({'scenario':item['scenario'],'proof':proof.hex(),'statement':item['statement']})
    output.write_text(json.dumps({'entries':entries},indent=2)+'\n')

if __name__=='__main__':main()
