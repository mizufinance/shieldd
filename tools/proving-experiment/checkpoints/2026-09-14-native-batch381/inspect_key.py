"""Read public-column counts from the hash-pinned, separately checked native C key."""
from pathlib import Path
import hashlib,json,sys
key=Path(sys.argv[1]);data=key.read_bytes()
assert hashlib.sha256(data).hexdigest()=='ae426ec83c319aa82ea35499534f022f554726e15b5ae5ae2bedd18a67771049'
offset=64

def u32():
    global offset
    value=int.from_bytes(data[offset:offset+4],'big');offset+=4;return value

def size():
    global offset
    value=0;shift=0
    while True:
        byte=data[offset];offset+=1;value|=(byte&127)<<shift;shift+=7
        if not byte&128:return value

domain=u32();public_inputs=u32();blocks=[u32() for _ in range(size())];columns=[];rows=set()
for _ in range(size()):
    counts=[]
    for side in range(2):
        count=size();counts.append(count)
        for _ in range(count):
            row=u32();assert row<domain;rows.add(row);offset+=32
    columns.append(counts)
assert len(data)-offset==385
print(json.dumps({'domain':domain,'public_inputs':public_inputs,'blocks':blocks,'columns_A_B':columns,'unique_touched_rows':len(rows),'remaining_bytes':len(data)-offset},indent=2))
