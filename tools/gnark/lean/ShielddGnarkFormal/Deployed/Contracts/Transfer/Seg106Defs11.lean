import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg106Defs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91865) * ((2 : F) + (1 : F) * rho 91862 + (-1 : F) * rho 91863) = ((1 : F) * rho 91862 + (1 : F) * rho 91863)

def relationLc1940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 101⟩, ⟨(1 : F), 90560, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91864 + (1 : F) * rho 91865) * (relationLc1940 rho) = ((1 : F) * rho 91866)

def relationLc1941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91865) * (relationLc1941 rho) = ((1 : F) * rho 91867)

def relationLc1942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91864) * (relationLc1942 rho) = ((1 : F) * rho 91868)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91867) * ((1 : F) * rho 91868) = ((1 : F) * rho 91869)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91870) * ((1 : F) + (1 : F) * rho 91869) = ((1 : F) * rho 91867 + (1 : F) * rho 91868)

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91871) * ((1 : F) + (-1 : F) * rho 91869) = ((1 : F) * rho 91866 + (-1 : F) * rho 91867 + (-1 : F) * rho 91868)

def relationLc1943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 101⟩], residual := [((1 : F), 91870)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90408) * (relationLc1943 rho) = ((1 : F) * rho 91872)

def relationLc1944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 101⟩], residual := [((1 : F), 91871)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90408) * (relationLc1944 rho) = ((1 : F) * rho 91873)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91864) * ((1 : F) * rho 91865) = ((1 : F) * rho 91874)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91864) * ((1 : F) * rho 91864) = ((1 : F) * rho 91875)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91865) * ((1 : F) * rho 91865) = ((1 : F) * rho 91876)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91877) * ((-1 : F) * rho 91875 + (1 : F) * rho 91876) = ((2 : F) * rho 91874)

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91878) * ((2 : F) + (1 : F) * rho 91875 + (-1 : F) * rho 91876) = ((1 : F) * rho 91875 + (1 : F) * rho 91876)

def relationLc1945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 102⟩, ⟨(1 : F), 90560, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91877 + (1 : F) * rho 91878) * (relationLc1945 rho) = ((1 : F) * rho 91879)

def relationLc1946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91878) * (relationLc1946 rho) = ((1 : F) * rho 91880)

def relationLc1947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91877) * (relationLc1947 rho) = ((1 : F) * rho 91881)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91880) * ((1 : F) * rho 91881) = ((1 : F) * rho 91882)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91883) * ((1 : F) + (1 : F) * rho 91882) = ((1 : F) * rho 91880 + (1 : F) * rho 91881)

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91884) * ((1 : F) + (-1 : F) * rho 91882) = ((1 : F) * rho 91879 + (-1 : F) * rho 91880 + (-1 : F) * rho 91881)

def relationLc1948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 102⟩], residual := [((1 : F), 91883)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90409) * (relationLc1948 rho) = ((1 : F) * rho 91885)

def relationLc1949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 102⟩], residual := [((1 : F), 91884)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90409) * (relationLc1949 rho) = ((1 : F) * rho 91886)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91877) * ((1 : F) * rho 91878) = ((1 : F) * rho 91887)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91877) * ((1 : F) * rho 91877) = ((1 : F) * rho 91888)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91878) * ((1 : F) * rho 91878) = ((1 : F) * rho 91889)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91890) * ((-1 : F) * rho 91888 + (1 : F) * rho 91889) = ((2 : F) * rho 91887)

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91891) * ((2 : F) + (1 : F) * rho 91888 + (-1 : F) * rho 91889) = ((1 : F) * rho 91888 + (1 : F) * rho 91889)

def relationLc1950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 103⟩, ⟨(1 : F), 90560, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91890 + (1 : F) * rho 91891) * (relationLc1950 rho) = ((1 : F) * rho 91892)

def relationLc1951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91891) * (relationLc1951 rho) = ((1 : F) * rho 91893)

def relationLc1952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91890) * (relationLc1952 rho) = ((1 : F) * rho 91894)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91893) * ((1 : F) * rho 91894) = ((1 : F) * rho 91895)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91896) * ((1 : F) + (1 : F) * rho 91895) = ((1 : F) * rho 91893 + (1 : F) * rho 91894)

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91897) * ((1 : F) + (-1 : F) * rho 91895) = ((1 : F) * rho 91892 + (-1 : F) * rho 91893 + (-1 : F) * rho 91894)

def relationLc1953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 103⟩], residual := [((1 : F), 91896)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90410) * (relationLc1953 rho) = ((1 : F) * rho 91898)

def relationLc1954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 103⟩], residual := [((1 : F), 91897)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90410) * (relationLc1954 rho) = ((1 : F) * rho 91899)

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91890) * ((1 : F) * rho 91891) = ((1 : F) * rho 91900)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91890) * ((1 : F) * rho 91890) = ((1 : F) * rho 91901)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91891) * ((1 : F) * rho 91891) = ((1 : F) * rho 91902)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91903) * ((-1 : F) * rho 91901 + (1 : F) * rho 91902) = ((2 : F) * rho 91900)

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91904) * ((2 : F) + (1 : F) * rho 91901 + (-1 : F) * rho 91902) = ((1 : F) * rho 91901 + (1 : F) * rho 91902)

def relationLc1955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 104⟩, ⟨(1 : F), 90560, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91903 + (1 : F) * rho 91904) * (relationLc1955 rho) = ((1 : F) * rho 91905)

def relationLc1956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91904) * (relationLc1956 rho) = ((1 : F) * rho 91906)

def relationLc1957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91903) * (relationLc1957 rho) = ((1 : F) * rho 91907)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91906) * ((1 : F) * rho 91907) = ((1 : F) * rho 91908)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91909) * ((1 : F) + (1 : F) * rho 91908) = ((1 : F) * rho 91906 + (1 : F) * rho 91907)

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91910) * ((1 : F) + (-1 : F) * rho 91908) = ((1 : F) * rho 91905 + (-1 : F) * rho 91906 + (-1 : F) * rho 91907)

def relationLc1958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 104⟩], residual := [((1 : F), 91909)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90411) * (relationLc1958 rho) = ((1 : F) * rho 91911)

def relationLc1959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 104⟩], residual := [((1 : F), 91910)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90411) * (relationLc1959 rho) = ((1 : F) * rho 91912)

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91903) * ((1 : F) * rho 91904) = ((1 : F) * rho 91913)

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91903) * ((1 : F) * rho 91903) = ((1 : F) * rho 91914)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91904) * ((1 : F) * rho 91904) = ((1 : F) * rho 91915)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91916) * ((-1 : F) * rho 91914 + (1 : F) * rho 91915) = ((2 : F) * rho 91913)

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91917) * ((2 : F) + (1 : F) * rho 91914 + (-1 : F) * rho 91915) = ((1 : F) * rho 91914 + (1 : F) * rho 91915)

def relationLc1960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 105⟩, ⟨(1 : F), 90560, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91916 + (1 : F) * rho 91917) * (relationLc1960 rho) = ((1 : F) * rho 91918)

def relationLc1961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91917) * (relationLc1961 rho) = ((1 : F) * rho 91919)

def relationLc1962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91916) * (relationLc1962 rho) = ((1 : F) * rho 91920)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91919) * ((1 : F) * rho 91920) = ((1 : F) * rho 91921)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91922) * ((1 : F) + (1 : F) * rho 91921) = ((1 : F) * rho 91919 + (1 : F) * rho 91920)

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91923) * ((1 : F) + (-1 : F) * rho 91921) = ((1 : F) * rho 91918 + (-1 : F) * rho 91919 + (-1 : F) * rho 91920)

def relationLc1963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 105⟩], residual := [((1 : F), 91922)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90412) * (relationLc1963 rho) = ((1 : F) * rho 91924)

def relationLc1964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 105⟩], residual := [((1 : F), 91923)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90412) * (relationLc1964 rho) = ((1 : F) * rho 91925)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91916) * ((1 : F) * rho 91917) = ((1 : F) * rho 91926)

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91916) * ((1 : F) * rho 91916) = ((1 : F) * rho 91927)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91917) * ((1 : F) * rho 91917) = ((1 : F) * rho 91928)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91929) * ((-1 : F) * rho 91927 + (1 : F) * rho 91928) = ((2 : F) * rho 91926)

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91930) * ((2 : F) + (1 : F) * rho 91927 + (-1 : F) * rho 91928) = ((1 : F) * rho 91927 + (1 : F) * rho 91928)

def relationLc1965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 106⟩, ⟨(1 : F), 90560, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91929 + (1 : F) * rho 91930) * (relationLc1965 rho) = ((1 : F) * rho 91931)

def relationLc1966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91930) * (relationLc1966 rho) = ((1 : F) * rho 91932)

def relationLc1967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91929) * (relationLc1967 rho) = ((1 : F) * rho 91933)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91932) * ((1 : F) * rho 91933) = ((1 : F) * rho 91934)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91935) * ((1 : F) + (1 : F) * rho 91934) = ((1 : F) * rho 91932 + (1 : F) * rho 91933)

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91936) * ((1 : F) + (-1 : F) * rho 91934) = ((1 : F) * rho 91931 + (-1 : F) * rho 91932 + (-1 : F) * rho 91933)

def relationLc1968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 106⟩], residual := [((1 : F), 91935)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90413) * (relationLc1968 rho) = ((1 : F) * rho 91937)

def relationLc1969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 106⟩], residual := [((1 : F), 91936)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90413) * (relationLc1969 rho) = ((1 : F) * rho 91938)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91929) * ((1 : F) * rho 91930) = ((1 : F) * rho 91939)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91929) * ((1 : F) * rho 91929) = ((1 : F) * rho 91940)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91930) * ((1 : F) * rho 91930) = ((1 : F) * rho 91941)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91942) * ((-1 : F) * rho 91940 + (1 : F) * rho 91941) = ((2 : F) * rho 91939)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91943) * ((2 : F) + (1 : F) * rho 91940 + (-1 : F) * rho 91941) = ((1 : F) * rho 91940 + (1 : F) * rho 91941)

def relationLc1970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 107⟩, ⟨(1 : F), 90560, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91942 + (1 : F) * rho 91943) * (relationLc1970 rho) = ((1 : F) * rho 91944)

def relationLc1971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91943) * (relationLc1971 rho) = ((1 : F) * rho 91945)

def relationLc1972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91942) * (relationLc1972 rho) = ((1 : F) * rho 91946)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91945) * ((1 : F) * rho 91946) = ((1 : F) * rho 91947)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91948) * ((1 : F) + (1 : F) * rho 91947) = ((1 : F) * rho 91945 + (1 : F) * rho 91946)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91949) * ((1 : F) + (-1 : F) * rho 91947) = ((1 : F) * rho 91944 + (-1 : F) * rho 91945 + (-1 : F) * rho 91946)

def relationLc1973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 107⟩], residual := [((1 : F), 91948)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90414) * (relationLc1973 rho) = ((1 : F) * rho 91950)

def relationLc1974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 107⟩], residual := [((1 : F), 91949)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90414) * (relationLc1974 rho) = ((1 : F) * rho 91951)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91942) * ((1 : F) * rho 91943) = ((1 : F) * rho 91952)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91942) * ((1 : F) * rho 91942) = ((1 : F) * rho 91953)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91943) * ((1 : F) * rho 91943) = ((1 : F) * rho 91954)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91955) * ((-1 : F) * rho 91953 + (1 : F) * rho 91954) = ((2 : F) * rho 91952)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91956) * ((2 : F) + (1 : F) * rho 91953 + (-1 : F) * rho 91954) = ((1 : F) * rho 91953 + (1 : F) * rho 91954)

def relationLc1975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 108⟩, ⟨(1 : F), 90560, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91955 + (1 : F) * rho 91956) * (relationLc1975 rho) = ((1 : F) * rho 91957)

def relationLc1976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91956) * (relationLc1976 rho) = ((1 : F) * rho 91958)

def relationLc1977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91955) * (relationLc1977 rho) = ((1 : F) * rho 91959)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91958) * ((1 : F) * rho 91959) = ((1 : F) * rho 91960)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91961) * ((1 : F) + (1 : F) * rho 91960) = ((1 : F) * rho 91958 + (1 : F) * rho 91959)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91962) * ((1 : F) + (-1 : F) * rho 91960) = ((1 : F) * rho 91957 + (-1 : F) * rho 91958 + (-1 : F) * rho 91959)

def relationLc1978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 108⟩], residual := [((1 : F), 91961)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90415) * (relationLc1978 rho) = ((1 : F) * rho 91963)

def relationLc1979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 108⟩], residual := [((1 : F), 91962)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90415) * (relationLc1979 rho) = ((1 : F) * rho 91964)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91955) * ((1 : F) * rho 91956) = ((1 : F) * rho 91965)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91955) * ((1 : F) * rho 91955) = ((1 : F) * rho 91966)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91956) * ((1 : F) * rho 91956) = ((1 : F) * rho 91967)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91968) * ((-1 : F) * rho 91966 + (1 : F) * rho 91967) = ((2 : F) * rho 91965)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91969) * ((2 : F) + (1 : F) * rho 91966 + (-1 : F) * rho 91967) = ((1 : F) * rho 91966 + (1 : F) * rho 91967)

def relationLc1980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 109⟩, ⟨(1 : F), 90560, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91968 + (1 : F) * rho 91969) * (relationLc1980 rho) = ((1 : F) * rho 91970)

def relationLc1981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91969) * (relationLc1981 rho) = ((1 : F) * rho 91971)

def relationLc1982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91968) * (relationLc1982 rho) = ((1 : F) * rho 91972)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91971) * ((1 : F) * rho 91972) = ((1 : F) * rho 91973)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91974) * ((1 : F) + (1 : F) * rho 91973) = ((1 : F) * rho 91971 + (1 : F) * rho 91972)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91975) * ((1 : F) + (-1 : F) * rho 91973) = ((1 : F) * rho 91970 + (-1 : F) * rho 91971 + (-1 : F) * rho 91972)

def relationLc1983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 109⟩], residual := [((1 : F), 91974)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90416) * (relationLc1983 rho) = ((1 : F) * rho 91976)

def relationLc1984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 109⟩], residual := [((1 : F), 91975)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90416) * (relationLc1984 rho) = ((1 : F) * rho 91977)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91968) * ((1 : F) * rho 91969) = ((1 : F) * rho 91978)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91968) * ((1 : F) * rho 91968) = ((1 : F) * rho 91979)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91969) * ((1 : F) * rho 91969) = ((1 : F) * rho 91980)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91981) * ((-1 : F) * rho 91979 + (1 : F) * rho 91980) = ((2 : F) * rho 91978)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91982) * ((2 : F) + (1 : F) * rho 91979 + (-1 : F) * rho 91980) = ((1 : F) * rho 91979 + (1 : F) * rho 91980)

def relationLc1985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 110⟩, ⟨(1 : F), 90560, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91981 + (1 : F) * rho 91982) * (relationLc1985 rho) = ((1 : F) * rho 91983)

def relationLc1986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91982) * (relationLc1986 rho) = ((1 : F) * rho 91984)

def relationLc1987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91981) * (relationLc1987 rho) = ((1 : F) * rho 91985)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91984) * ((1 : F) * rho 91985) = ((1 : F) * rho 91986)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91987) * ((1 : F) + (1 : F) * rho 91986) = ((1 : F) * rho 91984 + (1 : F) * rho 91985)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91988) * ((1 : F) + (-1 : F) * rho 91986) = ((1 : F) * rho 91983 + (-1 : F) * rho 91984 + (-1 : F) * rho 91985)

def relationLc1988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 110⟩], residual := [((1 : F), 91987)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90417) * (relationLc1988 rho) = ((1 : F) * rho 91989)

def relationLc1989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 110⟩], residual := [((1 : F), 91988)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90417) * (relationLc1989 rho) = ((1 : F) * rho 91990)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91981) * ((1 : F) * rho 91982) = ((1 : F) * rho 91991)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91981) * ((1 : F) * rho 91981) = ((1 : F) * rho 91992)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91982) * ((1 : F) * rho 91982) = ((1 : F) * rho 91993)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91994) * ((-1 : F) * rho 91992 + (1 : F) * rho 91993) = ((2 : F) * rho 91991)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91995) * ((2 : F) + (1 : F) * rho 91992 + (-1 : F) * rho 91993) = ((1 : F) * rho 91992 + (1 : F) * rho 91993)

def relationLc1990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 111⟩, ⟨(1 : F), 90560, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91994 + (1 : F) * rho 91995) * (relationLc1990 rho) = ((1 : F) * rho 91996)

def relationLc1991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91995) * (relationLc1991 rho) = ((1 : F) * rho 91997)

def relationLc1992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91994) * (relationLc1992 rho) = ((1 : F) * rho 91998)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 91997) * ((1 : F) * rho 91998) = ((1 : F) * rho 91999)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92000) * ((1 : F) + (1 : F) * rho 91999) = ((1 : F) * rho 91997 + (1 : F) * rho 91998)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92001) * ((1 : F) + (-1 : F) * rho 91999) = ((1 : F) * rho 91996 + (-1 : F) * rho 91997 + (-1 : F) * rho 91998)

def relationLc1993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 111⟩], residual := [((1 : F), 92000)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90418) * (relationLc1993 rho) = ((1 : F) * rho 92002)

def relationLc1994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 111⟩], residual := [((1 : F), 92001)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90418) * (relationLc1994 rho) = ((1 : F) * rho 92003)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91994) * ((1 : F) * rho 91995) = ((1 : F) * rho 92004)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91994) * ((1 : F) * rho 91994) = ((1 : F) * rho 92005)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91995) * ((1 : F) * rho 91995) = ((1 : F) * rho 92006)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92007) * ((-1 : F) * rho 92005 + (1 : F) * rho 92006) = ((2 : F) * rho 92004)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92008) * ((2 : F) + (1 : F) * rho 92005 + (-1 : F) * rho 92006) = ((1 : F) * rho 92005 + (1 : F) * rho 92006)

def relationLc1995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 112⟩, ⟨(1 : F), 90560, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92007 + (1 : F) * rho 92008) * (relationLc1995 rho) = ((1 : F) * rho 92009)

def relationLc1996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92008) * (relationLc1996 rho) = ((1 : F) * rho 92010)

def relationLc1997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92007) * (relationLc1997 rho) = ((1 : F) * rho 92011)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92010) * ((1 : F) * rho 92011) = ((1 : F) * rho 92012)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92013) * ((1 : F) + (1 : F) * rho 92012) = ((1 : F) * rho 92010 + (1 : F) * rho 92011)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92014) * ((1 : F) + (-1 : F) * rho 92012) = ((1 : F) * rho 92009 + (-1 : F) * rho 92010 + (-1 : F) * rho 92011)

def relationLc1998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 112⟩], residual := [((1 : F), 92013)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90419) * (relationLc1998 rho) = ((1 : F) * rho 92015)

def relationLc1999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 112⟩], residual := [((1 : F), 92014)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90419) * (relationLc1999 rho) = ((1 : F) * rho 92016)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92007) * ((1 : F) * rho 92008) = ((1 : F) * rho 92017)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92007) * ((1 : F) * rho 92007) = ((1 : F) * rho 92018)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92008) * ((1 : F) * rho 92008) = ((1 : F) * rho 92019)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92020) * ((-1 : F) * rho 92018 + (1 : F) * rho 92019) = ((2 : F) * rho 92017)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92021) * ((2 : F) + (1 : F) * rho 92018 + (-1 : F) * rho 92019) = ((1 : F) * rho 92018 + (1 : F) * rho 92019)

def relationLc2000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 113⟩, ⟨(1 : F), 90560, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92020 + (1 : F) * rho 92021) * (relationLc2000 rho) = ((1 : F) * rho 92022)

def relationLc2001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92021) * (relationLc2001 rho) = ((1 : F) * rho 92023)

def relationLc2002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92020) * (relationLc2002 rho) = ((1 : F) * rho 92024)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92023) * ((1 : F) * rho 92024) = ((1 : F) * rho 92025)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92026) * ((1 : F) + (1 : F) * rho 92025) = ((1 : F) * rho 92023 + (1 : F) * rho 92024)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92027) * ((1 : F) + (-1 : F) * rho 92025) = ((1 : F) * rho 92022 + (-1 : F) * rho 92023 + (-1 : F) * rho 92024)

def relationLc2003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 113⟩], residual := [((1 : F), 92026)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90420) * (relationLc2003 rho) = ((1 : F) * rho 92028)

def relationLc2004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 113⟩], residual := [((1 : F), 92027)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90420) * (relationLc2004 rho) = ((1 : F) * rho 92029)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92020) * ((1 : F) * rho 92021) = ((1 : F) * rho 92030)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92020) * ((1 : F) * rho 92020) = ((1 : F) * rho 92031)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92021) * ((1 : F) * rho 92021) = ((1 : F) * rho 92032)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92033) * ((-1 : F) * rho 92031 + (1 : F) * rho 92032) = ((2 : F) * rho 92030)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92034) * ((2 : F) + (1 : F) * rho 92031 + (-1 : F) * rho 92032) = ((1 : F) * rho 92031 + (1 : F) * rho 92032)

def relationLc2005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 114⟩, ⟨(1 : F), 90560, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92033 + (1 : F) * rho 92034) * (relationLc2005 rho) = ((1 : F) * rho 92035)

def relationLc2006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92034) * (relationLc2006 rho) = ((1 : F) * rho 92036)

def relationLc2007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92033) * (relationLc2007 rho) = ((1 : F) * rho 92037)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92036) * ((1 : F) * rho 92037) = ((1 : F) * rho 92038)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92039) * ((1 : F) + (1 : F) * rho 92038) = ((1 : F) * rho 92036 + (1 : F) * rho 92037)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92040) * ((1 : F) + (-1 : F) * rho 92038) = ((1 : F) * rho 92035 + (-1 : F) * rho 92036 + (-1 : F) * rho 92037)

def relationLc2008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 114⟩], residual := [((1 : F), 92039)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90421) * (relationLc2008 rho) = ((1 : F) * rho 92041)

def relationLc2009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 114⟩], residual := [((1 : F), 92040)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90421) * (relationLc2009 rho) = ((1 : F) * rho 92042)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92033) * ((1 : F) * rho 92034) = ((1 : F) * rho 92043)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92033) * ((1 : F) * rho 92033) = ((1 : F) * rho 92044)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92034) * ((1 : F) * rho 92034) = ((1 : F) * rho 92045)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92046) * ((-1 : F) * rho 92044 + (1 : F) * rho 92045) = ((2 : F) * rho 92043)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92047) * ((2 : F) + (1 : F) * rho 92044 + (-1 : F) * rho 92045) = ((1 : F) * rho 92044 + (1 : F) * rho 92045)

def relationLc2010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 115⟩, ⟨(1 : F), 90560, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92046 + (1 : F) * rho 92047) * (relationLc2010 rho) = ((1 : F) * rho 92048)

def relationLc2011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92047) * (relationLc2011 rho) = ((1 : F) * rho 92049)

def relationLc2012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92046) * (relationLc2012 rho) = ((1 : F) * rho 92050)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92049) * ((1 : F) * rho 92050) = ((1 : F) * rho 92051)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92052) * ((1 : F) + (1 : F) * rho 92051) = ((1 : F) * rho 92049 + (1 : F) * rho 92050)

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92053) * ((1 : F) + (-1 : F) * rho 92051) = ((1 : F) * rho 92048 + (-1 : F) * rho 92049 + (-1 : F) * rho 92050)

def relationLc2013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 115⟩], residual := [((1 : F), 92052)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90422) * (relationLc2013 rho) = ((1 : F) * rho 92054)

def relationLc2014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 115⟩], residual := [((1 : F), 92053)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90422) * (relationLc2014 rho) = ((1 : F) * rho 92055)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92046) * ((1 : F) * rho 92047) = ((1 : F) * rho 92056)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92046) * ((1 : F) * rho 92046) = ((1 : F) * rho 92057)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92047) * ((1 : F) * rho 92047) = ((1 : F) * rho 92058)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92059) * ((-1 : F) * rho 92057 + (1 : F) * rho 92058) = ((2 : F) * rho 92056)

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92060) * ((2 : F) + (1 : F) * rho 92057 + (-1 : F) * rho 92058) = ((1 : F) * rho 92057 + (1 : F) * rho 92058)

def relationLc2015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 116⟩, ⟨(1 : F), 90560, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92059 + (1 : F) * rho 92060) * (relationLc2015 rho) = ((1 : F) * rho 92061)

def relationLc2016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92060) * (relationLc2016 rho) = ((1 : F) * rho 92062)

def relationLc2017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92059) * (relationLc2017 rho) = ((1 : F) * rho 92063)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92062) * ((1 : F) * rho 92063) = ((1 : F) * rho 92064)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92065) * ((1 : F) + (1 : F) * rho 92064) = ((1 : F) * rho 92062 + (1 : F) * rho 92063)

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92066) * ((1 : F) + (-1 : F) * rho 92064) = ((1 : F) * rho 92061 + (-1 : F) * rho 92062 + (-1 : F) * rho 92063)

def relationLc2018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 116⟩], residual := [((1 : F), 92065)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90423) * (relationLc2018 rho) = ((1 : F) * rho 92067)

def relationLc2019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 116⟩], residual := [((1 : F), 92066)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90423) * (relationLc2019 rho) = ((1 : F) * rho 92068)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92059) * ((1 : F) * rho 92060) = ((1 : F) * rho 92069)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92059) * ((1 : F) * rho 92059) = ((1 : F) * rho 92070)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92060) * ((1 : F) * rho 92060) = ((1 : F) * rho 92071)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92072) * ((-1 : F) * rho 92070 + (1 : F) * rho 92071) = ((2 : F) * rho 92069)

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92073) * ((2 : F) + (1 : F) * rho 92070 + (-1 : F) * rho 92071) = ((1 : F) * rho 92070 + (1 : F) * rho 92071)

def relationLc2020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 117⟩, ⟨(1 : F), 90560, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92072 + (1 : F) * rho 92073) * (relationLc2020 rho) = ((1 : F) * rho 92074)

def relationLc2021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92073) * (relationLc2021 rho) = ((1 : F) * rho 92075)

def relationLc2022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92072) * (relationLc2022 rho) = ((1 : F) * rho 92076)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92075) * ((1 : F) * rho 92076) = ((1 : F) * rho 92077)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92078) * ((1 : F) + (1 : F) * rho 92077) = ((1 : F) * rho 92075 + (1 : F) * rho 92076)

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92079) * ((1 : F) + (-1 : F) * rho 92077) = ((1 : F) * rho 92074 + (-1 : F) * rho 92075 + (-1 : F) * rho 92076)

def relationLc2023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 117⟩], residual := [((1 : F), 92078)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90424) * (relationLc2023 rho) = ((1 : F) * rho 92080)

def relationLc2024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 117⟩], residual := [((1 : F), 92079)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90424) * (relationLc2024 rho) = ((1 : F) * rho 92081)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92072) * ((1 : F) * rho 92073) = ((1 : F) * rho 92082)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92072) * ((1 : F) * rho 92072) = ((1 : F) * rho 92083)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92073) * ((1 : F) * rho 92073) = ((1 : F) * rho 92084)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92085) * ((-1 : F) * rho 92083 + (1 : F) * rho 92084) = ((2 : F) * rho 92082)

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92086) * ((2 : F) + (1 : F) * rho 92083 + (-1 : F) * rho 92084) = ((1 : F) * rho 92083 + (1 : F) * rho 92084)

def relationLc2025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 118⟩, ⟨(1 : F), 90560, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92085 + (1 : F) * rho 92086) * (relationLc2025 rho) = ((1 : F) * rho 92087)

def relationLc2026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92086) * (relationLc2026 rho) = ((1 : F) * rho 92088)

def relationLc2027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92085) * (relationLc2027 rho) = ((1 : F) * rho 92089)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92088) * ((1 : F) * rho 92089) = ((1 : F) * rho 92090)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92091) * ((1 : F) + (1 : F) * rho 92090) = ((1 : F) * rho 92088 + (1 : F) * rho 92089)

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92092) * ((1 : F) + (-1 : F) * rho 92090) = ((1 : F) * rho 92087 + (-1 : F) * rho 92088 + (-1 : F) * rho 92089)

def relationLc2028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 118⟩], residual := [((1 : F), 92091)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90425) * (relationLc2028 rho) = ((1 : F) * rho 92093)

def relationLc2029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 118⟩], residual := [((1 : F), 92092)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90425) * (relationLc2029 rho) = ((1 : F) * rho 92094)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92085) * ((1 : F) * rho 92086) = ((1 : F) * rho 92095)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92085) * ((1 : F) * rho 92085) = ((1 : F) * rho 92096)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92086) * ((1 : F) * rho 92086) = ((1 : F) * rho 92097)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92098) * ((-1 : F) * rho 92096 + (1 : F) * rho 92097) = ((2 : F) * rho 92095)

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92099) * ((2 : F) + (1 : F) * rho 92096 + (-1 : F) * rho 92097) = ((1 : F) * rho 92096 + (1 : F) * rho 92097)

def relationLc2030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 119⟩, ⟨(1 : F), 90560, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92098 + (1 : F) * rho 92099) * (relationLc2030 rho) = ((1 : F) * rho 92100)

def relationLc2031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92099) * (relationLc2031 rho) = ((1 : F) * rho 92101)

def relationLc2032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92098) * (relationLc2032 rho) = ((1 : F) * rho 92102)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92101) * ((1 : F) * rho 92102) = ((1 : F) * rho 92103)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92104) * ((1 : F) + (1 : F) * rho 92103) = ((1 : F) * rho 92101 + (1 : F) * rho 92102)

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92105) * ((1 : F) + (-1 : F) * rho 92103) = ((1 : F) * rho 92100 + (-1 : F) * rho 92101 + (-1 : F) * rho 92102)

def relationLc2033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 119⟩], residual := [((1 : F), 92104)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90426) * (relationLc2033 rho) = ((1 : F) * rho 92106)

def relationLc2034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 119⟩], residual := [((1 : F), 92105)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90426) * (relationLc2034 rho) = ((1 : F) * rho 92107)

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92098) * ((1 : F) * rho 92099) = ((1 : F) * rho 92108)

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92098) * ((1 : F) * rho 92098) = ((1 : F) * rho 92109)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92099) * ((1 : F) * rho 92099) = ((1 : F) * rho 92110)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92111) * ((-1 : F) * rho 92109 + (1 : F) * rho 92110) = ((2 : F) * rho 92108)

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92112) * ((2 : F) + (1 : F) * rho 92109 + (-1 : F) * rho 92110) = ((1 : F) * rho 92109 + (1 : F) * rho 92110)

def relationLc2035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 120⟩, ⟨(1 : F), 90560, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92111 + (1 : F) * rho 92112) * (relationLc2035 rho) = ((1 : F) * rho 92113)

def relationLc2036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92112) * (relationLc2036 rho) = ((1 : F) * rho 92114)

def relationLc2037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92111) * (relationLc2037 rho) = ((1 : F) * rho 92115)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92114) * ((1 : F) * rho 92115) = ((1 : F) * rho 92116)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92117) * ((1 : F) + (1 : F) * rho 92116) = ((1 : F) * rho 92114 + (1 : F) * rho 92115)

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92118) * ((1 : F) + (-1 : F) * rho 92116) = ((1 : F) * rho 92113 + (-1 : F) * rho 92114 + (-1 : F) * rho 92115)

def relationLc2038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 120⟩], residual := [((1 : F), 92117)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90427) * (relationLc2038 rho) = ((1 : F) * rho 92119)

def relationLc2039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 120⟩], residual := [((1 : F), 92118)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90427) * (relationLc2039 rho) = ((1 : F) * rho 92120)

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92111) * ((1 : F) * rho 92112) = ((1 : F) * rho 92121)

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92111) * ((1 : F) * rho 92111) = ((1 : F) * rho 92122)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92112) * ((1 : F) * rho 92112) = ((1 : F) * rho 92123)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92124) * ((-1 : F) * rho 92122 + (1 : F) * rho 92123) = ((2 : F) * rho 92121)

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92125) * ((2 : F) + (1 : F) * rho 92122 + (-1 : F) * rho 92123) = ((1 : F) * rho 92122 + (1 : F) * rho 92123)

def relationLc2040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 121⟩, ⟨(1 : F), 90560, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92124 + (1 : F) * rho 92125) * (relationLc2040 rho) = ((1 : F) * rho 92126)

def relationLc2041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92125) * (relationLc2041 rho) = ((1 : F) * rho 92127)

def relationLc2042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92124) * (relationLc2042 rho) = ((1 : F) * rho 92128)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92127) * ((1 : F) * rho 92128) = ((1 : F) * rho 92129)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92130) * ((1 : F) + (1 : F) * rho 92129) = ((1 : F) * rho 92127 + (1 : F) * rho 92128)

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92131) * ((1 : F) + (-1 : F) * rho 92129) = ((1 : F) * rho 92126 + (-1 : F) * rho 92127 + (-1 : F) * rho 92128)

def relationLc2043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 121⟩], residual := [((1 : F), 92130)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90428) * (relationLc2043 rho) = ((1 : F) * rho 92132)

def relationLc2044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 121⟩], residual := [((1 : F), 92131)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90428) * (relationLc2044 rho) = ((1 : F) * rho 92133)

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92124) * ((1 : F) * rho 92125) = ((1 : F) * rho 92134)

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92124) * ((1 : F) * rho 92124) = ((1 : F) * rho 92135)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92125) * ((1 : F) * rho 92125) = ((1 : F) * rho 92136)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92137) * ((-1 : F) * rho 92135 + (1 : F) * rho 92136) = ((2 : F) * rho 92134)

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92138) * ((2 : F) + (1 : F) * rho 92135 + (-1 : F) * rho 92136) = ((1 : F) * rho 92135 + (1 : F) * rho 92136)

def relationLc2045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 122⟩, ⟨(1 : F), 90560, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92137 + (1 : F) * rho 92138) * (relationLc2045 rho) = ((1 : F) * rho 92139)

def relationLc2046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92138) * (relationLc2046 rho) = ((1 : F) * rho 92140)

def relationLc2047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92137) * (relationLc2047 rho) = ((1 : F) * rho 92141)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92140) * ((1 : F) * rho 92141) = ((1 : F) * rho 92142)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92143) * ((1 : F) + (1 : F) * rho 92142) = ((1 : F) * rho 92140 + (1 : F) * rho 92141)

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92144) * ((1 : F) + (-1 : F) * rho 92142) = ((1 : F) * rho 92139 + (-1 : F) * rho 92140 + (-1 : F) * rho 92141)

def relationLc2048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 122⟩], residual := [((1 : F), 92143)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90429) * (relationLc2048 rho) = ((1 : F) * rho 92145)

def relationLc2049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 122⟩], residual := [((1 : F), 92144)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90429) * (relationLc2049 rho) = ((1 : F) * rho 92146)

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92137) * ((1 : F) * rho 92138) = ((1 : F) * rho 92147)

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92137) * ((1 : F) * rho 92137) = ((1 : F) * rho 92148)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92138) * ((1 : F) * rho 92138) = ((1 : F) * rho 92149)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92150) * ((-1 : F) * rho 92148 + (1 : F) * rho 92149) = ((2 : F) * rho 92147)

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92151) * ((2 : F) + (1 : F) * rho 92148 + (-1 : F) * rho 92149) = ((1 : F) * rho 92148 + (1 : F) * rho 92149)

def relationLc2050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 123⟩, ⟨(1 : F), 90560, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92150 + (1 : F) * rho 92151) * (relationLc2050 rho) = ((1 : F) * rho 92152)

def relationLc2051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92151) * (relationLc2051 rho) = ((1 : F) * rho 92153)

def relationLc2052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92150) * (relationLc2052 rho) = ((1 : F) * rho 92154)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92153) * ((1 : F) * rho 92154) = ((1 : F) * rho 92155)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92156) * ((1 : F) + (1 : F) * rho 92155) = ((1 : F) * rho 92153 + (1 : F) * rho 92154)

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92157) * ((1 : F) + (-1 : F) * rho 92155) = ((1 : F) * rho 92152 + (-1 : F) * rho 92153 + (-1 : F) * rho 92154)

def relationLc2053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 123⟩], residual := [((1 : F), 92156)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90430) * (relationLc2053 rho) = ((1 : F) * rho 92158)

def relationLc2054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 123⟩], residual := [((1 : F), 92157)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90430) * (relationLc2054 rho) = ((1 : F) * rho 92159)

def relationRow3663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92150) * ((1 : F) * rho 92151) = ((1 : F) * rho 92160)

def relationRow3664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92150) * ((1 : F) * rho 92150) = ((1 : F) * rho 92161)

def relationRow3665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92151) * ((1 : F) * rho 92151) = ((1 : F) * rho 92162)

def relationRow3666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92163) * ((-1 : F) * rho 92161 + (1 : F) * rho 92162) = ((2 : F) * rho 92160)

def relationRow3667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92164) * ((2 : F) + (1 : F) * rho 92161 + (-1 : F) * rho 92162) = ((1 : F) * rho 92161 + (1 : F) * rho 92162)

def relationLc2055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 124⟩, ⟨(1 : F), 90560, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92163 + (1 : F) * rho 92164) * (relationLc2055 rho) = ((1 : F) * rho 92165)

def relationLc2056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92164) * (relationLc2056 rho) = ((1 : F) * rho 92166)

def relationLc2057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92163) * (relationLc2057 rho) = ((1 : F) * rho 92167)

def relationRow3671 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92166) * ((1 : F) * rho 92167) = ((1 : F) * rho 92168)

def relationRow3672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92169) * ((1 : F) + (1 : F) * rho 92168) = ((1 : F) * rho 92166 + (1 : F) * rho 92167)

def relationRow3673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92170) * ((1 : F) + (-1 : F) * rho 92168) = ((1 : F) * rho 92165 + (-1 : F) * rho 92166 + (-1 : F) * rho 92167)

def relationLc2058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 124⟩], residual := [((1 : F), 92169)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90431) * (relationLc2058 rho) = ((1 : F) * rho 92171)

def relationLc2059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 124⟩], residual := [((1 : F), 92170)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90431) * (relationLc2059 rho) = ((1 : F) * rho 92172)

def relationRow3676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92163) * ((1 : F) * rho 92164) = ((1 : F) * rho 92173)

def relationRow3677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92163) * ((1 : F) * rho 92163) = ((1 : F) * rho 92174)

def relationRow3678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92164) * ((1 : F) * rho 92164) = ((1 : F) * rho 92175)

def relationRow3679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92176) * ((-1 : F) * rho 92174 + (1 : F) * rho 92175) = ((2 : F) * rho 92173)

def relationRow3680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92177) * ((2 : F) + (1 : F) * rho 92174 + (-1 : F) * rho 92175) = ((1 : F) * rho 92174 + (1 : F) * rho 92175)

def relationLc2060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 125⟩, ⟨(1 : F), 90560, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92176 + (1 : F) * rho 92177) * (relationLc2060 rho) = ((1 : F) * rho 92178)

def relationLc2061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92177) * (relationLc2061 rho) = ((1 : F) * rho 92179)

def relationLc2062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92176) * (relationLc2062 rho) = ((1 : F) * rho 92180)

def relationRow3684 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92179) * ((1 : F) * rho 92180) = ((1 : F) * rho 92181)

def relationRow3685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92182) * ((1 : F) + (1 : F) * rho 92181) = ((1 : F) * rho 92179 + (1 : F) * rho 92180)

def relationRow3686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92183) * ((1 : F) + (-1 : F) * rho 92181) = ((1 : F) * rho 92178 + (-1 : F) * rho 92179 + (-1 : F) * rho 92180)

def relationLc2063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 125⟩], residual := [((1 : F), 92182)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90432) * (relationLc2063 rho) = ((1 : F) * rho 92184)

def relationLc2064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 125⟩], residual := [((1 : F), 92183)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90432) * (relationLc2064 rho) = ((1 : F) * rho 92185)

def relationRow3689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92176) * ((1 : F) * rho 92177) = ((1 : F) * rho 92186)

def relationRow3690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92176) * ((1 : F) * rho 92176) = ((1 : F) * rho 92187)

def relationRow3691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92177) * ((1 : F) * rho 92177) = ((1 : F) * rho 92188)

def relationRow3692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92189) * ((-1 : F) * rho 92187 + (1 : F) * rho 92188) = ((2 : F) * rho 92186)

def relationRow3693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92190) * ((2 : F) + (1 : F) * rho 92187 + (-1 : F) * rho 92188) = ((1 : F) * rho 92187 + (1 : F) * rho 92188)

def relationLc2065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 126⟩, ⟨(1 : F), 90560, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92189 + (1 : F) * rho 92190) * (relationLc2065 rho) = ((1 : F) * rho 92191)

def relationLc2066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92190) * (relationLc2066 rho) = ((1 : F) * rho 92192)

def relationLc2067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92189) * (relationLc2067 rho) = ((1 : F) * rho 92193)

def relationRow3697 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92192) * ((1 : F) * rho 92193) = ((1 : F) * rho 92194)

def relationRow3698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92195) * ((1 : F) + (1 : F) * rho 92194) = ((1 : F) * rho 92192 + (1 : F) * rho 92193)

def relationRow3699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92196) * ((1 : F) + (-1 : F) * rho 92194) = ((1 : F) * rho 92191 + (-1 : F) * rho 92192 + (-1 : F) * rho 92193)

def relationLc2068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 126⟩], residual := [((1 : F), 92195)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90433) * (relationLc2068 rho) = ((1 : F) * rho 92197)

def relationLc2069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 126⟩], residual := [((1 : F), 92196)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90433) * (relationLc2069 rho) = ((1 : F) * rho 92198)

def relationRow3702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92189) * ((1 : F) * rho 92190) = ((1 : F) * rho 92199)

def relationRow3703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92189) * ((1 : F) * rho 92189) = ((1 : F) * rho 92200)

def relationRow3704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92190) * ((1 : F) * rho 92190) = ((1 : F) * rho 92201)

def relationRow3705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92202) * ((-1 : F) * rho 92200 + (1 : F) * rho 92201) = ((2 : F) * rho 92199)

def relationRow3706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92203) * ((2 : F) + (1 : F) * rho 92200 + (-1 : F) * rho 92201) = ((1 : F) * rho 92200 + (1 : F) * rho 92201)

def relationLc2070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 127⟩, ⟨(1 : F), 90560, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92202 + (1 : F) * rho 92203) * (relationLc2070 rho) = ((1 : F) * rho 92204)

def relationLc2071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92203) * (relationLc2071 rho) = ((1 : F) * rho 92205)

def relationLc2072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92202) * (relationLc2072 rho) = ((1 : F) * rho 92206)

def relationRow3710 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92205) * ((1 : F) * rho 92206) = ((1 : F) * rho 92207)

def relationRow3711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92208) * ((1 : F) + (1 : F) * rho 92207) = ((1 : F) * rho 92205 + (1 : F) * rho 92206)

def relationRow3712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92209) * ((1 : F) + (-1 : F) * rho 92207) = ((1 : F) * rho 92204 + (-1 : F) * rho 92205 + (-1 : F) * rho 92206)

def relationLc2073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 127⟩], residual := [((1 : F), 92208)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90434) * (relationLc2073 rho) = ((1 : F) * rho 92210)

def relationLc2074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 127⟩], residual := [((1 : F), 92209)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90434) * (relationLc2074 rho) = ((1 : F) * rho 92211)

def relationRow3715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92202) * ((1 : F) * rho 92203) = ((1 : F) * rho 92212)

def relationRow3716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92202) * ((1 : F) * rho 92202) = ((1 : F) * rho 92213)

def relationRow3717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92203) * ((1 : F) * rho 92203) = ((1 : F) * rho 92214)

def relationRow3718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92215) * ((-1 : F) * rho 92213 + (1 : F) * rho 92214) = ((2 : F) * rho 92212)

def relationRow3719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92216) * ((2 : F) + (1 : F) * rho 92213 + (-1 : F) * rho 92214) = ((1 : F) * rho 92213 + (1 : F) * rho 92214)

def relationLc2075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 128⟩, ⟨(1 : F), 90560, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92215 + (1 : F) * rho 92216) * (relationLc2075 rho) = ((1 : F) * rho 92217)

def relationLc2076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92216) * (relationLc2076 rho) = ((1 : F) * rho 92218)

def relationLc2077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92215) * (relationLc2077 rho) = ((1 : F) * rho 92219)

def relationRow3723 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92218) * ((1 : F) * rho 92219) = ((1 : F) * rho 92220)

def relationRow3724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92221) * ((1 : F) + (1 : F) * rho 92220) = ((1 : F) * rho 92218 + (1 : F) * rho 92219)

def relationRow3725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92222) * ((1 : F) + (-1 : F) * rho 92220) = ((1 : F) * rho 92217 + (-1 : F) * rho 92218 + (-1 : F) * rho 92219)

def relationLc2078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 128⟩], residual := [((1 : F), 92221)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90435) * (relationLc2078 rho) = ((1 : F) * rho 92223)

def relationLc2079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 128⟩], residual := [((1 : F), 92222)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90435) * (relationLc2079 rho) = ((1 : F) * rho 92224)

def relationRow3728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92215) * ((1 : F) * rho 92216) = ((1 : F) * rho 92225)

def relationRow3729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92215) * ((1 : F) * rho 92215) = ((1 : F) * rho 92226)

def relationRow3730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92216) * ((1 : F) * rho 92216) = ((1 : F) * rho 92227)

def relationRow3731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92228) * ((-1 : F) * rho 92226 + (1 : F) * rho 92227) = ((2 : F) * rho 92225)

def relationRow3732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92229) * ((2 : F) + (1 : F) * rho 92226 + (-1 : F) * rho 92227) = ((1 : F) * rho 92226 + (1 : F) * rho 92227)

def relationLc2080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 129⟩, ⟨(1 : F), 90560, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92228 + (1 : F) * rho 92229) * (relationLc2080 rho) = ((1 : F) * rho 92230)

def relationLc2081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92229) * (relationLc2081 rho) = ((1 : F) * rho 92231)

def relationLc2082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92228) * (relationLc2082 rho) = ((1 : F) * rho 92232)

def relationRow3736 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92231) * ((1 : F) * rho 92232) = ((1 : F) * rho 92233)

def relationRow3737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92234) * ((1 : F) + (1 : F) * rho 92233) = ((1 : F) * rho 92231 + (1 : F) * rho 92232)

def relationRow3738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92235) * ((1 : F) + (-1 : F) * rho 92233) = ((1 : F) * rho 92230 + (-1 : F) * rho 92231 + (-1 : F) * rho 92232)

def relationLc2083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 129⟩], residual := [((1 : F), 92234)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90436) * (relationLc2083 rho) = ((1 : F) * rho 92236)

def relationLc2084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 129⟩], residual := [((1 : F), 92235)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90436) * (relationLc2084 rho) = ((1 : F) * rho 92237)

def relationRow3741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92228) * ((1 : F) * rho 92229) = ((1 : F) * rho 92238)

def relationRow3742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92228) * ((1 : F) * rho 92228) = ((1 : F) * rho 92239)

def relationRow3743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92229) * ((1 : F) * rho 92229) = ((1 : F) * rho 92240)

def relationRow3744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92241) * ((-1 : F) * rho 92239 + (1 : F) * rho 92240) = ((2 : F) * rho 92238)

def relationRow3745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92242) * ((2 : F) + (1 : F) * rho 92239 + (-1 : F) * rho 92240) = ((1 : F) * rho 92239 + (1 : F) * rho 92240)

def relationLc2085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 130⟩, ⟨(1 : F), 90560, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92241 + (1 : F) * rho 92242) * (relationLc2085 rho) = ((1 : F) * rho 92243)

def relationLc2086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92242) * (relationLc2086 rho) = ((1 : F) * rho 92244)

def relationLc2087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92241) * (relationLc2087 rho) = ((1 : F) * rho 92245)

def relationRow3749 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92244) * ((1 : F) * rho 92245) = ((1 : F) * rho 92246)

def relationRow3750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92247) * ((1 : F) + (1 : F) * rho 92246) = ((1 : F) * rho 92244 + (1 : F) * rho 92245)

def relationRow3751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92248) * ((1 : F) + (-1 : F) * rho 92246) = ((1 : F) * rho 92243 + (-1 : F) * rho 92244 + (-1 : F) * rho 92245)

def relationLc2088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 130⟩], residual := [((1 : F), 92247)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90437) * (relationLc2088 rho) = ((1 : F) * rho 92249)

def relationLc2089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 130⟩], residual := [((1 : F), 92248)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90437) * (relationLc2089 rho) = ((1 : F) * rho 92250)

def relationRow3754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92241) * ((1 : F) * rho 92242) = ((1 : F) * rho 92251)

def relationRow3755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92241) * ((1 : F) * rho 92241) = ((1 : F) * rho 92252)

def relationRow3756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92242) * ((1 : F) * rho 92242) = ((1 : F) * rho 92253)

def relationRow3757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92254) * ((-1 : F) * rho 92252 + (1 : F) * rho 92253) = ((2 : F) * rho 92251)

def relationRow3758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92255) * ((2 : F) + (1 : F) * rho 92252 + (-1 : F) * rho 92253) = ((1 : F) * rho 92252 + (1 : F) * rho 92253)

def relationLc2090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 131⟩, ⟨(1 : F), 90560, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92254 + (1 : F) * rho 92255) * (relationLc2090 rho) = ((1 : F) * rho 92256)

def relationLc2091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92255) * (relationLc2091 rho) = ((1 : F) * rho 92257)

def relationLc2092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92254) * (relationLc2092 rho) = ((1 : F) * rho 92258)

def relationRow3762 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92257) * ((1 : F) * rho 92258) = ((1 : F) * rho 92259)

def relationRow3763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92260) * ((1 : F) + (1 : F) * rho 92259) = ((1 : F) * rho 92257 + (1 : F) * rho 92258)

def relationRow3764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92261) * ((1 : F) + (-1 : F) * rho 92259) = ((1 : F) * rho 92256 + (-1 : F) * rho 92257 + (-1 : F) * rho 92258)

def relationLc2093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 131⟩], residual := [((1 : F), 92260)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90438) * (relationLc2093 rho) = ((1 : F) * rho 92262)

def relationLc2094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 131⟩], residual := [((1 : F), 92261)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90438) * (relationLc2094 rho) = ((1 : F) * rho 92263)

def relationRow3767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92254) * ((1 : F) * rho 92255) = ((1 : F) * rho 92264)

def relationRow3768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92254) * ((1 : F) * rho 92254) = ((1 : F) * rho 92265)

def relationRow3769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92255) * ((1 : F) * rho 92255) = ((1 : F) * rho 92266)

def relationRow3770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92267) * ((-1 : F) * rho 92265 + (1 : F) * rho 92266) = ((2 : F) * rho 92264)

def relationRow3771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92268) * ((2 : F) + (1 : F) * rho 92265 + (-1 : F) * rho 92266) = ((1 : F) * rho 92265 + (1 : F) * rho 92266)

def relationLc2095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 132⟩, ⟨(1 : F), 90560, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92267 + (1 : F) * rho 92268) * (relationLc2095 rho) = ((1 : F) * rho 92269)

def relationLc2096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92268) * (relationLc2096 rho) = ((1 : F) * rho 92270)

def relationLc2097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92267) * (relationLc2097 rho) = ((1 : F) * rho 92271)

def relationRow3775 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92270) * ((1 : F) * rho 92271) = ((1 : F) * rho 92272)

def relationRow3776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92273) * ((1 : F) + (1 : F) * rho 92272) = ((1 : F) * rho 92270 + (1 : F) * rho 92271)

def relationRow3777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92274) * ((1 : F) + (-1 : F) * rho 92272) = ((1 : F) * rho 92269 + (-1 : F) * rho 92270 + (-1 : F) * rho 92271)

def relationLc2098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 132⟩], residual := [((1 : F), 92273)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90439) * (relationLc2098 rho) = ((1 : F) * rho 92275)

def relationLc2099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 132⟩], residual := [((1 : F), 92274)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90439) * (relationLc2099 rho) = ((1 : F) * rho 92276)

def relationRow3780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92267) * ((1 : F) * rho 92268) = ((1 : F) * rho 92277)

def relationRow3781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92267) * ((1 : F) * rho 92267) = ((1 : F) * rho 92278)

def relationRow3782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92268) * ((1 : F) * rho 92268) = ((1 : F) * rho 92279)

def relationRow3783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92280) * ((-1 : F) * rho 92278 + (1 : F) * rho 92279) = ((2 : F) * rho 92277)

def relationRow3784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92281) * ((2 : F) + (1 : F) * rho 92278 + (-1 : F) * rho 92279) = ((1 : F) * rho 92278 + (1 : F) * rho 92279)

def relationLc2100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 133⟩, ⟨(1 : F), 90560, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92280 + (1 : F) * rho 92281) * (relationLc2100 rho) = ((1 : F) * rho 92282)

def relationLc2101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92281) * (relationLc2101 rho) = ((1 : F) * rho 92283)

def relationLc2102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92280) * (relationLc2102 rho) = ((1 : F) * rho 92284)

def relationRow3788 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92283) * ((1 : F) * rho 92284) = ((1 : F) * rho 92285)

def relationRow3789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92286) * ((1 : F) + (1 : F) * rho 92285) = ((1 : F) * rho 92283 + (1 : F) * rho 92284)

def relationRow3790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92287) * ((1 : F) + (-1 : F) * rho 92285) = ((1 : F) * rho 92282 + (-1 : F) * rho 92283 + (-1 : F) * rho 92284)

def relationLc2103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 133⟩], residual := [((1 : F), 92286)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90440) * (relationLc2103 rho) = ((1 : F) * rho 92288)

def relationLc2104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 133⟩], residual := [((1 : F), 92287)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90440) * (relationLc2104 rho) = ((1 : F) * rho 92289)

def relationRow3793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92280) * ((1 : F) * rho 92281) = ((1 : F) * rho 92290)

def relationRow3794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92280) * ((1 : F) * rho 92280) = ((1 : F) * rho 92291)

def relationRow3795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92281) * ((1 : F) * rho 92281) = ((1 : F) * rho 92292)

def relationRow3796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92293) * ((-1 : F) * rho 92291 + (1 : F) * rho 92292) = ((2 : F) * rho 92290)

def relationRow3797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92294) * ((2 : F) + (1 : F) * rho 92291 + (-1 : F) * rho 92292) = ((1 : F) * rho 92291 + (1 : F) * rho 92292)

def relationLc2105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 134⟩, ⟨(1 : F), 90560, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92293 + (1 : F) * rho 92294) * (relationLc2105 rho) = ((1 : F) * rho 92295)

def relationLc2106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92294) * (relationLc2106 rho) = ((1 : F) * rho 92296)

def relationLc2107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92293) * (relationLc2107 rho) = ((1 : F) * rho 92297)

def relationRow3801 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92296) * ((1 : F) * rho 92297) = ((1 : F) * rho 92298)

def relationRow3802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92299) * ((1 : F) + (1 : F) * rho 92298) = ((1 : F) * rho 92296 + (1 : F) * rho 92297)

def relationRow3803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92300) * ((1 : F) + (-1 : F) * rho 92298) = ((1 : F) * rho 92295 + (-1 : F) * rho 92296 + (-1 : F) * rho 92297)

def relationLc2108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 134⟩], residual := [((1 : F), 92299)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90441) * (relationLc2108 rho) = ((1 : F) * rho 92301)

def relationLc2109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 134⟩], residual := [((1 : F), 92300)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90441) * (relationLc2109 rho) = ((1 : F) * rho 92302)

def relationRow3806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92293) * ((1 : F) * rho 92294) = ((1 : F) * rho 92303)

def relationRow3807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92293) * ((1 : F) * rho 92293) = ((1 : F) * rho 92304)

def relationRow3808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92294) * ((1 : F) * rho 92294) = ((1 : F) * rho 92305)

def relationRow3809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92306) * ((-1 : F) * rho 92304 + (1 : F) * rho 92305) = ((2 : F) * rho 92303)

def relationRow3810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92307) * ((2 : F) + (1 : F) * rho 92304 + (-1 : F) * rho 92305) = ((1 : F) * rho 92304 + (1 : F) * rho 92305)

def relationLc2110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 135⟩, ⟨(1 : F), 90560, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92306 + (1 : F) * rho 92307) * (relationLc2110 rho) = ((1 : F) * rho 92308)

def relationLc2111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92307) * (relationLc2111 rho) = ((1 : F) * rho 92309)

def relationLc2112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92306) * (relationLc2112 rho) = ((1 : F) * rho 92310)

def relationRow3814 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92309) * ((1 : F) * rho 92310) = ((1 : F) * rho 92311)

def relationRow3815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92312) * ((1 : F) + (1 : F) * rho 92311) = ((1 : F) * rho 92309 + (1 : F) * rho 92310)

def relationRow3816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92313) * ((1 : F) + (-1 : F) * rho 92311) = ((1 : F) * rho 92308 + (-1 : F) * rho 92309 + (-1 : F) * rho 92310)

def relationLc2113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 135⟩], residual := [((1 : F), 92312)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90442) * (relationLc2113 rho) = ((1 : F) * rho 92314)

def relationLc2114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 135⟩], residual := [((1 : F), 92313)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90442) * (relationLc2114 rho) = ((1 : F) * rho 92315)

def relationRow3819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92306) * ((1 : F) * rho 92307) = ((1 : F) * rho 92316)

def relationRow3820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92306) * ((1 : F) * rho 92306) = ((1 : F) * rho 92317)

def relationRow3821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92307) * ((1 : F) * rho 92307) = ((1 : F) * rho 92318)

def relationRow3822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92319) * ((-1 : F) * rho 92317 + (1 : F) * rho 92318) = ((2 : F) * rho 92316)

def relationRow3823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92320) * ((2 : F) + (1 : F) * rho 92317 + (-1 : F) * rho 92318) = ((1 : F) * rho 92317 + (1 : F) * rho 92318)

def relationLc2115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 136⟩, ⟨(1 : F), 90560, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92319 + (1 : F) * rho 92320) * (relationLc2115 rho) = ((1 : F) * rho 92321)

def relationLc2116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92320) * (relationLc2116 rho) = ((1 : F) * rho 92322)

def relationLc2117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92319) * (relationLc2117 rho) = ((1 : F) * rho 92323)

def relationRow3827 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92322) * ((1 : F) * rho 92323) = ((1 : F) * rho 92324)

def relationRow3828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92325) * ((1 : F) + (1 : F) * rho 92324) = ((1 : F) * rho 92322 + (1 : F) * rho 92323)

def relationRow3829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92326) * ((1 : F) + (-1 : F) * rho 92324) = ((1 : F) * rho 92321 + (-1 : F) * rho 92322 + (-1 : F) * rho 92323)

def relationLc2118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 136⟩], residual := [((1 : F), 92325)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90443) * (relationLc2118 rho) = ((1 : F) * rho 92327)

def relationLc2119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 136⟩], residual := [((1 : F), 92326)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90443) * (relationLc2119 rho) = ((1 : F) * rho 92328)

def relationRow3832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92319) * ((1 : F) * rho 92320) = ((1 : F) * rho 92329)

def relationRow3833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92319) * ((1 : F) * rho 92319) = ((1 : F) * rho 92330)

def relationRow3834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92320) * ((1 : F) * rho 92320) = ((1 : F) * rho 92331)

def relationRow3835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92332) * ((-1 : F) * rho 92330 + (1 : F) * rho 92331) = ((2 : F) * rho 92329)

def relationRow3836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92333) * ((2 : F) + (1 : F) * rho 92330 + (-1 : F) * rho 92331) = ((1 : F) * rho 92330 + (1 : F) * rho 92331)

def relationLc2120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 137⟩, ⟨(1 : F), 90560, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92332 + (1 : F) * rho 92333) * (relationLc2120 rho) = ((1 : F) * rho 92334)

def relationLc2121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92333) * (relationLc2121 rho) = ((1 : F) * rho 92335)

def relationLc2122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92332) * (relationLc2122 rho) = ((1 : F) * rho 92336)

def relationRow3840 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92335) * ((1 : F) * rho 92336) = ((1 : F) * rho 92337)

def relationRow3841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92338) * ((1 : F) + (1 : F) * rho 92337) = ((1 : F) * rho 92335 + (1 : F) * rho 92336)

def relationRow3842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92339) * ((1 : F) + (-1 : F) * rho 92337) = ((1 : F) * rho 92334 + (-1 : F) * rho 92335 + (-1 : F) * rho 92336)

def relationLc2123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 137⟩], residual := [((1 : F), 92338)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90444) * (relationLc2123 rho) = ((1 : F) * rho 92340)

def relationLc2124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 137⟩], residual := [((1 : F), 92339)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90444) * (relationLc2124 rho) = ((1 : F) * rho 92341)

def relationRow3845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92332) * ((1 : F) * rho 92333) = ((1 : F) * rho 92342)

def relationRow3846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92332) * ((1 : F) * rho 92332) = ((1 : F) * rho 92343)

def relationRow3847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92333) * ((1 : F) * rho 92333) = ((1 : F) * rho 92344)

def relationRow3848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92345) * ((-1 : F) * rho 92343 + (1 : F) * rho 92344) = ((2 : F) * rho 92342)

def relationRow3849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92346) * ((2 : F) + (1 : F) * rho 92343 + (-1 : F) * rho 92344) = ((1 : F) * rho 92343 + (1 : F) * rho 92344)

def relationLc2125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 138⟩, ⟨(1 : F), 90560, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92345 + (1 : F) * rho 92346) * (relationLc2125 rho) = ((1 : F) * rho 92347)

def relationLc2126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92346) * (relationLc2126 rho) = ((1 : F) * rho 92348)

def relationLc2127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92345) * (relationLc2127 rho) = ((1 : F) * rho 92349)

def relationRow3853 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92348) * ((1 : F) * rho 92349) = ((1 : F) * rho 92350)

def relationRow3854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92351) * ((1 : F) + (1 : F) * rho 92350) = ((1 : F) * rho 92348 + (1 : F) * rho 92349)

def relationRow3855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92352) * ((1 : F) + (-1 : F) * rho 92350) = ((1 : F) * rho 92347 + (-1 : F) * rho 92348 + (-1 : F) * rho 92349)

def relationLc2128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 138⟩], residual := [((1 : F), 92351)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90445) * (relationLc2128 rho) = ((1 : F) * rho 92353)

def relationLc2129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 138⟩], residual := [((1 : F), 92352)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90445) * (relationLc2129 rho) = ((1 : F) * rho 92354)

def relationRow3858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92345) * ((1 : F) * rho 92346) = ((1 : F) * rho 92355)

def relationRow3859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92345) * ((1 : F) * rho 92345) = ((1 : F) * rho 92356)

def relationRow3860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92346) * ((1 : F) * rho 92346) = ((1 : F) * rho 92357)

def relationRow3861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92358) * ((-1 : F) * rho 92356 + (1 : F) * rho 92357) = ((2 : F) * rho 92355)

def relationRow3862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92359) * ((2 : F) + (1 : F) * rho 92356 + (-1 : F) * rho 92357) = ((1 : F) * rho 92356 + (1 : F) * rho 92357)

def relationLc2130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 139⟩, ⟨(1 : F), 90560, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92358 + (1 : F) * rho 92359) * (relationLc2130 rho) = ((1 : F) * rho 92360)

def relationLc2131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92359) * (relationLc2131 rho) = ((1 : F) * rho 92361)

def relationLc2132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92358) * (relationLc2132 rho) = ((1 : F) * rho 92362)

def relationRow3866 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92361) * ((1 : F) * rho 92362) = ((1 : F) * rho 92363)

def relationRow3867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92364) * ((1 : F) + (1 : F) * rho 92363) = ((1 : F) * rho 92361 + (1 : F) * rho 92362)

def relationRow3868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92365) * ((1 : F) + (-1 : F) * rho 92363) = ((1 : F) * rho 92360 + (-1 : F) * rho 92361 + (-1 : F) * rho 92362)

def relationLc2133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 139⟩], residual := [((1 : F), 92364)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90446) * (relationLc2133 rho) = ((1 : F) * rho 92366)

def relationLc2134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 139⟩], residual := [((1 : F), 92365)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90446) * (relationLc2134 rho) = ((1 : F) * rho 92367)

def relationRow3871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92358) * ((1 : F) * rho 92359) = ((1 : F) * rho 92368)

def relationRow3872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92358) * ((1 : F) * rho 92358) = ((1 : F) * rho 92369)

def relationRow3873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92359) * ((1 : F) * rho 92359) = ((1 : F) * rho 92370)

def relationRow3874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92371) * ((-1 : F) * rho 92369 + (1 : F) * rho 92370) = ((2 : F) * rho 92368)

def relationRow3875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92372) * ((2 : F) + (1 : F) * rho 92369 + (-1 : F) * rho 92370) = ((1 : F) * rho 92369 + (1 : F) * rho 92370)

def relationLc2135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 140⟩, ⟨(1 : F), 90560, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92371 + (1 : F) * rho 92372) * (relationLc2135 rho) = ((1 : F) * rho 92373)

def relationLc2136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92372) * (relationLc2136 rho) = ((1 : F) * rho 92374)

def relationLc2137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92371) * (relationLc2137 rho) = ((1 : F) * rho 92375)

def relationRow3879 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92374) * ((1 : F) * rho 92375) = ((1 : F) * rho 92376)

def relationRow3880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92377) * ((1 : F) + (1 : F) * rho 92376) = ((1 : F) * rho 92374 + (1 : F) * rho 92375)

def relationRow3881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92378) * ((1 : F) + (-1 : F) * rho 92376) = ((1 : F) * rho 92373 + (-1 : F) * rho 92374 + (-1 : F) * rho 92375)

def relationLc2138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 140⟩], residual := [((1 : F), 92377)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90447) * (relationLc2138 rho) = ((1 : F) * rho 92379)

def relationLc2139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 140⟩], residual := [((1 : F), 92378)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90447) * (relationLc2139 rho) = ((1 : F) * rho 92380)

def relationRow3884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92371) * ((1 : F) * rho 92372) = ((1 : F) * rho 92381)

def relationRow3885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92371) * ((1 : F) * rho 92371) = ((1 : F) * rho 92382)

def relationRow3886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92372) * ((1 : F) * rho 92372) = ((1 : F) * rho 92383)

def relationRow3887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92384) * ((-1 : F) * rho 92382 + (1 : F) * rho 92383) = ((2 : F) * rho 92381)

def relationRow3888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92385) * ((2 : F) + (1 : F) * rho 92382 + (-1 : F) * rho 92383) = ((1 : F) * rho 92382 + (1 : F) * rho 92383)

def relationLc2140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 141⟩, ⟨(1 : F), 90560, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92384 + (1 : F) * rho 92385) * (relationLc2140 rho) = ((1 : F) * rho 92386)

def relationLc2141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92385) * (relationLc2141 rho) = ((1 : F) * rho 92387)

def relationLc2142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92384) * (relationLc2142 rho) = ((1 : F) * rho 92388)

def relationRow3892 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92387) * ((1 : F) * rho 92388) = ((1 : F) * rho 92389)

def relationRow3893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92390) * ((1 : F) + (1 : F) * rho 92389) = ((1 : F) * rho 92387 + (1 : F) * rho 92388)

def relationRow3894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92391) * ((1 : F) + (-1 : F) * rho 92389) = ((1 : F) * rho 92386 + (-1 : F) * rho 92387 + (-1 : F) * rho 92388)

def relationLc2143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 141⟩], residual := [((1 : F), 92390)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90448) * (relationLc2143 rho) = ((1 : F) * rho 92392)

def relationLc2144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 141⟩], residual := [((1 : F), 92391)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90448) * (relationLc2144 rho) = ((1 : F) * rho 92393)

def relationRow3897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92384) * ((1 : F) * rho 92385) = ((1 : F) * rho 92394)

def relationRow3898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92384) * ((1 : F) * rho 92384) = ((1 : F) * rho 92395)

def relationRow3899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92385) * ((1 : F) * rho 92385) = ((1 : F) * rho 92396)

def relationRow3900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92397) * ((-1 : F) * rho 92395 + (1 : F) * rho 92396) = ((2 : F) * rho 92394)

def relationRow3901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92398) * ((2 : F) + (1 : F) * rho 92395 + (-1 : F) * rho 92396) = ((1 : F) * rho 92395 + (1 : F) * rho 92396)

def relationLc2145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 142⟩, ⟨(1 : F), 90560, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92397 + (1 : F) * rho 92398) * (relationLc2145 rho) = ((1 : F) * rho 92399)

def relationLc2146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92398) * (relationLc2146 rho) = ((1 : F) * rho 92400)

def relationLc2147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92397) * (relationLc2147 rho) = ((1 : F) * rho 92401)

def relationRow3905 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92400) * ((1 : F) * rho 92401) = ((1 : F) * rho 92402)

def relationRow3906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92403) * ((1 : F) + (1 : F) * rho 92402) = ((1 : F) * rho 92400 + (1 : F) * rho 92401)

def relationRow3907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92404) * ((1 : F) + (-1 : F) * rho 92402) = ((1 : F) * rho 92399 + (-1 : F) * rho 92400 + (-1 : F) * rho 92401)

def relationLc2148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 142⟩], residual := [((1 : F), 92403)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90449) * (relationLc2148 rho) = ((1 : F) * rho 92405)

def relationLc2149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 142⟩], residual := [((1 : F), 92404)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90449) * (relationLc2149 rho) = ((1 : F) * rho 92406)

def relationRow3910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92397) * ((1 : F) * rho 92398) = ((1 : F) * rho 92407)

def relationRow3911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92397) * ((1 : F) * rho 92397) = ((1 : F) * rho 92408)

def relationRow3912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92398) * ((1 : F) * rho 92398) = ((1 : F) * rho 92409)

def relationRow3913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92410) * ((-1 : F) * rho 92408 + (1 : F) * rho 92409) = ((2 : F) * rho 92407)

def relationRow3914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92411) * ((2 : F) + (1 : F) * rho 92408 + (-1 : F) * rho 92409) = ((1 : F) * rho 92408 + (1 : F) * rho 92409)

def relationLc2150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 143⟩, ⟨(1 : F), 90560, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92410 + (1 : F) * rho 92411) * (relationLc2150 rho) = ((1 : F) * rho 92412)

def relationLc2151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92411) * (relationLc2151 rho) = ((1 : F) * rho 92413)

def relationLc2152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92410) * (relationLc2152 rho) = ((1 : F) * rho 92414)

def relationRow3918 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92413) * ((1 : F) * rho 92414) = ((1 : F) * rho 92415)

def relationRow3919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92416) * ((1 : F) + (1 : F) * rho 92415) = ((1 : F) * rho 92413 + (1 : F) * rho 92414)

def relationRow3920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92417) * ((1 : F) + (-1 : F) * rho 92415) = ((1 : F) * rho 92412 + (-1 : F) * rho 92413 + (-1 : F) * rho 92414)

def relationLc2153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 143⟩], residual := [((1 : F), 92416)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90450) * (relationLc2153 rho) = ((1 : F) * rho 92418)

def relationLc2154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 143⟩], residual := [((1 : F), 92417)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90450) * (relationLc2154 rho) = ((1 : F) * rho 92419)

def relationRow3923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92410) * ((1 : F) * rho 92411) = ((1 : F) * rho 92420)

def relationRow3924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92410) * ((1 : F) * rho 92410) = ((1 : F) * rho 92421)

def relationRow3925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92411) * ((1 : F) * rho 92411) = ((1 : F) * rho 92422)

def relationRow3926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92423) * ((-1 : F) * rho 92421 + (1 : F) * rho 92422) = ((2 : F) * rho 92420)

def relationRow3927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92424) * ((2 : F) + (1 : F) * rho 92421 + (-1 : F) * rho 92422) = ((1 : F) * rho 92421 + (1 : F) * rho 92422)

def relationLc2155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 144⟩, ⟨(1 : F), 90560, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92423 + (1 : F) * rho 92424) * (relationLc2155 rho) = ((1 : F) * rho 92425)

def relationLc2156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92424) * (relationLc2156 rho) = ((1 : F) * rho 92426)

def relationLc2157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92423) * (relationLc2157 rho) = ((1 : F) * rho 92427)

def relationRow3931 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92426) * ((1 : F) * rho 92427) = ((1 : F) * rho 92428)

def relationRow3932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92429) * ((1 : F) + (1 : F) * rho 92428) = ((1 : F) * rho 92426 + (1 : F) * rho 92427)

def relationRow3933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92430) * ((1 : F) + (-1 : F) * rho 92428) = ((1 : F) * rho 92425 + (-1 : F) * rho 92426 + (-1 : F) * rho 92427)

def relationLc2158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 144⟩], residual := [((1 : F), 92429)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90451) * (relationLc2158 rho) = ((1 : F) * rho 92431)

def relationLc2159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 144⟩], residual := [((1 : F), 92430)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90451) * (relationLc2159 rho) = ((1 : F) * rho 92432)

def relationRow3936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92423) * ((1 : F) * rho 92424) = ((1 : F) * rho 92433)

def relationRow3937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92423) * ((1 : F) * rho 92423) = ((1 : F) * rho 92434)

def relationRow3938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92424) * ((1 : F) * rho 92424) = ((1 : F) * rho 92435)

def relationRow3939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92436) * ((-1 : F) * rho 92434 + (1 : F) * rho 92435) = ((2 : F) * rho 92433)

def relationRow3940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92437) * ((2 : F) + (1 : F) * rho 92434 + (-1 : F) * rho 92435) = ((1 : F) * rho 92434 + (1 : F) * rho 92435)

def relationLc2160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 145⟩, ⟨(1 : F), 90560, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92436 + (1 : F) * rho 92437) * (relationLc2160 rho) = ((1 : F) * rho 92438)

def relationLc2161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92437) * (relationLc2161 rho) = ((1 : F) * rho 92439)

def relationLc2162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92436) * (relationLc2162 rho) = ((1 : F) * rho 92440)

def relationRow3944 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 92439) * ((1 : F) * rho 92440) = ((1 : F) * rho 92441)

def relationRow3945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92442) * ((1 : F) + (1 : F) * rho 92441) = ((1 : F) * rho 92439 + (1 : F) * rho 92440)

def relationRow3946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92443) * ((1 : F) + (-1 : F) * rho 92441) = ((1 : F) * rho 92438 + (-1 : F) * rho 92439 + (-1 : F) * rho 92440)

def relationLc2163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 90559, 13, 145⟩], residual := [((1 : F), 92442)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90452) * (relationLc2163 rho) = ((1 : F) * rho 92444)

def relationLc2164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 90560, 13, 145⟩], residual := [((1 : F), 92443)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 90452) * (relationLc2164 rho) = ((1 : F) * rho 92445)

def relationRow3949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92436) * ((1 : F) * rho 92437) = ((1 : F) * rho 92446)

def relationRow3950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92436) * ((1 : F) * rho 92436) = ((1 : F) * rho 92447)

def relationRow3951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92437) * ((1 : F) * rho 92437) = ((1 : F) * rho 92448)

def relationRow3952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92449) * ((-1 : F) * rho 92447 + (1 : F) * rho 92448) = ((2 : F) * rho 92446)

def relationRow3953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92450) * ((2 : F) + (1 : F) * rho 92447 + (-1 : F) * rho 92448) = ((1 : F) * rho 92447 + (1 : F) * rho 92448)

def relationLc2165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90559, 13, 146⟩, ⟨(1 : F), 90560, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92449 + (1 : F) * rho 92450) * (relationLc2165 rho) = ((1 : F) * rho 92451)

def relationLc2166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 90559, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92450) * (relationLc2166 rho) = ((1 : F) * rho 92452)

def relationLc2167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 90560, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92449) * (relationLc2167 rho) = ((1 : F) * rho 92453)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106
