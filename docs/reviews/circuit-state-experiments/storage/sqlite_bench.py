import json
import os
import sqlite3
import tempfile
import time

N = 20000
BATCH = int(os.environ.get('BATCH', '500'))

def one(variant):
    with tempfile.TemporaryDirectory(prefix='shieldd-sqlite-') as d:
        path = os.path.join(d, 'wallet.db')
        db = sqlite3.connect(path)
        db.execute('PRAGMA journal_mode=WAL')
        db.execute('PRAGMA synchronous=FULL')
        db.execute('PRAGMA cache_size=-4096')
        if variant == 'rowid_index':
            db.execute('CREATE TABLE h (position INTEGER NOT NULL, height INTEGER NOT NULL, hash BLOB NOT NULL)')
            db.execute('CREATE UNIQUE INDEX h_pk ON h(position,height)')
        elif variant == 'rowid_pk':
            db.execute('CREATE TABLE h (position INTEGER NOT NULL, height INTEGER NOT NULL, hash BLOB NOT NULL, PRIMARY KEY(position,height))')
        else:
            db.execute('CREATE TABLE h (position INTEGER NOT NULL, height INTEGER NOT NULL, hash BLOB NOT NULL, PRIMARY KEY(position,height)) WITHOUT ROWID')
        db.commit()
        rows = [(i // 16, i % 16, (i.to_bytes(4,'little') * 8)) for i in range(N)]
        t = time.perf_counter()
        for i in range(0,N,BATCH):
            db.executemany('INSERT INTO h VALUES (?,?,?)',rows[i:i+BATCH]);db.commit()
        insert_s = time.perf_counter()-t
        db.close()
        before = os.path.getsize(path)
        db = sqlite3.connect(path)
        db.execute('PRAGMA cache_size=-4096')
        t=time.perf_counter()
        for i in range(0,N,17):
            p,h,_=rows[i]
            assert db.execute('SELECT hash FROM h WHERE position=? AND height=?',(p,h)).fetchone()
        read_s=time.perf_counter()-t
        db.execute('DELETE FROM h WHERE position < 625');db.commit()
        after_delete=os.path.getsize(path)
        t=time.perf_counter()
        checkpoint=db.execute('PRAGMA wal_checkpoint(TRUNCATE)').fetchone()
        checkpoint_s=time.perf_counter()-t
        after_checkpoint=os.path.getsize(path)
        free_pages=db.execute('PRAGMA freelist_count').fetchone()[0]
        t=time.perf_counter()
        db.execute('VACUUM')
        db.execute('PRAGMA wal_checkpoint(TRUNCATE)')
        vacuum_s=time.perf_counter()-t
        after_vacuum=os.path.getsize(path)
        db.close()
        return {'variant':variant,'rows':N,'batch':BATCH,'insert_s':insert_s,'reopen_point_reads_s':read_s,'reads':len(range(0,N,17)),'db_bytes_before_delete':before,'db_bytes_after_delete':after_delete,'db_bytes_after_checkpoint':after_checkpoint,'free_pages_after_delete':free_pages,'checkpoint_s':checkpoint_s,'checkpoint_result':checkpoint,'db_bytes_after_vacuum':after_vacuum,'vacuum_s':vacuum_s}

print(json.dumps([one(v) for v in ('rowid_index','rowid_pk','without_rowid')],indent=2))
