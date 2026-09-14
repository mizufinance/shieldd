"""Install only pinned host tools for the authorized physical Android benchmark."""
from dataclasses import dataclass,asdict
from pathlib import Path
import hashlib,json,os,shutil,subprocess,urllib.request,zipfile
ROOT=Path(__file__).resolve().parents[3]
CACHE=ROOT/'tools/proving-experiment/cache/phone-toolchain'
CLI='15859902'
CLI_SHA='835b62a26162b229b441d1f6d4680383815a270809eb33522c0d480fa5002c4e'
NDK='30.0.16248370'
JAVA=Path('/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home')
@dataclass(frozen=True)
class Toolchain:
    schema:str
    command_line_build:str
    command_line_sha256:str
    ndk_revision:str
    sdk_path:str
    java_home:str
    java_version:str
    rust_toolchains:list[str]
    rust_target:str
    sources:list[str]

def main():
    assert JAVA.joinpath('bin/java').is_file()
    CACHE.mkdir(parents=True,exist_ok=True)
    archive=CACHE/f'commandlinetools-mac_arm64-{CLI}.zip'
    url=f'https://dl.google.com/android/repository/commandlinetools-mac_arm64-{CLI}_latest.zip'
    if not archive.exists():
        temporary=archive.with_suffix('.part')
        with urllib.request.urlopen(url,timeout=60)as response,temporary.open('wb')as out:
            shutil.copyfileobj(response,out)
        assert hashlib.sha256(temporary.read_bytes()).hexdigest()==CLI_SHA,'SDK archive digest mismatch'
        temporary.rename(archive)
    assert hashlib.sha256(archive.read_bytes()).hexdigest()==CLI_SHA
    sdk=CACHE/'sdk';cli=sdk/'cmdline-tools'/CLI
    if not cli.exists():
        extracted=CACHE/'commandline-extract';extracted.mkdir(exist_ok=True)
        with zipfile.ZipFile(archive)as z:
            assert all(not Path(n).is_absolute() and '..'not in Path(n).parts for n in z.namelist())
        subprocess.run(['/usr/bin/unzip','-q',str(archive),'-d',str(extracted)],check=True)
        cli.parent.mkdir(parents=True,exist_ok=True);shutil.move(extracted/'cmdline-tools',cli);extracted.rmdir()
    env=os.environ.copy();env['JAVA_HOME']=str(JAVA);env['JAVA_TOOL_OPTIONS']='-XX:ActiveProcessorCount=2'
    subprocess.run([str(cli/'bin/sdkmanager'),f'--sdk_root={sdk}',f'ndk;{NDK}'],input='y\n',text=True,env=env,check=True)
    properties=(sdk/'ndk'/NDK/'source.properties').read_text()
    assert f'Pkg.Revision = {NDK}'in properties,'unexpected NDK revision'
    for version in ['1.89.0','1.95.0']:
        subprocess.run(['rustup','target','add','--toolchain',version,'aarch64-linux-android'],check=True)
    java=subprocess.run([str(JAVA/'bin/java'),'-version'],capture_output=True,text=True,check=True).stderr
    result=Toolchain('shieldd.android_toolchain.v1',CLI,CLI_SHA,NDK,str(sdk),str(JAVA.resolve()),java,['1.89.0','1.95.0'],'aarch64-linux-android',['https://developer.android.com/studio','https://developer.android.com/ndk/downloads','https://developer.android.com/tools/sdkmanager'])
    (CACHE/'complete.json').write_text(json.dumps(asdict(result),indent=2)+'\n')
    print(json.dumps(asdict(result)),flush=True)
if __name__=='__main__':main()
