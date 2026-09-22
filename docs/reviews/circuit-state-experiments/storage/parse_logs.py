import json
import pathlib
import re

root=pathlib.Path(__file__).parent
names=['retention-v3','lifecycle-100-v5','lifecycle-1000-v5','lifecycle-10000-v5','lifecycle-10000-unbounded','pack_only-100','pack_only-1000','pack_only-10000']
out={}
for name in names:
    lines=(root/(name+'.log')).read_text().splitlines()
    phases=[]
    for line in lines:
        if line.startswith('phase=') or line.startswith('pack_bytes='):
            fields={}
            for key,value in re.findall(r'([a-zA-Z_0-9]+)=([^ ]+)',line):
                try: value=int(value)
                except ValueError: pass
                fields[key]=value
            phases.append(fields)
    rss=re.search(r'(\d+)\s+maximum resident set size','\n'.join(lines))
    out[name]={'measurements':phases,'max_rss_bytes':int(rss.group(1)) if rss else None}
print(json.dumps(out,indent=2))
