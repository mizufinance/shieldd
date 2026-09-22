import json
import os
import sqlite3
import tempfile

def run(days, subjects=100):
    with tempfile.TemporaryDirectory(prefix='shieldd-volume-') as d:
        p = os.path.join(d,'wallet.db')
        db=sqlite3.connect(p)
        db.execute('PRAGMA journal_mode=WAL')
        db.execute('PRAGMA synchronous=FULL')
        db.execute('CREATE TABLE volume_accumulators (subject BLOB NOT NULL, day_start BIGINT NOT NULL, volume BLOB NOT NULL, blinding BLOB NOT NULL, commitment BLOB NOT NULL, position BIGINT NOT NULL, recovery_status TINYINT NOT NULL DEFAULT 0, PRIMARY KEY(subject,day_start))')
        for day in range(days):
            db.executemany('INSERT INTO volume_accumulators VALUES (?,?,?,?,?,?,?)',((i.to_bytes(4,'little')*8,day*86400,b'v'*16,b'b'*32,b'c'*32,day*subjects+i,0) for i in range(subjects)))
            db.commit()
        db.execute('PRAGMA wal_checkpoint(TRUNCATE)')
        result={'days':days,'subjects':subjects,'rows':days*subjects,'db_bytes':os.path.getsize(p)}
        db.close()
        return result

print(json.dumps([run(30),run(365)],indent=2))
