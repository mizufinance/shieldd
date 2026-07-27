import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg107Defs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107

def relationLc1933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 100⟩, ⟨(1 : F), 99589, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100880 + (1 : F) * rho 100881) * (relationLc1933 rho) = ((1 : F) * rho 100882)

def relationLc1934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100881) * (relationLc1934 rho) = ((1 : F) * rho 100883)

def relationLc1935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100880) * (relationLc1935 rho) = ((1 : F) * rho 100884)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100883) * ((1 : F) * rho 100884) = ((1 : F) * rho 100885)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100886) * ((1 : F) + (1 : F) * rho 100885) = ((1 : F) * rho 100883 + (1 : F) * rho 100884)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100887) * ((1 : F) + (-1 : F) * rho 100885) = ((1 : F) * rho 100882 + (-1 : F) * rho 100883 + (-1 : F) * rho 100884)

def relationLc1936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 100⟩], residual := [((1 : F), 100886)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99436) * (relationLc1936 rho) = ((1 : F) * rho 100888)

def relationLc1937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 100⟩], residual := [((1 : F), 100887)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99436) * (relationLc1937 rho) = ((1 : F) * rho 100889)

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100880) * ((1 : F) * rho 100881) = ((1 : F) * rho 100890)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100880) * ((1 : F) * rho 100880) = ((1 : F) * rho 100891)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100881) * ((1 : F) * rho 100881) = ((1 : F) * rho 100892)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100893) * ((-1 : F) * rho 100891 + (1 : F) * rho 100892) = ((2 : F) * rho 100890)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100894) * ((2 : F) + (1 : F) * rho 100891 + (-1 : F) * rho 100892) = ((1 : F) * rho 100891 + (1 : F) * rho 100892)

def relationLc1938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 101⟩, ⟨(1 : F), 99589, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100893 + (1 : F) * rho 100894) * (relationLc1938 rho) = ((1 : F) * rho 100895)

def relationLc1939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100894) * (relationLc1939 rho) = ((1 : F) * rho 100896)

def relationLc1940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100893) * (relationLc1940 rho) = ((1 : F) * rho 100897)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100896) * ((1 : F) * rho 100897) = ((1 : F) * rho 100898)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100899) * ((1 : F) + (1 : F) * rho 100898) = ((1 : F) * rho 100896 + (1 : F) * rho 100897)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100900) * ((1 : F) + (-1 : F) * rho 100898) = ((1 : F) * rho 100895 + (-1 : F) * rho 100896 + (-1 : F) * rho 100897)

def relationLc1941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 101⟩], residual := [((1 : F), 100899)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99437) * (relationLc1941 rho) = ((1 : F) * rho 100901)

def relationLc1942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 101⟩], residual := [((1 : F), 100900)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99437) * (relationLc1942 rho) = ((1 : F) * rho 100902)

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100893) * ((1 : F) * rho 100894) = ((1 : F) * rho 100903)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100893) * ((1 : F) * rho 100893) = ((1 : F) * rho 100904)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100894) * ((1 : F) * rho 100894) = ((1 : F) * rho 100905)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100906) * ((-1 : F) * rho 100904 + (1 : F) * rho 100905) = ((2 : F) * rho 100903)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100907) * ((2 : F) + (1 : F) * rho 100904 + (-1 : F) * rho 100905) = ((1 : F) * rho 100904 + (1 : F) * rho 100905)

def relationLc1943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 102⟩, ⟨(1 : F), 99589, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100906 + (1 : F) * rho 100907) * (relationLc1943 rho) = ((1 : F) * rho 100908)

def relationLc1944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100907) * (relationLc1944 rho) = ((1 : F) * rho 100909)

def relationLc1945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100906) * (relationLc1945 rho) = ((1 : F) * rho 100910)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100909) * ((1 : F) * rho 100910) = ((1 : F) * rho 100911)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100912) * ((1 : F) + (1 : F) * rho 100911) = ((1 : F) * rho 100909 + (1 : F) * rho 100910)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100913) * ((1 : F) + (-1 : F) * rho 100911) = ((1 : F) * rho 100908 + (-1 : F) * rho 100909 + (-1 : F) * rho 100910)

def relationLc1946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 102⟩], residual := [((1 : F), 100912)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99438) * (relationLc1946 rho) = ((1 : F) * rho 100914)

def relationLc1947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 102⟩], residual := [((1 : F), 100913)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99438) * (relationLc1947 rho) = ((1 : F) * rho 100915)

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100906) * ((1 : F) * rho 100907) = ((1 : F) * rho 100916)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100906) * ((1 : F) * rho 100906) = ((1 : F) * rho 100917)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100907) * ((1 : F) * rho 100907) = ((1 : F) * rho 100918)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100919) * ((-1 : F) * rho 100917 + (1 : F) * rho 100918) = ((2 : F) * rho 100916)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100920) * ((2 : F) + (1 : F) * rho 100917 + (-1 : F) * rho 100918) = ((1 : F) * rho 100917 + (1 : F) * rho 100918)

def relationLc1948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 103⟩, ⟨(1 : F), 99589, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100919 + (1 : F) * rho 100920) * (relationLc1948 rho) = ((1 : F) * rho 100921)

def relationLc1949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100920) * (relationLc1949 rho) = ((1 : F) * rho 100922)

def relationLc1950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100919) * (relationLc1950 rho) = ((1 : F) * rho 100923)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100922) * ((1 : F) * rho 100923) = ((1 : F) * rho 100924)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100925) * ((1 : F) + (1 : F) * rho 100924) = ((1 : F) * rho 100922 + (1 : F) * rho 100923)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100926) * ((1 : F) + (-1 : F) * rho 100924) = ((1 : F) * rho 100921 + (-1 : F) * rho 100922 + (-1 : F) * rho 100923)

def relationLc1951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 103⟩], residual := [((1 : F), 100925)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99439) * (relationLc1951 rho) = ((1 : F) * rho 100927)

def relationLc1952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 103⟩], residual := [((1 : F), 100926)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99439) * (relationLc1952 rho) = ((1 : F) * rho 100928)

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100919) * ((1 : F) * rho 100920) = ((1 : F) * rho 100929)

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100919) * ((1 : F) * rho 100919) = ((1 : F) * rho 100930)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100920) * ((1 : F) * rho 100920) = ((1 : F) * rho 100931)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100932) * ((-1 : F) * rho 100930 + (1 : F) * rho 100931) = ((2 : F) * rho 100929)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100933) * ((2 : F) + (1 : F) * rho 100930 + (-1 : F) * rho 100931) = ((1 : F) * rho 100930 + (1 : F) * rho 100931)

def relationLc1953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 104⟩, ⟨(1 : F), 99589, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100932 + (1 : F) * rho 100933) * (relationLc1953 rho) = ((1 : F) * rho 100934)

def relationLc1954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100933) * (relationLc1954 rho) = ((1 : F) * rho 100935)

def relationLc1955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100932) * (relationLc1955 rho) = ((1 : F) * rho 100936)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100935) * ((1 : F) * rho 100936) = ((1 : F) * rho 100937)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100938) * ((1 : F) + (1 : F) * rho 100937) = ((1 : F) * rho 100935 + (1 : F) * rho 100936)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100939) * ((1 : F) + (-1 : F) * rho 100937) = ((1 : F) * rho 100934 + (-1 : F) * rho 100935 + (-1 : F) * rho 100936)

def relationLc1956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 104⟩], residual := [((1 : F), 100938)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99440) * (relationLc1956 rho) = ((1 : F) * rho 100940)

def relationLc1957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 104⟩], residual := [((1 : F), 100939)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99440) * (relationLc1957 rho) = ((1 : F) * rho 100941)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100932) * ((1 : F) * rho 100933) = ((1 : F) * rho 100942)

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100932) * ((1 : F) * rho 100932) = ((1 : F) * rho 100943)

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100933) * ((1 : F) * rho 100933) = ((1 : F) * rho 100944)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100945) * ((-1 : F) * rho 100943 + (1 : F) * rho 100944) = ((2 : F) * rho 100942)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100946) * ((2 : F) + (1 : F) * rho 100943 + (-1 : F) * rho 100944) = ((1 : F) * rho 100943 + (1 : F) * rho 100944)

def relationLc1958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 105⟩, ⟨(1 : F), 99589, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100945 + (1 : F) * rho 100946) * (relationLc1958 rho) = ((1 : F) * rho 100947)

def relationLc1959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100946) * (relationLc1959 rho) = ((1 : F) * rho 100948)

def relationLc1960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100945) * (relationLc1960 rho) = ((1 : F) * rho 100949)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100948) * ((1 : F) * rho 100949) = ((1 : F) * rho 100950)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100951) * ((1 : F) + (1 : F) * rho 100950) = ((1 : F) * rho 100948 + (1 : F) * rho 100949)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100952) * ((1 : F) + (-1 : F) * rho 100950) = ((1 : F) * rho 100947 + (-1 : F) * rho 100948 + (-1 : F) * rho 100949)

def relationLc1961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 105⟩], residual := [((1 : F), 100951)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99441) * (relationLc1961 rho) = ((1 : F) * rho 100953)

def relationLc1962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 105⟩], residual := [((1 : F), 100952)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99441) * (relationLc1962 rho) = ((1 : F) * rho 100954)

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100945) * ((1 : F) * rho 100946) = ((1 : F) * rho 100955)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100945) * ((1 : F) * rho 100945) = ((1 : F) * rho 100956)

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100946) * ((1 : F) * rho 100946) = ((1 : F) * rho 100957)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100958) * ((-1 : F) * rho 100956 + (1 : F) * rho 100957) = ((2 : F) * rho 100955)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100959) * ((2 : F) + (1 : F) * rho 100956 + (-1 : F) * rho 100957) = ((1 : F) * rho 100956 + (1 : F) * rho 100957)

def relationLc1963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 106⟩, ⟨(1 : F), 99589, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100958 + (1 : F) * rho 100959) * (relationLc1963 rho) = ((1 : F) * rho 100960)

def relationLc1964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100959) * (relationLc1964 rho) = ((1 : F) * rho 100961)

def relationLc1965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100958) * (relationLc1965 rho) = ((1 : F) * rho 100962)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100961) * ((1 : F) * rho 100962) = ((1 : F) * rho 100963)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100964) * ((1 : F) + (1 : F) * rho 100963) = ((1 : F) * rho 100961 + (1 : F) * rho 100962)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100965) * ((1 : F) + (-1 : F) * rho 100963) = ((1 : F) * rho 100960 + (-1 : F) * rho 100961 + (-1 : F) * rho 100962)

def relationLc1966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 106⟩], residual := [((1 : F), 100964)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99442) * (relationLc1966 rho) = ((1 : F) * rho 100966)

def relationLc1967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 106⟩], residual := [((1 : F), 100965)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99442) * (relationLc1967 rho) = ((1 : F) * rho 100967)

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100958) * ((1 : F) * rho 100959) = ((1 : F) * rho 100968)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100958) * ((1 : F) * rho 100958) = ((1 : F) * rho 100969)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100959) * ((1 : F) * rho 100959) = ((1 : F) * rho 100970)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100971) * ((-1 : F) * rho 100969 + (1 : F) * rho 100970) = ((2 : F) * rho 100968)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100972) * ((2 : F) + (1 : F) * rho 100969 + (-1 : F) * rho 100970) = ((1 : F) * rho 100969 + (1 : F) * rho 100970)

def relationLc1968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 107⟩, ⟨(1 : F), 99589, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100971 + (1 : F) * rho 100972) * (relationLc1968 rho) = ((1 : F) * rho 100973)

def relationLc1969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100972) * (relationLc1969 rho) = ((1 : F) * rho 100974)

def relationLc1970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100971) * (relationLc1970 rho) = ((1 : F) * rho 100975)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100974) * ((1 : F) * rho 100975) = ((1 : F) * rho 100976)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100977) * ((1 : F) + (1 : F) * rho 100976) = ((1 : F) * rho 100974 + (1 : F) * rho 100975)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100978) * ((1 : F) + (-1 : F) * rho 100976) = ((1 : F) * rho 100973 + (-1 : F) * rho 100974 + (-1 : F) * rho 100975)

def relationLc1971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 107⟩], residual := [((1 : F), 100977)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99443) * (relationLc1971 rho) = ((1 : F) * rho 100979)

def relationLc1972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 107⟩], residual := [((1 : F), 100978)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99443) * (relationLc1972 rho) = ((1 : F) * rho 100980)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100971) * ((1 : F) * rho 100972) = ((1 : F) * rho 100981)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100971) * ((1 : F) * rho 100971) = ((1 : F) * rho 100982)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100972) * ((1 : F) * rho 100972) = ((1 : F) * rho 100983)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100984) * ((-1 : F) * rho 100982 + (1 : F) * rho 100983) = ((2 : F) * rho 100981)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100985) * ((2 : F) + (1 : F) * rho 100982 + (-1 : F) * rho 100983) = ((1 : F) * rho 100982 + (1 : F) * rho 100983)

def relationLc1973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 108⟩, ⟨(1 : F), 99589, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100984 + (1 : F) * rho 100985) * (relationLc1973 rho) = ((1 : F) * rho 100986)

def relationLc1974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100985) * (relationLc1974 rho) = ((1 : F) * rho 100987)

def relationLc1975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100984) * (relationLc1975 rho) = ((1 : F) * rho 100988)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 100987) * ((1 : F) * rho 100988) = ((1 : F) * rho 100989)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100990) * ((1 : F) + (1 : F) * rho 100989) = ((1 : F) * rho 100987 + (1 : F) * rho 100988)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100991) * ((1 : F) + (-1 : F) * rho 100989) = ((1 : F) * rho 100986 + (-1 : F) * rho 100987 + (-1 : F) * rho 100988)

def relationLc1976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 108⟩], residual := [((1 : F), 100990)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99444) * (relationLc1976 rho) = ((1 : F) * rho 100992)

def relationLc1977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 108⟩], residual := [((1 : F), 100991)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99444) * (relationLc1977 rho) = ((1 : F) * rho 100993)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100984) * ((1 : F) * rho 100985) = ((1 : F) * rho 100994)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100984) * ((1 : F) * rho 100984) = ((1 : F) * rho 100995)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100985) * ((1 : F) * rho 100985) = ((1 : F) * rho 100996)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100997) * ((-1 : F) * rho 100995 + (1 : F) * rho 100996) = ((2 : F) * rho 100994)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100998) * ((2 : F) + (1 : F) * rho 100995 + (-1 : F) * rho 100996) = ((1 : F) * rho 100995 + (1 : F) * rho 100996)

def relationLc1978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 109⟩, ⟨(1 : F), 99589, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100997 + (1 : F) * rho 100998) * (relationLc1978 rho) = ((1 : F) * rho 100999)

def relationLc1979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100998) * (relationLc1979 rho) = ((1 : F) * rho 101000)

def relationLc1980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100997) * (relationLc1980 rho) = ((1 : F) * rho 101001)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101000) * ((1 : F) * rho 101001) = ((1 : F) * rho 101002)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101003) * ((1 : F) + (1 : F) * rho 101002) = ((1 : F) * rho 101000 + (1 : F) * rho 101001)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101004) * ((1 : F) + (-1 : F) * rho 101002) = ((1 : F) * rho 100999 + (-1 : F) * rho 101000 + (-1 : F) * rho 101001)

def relationLc1981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 109⟩], residual := [((1 : F), 101003)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99445) * (relationLc1981 rho) = ((1 : F) * rho 101005)

def relationLc1982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 109⟩], residual := [((1 : F), 101004)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99445) * (relationLc1982 rho) = ((1 : F) * rho 101006)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100997) * ((1 : F) * rho 100998) = ((1 : F) * rho 101007)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100997) * ((1 : F) * rho 100997) = ((1 : F) * rho 101008)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100998) * ((1 : F) * rho 100998) = ((1 : F) * rho 101009)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101010) * ((-1 : F) * rho 101008 + (1 : F) * rho 101009) = ((2 : F) * rho 101007)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101011) * ((2 : F) + (1 : F) * rho 101008 + (-1 : F) * rho 101009) = ((1 : F) * rho 101008 + (1 : F) * rho 101009)

def relationLc1983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 110⟩, ⟨(1 : F), 99589, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101010 + (1 : F) * rho 101011) * (relationLc1983 rho) = ((1 : F) * rho 101012)

def relationLc1984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101011) * (relationLc1984 rho) = ((1 : F) * rho 101013)

def relationLc1985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101010) * (relationLc1985 rho) = ((1 : F) * rho 101014)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101013) * ((1 : F) * rho 101014) = ((1 : F) * rho 101015)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101016) * ((1 : F) + (1 : F) * rho 101015) = ((1 : F) * rho 101013 + (1 : F) * rho 101014)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101017) * ((1 : F) + (-1 : F) * rho 101015) = ((1 : F) * rho 101012 + (-1 : F) * rho 101013 + (-1 : F) * rho 101014)

def relationLc1986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 110⟩], residual := [((1 : F), 101016)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99446) * (relationLc1986 rho) = ((1 : F) * rho 101018)

def relationLc1987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 110⟩], residual := [((1 : F), 101017)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99446) * (relationLc1987 rho) = ((1 : F) * rho 101019)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101010) * ((1 : F) * rho 101011) = ((1 : F) * rho 101020)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101010) * ((1 : F) * rho 101010) = ((1 : F) * rho 101021)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101011) * ((1 : F) * rho 101011) = ((1 : F) * rho 101022)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101023) * ((-1 : F) * rho 101021 + (1 : F) * rho 101022) = ((2 : F) * rho 101020)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101024) * ((2 : F) + (1 : F) * rho 101021 + (-1 : F) * rho 101022) = ((1 : F) * rho 101021 + (1 : F) * rho 101022)

def relationLc1988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 111⟩, ⟨(1 : F), 99589, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101023 + (1 : F) * rho 101024) * (relationLc1988 rho) = ((1 : F) * rho 101025)

def relationLc1989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101024) * (relationLc1989 rho) = ((1 : F) * rho 101026)

def relationLc1990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101023) * (relationLc1990 rho) = ((1 : F) * rho 101027)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101026) * ((1 : F) * rho 101027) = ((1 : F) * rho 101028)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101029) * ((1 : F) + (1 : F) * rho 101028) = ((1 : F) * rho 101026 + (1 : F) * rho 101027)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101030) * ((1 : F) + (-1 : F) * rho 101028) = ((1 : F) * rho 101025 + (-1 : F) * rho 101026 + (-1 : F) * rho 101027)

def relationLc1991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 111⟩], residual := [((1 : F), 101029)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99447) * (relationLc1991 rho) = ((1 : F) * rho 101031)

def relationLc1992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 111⟩], residual := [((1 : F), 101030)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99447) * (relationLc1992 rho) = ((1 : F) * rho 101032)

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101023) * ((1 : F) * rho 101024) = ((1 : F) * rho 101033)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101023) * ((1 : F) * rho 101023) = ((1 : F) * rho 101034)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101024) * ((1 : F) * rho 101024) = ((1 : F) * rho 101035)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101036) * ((-1 : F) * rho 101034 + (1 : F) * rho 101035) = ((2 : F) * rho 101033)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101037) * ((2 : F) + (1 : F) * rho 101034 + (-1 : F) * rho 101035) = ((1 : F) * rho 101034 + (1 : F) * rho 101035)

def relationLc1993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 112⟩, ⟨(1 : F), 99589, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101036 + (1 : F) * rho 101037) * (relationLc1993 rho) = ((1 : F) * rho 101038)

def relationLc1994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101037) * (relationLc1994 rho) = ((1 : F) * rho 101039)

def relationLc1995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101036) * (relationLc1995 rho) = ((1 : F) * rho 101040)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101039) * ((1 : F) * rho 101040) = ((1 : F) * rho 101041)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101042) * ((1 : F) + (1 : F) * rho 101041) = ((1 : F) * rho 101039 + (1 : F) * rho 101040)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101043) * ((1 : F) + (-1 : F) * rho 101041) = ((1 : F) * rho 101038 + (-1 : F) * rho 101039 + (-1 : F) * rho 101040)

def relationLc1996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 112⟩], residual := [((1 : F), 101042)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99448) * (relationLc1996 rho) = ((1 : F) * rho 101044)

def relationLc1997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 112⟩], residual := [((1 : F), 101043)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99448) * (relationLc1997 rho) = ((1 : F) * rho 101045)

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101036) * ((1 : F) * rho 101037) = ((1 : F) * rho 101046)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101036) * ((1 : F) * rho 101036) = ((1 : F) * rho 101047)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101037) * ((1 : F) * rho 101037) = ((1 : F) * rho 101048)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101049) * ((-1 : F) * rho 101047 + (1 : F) * rho 101048) = ((2 : F) * rho 101046)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101050) * ((2 : F) + (1 : F) * rho 101047 + (-1 : F) * rho 101048) = ((1 : F) * rho 101047 + (1 : F) * rho 101048)

def relationLc1998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 113⟩, ⟨(1 : F), 99589, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101049 + (1 : F) * rho 101050) * (relationLc1998 rho) = ((1 : F) * rho 101051)

def relationLc1999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101050) * (relationLc1999 rho) = ((1 : F) * rho 101052)

def relationLc2000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101049) * (relationLc2000 rho) = ((1 : F) * rho 101053)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101052) * ((1 : F) * rho 101053) = ((1 : F) * rho 101054)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101055) * ((1 : F) + (1 : F) * rho 101054) = ((1 : F) * rho 101052 + (1 : F) * rho 101053)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101056) * ((1 : F) + (-1 : F) * rho 101054) = ((1 : F) * rho 101051 + (-1 : F) * rho 101052 + (-1 : F) * rho 101053)

def relationLc2001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 113⟩], residual := [((1 : F), 101055)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99449) * (relationLc2001 rho) = ((1 : F) * rho 101057)

def relationLc2002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 113⟩], residual := [((1 : F), 101056)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99449) * (relationLc2002 rho) = ((1 : F) * rho 101058)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101049) * ((1 : F) * rho 101050) = ((1 : F) * rho 101059)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101049) * ((1 : F) * rho 101049) = ((1 : F) * rho 101060)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101050) * ((1 : F) * rho 101050) = ((1 : F) * rho 101061)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101062) * ((-1 : F) * rho 101060 + (1 : F) * rho 101061) = ((2 : F) * rho 101059)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101063) * ((2 : F) + (1 : F) * rho 101060 + (-1 : F) * rho 101061) = ((1 : F) * rho 101060 + (1 : F) * rho 101061)

def relationLc2003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 114⟩, ⟨(1 : F), 99589, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101062 + (1 : F) * rho 101063) * (relationLc2003 rho) = ((1 : F) * rho 101064)

def relationLc2004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101063) * (relationLc2004 rho) = ((1 : F) * rho 101065)

def relationLc2005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101062) * (relationLc2005 rho) = ((1 : F) * rho 101066)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101065) * ((1 : F) * rho 101066) = ((1 : F) * rho 101067)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101068) * ((1 : F) + (1 : F) * rho 101067) = ((1 : F) * rho 101065 + (1 : F) * rho 101066)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101069) * ((1 : F) + (-1 : F) * rho 101067) = ((1 : F) * rho 101064 + (-1 : F) * rho 101065 + (-1 : F) * rho 101066)

def relationLc2006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 114⟩], residual := [((1 : F), 101068)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99450) * (relationLc2006 rho) = ((1 : F) * rho 101070)

def relationLc2007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 114⟩], residual := [((1 : F), 101069)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99450) * (relationLc2007 rho) = ((1 : F) * rho 101071)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101062) * ((1 : F) * rho 101063) = ((1 : F) * rho 101072)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101062) * ((1 : F) * rho 101062) = ((1 : F) * rho 101073)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101063) * ((1 : F) * rho 101063) = ((1 : F) * rho 101074)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101075) * ((-1 : F) * rho 101073 + (1 : F) * rho 101074) = ((2 : F) * rho 101072)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101076) * ((2 : F) + (1 : F) * rho 101073 + (-1 : F) * rho 101074) = ((1 : F) * rho 101073 + (1 : F) * rho 101074)

def relationLc2008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 115⟩, ⟨(1 : F), 99589, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101075 + (1 : F) * rho 101076) * (relationLc2008 rho) = ((1 : F) * rho 101077)

def relationLc2009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101076) * (relationLc2009 rho) = ((1 : F) * rho 101078)

def relationLc2010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101075) * (relationLc2010 rho) = ((1 : F) * rho 101079)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101078) * ((1 : F) * rho 101079) = ((1 : F) * rho 101080)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101081) * ((1 : F) + (1 : F) * rho 101080) = ((1 : F) * rho 101078 + (1 : F) * rho 101079)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101082) * ((1 : F) + (-1 : F) * rho 101080) = ((1 : F) * rho 101077 + (-1 : F) * rho 101078 + (-1 : F) * rho 101079)

def relationLc2011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 115⟩], residual := [((1 : F), 101081)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99451) * (relationLc2011 rho) = ((1 : F) * rho 101083)

def relationLc2012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 115⟩], residual := [((1 : F), 101082)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99451) * (relationLc2012 rho) = ((1 : F) * rho 101084)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101075) * ((1 : F) * rho 101076) = ((1 : F) * rho 101085)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101075) * ((1 : F) * rho 101075) = ((1 : F) * rho 101086)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101076) * ((1 : F) * rho 101076) = ((1 : F) * rho 101087)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101088) * ((-1 : F) * rho 101086 + (1 : F) * rho 101087) = ((2 : F) * rho 101085)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101089) * ((2 : F) + (1 : F) * rho 101086 + (-1 : F) * rho 101087) = ((1 : F) * rho 101086 + (1 : F) * rho 101087)

def relationLc2013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 116⟩, ⟨(1 : F), 99589, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101088 + (1 : F) * rho 101089) * (relationLc2013 rho) = ((1 : F) * rho 101090)

def relationLc2014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101089) * (relationLc2014 rho) = ((1 : F) * rho 101091)

def relationLc2015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101088) * (relationLc2015 rho) = ((1 : F) * rho 101092)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101091) * ((1 : F) * rho 101092) = ((1 : F) * rho 101093)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101094) * ((1 : F) + (1 : F) * rho 101093) = ((1 : F) * rho 101091 + (1 : F) * rho 101092)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101095) * ((1 : F) + (-1 : F) * rho 101093) = ((1 : F) * rho 101090 + (-1 : F) * rho 101091 + (-1 : F) * rho 101092)

def relationLc2016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 116⟩], residual := [((1 : F), 101094)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99452) * (relationLc2016 rho) = ((1 : F) * rho 101096)

def relationLc2017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 116⟩], residual := [((1 : F), 101095)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99452) * (relationLc2017 rho) = ((1 : F) * rho 101097)

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101088) * ((1 : F) * rho 101089) = ((1 : F) * rho 101098)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101088) * ((1 : F) * rho 101088) = ((1 : F) * rho 101099)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101089) * ((1 : F) * rho 101089) = ((1 : F) * rho 101100)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101101) * ((-1 : F) * rho 101099 + (1 : F) * rho 101100) = ((2 : F) * rho 101098)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101102) * ((2 : F) + (1 : F) * rho 101099 + (-1 : F) * rho 101100) = ((1 : F) * rho 101099 + (1 : F) * rho 101100)

def relationLc2018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 117⟩, ⟨(1 : F), 99589, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101101 + (1 : F) * rho 101102) * (relationLc2018 rho) = ((1 : F) * rho 101103)

def relationLc2019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101102) * (relationLc2019 rho) = ((1 : F) * rho 101104)

def relationLc2020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101101) * (relationLc2020 rho) = ((1 : F) * rho 101105)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101104) * ((1 : F) * rho 101105) = ((1 : F) * rho 101106)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101107) * ((1 : F) + (1 : F) * rho 101106) = ((1 : F) * rho 101104 + (1 : F) * rho 101105)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101108) * ((1 : F) + (-1 : F) * rho 101106) = ((1 : F) * rho 101103 + (-1 : F) * rho 101104 + (-1 : F) * rho 101105)

def relationLc2021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 117⟩], residual := [((1 : F), 101107)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99453) * (relationLc2021 rho) = ((1 : F) * rho 101109)

def relationLc2022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 117⟩], residual := [((1 : F), 101108)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99453) * (relationLc2022 rho) = ((1 : F) * rho 101110)

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101101) * ((1 : F) * rho 101102) = ((1 : F) * rho 101111)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101101) * ((1 : F) * rho 101101) = ((1 : F) * rho 101112)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101102) * ((1 : F) * rho 101102) = ((1 : F) * rho 101113)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101114) * ((-1 : F) * rho 101112 + (1 : F) * rho 101113) = ((2 : F) * rho 101111)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101115) * ((2 : F) + (1 : F) * rho 101112 + (-1 : F) * rho 101113) = ((1 : F) * rho 101112 + (1 : F) * rho 101113)

def relationLc2023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 118⟩, ⟨(1 : F), 99589, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101114 + (1 : F) * rho 101115) * (relationLc2023 rho) = ((1 : F) * rho 101116)

def relationLc2024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101115) * (relationLc2024 rho) = ((1 : F) * rho 101117)

def relationLc2025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101114) * (relationLc2025 rho) = ((1 : F) * rho 101118)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101117) * ((1 : F) * rho 101118) = ((1 : F) * rho 101119)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101120) * ((1 : F) + (1 : F) * rho 101119) = ((1 : F) * rho 101117 + (1 : F) * rho 101118)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101121) * ((1 : F) + (-1 : F) * rho 101119) = ((1 : F) * rho 101116 + (-1 : F) * rho 101117 + (-1 : F) * rho 101118)

def relationLc2026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 118⟩], residual := [((1 : F), 101120)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99454) * (relationLc2026 rho) = ((1 : F) * rho 101122)

def relationLc2027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 118⟩], residual := [((1 : F), 101121)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99454) * (relationLc2027 rho) = ((1 : F) * rho 101123)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101114) * ((1 : F) * rho 101115) = ((1 : F) * rho 101124)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101114) * ((1 : F) * rho 101114) = ((1 : F) * rho 101125)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101115) * ((1 : F) * rho 101115) = ((1 : F) * rho 101126)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101127) * ((-1 : F) * rho 101125 + (1 : F) * rho 101126) = ((2 : F) * rho 101124)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101128) * ((2 : F) + (1 : F) * rho 101125 + (-1 : F) * rho 101126) = ((1 : F) * rho 101125 + (1 : F) * rho 101126)

def relationLc2028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 119⟩, ⟨(1 : F), 99589, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101127 + (1 : F) * rho 101128) * (relationLc2028 rho) = ((1 : F) * rho 101129)

def relationLc2029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101128) * (relationLc2029 rho) = ((1 : F) * rho 101130)

def relationLc2030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101127) * (relationLc2030 rho) = ((1 : F) * rho 101131)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101130) * ((1 : F) * rho 101131) = ((1 : F) * rho 101132)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101133) * ((1 : F) + (1 : F) * rho 101132) = ((1 : F) * rho 101130 + (1 : F) * rho 101131)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101134) * ((1 : F) + (-1 : F) * rho 101132) = ((1 : F) * rho 101129 + (-1 : F) * rho 101130 + (-1 : F) * rho 101131)

def relationLc2031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 119⟩], residual := [((1 : F), 101133)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99455) * (relationLc2031 rho) = ((1 : F) * rho 101135)

def relationLc2032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 119⟩], residual := [((1 : F), 101134)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99455) * (relationLc2032 rho) = ((1 : F) * rho 101136)

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101127) * ((1 : F) * rho 101128) = ((1 : F) * rho 101137)

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101127) * ((1 : F) * rho 101127) = ((1 : F) * rho 101138)

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101128) * ((1 : F) * rho 101128) = ((1 : F) * rho 101139)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101140) * ((-1 : F) * rho 101138 + (1 : F) * rho 101139) = ((2 : F) * rho 101137)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101141) * ((2 : F) + (1 : F) * rho 101138 + (-1 : F) * rho 101139) = ((1 : F) * rho 101138 + (1 : F) * rho 101139)

def relationLc2033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 120⟩, ⟨(1 : F), 99589, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101140 + (1 : F) * rho 101141) * (relationLc2033 rho) = ((1 : F) * rho 101142)

def relationLc2034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101141) * (relationLc2034 rho) = ((1 : F) * rho 101143)

def relationLc2035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101140) * (relationLc2035 rho) = ((1 : F) * rho 101144)

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101143) * ((1 : F) * rho 101144) = ((1 : F) * rho 101145)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101146) * ((1 : F) + (1 : F) * rho 101145) = ((1 : F) * rho 101143 + (1 : F) * rho 101144)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101147) * ((1 : F) + (-1 : F) * rho 101145) = ((1 : F) * rho 101142 + (-1 : F) * rho 101143 + (-1 : F) * rho 101144)

def relationLc2036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 120⟩], residual := [((1 : F), 101146)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99456) * (relationLc2036 rho) = ((1 : F) * rho 101148)

def relationLc2037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 120⟩], residual := [((1 : F), 101147)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99456) * (relationLc2037 rho) = ((1 : F) * rho 101149)

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101140) * ((1 : F) * rho 101141) = ((1 : F) * rho 101150)

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101140) * ((1 : F) * rho 101140) = ((1 : F) * rho 101151)

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101141) * ((1 : F) * rho 101141) = ((1 : F) * rho 101152)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101153) * ((-1 : F) * rho 101151 + (1 : F) * rho 101152) = ((2 : F) * rho 101150)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101154) * ((2 : F) + (1 : F) * rho 101151 + (-1 : F) * rho 101152) = ((1 : F) * rho 101151 + (1 : F) * rho 101152)

def relationLc2038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 121⟩, ⟨(1 : F), 99589, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101153 + (1 : F) * rho 101154) * (relationLc2038 rho) = ((1 : F) * rho 101155)

def relationLc2039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101154) * (relationLc2039 rho) = ((1 : F) * rho 101156)

def relationLc2040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101153) * (relationLc2040 rho) = ((1 : F) * rho 101157)

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101156) * ((1 : F) * rho 101157) = ((1 : F) * rho 101158)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101159) * ((1 : F) + (1 : F) * rho 101158) = ((1 : F) * rho 101156 + (1 : F) * rho 101157)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101160) * ((1 : F) + (-1 : F) * rho 101158) = ((1 : F) * rho 101155 + (-1 : F) * rho 101156 + (-1 : F) * rho 101157)

def relationLc2041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 121⟩], residual := [((1 : F), 101159)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99457) * (relationLc2041 rho) = ((1 : F) * rho 101161)

def relationLc2042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 121⟩], residual := [((1 : F), 101160)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99457) * (relationLc2042 rho) = ((1 : F) * rho 101162)

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101153) * ((1 : F) * rho 101154) = ((1 : F) * rho 101163)

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101153) * ((1 : F) * rho 101153) = ((1 : F) * rho 101164)

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101154) * ((1 : F) * rho 101154) = ((1 : F) * rho 101165)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101166) * ((-1 : F) * rho 101164 + (1 : F) * rho 101165) = ((2 : F) * rho 101163)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101167) * ((2 : F) + (1 : F) * rho 101164 + (-1 : F) * rho 101165) = ((1 : F) * rho 101164 + (1 : F) * rho 101165)

def relationLc2043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 122⟩, ⟨(1 : F), 99589, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101166 + (1 : F) * rho 101167) * (relationLc2043 rho) = ((1 : F) * rho 101168)

def relationLc2044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101167) * (relationLc2044 rho) = ((1 : F) * rho 101169)

def relationLc2045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101166) * (relationLc2045 rho) = ((1 : F) * rho 101170)

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101169) * ((1 : F) * rho 101170) = ((1 : F) * rho 101171)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101172) * ((1 : F) + (1 : F) * rho 101171) = ((1 : F) * rho 101169 + (1 : F) * rho 101170)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101173) * ((1 : F) + (-1 : F) * rho 101171) = ((1 : F) * rho 101168 + (-1 : F) * rho 101169 + (-1 : F) * rho 101170)

def relationLc2046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 122⟩], residual := [((1 : F), 101172)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99458) * (relationLc2046 rho) = ((1 : F) * rho 101174)

def relationLc2047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 122⟩], residual := [((1 : F), 101173)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99458) * (relationLc2047 rho) = ((1 : F) * rho 101175)

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101166) * ((1 : F) * rho 101167) = ((1 : F) * rho 101176)

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101166) * ((1 : F) * rho 101166) = ((1 : F) * rho 101177)

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101167) * ((1 : F) * rho 101167) = ((1 : F) * rho 101178)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101179) * ((-1 : F) * rho 101177 + (1 : F) * rho 101178) = ((2 : F) * rho 101176)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101180) * ((2 : F) + (1 : F) * rho 101177 + (-1 : F) * rho 101178) = ((1 : F) * rho 101177 + (1 : F) * rho 101178)

def relationLc2048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 123⟩, ⟨(1 : F), 99589, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101179 + (1 : F) * rho 101180) * (relationLc2048 rho) = ((1 : F) * rho 101181)

def relationLc2049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101180) * (relationLc2049 rho) = ((1 : F) * rho 101182)

def relationLc2050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101179) * (relationLc2050 rho) = ((1 : F) * rho 101183)

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101182) * ((1 : F) * rho 101183) = ((1 : F) * rho 101184)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101185) * ((1 : F) + (1 : F) * rho 101184) = ((1 : F) * rho 101182 + (1 : F) * rho 101183)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101186) * ((1 : F) + (-1 : F) * rho 101184) = ((1 : F) * rho 101181 + (-1 : F) * rho 101182 + (-1 : F) * rho 101183)

def relationLc2051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 123⟩], residual := [((1 : F), 101185)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99459) * (relationLc2051 rho) = ((1 : F) * rho 101187)

def relationLc2052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 123⟩], residual := [((1 : F), 101186)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99459) * (relationLc2052 rho) = ((1 : F) * rho 101188)

def relationRow3662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101179) * ((1 : F) * rho 101180) = ((1 : F) * rho 101189)

def relationRow3663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101179) * ((1 : F) * rho 101179) = ((1 : F) * rho 101190)

def relationRow3664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101180) * ((1 : F) * rho 101180) = ((1 : F) * rho 101191)

def relationRow3665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101192) * ((-1 : F) * rho 101190 + (1 : F) * rho 101191) = ((2 : F) * rho 101189)

def relationRow3666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101193) * ((2 : F) + (1 : F) * rho 101190 + (-1 : F) * rho 101191) = ((1 : F) * rho 101190 + (1 : F) * rho 101191)

def relationLc2053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 124⟩, ⟨(1 : F), 99589, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101192 + (1 : F) * rho 101193) * (relationLc2053 rho) = ((1 : F) * rho 101194)

def relationLc2054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101193) * (relationLc2054 rho) = ((1 : F) * rho 101195)

def relationLc2055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101192) * (relationLc2055 rho) = ((1 : F) * rho 101196)

def relationRow3670 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101195) * ((1 : F) * rho 101196) = ((1 : F) * rho 101197)

def relationRow3671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101198) * ((1 : F) + (1 : F) * rho 101197) = ((1 : F) * rho 101195 + (1 : F) * rho 101196)

def relationRow3672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101199) * ((1 : F) + (-1 : F) * rho 101197) = ((1 : F) * rho 101194 + (-1 : F) * rho 101195 + (-1 : F) * rho 101196)

def relationLc2056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 124⟩], residual := [((1 : F), 101198)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99460) * (relationLc2056 rho) = ((1 : F) * rho 101200)

def relationLc2057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 124⟩], residual := [((1 : F), 101199)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99460) * (relationLc2057 rho) = ((1 : F) * rho 101201)

def relationRow3675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101192) * ((1 : F) * rho 101193) = ((1 : F) * rho 101202)

def relationRow3676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101192) * ((1 : F) * rho 101192) = ((1 : F) * rho 101203)

def relationRow3677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101193) * ((1 : F) * rho 101193) = ((1 : F) * rho 101204)

def relationRow3678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101205) * ((-1 : F) * rho 101203 + (1 : F) * rho 101204) = ((2 : F) * rho 101202)

def relationRow3679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101206) * ((2 : F) + (1 : F) * rho 101203 + (-1 : F) * rho 101204) = ((1 : F) * rho 101203 + (1 : F) * rho 101204)

def relationLc2058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 125⟩, ⟨(1 : F), 99589, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101205 + (1 : F) * rho 101206) * (relationLc2058 rho) = ((1 : F) * rho 101207)

def relationLc2059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101206) * (relationLc2059 rho) = ((1 : F) * rho 101208)

def relationLc2060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101205) * (relationLc2060 rho) = ((1 : F) * rho 101209)

def relationRow3683 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101208) * ((1 : F) * rho 101209) = ((1 : F) * rho 101210)

def relationRow3684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101211) * ((1 : F) + (1 : F) * rho 101210) = ((1 : F) * rho 101208 + (1 : F) * rho 101209)

def relationRow3685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101212) * ((1 : F) + (-1 : F) * rho 101210) = ((1 : F) * rho 101207 + (-1 : F) * rho 101208 + (-1 : F) * rho 101209)

def relationLc2061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 125⟩], residual := [((1 : F), 101211)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99461) * (relationLc2061 rho) = ((1 : F) * rho 101213)

def relationLc2062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 125⟩], residual := [((1 : F), 101212)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99461) * (relationLc2062 rho) = ((1 : F) * rho 101214)

def relationRow3688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101205) * ((1 : F) * rho 101206) = ((1 : F) * rho 101215)

def relationRow3689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101205) * ((1 : F) * rho 101205) = ((1 : F) * rho 101216)

def relationRow3690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101206) * ((1 : F) * rho 101206) = ((1 : F) * rho 101217)

def relationRow3691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101218) * ((-1 : F) * rho 101216 + (1 : F) * rho 101217) = ((2 : F) * rho 101215)

def relationRow3692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101219) * ((2 : F) + (1 : F) * rho 101216 + (-1 : F) * rho 101217) = ((1 : F) * rho 101216 + (1 : F) * rho 101217)

def relationLc2063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 126⟩, ⟨(1 : F), 99589, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101218 + (1 : F) * rho 101219) * (relationLc2063 rho) = ((1 : F) * rho 101220)

def relationLc2064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101219) * (relationLc2064 rho) = ((1 : F) * rho 101221)

def relationLc2065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101218) * (relationLc2065 rho) = ((1 : F) * rho 101222)

def relationRow3696 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101221) * ((1 : F) * rho 101222) = ((1 : F) * rho 101223)

def relationRow3697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101224) * ((1 : F) + (1 : F) * rho 101223) = ((1 : F) * rho 101221 + (1 : F) * rho 101222)

def relationRow3698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101225) * ((1 : F) + (-1 : F) * rho 101223) = ((1 : F) * rho 101220 + (-1 : F) * rho 101221 + (-1 : F) * rho 101222)

def relationLc2066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 126⟩], residual := [((1 : F), 101224)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99462) * (relationLc2066 rho) = ((1 : F) * rho 101226)

def relationLc2067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 126⟩], residual := [((1 : F), 101225)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99462) * (relationLc2067 rho) = ((1 : F) * rho 101227)

def relationRow3701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101218) * ((1 : F) * rho 101219) = ((1 : F) * rho 101228)

def relationRow3702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101218) * ((1 : F) * rho 101218) = ((1 : F) * rho 101229)

def relationRow3703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101219) * ((1 : F) * rho 101219) = ((1 : F) * rho 101230)

def relationRow3704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101231) * ((-1 : F) * rho 101229 + (1 : F) * rho 101230) = ((2 : F) * rho 101228)

def relationRow3705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101232) * ((2 : F) + (1 : F) * rho 101229 + (-1 : F) * rho 101230) = ((1 : F) * rho 101229 + (1 : F) * rho 101230)

def relationLc2068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 127⟩, ⟨(1 : F), 99589, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101231 + (1 : F) * rho 101232) * (relationLc2068 rho) = ((1 : F) * rho 101233)

def relationLc2069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101232) * (relationLc2069 rho) = ((1 : F) * rho 101234)

def relationLc2070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101231) * (relationLc2070 rho) = ((1 : F) * rho 101235)

def relationRow3709 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101234) * ((1 : F) * rho 101235) = ((1 : F) * rho 101236)

def relationRow3710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101237) * ((1 : F) + (1 : F) * rho 101236) = ((1 : F) * rho 101234 + (1 : F) * rho 101235)

def relationRow3711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101238) * ((1 : F) + (-1 : F) * rho 101236) = ((1 : F) * rho 101233 + (-1 : F) * rho 101234 + (-1 : F) * rho 101235)

def relationLc2071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 127⟩], residual := [((1 : F), 101237)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99463) * (relationLc2071 rho) = ((1 : F) * rho 101239)

def relationLc2072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 127⟩], residual := [((1 : F), 101238)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99463) * (relationLc2072 rho) = ((1 : F) * rho 101240)

def relationRow3714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101231) * ((1 : F) * rho 101232) = ((1 : F) * rho 101241)

def relationRow3715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101231) * ((1 : F) * rho 101231) = ((1 : F) * rho 101242)

def relationRow3716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101232) * ((1 : F) * rho 101232) = ((1 : F) * rho 101243)

def relationRow3717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101244) * ((-1 : F) * rho 101242 + (1 : F) * rho 101243) = ((2 : F) * rho 101241)

def relationRow3718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101245) * ((2 : F) + (1 : F) * rho 101242 + (-1 : F) * rho 101243) = ((1 : F) * rho 101242 + (1 : F) * rho 101243)

def relationLc2073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 128⟩, ⟨(1 : F), 99589, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101244 + (1 : F) * rho 101245) * (relationLc2073 rho) = ((1 : F) * rho 101246)

def relationLc2074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101245) * (relationLc2074 rho) = ((1 : F) * rho 101247)

def relationLc2075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101244) * (relationLc2075 rho) = ((1 : F) * rho 101248)

def relationRow3722 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101247) * ((1 : F) * rho 101248) = ((1 : F) * rho 101249)

def relationRow3723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101250) * ((1 : F) + (1 : F) * rho 101249) = ((1 : F) * rho 101247 + (1 : F) * rho 101248)

def relationRow3724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101251) * ((1 : F) + (-1 : F) * rho 101249) = ((1 : F) * rho 101246 + (-1 : F) * rho 101247 + (-1 : F) * rho 101248)

def relationLc2076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 128⟩], residual := [((1 : F), 101250)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99464) * (relationLc2076 rho) = ((1 : F) * rho 101252)

def relationLc2077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 128⟩], residual := [((1 : F), 101251)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99464) * (relationLc2077 rho) = ((1 : F) * rho 101253)

def relationRow3727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101244) * ((1 : F) * rho 101245) = ((1 : F) * rho 101254)

def relationRow3728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101244) * ((1 : F) * rho 101244) = ((1 : F) * rho 101255)

def relationRow3729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101245) * ((1 : F) * rho 101245) = ((1 : F) * rho 101256)

def relationRow3730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101257) * ((-1 : F) * rho 101255 + (1 : F) * rho 101256) = ((2 : F) * rho 101254)

def relationRow3731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101258) * ((2 : F) + (1 : F) * rho 101255 + (-1 : F) * rho 101256) = ((1 : F) * rho 101255 + (1 : F) * rho 101256)

def relationLc2078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 129⟩, ⟨(1 : F), 99589, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101257 + (1 : F) * rho 101258) * (relationLc2078 rho) = ((1 : F) * rho 101259)

def relationLc2079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101258) * (relationLc2079 rho) = ((1 : F) * rho 101260)

def relationLc2080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101257) * (relationLc2080 rho) = ((1 : F) * rho 101261)

def relationRow3735 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101260) * ((1 : F) * rho 101261) = ((1 : F) * rho 101262)

def relationRow3736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101263) * ((1 : F) + (1 : F) * rho 101262) = ((1 : F) * rho 101260 + (1 : F) * rho 101261)

def relationRow3737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101264) * ((1 : F) + (-1 : F) * rho 101262) = ((1 : F) * rho 101259 + (-1 : F) * rho 101260 + (-1 : F) * rho 101261)

def relationLc2081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 129⟩], residual := [((1 : F), 101263)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99465) * (relationLc2081 rho) = ((1 : F) * rho 101265)

def relationLc2082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 129⟩], residual := [((1 : F), 101264)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99465) * (relationLc2082 rho) = ((1 : F) * rho 101266)

def relationRow3740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101257) * ((1 : F) * rho 101258) = ((1 : F) * rho 101267)

def relationRow3741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101257) * ((1 : F) * rho 101257) = ((1 : F) * rho 101268)

def relationRow3742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101258) * ((1 : F) * rho 101258) = ((1 : F) * rho 101269)

def relationRow3743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101270) * ((-1 : F) * rho 101268 + (1 : F) * rho 101269) = ((2 : F) * rho 101267)

def relationRow3744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101271) * ((2 : F) + (1 : F) * rho 101268 + (-1 : F) * rho 101269) = ((1 : F) * rho 101268 + (1 : F) * rho 101269)

def relationLc2083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 130⟩, ⟨(1 : F), 99589, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101270 + (1 : F) * rho 101271) * (relationLc2083 rho) = ((1 : F) * rho 101272)

def relationLc2084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101271) * (relationLc2084 rho) = ((1 : F) * rho 101273)

def relationLc2085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101270) * (relationLc2085 rho) = ((1 : F) * rho 101274)

def relationRow3748 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101273) * ((1 : F) * rho 101274) = ((1 : F) * rho 101275)

def relationRow3749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101276) * ((1 : F) + (1 : F) * rho 101275) = ((1 : F) * rho 101273 + (1 : F) * rho 101274)

def relationRow3750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101277) * ((1 : F) + (-1 : F) * rho 101275) = ((1 : F) * rho 101272 + (-1 : F) * rho 101273 + (-1 : F) * rho 101274)

def relationLc2086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 130⟩], residual := [((1 : F), 101276)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99466) * (relationLc2086 rho) = ((1 : F) * rho 101278)

def relationLc2087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 130⟩], residual := [((1 : F), 101277)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99466) * (relationLc2087 rho) = ((1 : F) * rho 101279)

def relationRow3753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101270) * ((1 : F) * rho 101271) = ((1 : F) * rho 101280)

def relationRow3754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101270) * ((1 : F) * rho 101270) = ((1 : F) * rho 101281)

def relationRow3755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101271) * ((1 : F) * rho 101271) = ((1 : F) * rho 101282)

def relationRow3756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101283) * ((-1 : F) * rho 101281 + (1 : F) * rho 101282) = ((2 : F) * rho 101280)

def relationRow3757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101284) * ((2 : F) + (1 : F) * rho 101281 + (-1 : F) * rho 101282) = ((1 : F) * rho 101281 + (1 : F) * rho 101282)

def relationLc2088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 131⟩, ⟨(1 : F), 99589, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101283 + (1 : F) * rho 101284) * (relationLc2088 rho) = ((1 : F) * rho 101285)

def relationLc2089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101284) * (relationLc2089 rho) = ((1 : F) * rho 101286)

def relationLc2090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101283) * (relationLc2090 rho) = ((1 : F) * rho 101287)

def relationRow3761 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101286) * ((1 : F) * rho 101287) = ((1 : F) * rho 101288)

def relationRow3762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101289) * ((1 : F) + (1 : F) * rho 101288) = ((1 : F) * rho 101286 + (1 : F) * rho 101287)

def relationRow3763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101290) * ((1 : F) + (-1 : F) * rho 101288) = ((1 : F) * rho 101285 + (-1 : F) * rho 101286 + (-1 : F) * rho 101287)

def relationLc2091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 131⟩], residual := [((1 : F), 101289)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99467) * (relationLc2091 rho) = ((1 : F) * rho 101291)

def relationLc2092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 131⟩], residual := [((1 : F), 101290)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99467) * (relationLc2092 rho) = ((1 : F) * rho 101292)

def relationRow3766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101283) * ((1 : F) * rho 101284) = ((1 : F) * rho 101293)

def relationRow3767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101283) * ((1 : F) * rho 101283) = ((1 : F) * rho 101294)

def relationRow3768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101284) * ((1 : F) * rho 101284) = ((1 : F) * rho 101295)

def relationRow3769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101296) * ((-1 : F) * rho 101294 + (1 : F) * rho 101295) = ((2 : F) * rho 101293)

def relationRow3770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101297) * ((2 : F) + (1 : F) * rho 101294 + (-1 : F) * rho 101295) = ((1 : F) * rho 101294 + (1 : F) * rho 101295)

def relationLc2093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 132⟩, ⟨(1 : F), 99589, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101296 + (1 : F) * rho 101297) * (relationLc2093 rho) = ((1 : F) * rho 101298)

def relationLc2094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101297) * (relationLc2094 rho) = ((1 : F) * rho 101299)

def relationLc2095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101296) * (relationLc2095 rho) = ((1 : F) * rho 101300)

def relationRow3774 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101299) * ((1 : F) * rho 101300) = ((1 : F) * rho 101301)

def relationRow3775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101302) * ((1 : F) + (1 : F) * rho 101301) = ((1 : F) * rho 101299 + (1 : F) * rho 101300)

def relationRow3776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101303) * ((1 : F) + (-1 : F) * rho 101301) = ((1 : F) * rho 101298 + (-1 : F) * rho 101299 + (-1 : F) * rho 101300)

def relationLc2096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 132⟩], residual := [((1 : F), 101302)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99468) * (relationLc2096 rho) = ((1 : F) * rho 101304)

def relationLc2097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 132⟩], residual := [((1 : F), 101303)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99468) * (relationLc2097 rho) = ((1 : F) * rho 101305)

def relationRow3779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101296) * ((1 : F) * rho 101297) = ((1 : F) * rho 101306)

def relationRow3780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101296) * ((1 : F) * rho 101296) = ((1 : F) * rho 101307)

def relationRow3781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101297) * ((1 : F) * rho 101297) = ((1 : F) * rho 101308)

def relationRow3782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101309) * ((-1 : F) * rho 101307 + (1 : F) * rho 101308) = ((2 : F) * rho 101306)

def relationRow3783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101310) * ((2 : F) + (1 : F) * rho 101307 + (-1 : F) * rho 101308) = ((1 : F) * rho 101307 + (1 : F) * rho 101308)

def relationLc2098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 133⟩, ⟨(1 : F), 99589, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101309 + (1 : F) * rho 101310) * (relationLc2098 rho) = ((1 : F) * rho 101311)

def relationLc2099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101310) * (relationLc2099 rho) = ((1 : F) * rho 101312)

def relationLc2100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101309) * (relationLc2100 rho) = ((1 : F) * rho 101313)

def relationRow3787 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101312) * ((1 : F) * rho 101313) = ((1 : F) * rho 101314)

def relationRow3788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101315) * ((1 : F) + (1 : F) * rho 101314) = ((1 : F) * rho 101312 + (1 : F) * rho 101313)

def relationRow3789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101316) * ((1 : F) + (-1 : F) * rho 101314) = ((1 : F) * rho 101311 + (-1 : F) * rho 101312 + (-1 : F) * rho 101313)

def relationLc2101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 133⟩], residual := [((1 : F), 101315)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99469) * (relationLc2101 rho) = ((1 : F) * rho 101317)

def relationLc2102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 133⟩], residual := [((1 : F), 101316)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99469) * (relationLc2102 rho) = ((1 : F) * rho 101318)

def relationRow3792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101309) * ((1 : F) * rho 101310) = ((1 : F) * rho 101319)

def relationRow3793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101309) * ((1 : F) * rho 101309) = ((1 : F) * rho 101320)

def relationRow3794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101310) * ((1 : F) * rho 101310) = ((1 : F) * rho 101321)

def relationRow3795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101322) * ((-1 : F) * rho 101320 + (1 : F) * rho 101321) = ((2 : F) * rho 101319)

def relationRow3796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101323) * ((2 : F) + (1 : F) * rho 101320 + (-1 : F) * rho 101321) = ((1 : F) * rho 101320 + (1 : F) * rho 101321)

def relationLc2103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 134⟩, ⟨(1 : F), 99589, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101322 + (1 : F) * rho 101323) * (relationLc2103 rho) = ((1 : F) * rho 101324)

def relationLc2104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101323) * (relationLc2104 rho) = ((1 : F) * rho 101325)

def relationLc2105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101322) * (relationLc2105 rho) = ((1 : F) * rho 101326)

def relationRow3800 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101325) * ((1 : F) * rho 101326) = ((1 : F) * rho 101327)

def relationRow3801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101328) * ((1 : F) + (1 : F) * rho 101327) = ((1 : F) * rho 101325 + (1 : F) * rho 101326)

def relationRow3802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101329) * ((1 : F) + (-1 : F) * rho 101327) = ((1 : F) * rho 101324 + (-1 : F) * rho 101325 + (-1 : F) * rho 101326)

def relationLc2106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 134⟩], residual := [((1 : F), 101328)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99470) * (relationLc2106 rho) = ((1 : F) * rho 101330)

def relationLc2107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 134⟩], residual := [((1 : F), 101329)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99470) * (relationLc2107 rho) = ((1 : F) * rho 101331)

def relationRow3805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101322) * ((1 : F) * rho 101323) = ((1 : F) * rho 101332)

def relationRow3806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101322) * ((1 : F) * rho 101322) = ((1 : F) * rho 101333)

def relationRow3807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101323) * ((1 : F) * rho 101323) = ((1 : F) * rho 101334)

def relationRow3808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101335) * ((-1 : F) * rho 101333 + (1 : F) * rho 101334) = ((2 : F) * rho 101332)

def relationRow3809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101336) * ((2 : F) + (1 : F) * rho 101333 + (-1 : F) * rho 101334) = ((1 : F) * rho 101333 + (1 : F) * rho 101334)

def relationLc2108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 135⟩, ⟨(1 : F), 99589, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101335 + (1 : F) * rho 101336) * (relationLc2108 rho) = ((1 : F) * rho 101337)

def relationLc2109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101336) * (relationLc2109 rho) = ((1 : F) * rho 101338)

def relationLc2110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101335) * (relationLc2110 rho) = ((1 : F) * rho 101339)

def relationRow3813 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101338) * ((1 : F) * rho 101339) = ((1 : F) * rho 101340)

def relationRow3814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101341) * ((1 : F) + (1 : F) * rho 101340) = ((1 : F) * rho 101338 + (1 : F) * rho 101339)

def relationRow3815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101342) * ((1 : F) + (-1 : F) * rho 101340) = ((1 : F) * rho 101337 + (-1 : F) * rho 101338 + (-1 : F) * rho 101339)

def relationLc2111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 135⟩], residual := [((1 : F), 101341)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99471) * (relationLc2111 rho) = ((1 : F) * rho 101343)

def relationLc2112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 135⟩], residual := [((1 : F), 101342)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99471) * (relationLc2112 rho) = ((1 : F) * rho 101344)

def relationRow3818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101335) * ((1 : F) * rho 101336) = ((1 : F) * rho 101345)

def relationRow3819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101335) * ((1 : F) * rho 101335) = ((1 : F) * rho 101346)

def relationRow3820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101336) * ((1 : F) * rho 101336) = ((1 : F) * rho 101347)

def relationRow3821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101348) * ((-1 : F) * rho 101346 + (1 : F) * rho 101347) = ((2 : F) * rho 101345)

def relationRow3822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101349) * ((2 : F) + (1 : F) * rho 101346 + (-1 : F) * rho 101347) = ((1 : F) * rho 101346 + (1 : F) * rho 101347)

def relationLc2113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 136⟩, ⟨(1 : F), 99589, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101348 + (1 : F) * rho 101349) * (relationLc2113 rho) = ((1 : F) * rho 101350)

def relationLc2114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101349) * (relationLc2114 rho) = ((1 : F) * rho 101351)

def relationLc2115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101348) * (relationLc2115 rho) = ((1 : F) * rho 101352)

def relationRow3826 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101351) * ((1 : F) * rho 101352) = ((1 : F) * rho 101353)

def relationRow3827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101354) * ((1 : F) + (1 : F) * rho 101353) = ((1 : F) * rho 101351 + (1 : F) * rho 101352)

def relationRow3828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101355) * ((1 : F) + (-1 : F) * rho 101353) = ((1 : F) * rho 101350 + (-1 : F) * rho 101351 + (-1 : F) * rho 101352)

def relationLc2116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 136⟩], residual := [((1 : F), 101354)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99472) * (relationLc2116 rho) = ((1 : F) * rho 101356)

def relationLc2117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 136⟩], residual := [((1 : F), 101355)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99472) * (relationLc2117 rho) = ((1 : F) * rho 101357)

def relationRow3831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101348) * ((1 : F) * rho 101349) = ((1 : F) * rho 101358)

def relationRow3832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101348) * ((1 : F) * rho 101348) = ((1 : F) * rho 101359)

def relationRow3833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101349) * ((1 : F) * rho 101349) = ((1 : F) * rho 101360)

def relationRow3834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101361) * ((-1 : F) * rho 101359 + (1 : F) * rho 101360) = ((2 : F) * rho 101358)

def relationRow3835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101362) * ((2 : F) + (1 : F) * rho 101359 + (-1 : F) * rho 101360) = ((1 : F) * rho 101359 + (1 : F) * rho 101360)

def relationLc2118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 137⟩, ⟨(1 : F), 99589, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101361 + (1 : F) * rho 101362) * (relationLc2118 rho) = ((1 : F) * rho 101363)

def relationLc2119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101362) * (relationLc2119 rho) = ((1 : F) * rho 101364)

def relationLc2120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101361) * (relationLc2120 rho) = ((1 : F) * rho 101365)

def relationRow3839 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101364) * ((1 : F) * rho 101365) = ((1 : F) * rho 101366)

def relationRow3840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101367) * ((1 : F) + (1 : F) * rho 101366) = ((1 : F) * rho 101364 + (1 : F) * rho 101365)

def relationRow3841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101368) * ((1 : F) + (-1 : F) * rho 101366) = ((1 : F) * rho 101363 + (-1 : F) * rho 101364 + (-1 : F) * rho 101365)

def relationLc2121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 137⟩], residual := [((1 : F), 101367)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99473) * (relationLc2121 rho) = ((1 : F) * rho 101369)

def relationLc2122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 137⟩], residual := [((1 : F), 101368)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99473) * (relationLc2122 rho) = ((1 : F) * rho 101370)

def relationRow3844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101361) * ((1 : F) * rho 101362) = ((1 : F) * rho 101371)

def relationRow3845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101361) * ((1 : F) * rho 101361) = ((1 : F) * rho 101372)

def relationRow3846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101362) * ((1 : F) * rho 101362) = ((1 : F) * rho 101373)

def relationRow3847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101374) * ((-1 : F) * rho 101372 + (1 : F) * rho 101373) = ((2 : F) * rho 101371)

def relationRow3848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101375) * ((2 : F) + (1 : F) * rho 101372 + (-1 : F) * rho 101373) = ((1 : F) * rho 101372 + (1 : F) * rho 101373)

def relationLc2123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 138⟩, ⟨(1 : F), 99589, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101374 + (1 : F) * rho 101375) * (relationLc2123 rho) = ((1 : F) * rho 101376)

def relationLc2124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101375) * (relationLc2124 rho) = ((1 : F) * rho 101377)

def relationLc2125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101374) * (relationLc2125 rho) = ((1 : F) * rho 101378)

def relationRow3852 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101377) * ((1 : F) * rho 101378) = ((1 : F) * rho 101379)

def relationRow3853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101380) * ((1 : F) + (1 : F) * rho 101379) = ((1 : F) * rho 101377 + (1 : F) * rho 101378)

def relationRow3854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101381) * ((1 : F) + (-1 : F) * rho 101379) = ((1 : F) * rho 101376 + (-1 : F) * rho 101377 + (-1 : F) * rho 101378)

def relationLc2126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 138⟩], residual := [((1 : F), 101380)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99474) * (relationLc2126 rho) = ((1 : F) * rho 101382)

def relationLc2127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 138⟩], residual := [((1 : F), 101381)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99474) * (relationLc2127 rho) = ((1 : F) * rho 101383)

def relationRow3857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101374) * ((1 : F) * rho 101375) = ((1 : F) * rho 101384)

def relationRow3858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101374) * ((1 : F) * rho 101374) = ((1 : F) * rho 101385)

def relationRow3859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101375) * ((1 : F) * rho 101375) = ((1 : F) * rho 101386)

def relationRow3860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101387) * ((-1 : F) * rho 101385 + (1 : F) * rho 101386) = ((2 : F) * rho 101384)

def relationRow3861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101388) * ((2 : F) + (1 : F) * rho 101385 + (-1 : F) * rho 101386) = ((1 : F) * rho 101385 + (1 : F) * rho 101386)

def relationLc2128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 139⟩, ⟨(1 : F), 99589, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101387 + (1 : F) * rho 101388) * (relationLc2128 rho) = ((1 : F) * rho 101389)

def relationLc2129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101388) * (relationLc2129 rho) = ((1 : F) * rho 101390)

def relationLc2130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101387) * (relationLc2130 rho) = ((1 : F) * rho 101391)

def relationRow3865 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101390) * ((1 : F) * rho 101391) = ((1 : F) * rho 101392)

def relationRow3866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101393) * ((1 : F) + (1 : F) * rho 101392) = ((1 : F) * rho 101390 + (1 : F) * rho 101391)

def relationRow3867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101394) * ((1 : F) + (-1 : F) * rho 101392) = ((1 : F) * rho 101389 + (-1 : F) * rho 101390 + (-1 : F) * rho 101391)

def relationLc2131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 139⟩], residual := [((1 : F), 101393)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99475) * (relationLc2131 rho) = ((1 : F) * rho 101395)

def relationLc2132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 139⟩], residual := [((1 : F), 101394)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99475) * (relationLc2132 rho) = ((1 : F) * rho 101396)

def relationRow3870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101387) * ((1 : F) * rho 101388) = ((1 : F) * rho 101397)

def relationRow3871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101387) * ((1 : F) * rho 101387) = ((1 : F) * rho 101398)

def relationRow3872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101388) * ((1 : F) * rho 101388) = ((1 : F) * rho 101399)

def relationRow3873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101400) * ((-1 : F) * rho 101398 + (1 : F) * rho 101399) = ((2 : F) * rho 101397)

def relationRow3874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101401) * ((2 : F) + (1 : F) * rho 101398 + (-1 : F) * rho 101399) = ((1 : F) * rho 101398 + (1 : F) * rho 101399)

def relationLc2133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 140⟩, ⟨(1 : F), 99589, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101400 + (1 : F) * rho 101401) * (relationLc2133 rho) = ((1 : F) * rho 101402)

def relationLc2134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101401) * (relationLc2134 rho) = ((1 : F) * rho 101403)

def relationLc2135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101400) * (relationLc2135 rho) = ((1 : F) * rho 101404)

def relationRow3878 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101403) * ((1 : F) * rho 101404) = ((1 : F) * rho 101405)

def relationRow3879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101406) * ((1 : F) + (1 : F) * rho 101405) = ((1 : F) * rho 101403 + (1 : F) * rho 101404)

def relationRow3880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101407) * ((1 : F) + (-1 : F) * rho 101405) = ((1 : F) * rho 101402 + (-1 : F) * rho 101403 + (-1 : F) * rho 101404)

def relationLc2136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 140⟩], residual := [((1 : F), 101406)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99476) * (relationLc2136 rho) = ((1 : F) * rho 101408)

def relationLc2137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 140⟩], residual := [((1 : F), 101407)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99476) * (relationLc2137 rho) = ((1 : F) * rho 101409)

def relationRow3883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101400) * ((1 : F) * rho 101401) = ((1 : F) * rho 101410)

def relationRow3884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101400) * ((1 : F) * rho 101400) = ((1 : F) * rho 101411)

def relationRow3885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101401) * ((1 : F) * rho 101401) = ((1 : F) * rho 101412)

def relationRow3886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101413) * ((-1 : F) * rho 101411 + (1 : F) * rho 101412) = ((2 : F) * rho 101410)

def relationRow3887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101414) * ((2 : F) + (1 : F) * rho 101411 + (-1 : F) * rho 101412) = ((1 : F) * rho 101411 + (1 : F) * rho 101412)

def relationLc2138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 141⟩, ⟨(1 : F), 99589, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101413 + (1 : F) * rho 101414) * (relationLc2138 rho) = ((1 : F) * rho 101415)

def relationLc2139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101414) * (relationLc2139 rho) = ((1 : F) * rho 101416)

def relationLc2140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101413) * (relationLc2140 rho) = ((1 : F) * rho 101417)

def relationRow3891 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101416) * ((1 : F) * rho 101417) = ((1 : F) * rho 101418)

def relationRow3892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101419) * ((1 : F) + (1 : F) * rho 101418) = ((1 : F) * rho 101416 + (1 : F) * rho 101417)

def relationRow3893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101420) * ((1 : F) + (-1 : F) * rho 101418) = ((1 : F) * rho 101415 + (-1 : F) * rho 101416 + (-1 : F) * rho 101417)

def relationLc2141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 141⟩], residual := [((1 : F), 101419)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99477) * (relationLc2141 rho) = ((1 : F) * rho 101421)

def relationLc2142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 141⟩], residual := [((1 : F), 101420)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99477) * (relationLc2142 rho) = ((1 : F) * rho 101422)

def relationRow3896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101413) * ((1 : F) * rho 101414) = ((1 : F) * rho 101423)

def relationRow3897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101413) * ((1 : F) * rho 101413) = ((1 : F) * rho 101424)

def relationRow3898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101414) * ((1 : F) * rho 101414) = ((1 : F) * rho 101425)

def relationRow3899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101426) * ((-1 : F) * rho 101424 + (1 : F) * rho 101425) = ((2 : F) * rho 101423)

def relationRow3900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101427) * ((2 : F) + (1 : F) * rho 101424 + (-1 : F) * rho 101425) = ((1 : F) * rho 101424 + (1 : F) * rho 101425)

def relationLc2143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 142⟩, ⟨(1 : F), 99589, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101426 + (1 : F) * rho 101427) * (relationLc2143 rho) = ((1 : F) * rho 101428)

def relationLc2144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101427) * (relationLc2144 rho) = ((1 : F) * rho 101429)

def relationLc2145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101426) * (relationLc2145 rho) = ((1 : F) * rho 101430)

def relationRow3904 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101429) * ((1 : F) * rho 101430) = ((1 : F) * rho 101431)

def relationRow3905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101432) * ((1 : F) + (1 : F) * rho 101431) = ((1 : F) * rho 101429 + (1 : F) * rho 101430)

def relationRow3906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101433) * ((1 : F) + (-1 : F) * rho 101431) = ((1 : F) * rho 101428 + (-1 : F) * rho 101429 + (-1 : F) * rho 101430)

def relationLc2146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 142⟩], residual := [((1 : F), 101432)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99478) * (relationLc2146 rho) = ((1 : F) * rho 101434)

def relationLc2147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 142⟩], residual := [((1 : F), 101433)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99478) * (relationLc2147 rho) = ((1 : F) * rho 101435)

def relationRow3909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101426) * ((1 : F) * rho 101427) = ((1 : F) * rho 101436)

def relationRow3910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101426) * ((1 : F) * rho 101426) = ((1 : F) * rho 101437)

def relationRow3911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101427) * ((1 : F) * rho 101427) = ((1 : F) * rho 101438)

def relationRow3912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101439) * ((-1 : F) * rho 101437 + (1 : F) * rho 101438) = ((2 : F) * rho 101436)

def relationRow3913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101440) * ((2 : F) + (1 : F) * rho 101437 + (-1 : F) * rho 101438) = ((1 : F) * rho 101437 + (1 : F) * rho 101438)

def relationLc2148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 143⟩, ⟨(1 : F), 99589, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101439 + (1 : F) * rho 101440) * (relationLc2148 rho) = ((1 : F) * rho 101441)

def relationLc2149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101440) * (relationLc2149 rho) = ((1 : F) * rho 101442)

def relationLc2150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101439) * (relationLc2150 rho) = ((1 : F) * rho 101443)

def relationRow3917 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101442) * ((1 : F) * rho 101443) = ((1 : F) * rho 101444)

def relationRow3918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101445) * ((1 : F) + (1 : F) * rho 101444) = ((1 : F) * rho 101442 + (1 : F) * rho 101443)

def relationRow3919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101446) * ((1 : F) + (-1 : F) * rho 101444) = ((1 : F) * rho 101441 + (-1 : F) * rho 101442 + (-1 : F) * rho 101443)

def relationLc2151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 143⟩], residual := [((1 : F), 101445)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99479) * (relationLc2151 rho) = ((1 : F) * rho 101447)

def relationLc2152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 143⟩], residual := [((1 : F), 101446)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99479) * (relationLc2152 rho) = ((1 : F) * rho 101448)

def relationRow3922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101439) * ((1 : F) * rho 101440) = ((1 : F) * rho 101449)

def relationRow3923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101439) * ((1 : F) * rho 101439) = ((1 : F) * rho 101450)

def relationRow3924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101440) * ((1 : F) * rho 101440) = ((1 : F) * rho 101451)

def relationRow3925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101452) * ((-1 : F) * rho 101450 + (1 : F) * rho 101451) = ((2 : F) * rho 101449)

def relationRow3926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101453) * ((2 : F) + (1 : F) * rho 101450 + (-1 : F) * rho 101451) = ((1 : F) * rho 101450 + (1 : F) * rho 101451)

def relationLc2153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99588, 13, 144⟩, ⟨(1 : F), 99589, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101452 + (1 : F) * rho 101453) * (relationLc2153 rho) = ((1 : F) * rho 101454)

def relationLc2154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 99588, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101453) * (relationLc2154 rho) = ((1 : F) * rho 101455)

def relationLc2155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 99589, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101452) * (relationLc2155 rho) = ((1 : F) * rho 101456)

def relationRow3930 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 101455) * ((1 : F) * rho 101456) = ((1 : F) * rho 101457)

def relationRow3931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101458) * ((1 : F) + (1 : F) * rho 101457) = ((1 : F) * rho 101455 + (1 : F) * rho 101456)

def relationRow3932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101459) * ((1 : F) + (-1 : F) * rho 101457) = ((1 : F) * rho 101454 + (-1 : F) * rho 101455 + (-1 : F) * rho 101456)

def relationLc2156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 99588, 13, 144⟩], residual := [((1 : F), 101458)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99480) * (relationLc2156 rho) = ((1 : F) * rho 101460)

def relationLc2157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 99589, 13, 144⟩], residual := [((1 : F), 101459)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99480) * (relationLc2157 rho) = ((1 : F) * rho 101461)

def relationRow3935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101452) * ((1 : F) * rho 101453) = ((1 : F) * rho 101462)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg107
