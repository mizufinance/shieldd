# Checked prepared native key storage

Development-only SHNPK961 storage expands four nonidentity query-vector roles to96bytes perpoint. VK, commitment keys and masks retain ordinary encodings. Safe blst validation precedes construction of CommonwareG1; no layout casts or new unsafe code. The original key codec remains the conversion/reference input. The native worker reads prepared storage and checks its complete canonical roundtrip and relation binding. No circuit, protocol, proof encoding or setup change.
