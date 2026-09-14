# Current combined GPU MSM screen

Two current native Transfer operations, W+Q and A+R, each use immutable finite interleaved GPU bases. Their combined resident bytes and maximum preparation/dispatch temporaries are preflighted before upload. Canonical checked scalar input, finite-index gathering, signs, uploads, readback and encoding stay inside each request. The native control uses separate regular-blst prepared tables. Source patch only expands the explicit prepared-input bound to614400. No shader or proof changes.
