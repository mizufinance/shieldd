"""Fetch the recorded Commonware source and apply only the experiment's recorded patch."""
from pathlib import Path
import json
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent


def git(repo, *args):
    return subprocess.check_output(["git", "-C", str(repo), *args], text=True).strip()


def main():
    source = json.loads((ROOT / "source-pins.json").read_text())["commonware"]
    repo = ROOT / "cache/commonware"
    patch = HERE / "patches/commonware-polynomial-migration.patch"
    if not (repo / ".git").exists():
        repo.mkdir(parents=True, exist_ok=True)
        subprocess.run(["git", "init", str(repo)], check=True)
    try:
        head = git(repo, "rev-parse", "HEAD")
    except subprocess.CalledProcessError:
        git(repo, "fetch", "--depth=1", source["url"], source["revision"])
        git(repo, "checkout", "--detach", "FETCH_HEAD")
        head = git(repo, "rev-parse", "HEAD")
    if head != source["revision"]:
        raise RuntimeError("Commonware checkout revision differs from the pin; preserve and inspect it")
    current = subprocess.check_output(["git", "-C", str(repo), "diff", "--binary"])
    if current and current != patch.read_bytes():
        raise RuntimeError("Commonware checkout has changes beyond the recorded patch")
    if not current:
        git(repo, "apply", "--check", str(patch))
        git(repo, "apply", str(patch))
    if subprocess.check_output(["git", "-C", str(repo), "diff", "--binary"]) != patch.read_bytes():
        raise RuntimeError("Commonware patch readback mismatch")
    print("Commonware revision and local polynomial patch verified")


if __name__ == "__main__":
    main()
