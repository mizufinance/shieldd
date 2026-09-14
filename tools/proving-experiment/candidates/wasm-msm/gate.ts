import { readFileSync, writeFileSync, existsSync } from 'node:fs';
import { createHash } from 'node:crypto';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import assert from 'node:assert/strict';

type EncodedPoint = { x: string; y: string; isZero: boolean };
type Case = { name: string; points: EncodedPoint[]; scalars: string[]; expected: EncodedPoint };
type Fixtures = { schema: string; base_modulus: string; scalar_modulus: string; cases: Case[] };
type Gate = { name: string; exact: boolean; expected: EncodedPoint; elapsed_ns: string };

const [source, fixturePath, output] = process.argv.slice(2).map(p => resolve(p));
assert(source && fixturePath && output && !existsSync(output));
const fixtures: Fixtures = JSON.parse(readFileSync(fixturePath, 'utf8'));
assert.equal(fixtures.schema, 'shieldd.wasm_msm377_vectors.v1');
const start = process.hrtime.bigint();
const { BLS12377, startThreads, stopThreads } = await import(pathToFileURL(source+'/src/index.ts').href);
let gates: Gate[] = [];
try {
 await startThreads(2);
 const curve = await BLS12377();
 const ready = process.hrtime.bigint();
 assert.equal(curve.params.modulus.toString(), fixtures.base_modulus);
 assert.equal(curve.params.order.toString(), fixtures.scalar_modulus);
 for (const fixture of fixtures.cases) {
  assert.equal(fixture.points.length, fixture.scalars.length);
  const points = fixture.points.map(p => ({ x: BigInt(p.x), y: BigInt(p.y), isZero: p.isZero }));
  const scalars = fixture.scalars.map(BigInt);
  for (const p of points) {
   assert(p.x>=0n && p.x<curve.params.modulus && p.y>=0n && p.y<curve.params.modulus);
   if (p.isZero) { assert.equal(p.x,0n); assert.equal(p.y,0n); }
   else {
    const projective = curve.Bigint.Projective.fromAffine(p);
    assert(curve.Bigint.Projective.isOnCurve(projective));
    assert(curve.Bigint.Projective.isInSubgroup(projective));
   }
  }
  for (const s of scalars) assert(s>=0n && s<curve.params.order);
  // Reserve shared inputs on every worker before any worker allocates MSM scratch.
  const pointPtr=await curve.Parallel.getPointer(points.length*curve.Affine.size);
  const scalarPtr=await curve.Parallel.getScalarPointer(scalars.length*curve.Scalar.sizeField);
  curve.Affine.writeBigints(pointPtr,points);
  for (let i=0;i<scalars.length;i++) curve.Scalar.writeBigint(scalarPtr+i*curve.Scalar.sizeField,scalars[i]);
  for (let i=0;i<scalars.length;i++) assert.equal(curve.Scalar.readBigint(scalarPtr+i*curve.Scalar.sizeField),scalars[i]);
  const clock=process.hrtime.bigint();
  const { result }=await curve.Parallel.msm(scalarPtr,pointPtr,points.length);
  const elapsed=process.hrtime.bigint()-clock;
  const actual=curve.Bigint.Projective.toAffine(curve.Projective.toBigint(result));
  assert.equal(actual.isZero,fixture.expected.isZero,fixture.name);
  if (!actual.isZero) {
   assert.equal(actual.x.toString(),fixture.expected.x,fixture.name);
   assert.equal(actual.y.toString(),fixture.expected.y,fixture.name);
  }
  gates.push({name:fixture.name,exact:true,expected:fixture.expected,elapsed_ns:elapsed.toString()});
 }
 const report={schema:'shieldd.wasm_msm377_gate.v1',runtime:process.version,workers:2,initialization_ns:(ready-start).toString(),field_reserved_bytes:curve.Field.wasmArtifacts.memory.buffer.byteLength,scalar_reserved_bytes:curve.Scalar.wasmArtifacts.wasm.memory.buffer.byteLength,process_memory:process.memoryUsage(),fixture_sha256:createHash('sha256').update(readFileSync(fixturePath)).digest('hex'),gates,limits:'Small independent gnark G1 oracle cases, safe addition path, canonical field/scalar/subgroup admission. No random fast or unsafe MSM path; no Transfer/MSM performance or phone claim. Initialization includes module import, dynamic Wasm compilation and worker startup.'};
 assert.equal(gates.length,6);
 writeFileSync(output,JSON.stringify(report,null,2)+'\n',{flag:'wx'});
 console.log(JSON.stringify(report));
} finally { await stopThreads(); }
