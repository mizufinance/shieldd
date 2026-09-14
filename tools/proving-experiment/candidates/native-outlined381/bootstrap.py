"""Create the isolated Commonware candidate from the exact retained C source."""
from pathlib import Path
import hashlib,json,shutil,subprocess
HERE=Path(__file__).resolve().parent
BASE=HERE.parents[1]/'cache/commonware-prepared-key381'
DEST=HERE.parents[1]/'cache/commonware-outlined381'

def main():
    identity=json.loads((HERE/'base-identity.json').read_text())
    for item in identity['files']:
        assert hashlib.sha256((BASE/item['path']).read_bytes()).hexdigest()==item['sha256'],item['path']
    if DEST.exists():
        subprocess.run(['git','apply','--reverse','--check',str(HERE/'constant-outline.patch')],cwd=DEST,check=True)
        return
    shutil.copytree(BASE,DEST,ignore=shutil.ignore_patterns('.git','target'))
    subprocess.run(['git','apply','--check',str(HERE/'constant-outline.patch')],cwd=DEST,check=True)
    subprocess.run(['git','apply',str(HERE/'constant-outline.patch')],cwd=DEST,check=True)

if __name__=='__main__':main()
