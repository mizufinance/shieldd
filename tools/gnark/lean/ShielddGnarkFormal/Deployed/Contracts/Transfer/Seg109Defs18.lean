import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg109Defs17

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109

def relationRow7328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122912) * ((2 : F) + (1 : F) * rho 122909 + (-1 : F) * rho 122910) = ((1 : F) * rho 122909 + (1 : F) * rho 122910)

def relationLc3249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 128⟩, ⟨(1 : F), 121256, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122911 + (1 : F) * rho 122912) * (relationLc3249 rho) = ((1 : F) * rho 122913)

def relationLc3250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122912) * (relationLc3250 rho) = ((1 : F) * rho 122914)

def relationLc3251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122911) * (relationLc3251 rho) = ((1 : F) * rho 122915)

def relationRow7332 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122914) * ((1 : F) * rho 122915) = ((1 : F) * rho 122916)

def relationRow7333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122917) * ((1 : F) + (1 : F) * rho 122916) = ((1 : F) * rho 122914 + (1 : F) * rho 122915)

def relationRow7334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122918) * ((1 : F) + (-1 : F) * rho 122916) = ((1 : F) * rho 122913 + (-1 : F) * rho 122914 + (-1 : F) * rho 122915)

def relationLc3252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 128⟩], residual := [((1 : F), 122917)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121132) * (relationLc3252 rho) = ((1 : F) * rho 122919)

def relationLc3253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 128⟩], residual := [((1 : F), 122918)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121132) * (relationLc3253 rho) = ((1 : F) * rho 122920)

def relationRow7337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122911) * ((1 : F) * rho 122912) = ((1 : F) * rho 122921)

def relationRow7338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122911) * ((1 : F) * rho 122911) = ((1 : F) * rho 122922)

def relationRow7339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122912) * ((1 : F) * rho 122912) = ((1 : F) * rho 122923)

def relationRow7340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122924) * ((-1 : F) * rho 122922 + (1 : F) * rho 122923) = ((2 : F) * rho 122921)

def relationRow7341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122925) * ((2 : F) + (1 : F) * rho 122922 + (-1 : F) * rho 122923) = ((1 : F) * rho 122922 + (1 : F) * rho 122923)

def relationLc3254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 129⟩, ⟨(1 : F), 121256, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122924 + (1 : F) * rho 122925) * (relationLc3254 rho) = ((1 : F) * rho 122926)

def relationLc3255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122925) * (relationLc3255 rho) = ((1 : F) * rho 122927)

def relationLc3256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122924) * (relationLc3256 rho) = ((1 : F) * rho 122928)

def relationRow7345 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122927) * ((1 : F) * rho 122928) = ((1 : F) * rho 122929)

def relationRow7346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122930) * ((1 : F) + (1 : F) * rho 122929) = ((1 : F) * rho 122927 + (1 : F) * rho 122928)

def relationRow7347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122931) * ((1 : F) + (-1 : F) * rho 122929) = ((1 : F) * rho 122926 + (-1 : F) * rho 122927 + (-1 : F) * rho 122928)

def relationLc3257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 129⟩], residual := [((1 : F), 122930)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121133) * (relationLc3257 rho) = ((1 : F) * rho 122932)

def relationLc3258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 129⟩], residual := [((1 : F), 122931)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121133) * (relationLc3258 rho) = ((1 : F) * rho 122933)

def relationRow7350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122924) * ((1 : F) * rho 122925) = ((1 : F) * rho 122934)

def relationRow7351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122924) * ((1 : F) * rho 122924) = ((1 : F) * rho 122935)

def relationRow7352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122925) * ((1 : F) * rho 122925) = ((1 : F) * rho 122936)

def relationRow7353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122937) * ((-1 : F) * rho 122935 + (1 : F) * rho 122936) = ((2 : F) * rho 122934)

def relationRow7354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122938) * ((2 : F) + (1 : F) * rho 122935 + (-1 : F) * rho 122936) = ((1 : F) * rho 122935 + (1 : F) * rho 122936)

def relationLc3259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 130⟩, ⟨(1 : F), 121256, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122937 + (1 : F) * rho 122938) * (relationLc3259 rho) = ((1 : F) * rho 122939)

def relationLc3260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122938) * (relationLc3260 rho) = ((1 : F) * rho 122940)

def relationLc3261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122937) * (relationLc3261 rho) = ((1 : F) * rho 122941)

def relationRow7358 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122940) * ((1 : F) * rho 122941) = ((1 : F) * rho 122942)

def relationRow7359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122943) * ((1 : F) + (1 : F) * rho 122942) = ((1 : F) * rho 122940 + (1 : F) * rho 122941)

def relationRow7360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122944) * ((1 : F) + (-1 : F) * rho 122942) = ((1 : F) * rho 122939 + (-1 : F) * rho 122940 + (-1 : F) * rho 122941)

def relationLc3262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 130⟩], residual := [((1 : F), 122943)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121134) * (relationLc3262 rho) = ((1 : F) * rho 122945)

def relationLc3263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 130⟩], residual := [((1 : F), 122944)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121134) * (relationLc3263 rho) = ((1 : F) * rho 122946)

def relationRow7363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122937) * ((1 : F) * rho 122938) = ((1 : F) * rho 122947)

def relationRow7364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122937) * ((1 : F) * rho 122937) = ((1 : F) * rho 122948)

def relationRow7365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122938) * ((1 : F) * rho 122938) = ((1 : F) * rho 122949)

def relationRow7366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122950) * ((-1 : F) * rho 122948 + (1 : F) * rho 122949) = ((2 : F) * rho 122947)

def relationRow7367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122951) * ((2 : F) + (1 : F) * rho 122948 + (-1 : F) * rho 122949) = ((1 : F) * rho 122948 + (1 : F) * rho 122949)

def relationLc3264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 131⟩, ⟨(1 : F), 121256, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122950 + (1 : F) * rho 122951) * (relationLc3264 rho) = ((1 : F) * rho 122952)

def relationLc3265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122951) * (relationLc3265 rho) = ((1 : F) * rho 122953)

def relationLc3266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122950) * (relationLc3266 rho) = ((1 : F) * rho 122954)

def relationRow7371 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122953) * ((1 : F) * rho 122954) = ((1 : F) * rho 122955)

def relationRow7372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122956) * ((1 : F) + (1 : F) * rho 122955) = ((1 : F) * rho 122953 + (1 : F) * rho 122954)

def relationRow7373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122957) * ((1 : F) + (-1 : F) * rho 122955) = ((1 : F) * rho 122952 + (-1 : F) * rho 122953 + (-1 : F) * rho 122954)

def relationLc3267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 131⟩], residual := [((1 : F), 122956)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121135) * (relationLc3267 rho) = ((1 : F) * rho 122958)

def relationLc3268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 131⟩], residual := [((1 : F), 122957)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121135) * (relationLc3268 rho) = ((1 : F) * rho 122959)

def relationRow7376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122950) * ((1 : F) * rho 122951) = ((1 : F) * rho 122960)

def relationRow7377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122950) * ((1 : F) * rho 122950) = ((1 : F) * rho 122961)

def relationRow7378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122951) * ((1 : F) * rho 122951) = ((1 : F) * rho 122962)

def relationRow7379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122963) * ((-1 : F) * rho 122961 + (1 : F) * rho 122962) = ((2 : F) * rho 122960)

def relationRow7380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122964) * ((2 : F) + (1 : F) * rho 122961 + (-1 : F) * rho 122962) = ((1 : F) * rho 122961 + (1 : F) * rho 122962)

def relationLc3269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 132⟩, ⟨(1 : F), 121256, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122963 + (1 : F) * rho 122964) * (relationLc3269 rho) = ((1 : F) * rho 122965)

def relationLc3270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122964) * (relationLc3270 rho) = ((1 : F) * rho 122966)

def relationLc3271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122963) * (relationLc3271 rho) = ((1 : F) * rho 122967)

def relationRow7384 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122966) * ((1 : F) * rho 122967) = ((1 : F) * rho 122968)

def relationRow7385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122969) * ((1 : F) + (1 : F) * rho 122968) = ((1 : F) * rho 122966 + (1 : F) * rho 122967)

def relationRow7386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122970) * ((1 : F) + (-1 : F) * rho 122968) = ((1 : F) * rho 122965 + (-1 : F) * rho 122966 + (-1 : F) * rho 122967)

def relationLc3272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 132⟩], residual := [((1 : F), 122969)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121136) * (relationLc3272 rho) = ((1 : F) * rho 122971)

def relationLc3273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 132⟩], residual := [((1 : F), 122970)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121136) * (relationLc3273 rho) = ((1 : F) * rho 122972)

def relationRow7389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122963) * ((1 : F) * rho 122964) = ((1 : F) * rho 122973)

def relationRow7390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122963) * ((1 : F) * rho 122963) = ((1 : F) * rho 122974)

def relationRow7391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122964) * ((1 : F) * rho 122964) = ((1 : F) * rho 122975)

def relationRow7392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122976) * ((-1 : F) * rho 122974 + (1 : F) * rho 122975) = ((2 : F) * rho 122973)

def relationRow7393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122977) * ((2 : F) + (1 : F) * rho 122974 + (-1 : F) * rho 122975) = ((1 : F) * rho 122974 + (1 : F) * rho 122975)

def relationLc3274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 133⟩, ⟨(1 : F), 121256, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122976 + (1 : F) * rho 122977) * (relationLc3274 rho) = ((1 : F) * rho 122978)

def relationLc3275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122977) * (relationLc3275 rho) = ((1 : F) * rho 122979)

def relationLc3276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122976) * (relationLc3276 rho) = ((1 : F) * rho 122980)

def relationRow7397 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122979) * ((1 : F) * rho 122980) = ((1 : F) * rho 122981)

def relationRow7398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122982) * ((1 : F) + (1 : F) * rho 122981) = ((1 : F) * rho 122979 + (1 : F) * rho 122980)

def relationRow7399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122983) * ((1 : F) + (-1 : F) * rho 122981) = ((1 : F) * rho 122978 + (-1 : F) * rho 122979 + (-1 : F) * rho 122980)

def relationLc3277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 133⟩], residual := [((1 : F), 122982)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121137) * (relationLc3277 rho) = ((1 : F) * rho 122984)

def relationLc3278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 133⟩], residual := [((1 : F), 122983)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121137) * (relationLc3278 rho) = ((1 : F) * rho 122985)

def relationRow7402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122976) * ((1 : F) * rho 122977) = ((1 : F) * rho 122986)

def relationRow7403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122976) * ((1 : F) * rho 122976) = ((1 : F) * rho 122987)

def relationRow7404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122977) * ((1 : F) * rho 122977) = ((1 : F) * rho 122988)

def relationRow7405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122989) * ((-1 : F) * rho 122987 + (1 : F) * rho 122988) = ((2 : F) * rho 122986)

def relationRow7406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122990) * ((2 : F) + (1 : F) * rho 122987 + (-1 : F) * rho 122988) = ((1 : F) * rho 122987 + (1 : F) * rho 122988)

def relationLc3279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 134⟩, ⟨(1 : F), 121256, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122989 + (1 : F) * rho 122990) * (relationLc3279 rho) = ((1 : F) * rho 122991)

def relationLc3280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122990) * (relationLc3280 rho) = ((1 : F) * rho 122992)

def relationLc3281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122989) * (relationLc3281 rho) = ((1 : F) * rho 122993)

def relationRow7410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 122992) * ((1 : F) * rho 122993) = ((1 : F) * rho 122994)

def relationRow7411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122995) * ((1 : F) + (1 : F) * rho 122994) = ((1 : F) * rho 122992 + (1 : F) * rho 122993)

def relationRow7412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122996) * ((1 : F) + (-1 : F) * rho 122994) = ((1 : F) * rho 122991 + (-1 : F) * rho 122992 + (-1 : F) * rho 122993)

def relationLc3282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 134⟩], residual := [((1 : F), 122995)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121138) * (relationLc3282 rho) = ((1 : F) * rho 122997)

def relationLc3283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 134⟩], residual := [((1 : F), 122996)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121138) * (relationLc3283 rho) = ((1 : F) * rho 122998)

def relationRow7415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122989) * ((1 : F) * rho 122990) = ((1 : F) * rho 122999)

def relationRow7416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122989) * ((1 : F) * rho 122989) = ((1 : F) * rho 123000)

def relationRow7417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122990) * ((1 : F) * rho 122990) = ((1 : F) * rho 123001)

def relationRow7418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123002) * ((-1 : F) * rho 123000 + (1 : F) * rho 123001) = ((2 : F) * rho 122999)

def relationRow7419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123003) * ((2 : F) + (1 : F) * rho 123000 + (-1 : F) * rho 123001) = ((1 : F) * rho 123000 + (1 : F) * rho 123001)

def relationLc3284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 135⟩, ⟨(1 : F), 121256, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123002 + (1 : F) * rho 123003) * (relationLc3284 rho) = ((1 : F) * rho 123004)

def relationLc3285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123003) * (relationLc3285 rho) = ((1 : F) * rho 123005)

def relationLc3286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123002) * (relationLc3286 rho) = ((1 : F) * rho 123006)

def relationRow7423 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123005) * ((1 : F) * rho 123006) = ((1 : F) * rho 123007)

def relationRow7424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123008) * ((1 : F) + (1 : F) * rho 123007) = ((1 : F) * rho 123005 + (1 : F) * rho 123006)

def relationRow7425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123009) * ((1 : F) + (-1 : F) * rho 123007) = ((1 : F) * rho 123004 + (-1 : F) * rho 123005 + (-1 : F) * rho 123006)

def relationLc3287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 135⟩], residual := [((1 : F), 123008)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121139) * (relationLc3287 rho) = ((1 : F) * rho 123010)

def relationLc3288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 135⟩], residual := [((1 : F), 123009)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121139) * (relationLc3288 rho) = ((1 : F) * rho 123011)

def relationRow7428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123002) * ((1 : F) * rho 123003) = ((1 : F) * rho 123012)

def relationRow7429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123002) * ((1 : F) * rho 123002) = ((1 : F) * rho 123013)

def relationRow7430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123003) * ((1 : F) * rho 123003) = ((1 : F) * rho 123014)

def relationRow7431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123015) * ((-1 : F) * rho 123013 + (1 : F) * rho 123014) = ((2 : F) * rho 123012)

def relationRow7432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123016) * ((2 : F) + (1 : F) * rho 123013 + (-1 : F) * rho 123014) = ((1 : F) * rho 123013 + (1 : F) * rho 123014)

def relationLc3289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 136⟩, ⟨(1 : F), 121256, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123015 + (1 : F) * rho 123016) * (relationLc3289 rho) = ((1 : F) * rho 123017)

def relationLc3290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123016) * (relationLc3290 rho) = ((1 : F) * rho 123018)

def relationLc3291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123015) * (relationLc3291 rho) = ((1 : F) * rho 123019)

def relationRow7436 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123018) * ((1 : F) * rho 123019) = ((1 : F) * rho 123020)

def relationRow7437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123021) * ((1 : F) + (1 : F) * rho 123020) = ((1 : F) * rho 123018 + (1 : F) * rho 123019)

def relationRow7438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123022) * ((1 : F) + (-1 : F) * rho 123020) = ((1 : F) * rho 123017 + (-1 : F) * rho 123018 + (-1 : F) * rho 123019)

def relationLc3292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 136⟩], residual := [((1 : F), 123021)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121140) * (relationLc3292 rho) = ((1 : F) * rho 123023)

def relationLc3293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 136⟩], residual := [((1 : F), 123022)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121140) * (relationLc3293 rho) = ((1 : F) * rho 123024)

def relationRow7441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123015) * ((1 : F) * rho 123016) = ((1 : F) * rho 123025)

def relationRow7442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123015) * ((1 : F) * rho 123015) = ((1 : F) * rho 123026)

def relationRow7443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123016) * ((1 : F) * rho 123016) = ((1 : F) * rho 123027)

def relationRow7444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123028) * ((-1 : F) * rho 123026 + (1 : F) * rho 123027) = ((2 : F) * rho 123025)

def relationRow7445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123029) * ((2 : F) + (1 : F) * rho 123026 + (-1 : F) * rho 123027) = ((1 : F) * rho 123026 + (1 : F) * rho 123027)

def relationLc3294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 137⟩, ⟨(1 : F), 121256, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123028 + (1 : F) * rho 123029) * (relationLc3294 rho) = ((1 : F) * rho 123030)

def relationLc3295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123029) * (relationLc3295 rho) = ((1 : F) * rho 123031)

def relationLc3296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123028) * (relationLc3296 rho) = ((1 : F) * rho 123032)

def relationRow7449 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123031) * ((1 : F) * rho 123032) = ((1 : F) * rho 123033)

def relationRow7450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123034) * ((1 : F) + (1 : F) * rho 123033) = ((1 : F) * rho 123031 + (1 : F) * rho 123032)

def relationRow7451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123035) * ((1 : F) + (-1 : F) * rho 123033) = ((1 : F) * rho 123030 + (-1 : F) * rho 123031 + (-1 : F) * rho 123032)

def relationLc3297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 137⟩], residual := [((1 : F), 123034)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121141) * (relationLc3297 rho) = ((1 : F) * rho 123036)

def relationLc3298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 137⟩], residual := [((1 : F), 123035)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121141) * (relationLc3298 rho) = ((1 : F) * rho 123037)

def relationRow7454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123028) * ((1 : F) * rho 123029) = ((1 : F) * rho 123038)

def relationRow7455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123028) * ((1 : F) * rho 123028) = ((1 : F) * rho 123039)

def relationRow7456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123029) * ((1 : F) * rho 123029) = ((1 : F) * rho 123040)

def relationRow7457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123041) * ((-1 : F) * rho 123039 + (1 : F) * rho 123040) = ((2 : F) * rho 123038)

def relationRow7458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123042) * ((2 : F) + (1 : F) * rho 123039 + (-1 : F) * rho 123040) = ((1 : F) * rho 123039 + (1 : F) * rho 123040)

def relationLc3299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 138⟩, ⟨(1 : F), 121256, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123041 + (1 : F) * rho 123042) * (relationLc3299 rho) = ((1 : F) * rho 123043)

def relationLc3300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123042) * (relationLc3300 rho) = ((1 : F) * rho 123044)

def relationLc3301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123041) * (relationLc3301 rho) = ((1 : F) * rho 123045)

def relationRow7462 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123044) * ((1 : F) * rho 123045) = ((1 : F) * rho 123046)

def relationRow7463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123047) * ((1 : F) + (1 : F) * rho 123046) = ((1 : F) * rho 123044 + (1 : F) * rho 123045)

def relationRow7464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123048) * ((1 : F) + (-1 : F) * rho 123046) = ((1 : F) * rho 123043 + (-1 : F) * rho 123044 + (-1 : F) * rho 123045)

def relationLc3302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 138⟩], residual := [((1 : F), 123047)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121142) * (relationLc3302 rho) = ((1 : F) * rho 123049)

def relationLc3303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 138⟩], residual := [((1 : F), 123048)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121142) * (relationLc3303 rho) = ((1 : F) * rho 123050)

def relationRow7467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123041) * ((1 : F) * rho 123042) = ((1 : F) * rho 123051)

def relationRow7468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123041) * ((1 : F) * rho 123041) = ((1 : F) * rho 123052)

def relationRow7469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123042) * ((1 : F) * rho 123042) = ((1 : F) * rho 123053)

def relationRow7470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123054) * ((-1 : F) * rho 123052 + (1 : F) * rho 123053) = ((2 : F) * rho 123051)

def relationRow7471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123055) * ((2 : F) + (1 : F) * rho 123052 + (-1 : F) * rho 123053) = ((1 : F) * rho 123052 + (1 : F) * rho 123053)

def relationLc3304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 139⟩, ⟨(1 : F), 121256, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123054 + (1 : F) * rho 123055) * (relationLc3304 rho) = ((1 : F) * rho 123056)

def relationLc3305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123055) * (relationLc3305 rho) = ((1 : F) * rho 123057)

def relationLc3306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123054) * (relationLc3306 rho) = ((1 : F) * rho 123058)

def relationRow7475 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123057) * ((1 : F) * rho 123058) = ((1 : F) * rho 123059)

def relationRow7476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123060) * ((1 : F) + (1 : F) * rho 123059) = ((1 : F) * rho 123057 + (1 : F) * rho 123058)

def relationRow7477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123061) * ((1 : F) + (-1 : F) * rho 123059) = ((1 : F) * rho 123056 + (-1 : F) * rho 123057 + (-1 : F) * rho 123058)

def relationLc3307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 139⟩], residual := [((1 : F), 123060)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121143) * (relationLc3307 rho) = ((1 : F) * rho 123062)

def relationLc3308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 139⟩], residual := [((1 : F), 123061)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121143) * (relationLc3308 rho) = ((1 : F) * rho 123063)

def relationRow7480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123054) * ((1 : F) * rho 123055) = ((1 : F) * rho 123064)

def relationRow7481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123054) * ((1 : F) * rho 123054) = ((1 : F) * rho 123065)

def relationRow7482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123055) * ((1 : F) * rho 123055) = ((1 : F) * rho 123066)

def relationRow7483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123067) * ((-1 : F) * rho 123065 + (1 : F) * rho 123066) = ((2 : F) * rho 123064)

def relationRow7484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123068) * ((2 : F) + (1 : F) * rho 123065 + (-1 : F) * rho 123066) = ((1 : F) * rho 123065 + (1 : F) * rho 123066)

def relationLc3309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 140⟩, ⟨(1 : F), 121256, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123067 + (1 : F) * rho 123068) * (relationLc3309 rho) = ((1 : F) * rho 123069)

def relationLc3310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123068) * (relationLc3310 rho) = ((1 : F) * rho 123070)

def relationLc3311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123067) * (relationLc3311 rho) = ((1 : F) * rho 123071)

def relationRow7488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123070) * ((1 : F) * rho 123071) = ((1 : F) * rho 123072)

def relationRow7489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123073) * ((1 : F) + (1 : F) * rho 123072) = ((1 : F) * rho 123070 + (1 : F) * rho 123071)

def relationRow7490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123074) * ((1 : F) + (-1 : F) * rho 123072) = ((1 : F) * rho 123069 + (-1 : F) * rho 123070 + (-1 : F) * rho 123071)

def relationLc3312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 140⟩], residual := [((1 : F), 123073)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121144) * (relationLc3312 rho) = ((1 : F) * rho 123075)

def relationLc3313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 140⟩], residual := [((1 : F), 123074)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121144) * (relationLc3313 rho) = ((1 : F) * rho 123076)

def relationRow7493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123067) * ((1 : F) * rho 123068) = ((1 : F) * rho 123077)

def relationRow7494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123067) * ((1 : F) * rho 123067) = ((1 : F) * rho 123078)

def relationRow7495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123068) * ((1 : F) * rho 123068) = ((1 : F) * rho 123079)

def relationRow7496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123080) * ((-1 : F) * rho 123078 + (1 : F) * rho 123079) = ((2 : F) * rho 123077)

def relationRow7497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123081) * ((2 : F) + (1 : F) * rho 123078 + (-1 : F) * rho 123079) = ((1 : F) * rho 123078 + (1 : F) * rho 123079)

def relationLc3314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 141⟩, ⟨(1 : F), 121256, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123080 + (1 : F) * rho 123081) * (relationLc3314 rho) = ((1 : F) * rho 123082)

def relationLc3315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123081) * (relationLc3315 rho) = ((1 : F) * rho 123083)

def relationLc3316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 141⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123080) * (relationLc3316 rho) = ((1 : F) * rho 123084)

def relationRow7501 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123083) * ((1 : F) * rho 123084) = ((1 : F) * rho 123085)

def relationRow7502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123086) * ((1 : F) + (1 : F) * rho 123085) = ((1 : F) * rho 123083 + (1 : F) * rho 123084)

def relationRow7503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123087) * ((1 : F) + (-1 : F) * rho 123085) = ((1 : F) * rho 123082 + (-1 : F) * rho 123083 + (-1 : F) * rho 123084)

def relationLc3317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 141⟩], residual := [((1 : F), 123086)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121145) * (relationLc3317 rho) = ((1 : F) * rho 123088)

def relationLc3318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 141⟩], residual := [((1 : F), 123087)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121145) * (relationLc3318 rho) = ((1 : F) * rho 123089)

def relationRow7506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123080) * ((1 : F) * rho 123081) = ((1 : F) * rho 123090)

def relationRow7507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123080) * ((1 : F) * rho 123080) = ((1 : F) * rho 123091)

def relationRow7508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123081) * ((1 : F) * rho 123081) = ((1 : F) * rho 123092)

def relationRow7509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123093) * ((-1 : F) * rho 123091 + (1 : F) * rho 123092) = ((2 : F) * rho 123090)

def relationRow7510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123094) * ((2 : F) + (1 : F) * rho 123091 + (-1 : F) * rho 123092) = ((1 : F) * rho 123091 + (1 : F) * rho 123092)

def relationLc3319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 142⟩, ⟨(1 : F), 121256, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123093 + (1 : F) * rho 123094) * (relationLc3319 rho) = ((1 : F) * rho 123095)

def relationLc3320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123094) * (relationLc3320 rho) = ((1 : F) * rho 123096)

def relationLc3321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 142⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123093) * (relationLc3321 rho) = ((1 : F) * rho 123097)

def relationRow7514 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123096) * ((1 : F) * rho 123097) = ((1 : F) * rho 123098)

def relationRow7515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123099) * ((1 : F) + (1 : F) * rho 123098) = ((1 : F) * rho 123096 + (1 : F) * rho 123097)

def relationRow7516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123100) * ((1 : F) + (-1 : F) * rho 123098) = ((1 : F) * rho 123095 + (-1 : F) * rho 123096 + (-1 : F) * rho 123097)

def relationLc3322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 142⟩], residual := [((1 : F), 123099)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121146) * (relationLc3322 rho) = ((1 : F) * rho 123101)

def relationLc3323 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 142⟩], residual := [((1 : F), 123100)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121146) * (relationLc3323 rho) = ((1 : F) * rho 123102)

def relationRow7519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123093) * ((1 : F) * rho 123094) = ((1 : F) * rho 123103)

def relationRow7520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123093) * ((1 : F) * rho 123093) = ((1 : F) * rho 123104)

def relationRow7521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123094) * ((1 : F) * rho 123094) = ((1 : F) * rho 123105)

def relationRow7522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123106) * ((-1 : F) * rho 123104 + (1 : F) * rho 123105) = ((2 : F) * rho 123103)

def relationRow7523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123107) * ((2 : F) + (1 : F) * rho 123104 + (-1 : F) * rho 123105) = ((1 : F) * rho 123104 + (1 : F) * rho 123105)

def relationLc3324 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 143⟩, ⟨(1 : F), 121256, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123106 + (1 : F) * rho 123107) * (relationLc3324 rho) = ((1 : F) * rho 123108)

def relationLc3325 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123107) * (relationLc3325 rho) = ((1 : F) * rho 123109)

def relationLc3326 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 143⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123106) * (relationLc3326 rho) = ((1 : F) * rho 123110)

def relationRow7527 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123109) * ((1 : F) * rho 123110) = ((1 : F) * rho 123111)

def relationRow7528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123112) * ((1 : F) + (1 : F) * rho 123111) = ((1 : F) * rho 123109 + (1 : F) * rho 123110)

def relationRow7529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123113) * ((1 : F) + (-1 : F) * rho 123111) = ((1 : F) * rho 123108 + (-1 : F) * rho 123109 + (-1 : F) * rho 123110)

def relationLc3327 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 143⟩], residual := [((1 : F), 123112)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121147) * (relationLc3327 rho) = ((1 : F) * rho 123114)

def relationLc3328 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 143⟩], residual := [((1 : F), 123113)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121147) * (relationLc3328 rho) = ((1 : F) * rho 123115)

def relationRow7532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123106) * ((1 : F) * rho 123107) = ((1 : F) * rho 123116)

def relationRow7533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123106) * ((1 : F) * rho 123106) = ((1 : F) * rho 123117)

def relationRow7534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123107) * ((1 : F) * rho 123107) = ((1 : F) * rho 123118)

def relationRow7535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123119) * ((-1 : F) * rho 123117 + (1 : F) * rho 123118) = ((2 : F) * rho 123116)

def relationRow7536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123120) * ((2 : F) + (1 : F) * rho 123117 + (-1 : F) * rho 123118) = ((1 : F) * rho 123117 + (1 : F) * rho 123118)

def relationLc3329 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 144⟩, ⟨(1 : F), 121256, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123119 + (1 : F) * rho 123120) * (relationLc3329 rho) = ((1 : F) * rho 123121)

def relationLc3330 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123120) * (relationLc3330 rho) = ((1 : F) * rho 123122)

def relationLc3331 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 144⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123119) * (relationLc3331 rho) = ((1 : F) * rho 123123)

def relationRow7540 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123122) * ((1 : F) * rho 123123) = ((1 : F) * rho 123124)

def relationRow7541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123125) * ((1 : F) + (1 : F) * rho 123124) = ((1 : F) * rho 123122 + (1 : F) * rho 123123)

def relationRow7542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123126) * ((1 : F) + (-1 : F) * rho 123124) = ((1 : F) * rho 123121 + (-1 : F) * rho 123122 + (-1 : F) * rho 123123)

def relationLc3332 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 144⟩], residual := [((1 : F), 123125)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121148) * (relationLc3332 rho) = ((1 : F) * rho 123127)

def relationLc3333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 144⟩], residual := [((1 : F), 123126)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121148) * (relationLc3333 rho) = ((1 : F) * rho 123128)

def relationRow7545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123119) * ((1 : F) * rho 123120) = ((1 : F) * rho 123129)

def relationRow7546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123119) * ((1 : F) * rho 123119) = ((1 : F) * rho 123130)

def relationRow7547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123120) * ((1 : F) * rho 123120) = ((1 : F) * rho 123131)

def relationRow7548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123132) * ((-1 : F) * rho 123130 + (1 : F) * rho 123131) = ((2 : F) * rho 123129)

def relationRow7549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123133) * ((2 : F) + (1 : F) * rho 123130 + (-1 : F) * rho 123131) = ((1 : F) * rho 123130 + (1 : F) * rho 123131)

def relationLc3334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 145⟩, ⟨(1 : F), 121256, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123132 + (1 : F) * rho 123133) * (relationLc3334 rho) = ((1 : F) * rho 123134)

def relationLc3335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123133) * (relationLc3335 rho) = ((1 : F) * rho 123135)

def relationLc3336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 145⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123132) * (relationLc3336 rho) = ((1 : F) * rho 123136)

def relationRow7553 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123135) * ((1 : F) * rho 123136) = ((1 : F) * rho 123137)

def relationRow7554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123138) * ((1 : F) + (1 : F) * rho 123137) = ((1 : F) * rho 123135 + (1 : F) * rho 123136)

def relationRow7555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123139) * ((1 : F) + (-1 : F) * rho 123137) = ((1 : F) * rho 123134 + (-1 : F) * rho 123135 + (-1 : F) * rho 123136)

def relationLc3337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 145⟩], residual := [((1 : F), 123138)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121149) * (relationLc3337 rho) = ((1 : F) * rho 123140)

def relationLc3338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 145⟩], residual := [((1 : F), 123139)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121149) * (relationLc3338 rho) = ((1 : F) * rho 123141)

def relationRow7558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123132) * ((1 : F) * rho 123133) = ((1 : F) * rho 123142)

def relationRow7559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123132) * ((1 : F) * rho 123132) = ((1 : F) * rho 123143)

def relationRow7560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123133) * ((1 : F) * rho 123133) = ((1 : F) * rho 123144)

def relationRow7561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123145) * ((-1 : F) * rho 123143 + (1 : F) * rho 123144) = ((2 : F) * rho 123142)

def relationRow7562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123146) * ((2 : F) + (1 : F) * rho 123143 + (-1 : F) * rho 123144) = ((1 : F) * rho 123143 + (1 : F) * rho 123144)

def relationLc3339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 146⟩, ⟨(1 : F), 121256, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123145 + (1 : F) * rho 123146) * (relationLc3339 rho) = ((1 : F) * rho 123147)

def relationLc3340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123146) * (relationLc3340 rho) = ((1 : F) * rho 123148)

def relationLc3341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 146⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123145) * (relationLc3341 rho) = ((1 : F) * rho 123149)

def relationRow7566 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123148) * ((1 : F) * rho 123149) = ((1 : F) * rho 123150)

def relationRow7567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123151) * ((1 : F) + (1 : F) * rho 123150) = ((1 : F) * rho 123148 + (1 : F) * rho 123149)

def relationRow7568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123152) * ((1 : F) + (-1 : F) * rho 123150) = ((1 : F) * rho 123147 + (-1 : F) * rho 123148 + (-1 : F) * rho 123149)

def relationLc3342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 146⟩], residual := [((1 : F), 123151)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121150) * (relationLc3342 rho) = ((1 : F) * rho 123153)

def relationLc3343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 146⟩], residual := [((1 : F), 123152)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121150) * (relationLc3343 rho) = ((1 : F) * rho 123154)

def relationRow7571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123145) * ((1 : F) * rho 123146) = ((1 : F) * rho 123155)

def relationRow7572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123145) * ((1 : F) * rho 123145) = ((1 : F) * rho 123156)

def relationRow7573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123146) * ((1 : F) * rho 123146) = ((1 : F) * rho 123157)

def relationRow7574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123158) * ((-1 : F) * rho 123156 + (1 : F) * rho 123157) = ((2 : F) * rho 123155)

def relationRow7575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123159) * ((2 : F) + (1 : F) * rho 123156 + (-1 : F) * rho 123157) = ((1 : F) * rho 123156 + (1 : F) * rho 123157)

def relationLc3344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 147⟩, ⟨(1 : F), 121256, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123158 + (1 : F) * rho 123159) * (relationLc3344 rho) = ((1 : F) * rho 123160)

def relationLc3345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123159) * (relationLc3345 rho) = ((1 : F) * rho 123161)

def relationLc3346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 147⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123158) * (relationLc3346 rho) = ((1 : F) * rho 123162)

def relationRow7579 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123161) * ((1 : F) * rho 123162) = ((1 : F) * rho 123163)

def relationRow7580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123164) * ((1 : F) + (1 : F) * rho 123163) = ((1 : F) * rho 123161 + (1 : F) * rho 123162)

def relationRow7581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123165) * ((1 : F) + (-1 : F) * rho 123163) = ((1 : F) * rho 123160 + (-1 : F) * rho 123161 + (-1 : F) * rho 123162)

def relationLc3347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 147⟩], residual := [((1 : F), 123164)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121151) * (relationLc3347 rho) = ((1 : F) * rho 123166)

def relationLc3348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 147⟩], residual := [((1 : F), 123165)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121151) * (relationLc3348 rho) = ((1 : F) * rho 123167)

def relationRow7584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123158) * ((1 : F) * rho 123159) = ((1 : F) * rho 123168)

def relationRow7585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123158) * ((1 : F) * rho 123158) = ((1 : F) * rho 123169)

def relationRow7586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123159) * ((1 : F) * rho 123159) = ((1 : F) * rho 123170)

def relationRow7587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123171) * ((-1 : F) * rho 123169 + (1 : F) * rho 123170) = ((2 : F) * rho 123168)

def relationRow7588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123172) * ((2 : F) + (1 : F) * rho 123169 + (-1 : F) * rho 123170) = ((1 : F) * rho 123169 + (1 : F) * rho 123170)

def relationLc3349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 148⟩, ⟨(1 : F), 121256, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123171 + (1 : F) * rho 123172) * (relationLc3349 rho) = ((1 : F) * rho 123173)

def relationLc3350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123172) * (relationLc3350 rho) = ((1 : F) * rho 123174)

def relationLc3351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 148⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123171) * (relationLc3351 rho) = ((1 : F) * rho 123175)

def relationRow7592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123174) * ((1 : F) * rho 123175) = ((1 : F) * rho 123176)

def relationRow7593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123177) * ((1 : F) + (1 : F) * rho 123176) = ((1 : F) * rho 123174 + (1 : F) * rho 123175)

def relationRow7594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123178) * ((1 : F) + (-1 : F) * rho 123176) = ((1 : F) * rho 123173 + (-1 : F) * rho 123174 + (-1 : F) * rho 123175)

def relationLc3352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 148⟩], residual := [((1 : F), 123177)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121152) * (relationLc3352 rho) = ((1 : F) * rho 123179)

def relationLc3353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 148⟩], residual := [((1 : F), 123178)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121152) * (relationLc3353 rho) = ((1 : F) * rho 123180)

def relationRow7597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123171) * ((1 : F) * rho 123172) = ((1 : F) * rho 123181)

def relationRow7598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123171) * ((1 : F) * rho 123171) = ((1 : F) * rho 123182)

def relationRow7599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123172) * ((1 : F) * rho 123172) = ((1 : F) * rho 123183)

def relationRow7600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123184) * ((-1 : F) * rho 123182 + (1 : F) * rho 123183) = ((2 : F) * rho 123181)

def relationRow7601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123185) * ((2 : F) + (1 : F) * rho 123182 + (-1 : F) * rho 123183) = ((1 : F) * rho 123182 + (1 : F) * rho 123183)

def relationLc3354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 149⟩, ⟨(1 : F), 121256, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123184 + (1 : F) * rho 123185) * (relationLc3354 rho) = ((1 : F) * rho 123186)

def relationLc3355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123185) * (relationLc3355 rho) = ((1 : F) * rho 123187)

def relationLc3356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 149⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123184) * (relationLc3356 rho) = ((1 : F) * rho 123188)

def relationRow7605 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123187) * ((1 : F) * rho 123188) = ((1 : F) * rho 123189)

def relationRow7606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123190) * ((1 : F) + (1 : F) * rho 123189) = ((1 : F) * rho 123187 + (1 : F) * rho 123188)

def relationRow7607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123191) * ((1 : F) + (-1 : F) * rho 123189) = ((1 : F) * rho 123186 + (-1 : F) * rho 123187 + (-1 : F) * rho 123188)

def relationLc3357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 149⟩], residual := [((1 : F), 123190)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121153) * (relationLc3357 rho) = ((1 : F) * rho 123192)

def relationLc3358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 149⟩], residual := [((1 : F), 123191)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121153) * (relationLc3358 rho) = ((1 : F) * rho 123193)

def relationRow7610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123184) * ((1 : F) * rho 123185) = ((1 : F) * rho 123194)

def relationRow7611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123184) * ((1 : F) * rho 123184) = ((1 : F) * rho 123195)

def relationRow7612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123185) * ((1 : F) * rho 123185) = ((1 : F) * rho 123196)

def relationRow7613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123197) * ((-1 : F) * rho 123195 + (1 : F) * rho 123196) = ((2 : F) * rho 123194)

def relationRow7614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123198) * ((2 : F) + (1 : F) * rho 123195 + (-1 : F) * rho 123196) = ((1 : F) * rho 123195 + (1 : F) * rho 123196)

def relationLc3359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7615 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3359 rho) = ((1 : F) * rho 123199)

def relationRow7616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123199) * ((1 : F) * rho 123197 + (1 : F) * rho 123198) = ((1 : F) * rho 123200)

def relationLc3360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123198) * (relationLc3360 rho) = ((1 : F) * rho 123201)

def relationLc3361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123197) * (relationLc3361 rho) = ((1 : F) * rho 123202)

def relationRow7619 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123201) * ((1 : F) * rho 123202) = ((1 : F) * rho 123203)

def relationRow7620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123204) * ((1 : F) + (1 : F) * rho 123203) = ((1 : F) * rho 123201 + (1 : F) * rho 123202)

def relationRow7621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123205) * ((1 : F) + (-1 : F) * rho 123203) = ((1 : F) * rho 123200 + (-1 : F) * rho 123201 + (-1 : F) * rho 123202)

def relationLc3362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123204)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121154) * (relationLc3362 rho) = ((1 : F) * rho 123206)

def relationLc3363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123205)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121154) * (relationLc3363 rho) = ((1 : F) * rho 123207)

def relationRow7624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123197) * ((1 : F) * rho 123198) = ((1 : F) * rho 123208)

def relationRow7625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123197) * ((1 : F) * rho 123197) = ((1 : F) * rho 123209)

def relationRow7626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123198) * ((1 : F) * rho 123198) = ((1 : F) * rho 123210)

def relationRow7627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123211) * ((-1 : F) * rho 123209 + (1 : F) * rho 123210) = ((2 : F) * rho 123208)

def relationRow7628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123212) * ((2 : F) + (1 : F) * rho 123209 + (-1 : F) * rho 123210) = ((1 : F) * rho 123209 + (1 : F) * rho 123210)

def relationLc3364 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7629 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3364 rho) = ((1 : F) * rho 123213)

def relationRow7630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123213) * ((1 : F) * rho 123211 + (1 : F) * rho 123212) = ((1 : F) * rho 123214)

def relationLc3365 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7631 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123212) * (relationLc3365 rho) = ((1 : F) * rho 123215)

def relationLc3366 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123211) * (relationLc3366 rho) = ((1 : F) * rho 123216)

def relationRow7633 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123215) * ((1 : F) * rho 123216) = ((1 : F) * rho 123217)

def relationRow7634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123218) * ((1 : F) + (1 : F) * rho 123217) = ((1 : F) * rho 123215 + (1 : F) * rho 123216)

def relationRow7635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123219) * ((1 : F) + (-1 : F) * rho 123217) = ((1 : F) * rho 123214 + (-1 : F) * rho 123215 + (-1 : F) * rho 123216)

def relationLc3367 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((1 : F), 123218)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121155) * (relationLc3367 rho) = ((1 : F) * rho 123220)

def relationLc3368 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((1 : F), 123219)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121155) * (relationLc3368 rho) = ((1 : F) * rho 123221)

def relationRow7638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123211) * ((1 : F) * rho 123212) = ((1 : F) * rho 123222)

def relationRow7639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123211) * ((1 : F) * rho 123211) = ((1 : F) * rho 123223)

def relationRow7640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123212) * ((1 : F) * rho 123212) = ((1 : F) * rho 123224)

def relationRow7641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123225) * ((-1 : F) * rho 123223 + (1 : F) * rho 123224) = ((2 : F) * rho 123222)

def relationRow7642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123226) * ((2 : F) + (1 : F) * rho 123223 + (-1 : F) * rho 123224) = ((1 : F) * rho 123223 + (1 : F) * rho 123224)

def relationLc3369 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7643 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3369 rho) = ((1 : F) * rho 123227)

def relationRow7644 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123227) * ((1 : F) * rho 123225 + (1 : F) * rho 123226) = ((1 : F) * rho 123228)

def relationLc3370 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123226) * (relationLc3370 rho) = ((1 : F) * rho 123229)

def relationLc3371 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123225) * (relationLc3371 rho) = ((1 : F) * rho 123230)

def relationRow7647 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123229) * ((1 : F) * rho 123230) = ((1 : F) * rho 123231)

def relationRow7648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123232) * ((1 : F) + (1 : F) * rho 123231) = ((1 : F) * rho 123229 + (1 : F) * rho 123230)

def relationRow7649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123233) * ((1 : F) + (-1 : F) * rho 123231) = ((1 : F) * rho 123228 + (-1 : F) * rho 123229 + (-1 : F) * rho 123230)

def relationLc3372 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((1 : F), 123232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121156) * (relationLc3372 rho) = ((1 : F) * rho 123234)

def relationLc3373 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((1 : F), 123233)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121156) * (relationLc3373 rho) = ((1 : F) * rho 123235)

def relationRow7652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123225) * ((1 : F) * rho 123226) = ((1 : F) * rho 123236)

def relationRow7653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123225) * ((1 : F) * rho 123225) = ((1 : F) * rho 123237)

def relationRow7654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123226) * ((1 : F) * rho 123226) = ((1 : F) * rho 123238)

def relationRow7655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123239) * ((-1 : F) * rho 123237 + (1 : F) * rho 123238) = ((2 : F) * rho 123236)

def relationRow7656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123240) * ((2 : F) + (1 : F) * rho 123237 + (-1 : F) * rho 123238) = ((1 : F) * rho 123237 + (1 : F) * rho 123238)

def relationLc3374 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7657 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3374 rho) = ((1 : F) * rho 123241)

def relationRow7658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123241) * ((1 : F) * rho 123239 + (1 : F) * rho 123240) = ((1 : F) * rho 123242)

def relationLc3375 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123240) * (relationLc3375 rho) = ((1 : F) * rho 123243)

def relationLc3376 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123239) * (relationLc3376 rho) = ((1 : F) * rho 123244)

def relationRow7661 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123243) * ((1 : F) * rho 123244) = ((1 : F) * rho 123245)

def relationRow7662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123246) * ((1 : F) + (1 : F) * rho 123245) = ((1 : F) * rho 123243 + (1 : F) * rho 123244)

def relationRow7663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123247) * ((1 : F) + (-1 : F) * rho 123245) = ((1 : F) * rho 123242 + (-1 : F) * rho 123243 + (-1 : F) * rho 123244)

def relationLc3377 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((1 : F), 123246)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121157) * (relationLc3377 rho) = ((1 : F) * rho 123248)

def relationLc3378 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((1 : F), 123247)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121157) * (relationLc3378 rho) = ((1 : F) * rho 123249)

def relationRow7666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123239) * ((1 : F) * rho 123240) = ((1 : F) * rho 123250)

def relationRow7667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123239) * ((1 : F) * rho 123239) = ((1 : F) * rho 123251)

def relationRow7668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123240) * ((1 : F) * rho 123240) = ((1 : F) * rho 123252)

def relationRow7669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123253) * ((-1 : F) * rho 123251 + (1 : F) * rho 123252) = ((2 : F) * rho 123250)

def relationRow7670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123254) * ((2 : F) + (1 : F) * rho 123251 + (-1 : F) * rho 123252) = ((1 : F) * rho 123251 + (1 : F) * rho 123252)

def relationLc3379 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7671 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3379 rho) = ((1 : F) * rho 123255)

def relationRow7672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123255) * ((1 : F) * rho 123253 + (1 : F) * rho 123254) = ((1 : F) * rho 123256)

def relationLc3380 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123254) * (relationLc3380 rho) = ((1 : F) * rho 123257)

def relationLc3381 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123253) * (relationLc3381 rho) = ((1 : F) * rho 123258)

def relationRow7675 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123257) * ((1 : F) * rho 123258) = ((1 : F) * rho 123259)

def relationRow7676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123260) * ((1 : F) + (1 : F) * rho 123259) = ((1 : F) * rho 123257 + (1 : F) * rho 123258)

def relationRow7677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123261) * ((1 : F) + (-1 : F) * rho 123259) = ((1 : F) * rho 123256 + (-1 : F) * rho 123257 + (-1 : F) * rho 123258)

def relationLc3382 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((1 : F), 123260)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121158) * (relationLc3382 rho) = ((1 : F) * rho 123262)

def relationLc3383 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((1 : F), 123261)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121158) * (relationLc3383 rho) = ((1 : F) * rho 123263)

def relationRow7680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123253) * ((1 : F) * rho 123254) = ((1 : F) * rho 123264)

def relationRow7681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123253) * ((1 : F) * rho 123253) = ((1 : F) * rho 123265)

def relationRow7682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123254) * ((1 : F) * rho 123254) = ((1 : F) * rho 123266)

def relationRow7683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123267) * ((-1 : F) * rho 123265 + (1 : F) * rho 123266) = ((2 : F) * rho 123264)

def relationRow7684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123268) * ((2 : F) + (1 : F) * rho 123265 + (-1 : F) * rho 123266) = ((1 : F) * rho 123265 + (1 : F) * rho 123266)

def relationLc3384 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7685 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3384 rho) = ((1 : F) * rho 123269)

def relationRow7686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123269) * ((1 : F) * rho 123267 + (1 : F) * rho 123268) = ((1 : F) * rho 123270)

def relationLc3385 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123268) * (relationLc3385 rho) = ((1 : F) * rho 123271)

def relationLc3386 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123267) * (relationLc3386 rho) = ((1 : F) * rho 123272)

def relationRow7689 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123271) * ((1 : F) * rho 123272) = ((1 : F) * rho 123273)

def relationRow7690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123274) * ((1 : F) + (1 : F) * rho 123273) = ((1 : F) * rho 123271 + (1 : F) * rho 123272)

def relationRow7691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123275) * ((1 : F) + (-1 : F) * rho 123273) = ((1 : F) * rho 123270 + (-1 : F) * rho 123271 + (-1 : F) * rho 123272)

def relationLc3387 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((1 : F), 123274)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121159) * (relationLc3387 rho) = ((1 : F) * rho 123276)

def relationLc3388 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((1 : F), 123275)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121159) * (relationLc3388 rho) = ((1 : F) * rho 123277)

def relationRow7694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123267) * ((1 : F) * rho 123268) = ((1 : F) * rho 123278)

def relationRow7695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123267) * ((1 : F) * rho 123267) = ((1 : F) * rho 123279)

def relationRow7696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123268) * ((1 : F) * rho 123268) = ((1 : F) * rho 123280)

def relationRow7697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123281) * ((-1 : F) * rho 123279 + (1 : F) * rho 123280) = ((2 : F) * rho 123278)

def relationRow7698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123282) * ((2 : F) + (1 : F) * rho 123279 + (-1 : F) * rho 123280) = ((1 : F) * rho 123279 + (1 : F) * rho 123280)

def relationLc3389 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7699 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3389 rho) = ((1 : F) * rho 123283)

def relationRow7700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123283) * ((1 : F) * rho 123281 + (1 : F) * rho 123282) = ((1 : F) * rho 123284)

def relationLc3390 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123282) * (relationLc3390 rho) = ((1 : F) * rho 123285)

def relationLc3391 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123281) * (relationLc3391 rho) = ((1 : F) * rho 123286)

def relationRow7703 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123285) * ((1 : F) * rho 123286) = ((1 : F) * rho 123287)

def relationRow7704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123288) * ((1 : F) + (1 : F) * rho 123287) = ((1 : F) * rho 123285 + (1 : F) * rho 123286)

def relationRow7705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123289) * ((1 : F) + (-1 : F) * rho 123287) = ((1 : F) * rho 123284 + (-1 : F) * rho 123285 + (-1 : F) * rho 123286)

def relationLc3392 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((1 : F), 123288)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121160) * (relationLc3392 rho) = ((1 : F) * rho 123290)

def relationLc3393 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((1 : F), 123289)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121160) * (relationLc3393 rho) = ((1 : F) * rho 123291)

def relationRow7708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123281) * ((1 : F) * rho 123282) = ((1 : F) * rho 123292)

def relationRow7709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123281) * ((1 : F) * rho 123281) = ((1 : F) * rho 123293)

def relationRow7710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123282) * ((1 : F) * rho 123282) = ((1 : F) * rho 123294)

def relationRow7711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123295) * ((-1 : F) * rho 123293 + (1 : F) * rho 123294) = ((2 : F) * rho 123292)

def relationRow7712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123296) * ((2 : F) + (1 : F) * rho 123293 + (-1 : F) * rho 123294) = ((1 : F) * rho 123293 + (1 : F) * rho 123294)

def relationLc3394 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277), ((1 : F), 123290), ((1 : F), 123291)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7713 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3394 rho) = ((1 : F) * rho 123297)

def relationRow7714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123297) * ((1 : F) * rho 123295 + (1 : F) * rho 123296) = ((1 : F) * rho 123298)

def relationLc3395 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276), ((1 : F), 123290)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123296) * (relationLc3395 rho) = ((1 : F) * rho 123299)

def relationLc3396 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277), ((1 : F), 123291)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123295) * (relationLc3396 rho) = ((1 : F) * rho 123300)

def relationRow7717 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123299) * ((1 : F) * rho 123300) = ((1 : F) * rho 123301)

def relationRow7718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123302) * ((1 : F) + (1 : F) * rho 123301) = ((1 : F) * rho 123299 + (1 : F) * rho 123300)

def relationRow7719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123303) * ((1 : F) + (-1 : F) * rho 123301) = ((1 : F) * rho 123298 + (-1 : F) * rho 123299 + (-1 : F) * rho 123300)

def relationLc3397 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((-1 : F), 123290), ((1 : F), 123302)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121161) * (relationLc3397 rho) = ((1 : F) * rho 123304)

def relationLc3398 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((-1 : F), 123291), ((1 : F), 123303)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121161) * (relationLc3398 rho) = ((1 : F) * rho 123305)

def relationRow7722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123295) * ((1 : F) * rho 123296) = ((1 : F) * rho 123306)

def relationRow7723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123295) * ((1 : F) * rho 123295) = ((1 : F) * rho 123307)

def relationRow7724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123296) * ((1 : F) * rho 123296) = ((1 : F) * rho 123308)

def relationRow7725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123309) * ((-1 : F) * rho 123307 + (1 : F) * rho 123308) = ((2 : F) * rho 123306)

def relationRow7726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123310) * ((2 : F) + (1 : F) * rho 123307 + (-1 : F) * rho 123308) = ((1 : F) * rho 123307 + (1 : F) * rho 123308)

def relationLc3399 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277), ((1 : F), 123290), ((1 : F), 123291), ((1 : F), 123304), ((1 : F), 123305)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7727 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3399 rho) = ((1 : F) * rho 123311)

def relationRow7728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123311) * ((1 : F) * rho 123309 + (1 : F) * rho 123310) = ((1 : F) * rho 123312)

def relationLc3400 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276), ((1 : F), 123290), ((1 : F), 123304)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123310) * (relationLc3400 rho) = ((1 : F) * rho 123313)

def relationLc3401 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277), ((1 : F), 123291), ((1 : F), 123305)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123309) * (relationLc3401 rho) = ((1 : F) * rho 123314)

def relationRow7731 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123313) * ((1 : F) * rho 123314) = ((1 : F) * rho 123315)

def relationRow7732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123316) * ((1 : F) + (1 : F) * rho 123315) = ((1 : F) * rho 123313 + (1 : F) * rho 123314)

def relationRow7733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123317) * ((1 : F) + (-1 : F) * rho 123315) = ((1 : F) * rho 123312 + (-1 : F) * rho 123313 + (-1 : F) * rho 123314)

def relationLc3402 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((-1 : F), 123290), ((-1 : F), 123304), ((1 : F), 123316)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121162) * (relationLc3402 rho) = ((1 : F) * rho 123318)

def relationLc3403 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((-1 : F), 123291), ((-1 : F), 123305), ((1 : F), 123317)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121162) * (relationLc3403 rho) = ((1 : F) * rho 123319)

def relationRow7736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123309) * ((1 : F) * rho 123310) = ((1 : F) * rho 123320)

def relationRow7737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123309) * ((1 : F) * rho 123309) = ((1 : F) * rho 123321)

def relationRow7738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123310) * ((1 : F) * rho 123310) = ((1 : F) * rho 123322)

def relationRow7739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123323) * ((-1 : F) * rho 123321 + (1 : F) * rho 123322) = ((2 : F) * rho 123320)

def relationRow7740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123324) * ((2 : F) + (1 : F) * rho 123321 + (-1 : F) * rho 123322) = ((1 : F) * rho 123321 + (1 : F) * rho 123322)

def relationLc3404 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277), ((1 : F), 123290), ((1 : F), 123291), ((1 : F), 123304), ((1 : F), 123305), ((1 : F), 123318), ((1 : F), 123319)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7741 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3404 rho) = ((1 : F) * rho 123325)

def relationRow7742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123325) * ((1 : F) * rho 123323 + (1 : F) * rho 123324) = ((1 : F) * rho 123326)

def relationLc3405 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276), ((1 : F), 123290), ((1 : F), 123304), ((1 : F), 123318)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123324) * (relationLc3405 rho) = ((1 : F) * rho 123327)

def relationLc3406 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277), ((1 : F), 123291), ((1 : F), 123305), ((1 : F), 123319)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123323) * (relationLc3406 rho) = ((1 : F) * rho 123328)

def relationRow7745 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123327) * ((1 : F) * rho 123328) = ((1 : F) * rho 123329)

def relationRow7746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123330) * ((1 : F) + (1 : F) * rho 123329) = ((1 : F) * rho 123327 + (1 : F) * rho 123328)

def relationRow7747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123331) * ((1 : F) + (-1 : F) * rho 123329) = ((1 : F) * rho 123326 + (-1 : F) * rho 123327 + (-1 : F) * rho 123328)

def relationLc3407 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((-1 : F), 123290), ((-1 : F), 123304), ((-1 : F), 123318), ((1 : F), 123330)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121163) * (relationLc3407 rho) = ((1 : F) * rho 123332)

def relationLc3408 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((-1 : F), 123291), ((-1 : F), 123305), ((-1 : F), 123319), ((1 : F), 123331)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121163) * (relationLc3408 rho) = ((1 : F) * rho 123333)

def relationRow7750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123323) * ((1 : F) * rho 123324) = ((1 : F) * rho 123334)

def relationRow7751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123323) * ((1 : F) * rho 123323) = ((1 : F) * rho 123335)

def relationRow7752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123324) * ((1 : F) * rho 123324) = ((1 : F) * rho 123336)

def relationRow7753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123337) * ((-1 : F) * rho 123335 + (1 : F) * rho 123336) = ((2 : F) * rho 123334)

def relationRow7754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123338) * ((2 : F) + (1 : F) * rho 123335 + (-1 : F) * rho 123336) = ((1 : F) * rho 123335 + (1 : F) * rho 123336)

def relationLc3409 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277), ((1 : F), 123290), ((1 : F), 123291), ((1 : F), 123304), ((1 : F), 123305), ((1 : F), 123318), ((1 : F), 123319), ((1 : F), 123332), ((1 : F), 123333)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7755 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3409 rho) = ((1 : F) * rho 123339)

def relationRow7756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123339) * ((1 : F) * rho 123337 + (1 : F) * rho 123338) = ((1 : F) * rho 123340)

def relationLc3410 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276), ((1 : F), 123290), ((1 : F), 123304), ((1 : F), 123318), ((1 : F), 123332)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123338) * (relationLc3410 rho) = ((1 : F) * rho 123341)

def relationLc3411 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277), ((1 : F), 123291), ((1 : F), 123305), ((1 : F), 123319), ((1 : F), 123333)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123337) * (relationLc3411 rho) = ((1 : F) * rho 123342)

def relationRow7759 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123341) * ((1 : F) * rho 123342) = ((1 : F) * rho 123343)

def relationRow7760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123344) * ((1 : F) + (1 : F) * rho 123343) = ((1 : F) * rho 123341 + (1 : F) * rho 123342)

def relationRow7761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123345) * ((1 : F) + (-1 : F) * rho 123343) = ((1 : F) * rho 123340 + (-1 : F) * rho 123341 + (-1 : F) * rho 123342)

def relationLc3412 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((-1 : F), 123290), ((-1 : F), 123304), ((-1 : F), 123318), ((-1 : F), 123332), ((1 : F), 123344)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121164) * (relationLc3412 rho) = ((1 : F) * rho 123346)

def relationLc3413 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((-1 : F), 123291), ((-1 : F), 123305), ((-1 : F), 123319), ((-1 : F), 123333), ((1 : F), 123345)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121164) * (relationLc3413 rho) = ((1 : F) * rho 123347)

def relationRow7764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123337) * ((1 : F) * rho 123338) = ((1 : F) * rho 123348)

def relationRow7765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123337) * ((1 : F) * rho 123337) = ((1 : F) * rho 123349)

def relationRow7766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123338) * ((1 : F) * rho 123338) = ((1 : F) * rho 123350)

def relationRow7767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123351) * ((-1 : F) * rho 123349 + (1 : F) * rho 123350) = ((2 : F) * rho 123348)

def relationRow7768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123352) * ((2 : F) + (1 : F) * rho 123349 + (-1 : F) * rho 123350) = ((1 : F) * rho 123349 + (1 : F) * rho 123350)

def relationLc3414 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277), ((1 : F), 123290), ((1 : F), 123291), ((1 : F), 123304), ((1 : F), 123305), ((1 : F), 123318), ((1 : F), 123319), ((1 : F), 123332), ((1 : F), 123333), ((1 : F), 123346), ((1 : F), 123347)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7769 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3414 rho) = ((1 : F) * rho 123353)

def relationRow7770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123353) * ((1 : F) * rho 123351 + (1 : F) * rho 123352) = ((1 : F) * rho 123354)

def relationLc3415 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276), ((1 : F), 123290), ((1 : F), 123304), ((1 : F), 123318), ((1 : F), 123332), ((1 : F), 123346)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123352) * (relationLc3415 rho) = ((1 : F) * rho 123355)

def relationLc3416 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277), ((1 : F), 123291), ((1 : F), 123305), ((1 : F), 123319), ((1 : F), 123333), ((1 : F), 123347)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123351) * (relationLc3416 rho) = ((1 : F) * rho 123356)

def relationRow7773 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123355) * ((1 : F) * rho 123356) = ((1 : F) * rho 123357)

def relationRow7774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123358) * ((1 : F) + (1 : F) * rho 123357) = ((1 : F) * rho 123355 + (1 : F) * rho 123356)

def relationRow7775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123359) * ((1 : F) + (-1 : F) * rho 123357) = ((1 : F) * rho 123354 + (-1 : F) * rho 123355 + (-1 : F) * rho 123356)

def relationLc3417 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((-1 : F), 123290), ((-1 : F), 123304), ((-1 : F), 123318), ((-1 : F), 123332), ((-1 : F), 123346), ((1 : F), 123358)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121165) * (relationLc3417 rho) = ((1 : F) * rho 123360)

def relationLc3418 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((-1 : F), 123291), ((-1 : F), 123305), ((-1 : F), 123319), ((-1 : F), 123333), ((-1 : F), 123347), ((1 : F), 123359)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121165) * (relationLc3418 rho) = ((1 : F) * rho 123361)

def relationRow7778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123351) * ((1 : F) * rho 123352) = ((1 : F) * rho 123362)

def relationRow7779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123351) * ((1 : F) * rho 123351) = ((1 : F) * rho 123363)

def relationRow7780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123352) * ((1 : F) * rho 123352) = ((1 : F) * rho 123364)

def relationRow7781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123365) * ((-1 : F) * rho 123363 + (1 : F) * rho 123364) = ((2 : F) * rho 123362)

def relationRow7782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123366) * ((2 : F) + (1 : F) * rho 123363 + (-1 : F) * rho 123364) = ((1 : F) * rho 123363 + (1 : F) * rho 123364)

def relationLc3419 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277), ((1 : F), 123290), ((1 : F), 123291), ((1 : F), 123304), ((1 : F), 123305), ((1 : F), 123318), ((1 : F), 123319), ((1 : F), 123332), ((1 : F), 123333), ((1 : F), 123346), ((1 : F), 123347), ((1 : F), 123360), ((1 : F), 123361)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7783 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3419 rho) = ((1 : F) * rho 123367)

def relationRow7784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123367) * ((1 : F) * rho 123365 + (1 : F) * rho 123366) = ((1 : F) * rho 123368)

def relationLc3420 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276), ((1 : F), 123290), ((1 : F), 123304), ((1 : F), 123318), ((1 : F), 123332), ((1 : F), 123346), ((1 : F), 123360)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123366) * (relationLc3420 rho) = ((1 : F) * rho 123369)

def relationLc3421 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277), ((1 : F), 123291), ((1 : F), 123305), ((1 : F), 123319), ((1 : F), 123333), ((1 : F), 123347), ((1 : F), 123361)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123365) * (relationLc3421 rho) = ((1 : F) * rho 123370)

def relationRow7787 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123369) * ((1 : F) * rho 123370) = ((1 : F) * rho 123371)

def relationRow7788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123372) * ((1 : F) + (1 : F) * rho 123371) = ((1 : F) * rho 123369 + (1 : F) * rho 123370)

def relationRow7789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123373) * ((1 : F) + (-1 : F) * rho 123371) = ((1 : F) * rho 123368 + (-1 : F) * rho 123369 + (-1 : F) * rho 123370)

def relationLc3422 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((-1 : F), 123290), ((-1 : F), 123304), ((-1 : F), 123318), ((-1 : F), 123332), ((-1 : F), 123346), ((-1 : F), 123360), ((1 : F), 123372)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121166) * (relationLc3422 rho) = ((1 : F) * rho 123374)

def relationLc3423 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((-1 : F), 123291), ((-1 : F), 123305), ((-1 : F), 123319), ((-1 : F), 123333), ((-1 : F), 123347), ((-1 : F), 123361), ((1 : F), 123373)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121166) * (relationLc3423 rho) = ((1 : F) * rho 123375)

def relationRow7792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123365) * ((1 : F) * rho 123366) = ((1 : F) * rho 123376)

def relationRow7793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123365) * ((1 : F) * rho 123365) = ((1 : F) * rho 123377)

def relationRow7794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123366) * ((1 : F) * rho 123366) = ((1 : F) * rho 123378)

def relationRow7795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123379) * ((-1 : F) * rho 123377 + (1 : F) * rho 123378) = ((2 : F) * rho 123376)

def relationRow7796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123380) * ((2 : F) + (1 : F) * rho 123377 + (-1 : F) * rho 123378) = ((1 : F) * rho 123377 + (1 : F) * rho 123378)

def relationLc3424 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277), ((1 : F), 123290), ((1 : F), 123291), ((1 : F), 123304), ((1 : F), 123305), ((1 : F), 123318), ((1 : F), 123319), ((1 : F), 123332), ((1 : F), 123333), ((1 : F), 123346), ((1 : F), 123347), ((1 : F), 123360), ((1 : F), 123361), ((1 : F), 123374), ((1 : F), 123375)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7797 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3424 rho) = ((1 : F) * rho 123381)

def relationRow7798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123381) * ((1 : F) * rho 123379 + (1 : F) * rho 123380) = ((1 : F) * rho 123382)

def relationLc3425 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276), ((1 : F), 123290), ((1 : F), 123304), ((1 : F), 123318), ((1 : F), 123332), ((1 : F), 123346), ((1 : F), 123360), ((1 : F), 123374)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123380) * (relationLc3425 rho) = ((1 : F) * rho 123383)

def relationLc3426 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277), ((1 : F), 123291), ((1 : F), 123305), ((1 : F), 123319), ((1 : F), 123333), ((1 : F), 123347), ((1 : F), 123361), ((1 : F), 123375)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123379) * (relationLc3426 rho) = ((1 : F) * rho 123384)

def relationRow7801 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123383) * ((1 : F) * rho 123384) = ((1 : F) * rho 123385)

def relationRow7802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123386) * ((1 : F) + (1 : F) * rho 123385) = ((1 : F) * rho 123383 + (1 : F) * rho 123384)

def relationRow7803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123387) * ((1 : F) + (-1 : F) * rho 123385) = ((1 : F) * rho 123382 + (-1 : F) * rho 123383 + (-1 : F) * rho 123384)

def relationLc3427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((-1 : F), 123290), ((-1 : F), 123304), ((-1 : F), 123318), ((-1 : F), 123332), ((-1 : F), 123346), ((-1 : F), 123360), ((-1 : F), 123374), ((1 : F), 123386)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121167) * (relationLc3427 rho) = ((1 : F) * rho 123388)

def relationLc3428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((-1 : F), 123291), ((-1 : F), 123305), ((-1 : F), 123319), ((-1 : F), 123333), ((-1 : F), 123347), ((-1 : F), 123361), ((-1 : F), 123375), ((1 : F), 123387)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121167) * (relationLc3428 rho) = ((1 : F) * rho 123389)

def relationRow7806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123379) * ((1 : F) * rho 123380) = ((1 : F) * rho 123390)

def relationRow7807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123379) * ((1 : F) * rho 123379) = ((1 : F) * rho 123391)

def relationRow7808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123380) * ((1 : F) * rho 123380) = ((1 : F) * rho 123392)

def relationRow7809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123393) * ((-1 : F) * rho 123391 + (1 : F) * rho 123392) = ((2 : F) * rho 123390)

def relationRow7810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123394) * ((2 : F) + (1 : F) * rho 123391 + (-1 : F) * rho 123392) = ((1 : F) * rho 123391 + (1 : F) * rho 123392)

def relationLc3429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277), ((1 : F), 123290), ((1 : F), 123291), ((1 : F), 123304), ((1 : F), 123305), ((1 : F), 123318), ((1 : F), 123319), ((1 : F), 123332), ((1 : F), 123333), ((1 : F), 123346), ((1 : F), 123347), ((1 : F), 123360), ((1 : F), 123361), ((1 : F), 123374), ((1 : F), 123375), ((1 : F), 123388), ((1 : F), 123389)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7811 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3429 rho) = ((1 : F) * rho 123395)

def relationRow7812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123395) * ((1 : F) * rho 123393 + (1 : F) * rho 123394) = ((1 : F) * rho 123396)

def relationLc3430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276), ((1 : F), 123290), ((1 : F), 123304), ((1 : F), 123318), ((1 : F), 123332), ((1 : F), 123346), ((1 : F), 123360), ((1 : F), 123374), ((1 : F), 123388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123394) * (relationLc3430 rho) = ((1 : F) * rho 123397)

def relationLc3431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277), ((1 : F), 123291), ((1 : F), 123305), ((1 : F), 123319), ((1 : F), 123333), ((1 : F), 123347), ((1 : F), 123361), ((1 : F), 123375), ((1 : F), 123389)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123393) * (relationLc3431 rho) = ((1 : F) * rho 123398)

def relationRow7815 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123397) * ((1 : F) * rho 123398) = ((1 : F) * rho 123399)

def relationRow7816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123400) * ((1 : F) + (1 : F) * rho 123399) = ((1 : F) * rho 123397 + (1 : F) * rho 123398)

def relationRow7817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123401) * ((1 : F) + (-1 : F) * rho 123399) = ((1 : F) * rho 123396 + (-1 : F) * rho 123397 + (-1 : F) * rho 123398)

def relationLc3432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((-1 : F), 123290), ((-1 : F), 123304), ((-1 : F), 123318), ((-1 : F), 123332), ((-1 : F), 123346), ((-1 : F), 123360), ((-1 : F), 123374), ((-1 : F), 123388), ((1 : F), 123400)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121168) * (relationLc3432 rho) = ((1 : F) * rho 123402)

def relationLc3433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((-1 : F), 123291), ((-1 : F), 123305), ((-1 : F), 123319), ((-1 : F), 123333), ((-1 : F), 123347), ((-1 : F), 123361), ((-1 : F), 123375), ((-1 : F), 123389), ((1 : F), 123401)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121168) * (relationLc3433 rho) = ((1 : F) * rho 123403)

def relationRow7820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123393) * ((1 : F) * rho 123394) = ((1 : F) * rho 123404)

def relationRow7821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123393) * ((1 : F) * rho 123393) = ((1 : F) * rho 123405)

def relationRow7822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123394) * ((1 : F) * rho 123394) = ((1 : F) * rho 123406)

def relationRow7823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123407) * ((-1 : F) * rho 123405 + (1 : F) * rho 123406) = ((2 : F) * rho 123404)

def relationRow7824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123408) * ((2 : F) + (1 : F) * rho 123405 + (-1 : F) * rho 123406) = ((1 : F) * rho 123405 + (1 : F) * rho 123406)

def relationLc3434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123207), ((1 : F), 123220), ((1 : F), 123221), ((1 : F), 123234), ((1 : F), 123235), ((1 : F), 123248), ((1 : F), 123249), ((1 : F), 123262), ((1 : F), 123263), ((1 : F), 123276), ((1 : F), 123277), ((1 : F), 123290), ((1 : F), 123291), ((1 : F), 123304), ((1 : F), 123305), ((1 : F), 123318), ((1 : F), 123319), ((1 : F), 123332), ((1 : F), 123333), ((1 : F), 123346), ((1 : F), 123347), ((1 : F), 123360), ((1 : F), 123361), ((1 : F), 123374), ((1 : F), 123375), ((1 : F), 123388), ((1 : F), 123389), ((1 : F), 123402), ((1 : F), 123403)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7825 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3434 rho) = ((1 : F) * rho 123409)

def relationRow7826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123409) * ((1 : F) * rho 123407 + (1 : F) * rho 123408) = ((1 : F) * rho 123410)

def relationLc3435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩], residual := [((1 : F), 123206), ((1 : F), 123220), ((1 : F), 123234), ((1 : F), 123248), ((1 : F), 123262), ((1 : F), 123276), ((1 : F), 123290), ((1 : F), 123304), ((1 : F), 123318), ((1 : F), 123332), ((1 : F), 123346), ((1 : F), 123360), ((1 : F), 123374), ((1 : F), 123388), ((1 : F), 123402)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123408) * (relationLc3435 rho) = ((1 : F) * rho 123411)

def relationLc3436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩], residual := [((1 : F), 123207), ((1 : F), 123221), ((1 : F), 123235), ((1 : F), 123249), ((1 : F), 123263), ((1 : F), 123277), ((1 : F), 123291), ((1 : F), 123305), ((1 : F), 123319), ((1 : F), 123333), ((1 : F), 123347), ((1 : F), 123361), ((1 : F), 123375), ((1 : F), 123389), ((1 : F), 123403)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123407) * (relationLc3436 rho) = ((1 : F) * rho 123412)

def relationRow7829 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123411) * ((1 : F) * rho 123412) = ((1 : F) * rho 123413)

def relationRow7830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123414) * ((1 : F) + (1 : F) * rho 123413) = ((1 : F) * rho 123411 + (1 : F) * rho 123412)

def relationRow7831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123415) * ((1 : F) + (-1 : F) * rho 123413) = ((1 : F) * rho 123410 + (-1 : F) * rho 123411 + (-1 : F) * rho 123412)

def relationLc3437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩], residual := [((-1 : F), 123206), ((-1 : F), 123220), ((-1 : F), 123234), ((-1 : F), 123248), ((-1 : F), 123262), ((-1 : F), 123276), ((-1 : F), 123290), ((-1 : F), 123304), ((-1 : F), 123318), ((-1 : F), 123332), ((-1 : F), 123346), ((-1 : F), 123360), ((-1 : F), 123374), ((-1 : F), 123388), ((-1 : F), 123402), ((1 : F), 123414)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121169) * (relationLc3437 rho) = ((1 : F) * rho 123416)

def relationLc3438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩], residual := [((-1 : F), 123207), ((-1 : F), 123221), ((-1 : F), 123235), ((-1 : F), 123249), ((-1 : F), 123263), ((-1 : F), 123277), ((-1 : F), 123291), ((-1 : F), 123305), ((-1 : F), 123319), ((-1 : F), 123333), ((-1 : F), 123347), ((-1 : F), 123361), ((-1 : F), 123375), ((-1 : F), 123389), ((-1 : F), 123403), ((1 : F), 123415)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121169) * (relationLc3438 rho) = ((1 : F) * rho 123417)

def relationRow7834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123407) * ((1 : F) * rho 123408) = ((1 : F) * rho 123418)

def relationRow7835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123407) * ((1 : F) * rho 123407) = ((1 : F) * rho 123419)

def relationRow7836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123408) * ((1 : F) * rho 123408) = ((1 : F) * rho 123420)

def relationRow7837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123421) * ((-1 : F) * rho 123419 + (1 : F) * rho 123420) = ((2 : F) * rho 123418)

def relationRow7838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123422) * ((2 : F) + (1 : F) * rho 123419 + (-1 : F) * rho 123420) = ((1 : F) * rho 123419 + (1 : F) * rho 123420)

def relationLc3439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 16⟩, ⟨(1 : F), 123207, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7839 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3439 rho) = ((1 : F) * rho 123423)

def relationRow7840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123423) * ((1 : F) * rho 123421 + (1 : F) * rho 123422) = ((1 : F) * rho 123424)

def relationLc3440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 123206, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123422) * (relationLc3440 rho) = ((1 : F) * rho 123425)

def relationLc3441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123207, 14, 16⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123421) * (relationLc3441 rho) = ((1 : F) * rho 123426)

def relationRow7843 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 123425) * ((1 : F) * rho 123426) = ((1 : F) * rho 123427)

def relationRow7844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123428) * ((1 : F) + (1 : F) * rho 123427) = ((1 : F) * rho 123425 + (1 : F) * rho 123426)

def relationRow7845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123429) * ((1 : F) + (-1 : F) * rho 123427) = ((1 : F) * rho 123424 + (-1 : F) * rho 123425 + (-1 : F) * rho 123426)

def relationLc3442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 121255, 13, 150⟩, ⟨(-1 : F), 123206, 14, 16⟩], residual := [((1 : F), 123428)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121170) * (relationLc3442 rho) = ((1 : F) * rho 123430)

def relationLc3443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 121256, 13, 150⟩, ⟨(-1 : F), 123207, 14, 16⟩], residual := [((1 : F), 123429)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121170) * (relationLc3443 rho) = ((1 : F) * rho 123431)

def relationRow7848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123421) * ((1 : F) * rho 123422) = ((1 : F) * rho 123432)

def relationRow7849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123421) * ((1 : F) * rho 123421) = ((1 : F) * rho 123433)

def relationRow7850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123422) * ((1 : F) * rho 123422) = ((1 : F) * rho 123434)

def relationRow7851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123435) * ((-1 : F) * rho 123433 + (1 : F) * rho 123434) = ((2 : F) * rho 123432)

def relationRow7852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123436) * ((2 : F) + (1 : F) * rho 123433 + (-1 : F) * rho 123434) = ((1 : F) * rho 123433 + (1 : F) * rho 123434)

def relationLc3444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 121255, 13, 150⟩, ⟨(1 : F), 121256, 13, 150⟩, ⟨(1 : F), 123206, 14, 17⟩, ⟨(1 : F), 123207, 14, 17⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7853 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc3444 rho) = ((1 : F) * rho 123437)

def relationRow7854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 123437) * ((1 : F) * rho 123435 + (1 : F) * rho 123436) = ((1 : F) * rho 123438)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109
