# BLS12-377 dedicated squaring screen

Isolated six-limb outer base-field primitive. The pinned dedicated square body uses a branch-free final subtract/select and current fp.Element representation. Compare against gnark-crypto0.20.1 ARM64 assembly Square, with exact raw Montgomery output and big-integer oracle checks. Four-limb scalar arithmetic, native BLS12-381/blst and complete MSM/proving are outside this component.
