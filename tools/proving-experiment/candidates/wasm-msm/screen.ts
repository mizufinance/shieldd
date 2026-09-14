import { readFileSync, writeFileSync, appendFileSync, mkdirSync, existsSync } from 'node:fs';
import { createHash } from 'node:crypto';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import { spawn } from 'node:child_process';
import assert from 'node:assert/strict';

type FileIdentity={path:string;sha256:string};
type Operation={name:string;count:number;bases:FileIdentity;scalars:FileIdentity;expected:FileIdentity};
type Manifest={schema:string;workers:number;key:FileIdentity;proof:FileIdentity;solved_witness:FileIdentity;operations:Operation[]};
type Header={schema:string;op:string;name?:string;payload_bytes:number;error?:string;workers:number;msm_ns?:number};
type Sample={method:string;block:number;warmup:boolean;wall_ns:string;output_sha256:string;exact:boolean;process_memory:NodeJS.MemoryUsage;worker?:Header};
const schema='shieldd.proving_experiment.gnark_msm_worker.v1';
const sha=(b:Buffer)=>createHash('sha256').update(b).digest('hex');
function checked(id:FileIdentity){const b=readFileSync(id.path);assert.equal(sha(b),id.sha256,id.path);return b;}

class GoWorker {
 child; iterator; buffered=Buffer.alloc(0); exited:Promise<number|null>;
 constructor(binary:string,operands:string){
  this.child=spawn(binary,[operands],{stdio:['pipe','pipe','inherit']});
  this.iterator=this.child.stdout[Symbol.asyncIterator]();
  this.exited=new Promise((resolve,reject)=>{this.child.once('exit',resolve);this.child.once('error',reject);});
 }
 async exact(n:number){while(this.buffered.length<n){const next=await this.iterator.next();assert(!next.done,'worker EOF');this.buffered=Buffer.concat([this.buffered,next.value]);}const b=this.buffered.subarray(0,n);this.buffered=this.buffered.subarray(n);return b;}
 async read(){const length=(await this.exact(4)).readUInt32BE();assert(length>0&&length<=4096);const header:Header=JSON.parse((await this.exact(length)).toString());assert.equal(header.schema,schema);assert(header.payload_bytes>=0&&header.payload_bytes<=97);assert(!header.error,header.error);return {header,bytes:await this.exact(header.payload_bytes)};}
 async call(name:string,payload:Buffer){const header=Buffer.from(JSON.stringify({schema,op:'msm',name,payload_bytes:payload.length}));const prefix=Buffer.alloc(4);prefix.writeUInt32BE(header.length);for(const b of [prefix,header,payload])await new Promise<void>((resolve,reject)=>this.child.stdin.write(b,err=>err?reject(err):resolve()));return this.read();}
 async close(){this.child.stdin.end();assert.equal(await this.exited,0,'Go worker shutdown');}
}

const [source,operands,binary,output]=process.argv.slice(2).map(p=>resolve(p));
assert(source&&operands&&binary&&output&&!existsSync(output));
const identityPath=resolve(source,'../wasm-msm377-source/identity.json');
const identityBytes=readFileSync(identityPath);
const identity:{files:FileIdentity[]}=JSON.parse(identityBytes.toString());
for(const id of identity.files)checked(id);
const gate=JSON.parse(readFileSync(resolve(source,'../wasm-msm377-safe-gate-shared.json'),'utf8'));
assert.equal(gate.gates.length,6);assert(gate.gates.every((v:{exact:boolean})=>v.exact));
assert.equal(sha(readFileSync(binary)),'aa1e3eb79d7f4454f88be9c9171015a0c8be6f65a7c8d2cb2a8a6a0792a6148f');
assert.equal(sha(readFileSync(operands+'/manifest.json')),'017c5966ab8992a4832e6da3503120b707d6bac67ac8d95c7ce5061e5f59c3fc');
const manifest:Manifest=JSON.parse(readFileSync(operands+'/manifest.json','utf8'));
assert.equal(manifest.schema,'shieldd.proving_experiment.msm_operands.v1');assert.equal(manifest.workers,2);
for(const id of [manifest.key,manifest.proof,manifest.solved_witness])checked(id);
for(const op of manifest.operations)for(const id of [op.bases,op.scalars,op.expected])checked(id);
const op=manifest.operations.find(v=>v.name==='opening_r');assert(op&&op.count===524290);
const bases=checked(op.bases),scalars=checked(op.scalars),expected=checked(op.expected);
assert.equal(bases.length,op.count*97);assert.equal(scalars.length,op.count*32);assert.equal(expected.length,97);
mkdirSync(output);const log=output+'/samples.jsonl';
const record=(r:unknown)=>appendFileSync(log,JSON.stringify(r)+'\n');
record({stage:'identity',source_identity_sha256:sha(identityBytes),source_identity:identity});
const begin=process.hrtime.bigint();const go=new GoWorker(binary,operands);
let stopThreads:()=>Promise<void>=async()=>{};
try {
 const ready=await go.read();assert.equal(ready.header.op,'ready');assert.equal(ready.header.workers,2);
 record({stage:'checked_base_loading',wall_ns:(process.hrtime.bigint()-begin).toString(),header:ready.header});
 const init=process.hrtime.bigint();
 const module=await import(pathToFileURL(source+'/src/index.ts').href);stopThreads=module.stopThreads;
 await module.startThreads(2);const curve=await module.BLS12377();
 const compiled=process.hrtime.bigint();
 const count=op.count;
 const points=await curve.Parallel.getPointer(count*curve.Affine.size);
 const pointInput=await curve.Parallel.getPointer(count*96);
 const scalarPtr=await curve.Parallel.getScalarPointer(count*curve.Scalar.sizeField);
 const scalarInput=await curve.Parallel.getScalarPointer(count*32);
 const pointBytes=curve.Field.memoryBytes;
 for(let i=0;i<count;i++){
  const tag=bases[i*97];assert(tag===0||tag===1);
  for(let j=0;j<48;j++){pointBytes[pointInput+i*96+j]=bases[i*97+48-j];pointBytes[pointInput+i*96+48+j]=bases[i*97+96-j];}
 }
 await curve.Parallel.pointsFromBytes(points,pointInput,count);
 for(let i=0;i<count;i++)pointBytes[points+i*curve.Affine.size+2*curve.Field.sizeField]=bases[i*97];
 const scalarBytes=new Uint8Array(curve.Scalar.wasmArtifacts.wasm.memory.buffer);
 const scalarOrder=Buffer.from(curve.params.order.toString(16).padStart(64,'0'),'hex');
 record({stage:'wasm_preparation',compilation_and_workers_ns:(compiled-init).toString(),points_conversion_ns:(process.hrtime.bigint()-compiled).toString(),field_reserved_bytes:curve.Field.wasmArtifacts.memory.buffer.byteLength,scalar_reserved_bytes:curve.Scalar.wasmArtifacts.wasm.memory.buffer.byteLength,points:count,process_memory:process.memoryUsage()});
 function checkedPoint(bytes:Buffer){
  assert.equal(bytes.length,97);assert(bytes[0]===0||bytes[0]===1);
  if(bytes[0]===0){assert(bytes.subarray(1).every(b=>b===0));return;}
  const p={x:BigInt('0x'+bytes.subarray(1,49).toString('hex')),y:BigInt('0x'+bytes.subarray(49).toString('hex')),isZero:false};
  assert(p.x<curve.params.modulus&&p.y<curve.params.modulus);
  const projective=curve.Bigint.Projective.fromAffine(p);
  assert(curve.Bigint.Projective.isOnCurve(projective)&&curve.Bigint.Projective.isInSubgroup(projective));
 }
 const samples:Sample[]=[];
 for(let block=-1;block<8;block++){
  const order=block%2===0?['gnark','wasm']:['wasm','gnark'];
  for(const method of order){
   const start=process.hrtime.bigint();let result:Buffer,worker:Header|undefined;
   if(method==='gnark'){const response=await go.call(op.name,scalars);result=response.bytes;worker=response.header;}
   else {
    for(let i=0;i<count;i++){
     assert(Buffer.compare(scalars.subarray(i*32,i*32+32),scalarOrder)<0,'noncanonical scalar');
     for(let j=0;j<32;j++)scalarBytes[scalarInput+i*32+j]=scalars[i*32+31-j];
    }
    await curve.Parallel.scalarsFromBytes(scalarPtr,scalarInput,count);
    const {result:ptr}=await curve.Parallel.msm(scalarPtr,points,count);
    const p=curve.Bigint.Projective.toAffine(curve.Projective.toBigint(ptr));
    result=Buffer.alloc(97);
    if(!p.isZero){result[0]=1;Buffer.from(p.x.toString(16).padStart(96,'0'),'hex').copy(result,1);Buffer.from(p.y.toString(16).padStart(96,'0'),'hex').copy(result,49);}
   }
   checkedPoint(result);const elapsed=process.hrtime.bigint()-start;
   assert(result.equals(expected),'real opening differs from verified Transfer operand');
   const sample:Sample={method,block,warmup:block<3,wall_ns:elapsed.toString(),output_sha256:sha(result),exact:true,process_memory:process.memoryUsage(),worker};
   samples.push(sample);record({stage:block<0?'gate':'measurement',...sample});
  }
 }
 const result={schema:'shieldd.wasm_msm377_screen.v1',runtime:process.version,workers:2,operation:op.name,points:count,manifest_sha256:sha(readFileSync(operands+'/manifest.json')),script_sha256:sha(readFileSync(new URL(import.meta.url))),samples,limits:'One real opening_r from an earlier verified selected-DH Transfer proof, not the latest comparator/subset relation. Same immutable canonical byte inputs and checked outputs for both workers. Native IPC/checked scalar decode and Wasm scalar validation/endian conversion/copy/import/safe MSM/output normalization+encoding are inside clocks. Full base validation is performed once by the hash-pinned gnark helper before Wasm import and recorded separately. No complete proof, phone or protocol claim.'};
 for(const id of identity.files)checked(id);
 writeFileSync(output+'/results.json',JSON.stringify(result,null,2)+'\n',{flag:'wx'});
} finally {await stopThreads();await go.close();}
