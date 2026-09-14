"""Build retained CPU candidates for the observed API 33 ARM64 phone."""
from pathlib import Path
import hashlib
import json
import os
import shutil
import subprocess
import sys

HERE = Path(__file__).resolve().parent
SPIKE = HERE.parent
CACHE = SPIKE / 'cache'
OUT = CACHE / 'phone-build-api33'
TARGET = SPIKE / 'native/target'
NDK = CACHE / 'phone-toolchain/sdk/ndk/30.0.16248370'
LLVM = NDK / 'toolchains/llvm/prebuilt/darwin-x86_64/bin'

def digest(path):
    with path.open('rb') as source:
        return hashlib.file_digest(source, 'sha256').hexdigest()

def main():
    if len(sys.argv) != 2 or sys.argv[1] not in ('A', 'B', 'C', 'private', 'supervisor', 'supervisor-v2', 'clockprobe'):
        raise SystemExit('build.py A|B|C|private|supervisor|clockprobe (inside guard.py)')
    name = sys.argv[1]
    OUT.mkdir(exist_ok=True)
    receipt = OUT / f'{name}.json'
    if receipt.exists():
        old = json.loads(receipt.read_text())
        if digest(OUT / name) != old['binary_sha256']:
            raise RuntimeError('completed binary changed')
        print(f'{name}: completed binary retained')
        return
    env = os.environ.copy()
    env.update(CARGO_BUILD_JOBS='2', RAYON_NUM_THREADS='2', GOMAXPROCS='2',
               GOTOOLCHAIN='go1.25.7', GOOS='android', GOARCH='arm64', CGO_ENABLED='1',
               CC=str(LLVM / 'aarch64-linux-android33-clang'),
               AR=str(LLVM / 'llvm-ar'),
               CARGO_TARGET_AARCH64_LINUX_ANDROID_LINKER=str(LLVM / 'aarch64-linux-android33-clang'),
               CARGO_TARGET_DIR=str(TARGET))
    # Desktop-specific CPU flags must not leak into portable Android artifacts.
    for key in ('RUSTFLAGS', 'CFLAGS', 'CXXFLAGS'):
        env.pop(key, None)
    if name in ('A', 'private', 'supervisor', 'supervisor-v2', 'clockprobe'):
        directory = {'A': CACHE/'a-comparator377-source/worker',
                     'private': SPIKE/'candidates/owned-admission377/go',
                     'supervisor': HERE, 'supervisor-v2': HERE, 'clockprobe': HERE}[name]
        command = ['go', 'build', '-p', '2', '-trimpath', '-o', str(OUT/name),
                   './cmd/provingexperiment' if name == 'A' else './clockprobe' if name == 'clockprobe' else '.']
        lock = directory/'go.sum'
    else:
        directory = SPIKE/'candidates'/('owned-comparator377' if name == 'B' else 'native-prepared-key381')
        toolchain = '1.89.0' if name == 'B' else '1.95.0'
        command = ['cargo', f'+{toolchain}', 'build', '--release', '--locked',
                   '--target', 'aarch64-linux-android', '--manifest-path', str(directory/'Cargo.toml')]
        if name == 'C':
            command += ['--example', 'prepared_msm_full']
        lock = directory/'Cargo.lock'
    lock_hash = digest(lock) if lock.exists() else None
    subprocess.run(command, cwd=directory, env=env, check=True)
    if name in ('B', 'C'):
        binary = TARGET/'aarch64-linux-android/release'/('shieldd-owned-comparator377' if name == 'B' else 'examples/prepared_msm_full')
        shutil.copy2(binary, OUT/name)
    if lock_hash != (digest(lock) if lock.exists() else None):
        raise RuntimeError('dependency lock changed')
    inspected = subprocess.check_output([str(LLVM/'llvm-readelf'), '-h', '-d', str(OUT/name)], text=True)
    (OUT/f'{name}.elf.txt').write_text(inspected)
    receipt.write_text(json.dumps({'schema': 'shieldd.phone_build.v1', 'candidate': name,
        'api': 33, 'abi': 'arm64-v8a', 'ndk': '30.0.16248370', 'command': command,
        'cwd': str(directory), 'lock_sha256': lock_hash, 'binary_sha256': digest(OUT/name),
        'source_revision': subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=SPIKE, text=True).strip(),
        'elf_sha256': digest(OUT/f'{name}.elf.txt')}, indent=2)+'\n')

if __name__ == '__main__':
    main()
