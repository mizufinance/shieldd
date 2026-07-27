import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg109Defs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109

def relationLc1911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 95⟩], residual := [((1 : F), 118879)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117489) * (relationLc1911 rho) = ((1 : F) * rho 118881)

def relationLc1912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 95⟩], residual := [((1 : F), 118880)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117489) * (relationLc1912 rho) = ((1 : F) * rho 118882)

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118873) * ((1 : F) * rho 118874) = ((1 : F) * rho 118883)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118873) * ((1 : F) * rho 118873) = ((1 : F) * rho 118884)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118874) * ((1 : F) * rho 118874) = ((1 : F) * rho 118885)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118886) * ((-1 : F) * rho 118884 + (1 : F) * rho 118885) = ((2 : F) * rho 118883)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118887) * ((2 : F) + (1 : F) * rho 118884 + (-1 : F) * rho 118885) = ((1 : F) * rho 118884 + (1 : F) * rho 118885)

def relationLc1913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 96⟩, ⟨(1 : F), 117647, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118886 + (1 : F) * rho 118887) * (relationLc1913 rho) = ((1 : F) * rho 118888)

def relationLc1914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118887) * (relationLc1914 rho) = ((1 : F) * rho 118889)

def relationLc1915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118886) * (relationLc1915 rho) = ((1 : F) * rho 118890)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118889) * ((1 : F) * rho 118890) = ((1 : F) * rho 118891)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118892) * ((1 : F) + (1 : F) * rho 118891) = ((1 : F) * rho 118889 + (1 : F) * rho 118890)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118893) * ((1 : F) + (-1 : F) * rho 118891) = ((1 : F) * rho 118888 + (-1 : F) * rho 118889 + (-1 : F) * rho 118890)

def relationLc1916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 96⟩], residual := [((1 : F), 118892)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117490) * (relationLc1916 rho) = ((1 : F) * rho 118894)

def relationLc1917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 96⟩], residual := [((1 : F), 118893)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117490) * (relationLc1917 rho) = ((1 : F) * rho 118895)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118886) * ((1 : F) * rho 118887) = ((1 : F) * rho 118896)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118886) * ((1 : F) * rho 118886) = ((1 : F) * rho 118897)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118887) * ((1 : F) * rho 118887) = ((1 : F) * rho 118898)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118899) * ((-1 : F) * rho 118897 + (1 : F) * rho 118898) = ((2 : F) * rho 118896)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118900) * ((2 : F) + (1 : F) * rho 118897 + (-1 : F) * rho 118898) = ((1 : F) * rho 118897 + (1 : F) * rho 118898)

def relationLc1918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 97⟩, ⟨(1 : F), 117647, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118899 + (1 : F) * rho 118900) * (relationLc1918 rho) = ((1 : F) * rho 118901)

def relationLc1919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118900) * (relationLc1919 rho) = ((1 : F) * rho 118902)

def relationLc1920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118899) * (relationLc1920 rho) = ((1 : F) * rho 118903)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118902) * ((1 : F) * rho 118903) = ((1 : F) * rho 118904)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118905) * ((1 : F) + (1 : F) * rho 118904) = ((1 : F) * rho 118902 + (1 : F) * rho 118903)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118906) * ((1 : F) + (-1 : F) * rho 118904) = ((1 : F) * rho 118901 + (-1 : F) * rho 118902 + (-1 : F) * rho 118903)

def relationLc1921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 97⟩], residual := [((1 : F), 118905)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117491) * (relationLc1921 rho) = ((1 : F) * rho 118907)

def relationLc1922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 97⟩], residual := [((1 : F), 118906)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117491) * (relationLc1922 rho) = ((1 : F) * rho 118908)

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118899) * ((1 : F) * rho 118900) = ((1 : F) * rho 118909)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118899) * ((1 : F) * rho 118899) = ((1 : F) * rho 118910)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118900) * ((1 : F) * rho 118900) = ((1 : F) * rho 118911)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118912) * ((-1 : F) * rho 118910 + (1 : F) * rho 118911) = ((2 : F) * rho 118909)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118913) * ((2 : F) + (1 : F) * rho 118910 + (-1 : F) * rho 118911) = ((1 : F) * rho 118910 + (1 : F) * rho 118911)

def relationLc1923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 98⟩, ⟨(1 : F), 117647, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118912 + (1 : F) * rho 118913) * (relationLc1923 rho) = ((1 : F) * rho 118914)

def relationLc1924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118913) * (relationLc1924 rho) = ((1 : F) * rho 118915)

def relationLc1925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118912) * (relationLc1925 rho) = ((1 : F) * rho 118916)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118915) * ((1 : F) * rho 118916) = ((1 : F) * rho 118917)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118918) * ((1 : F) + (1 : F) * rho 118917) = ((1 : F) * rho 118915 + (1 : F) * rho 118916)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118919) * ((1 : F) + (-1 : F) * rho 118917) = ((1 : F) * rho 118914 + (-1 : F) * rho 118915 + (-1 : F) * rho 118916)

def relationLc1926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 98⟩], residual := [((1 : F), 118918)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117492) * (relationLc1926 rho) = ((1 : F) * rho 118920)

def relationLc1927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 98⟩], residual := [((1 : F), 118919)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117492) * (relationLc1927 rho) = ((1 : F) * rho 118921)

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118912) * ((1 : F) * rho 118913) = ((1 : F) * rho 118922)

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118912) * ((1 : F) * rho 118912) = ((1 : F) * rho 118923)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118913) * ((1 : F) * rho 118913) = ((1 : F) * rho 118924)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118925) * ((-1 : F) * rho 118923 + (1 : F) * rho 118924) = ((2 : F) * rho 118922)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118926) * ((2 : F) + (1 : F) * rho 118923 + (-1 : F) * rho 118924) = ((1 : F) * rho 118923 + (1 : F) * rho 118924)

def relationLc1928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 99⟩, ⟨(1 : F), 117647, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118925 + (1 : F) * rho 118926) * (relationLc1928 rho) = ((1 : F) * rho 118927)

def relationLc1929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118926) * (relationLc1929 rho) = ((1 : F) * rho 118928)

def relationLc1930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118925) * (relationLc1930 rho) = ((1 : F) * rho 118929)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118928) * ((1 : F) * rho 118929) = ((1 : F) * rho 118930)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118931) * ((1 : F) + (1 : F) * rho 118930) = ((1 : F) * rho 118928 + (1 : F) * rho 118929)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118932) * ((1 : F) + (-1 : F) * rho 118930) = ((1 : F) * rho 118927 + (-1 : F) * rho 118928 + (-1 : F) * rho 118929)

def relationLc1931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 99⟩], residual := [((1 : F), 118931)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117493) * (relationLc1931 rho) = ((1 : F) * rho 118933)

def relationLc1932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 99⟩], residual := [((1 : F), 118932)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117493) * (relationLc1932 rho) = ((1 : F) * rho 118934)

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118925) * ((1 : F) * rho 118926) = ((1 : F) * rho 118935)

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118925) * ((1 : F) * rho 118925) = ((1 : F) * rho 118936)

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118926) * ((1 : F) * rho 118926) = ((1 : F) * rho 118937)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118938) * ((-1 : F) * rho 118936 + (1 : F) * rho 118937) = ((2 : F) * rho 118935)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118939) * ((2 : F) + (1 : F) * rho 118936 + (-1 : F) * rho 118937) = ((1 : F) * rho 118936 + (1 : F) * rho 118937)

def relationLc1933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 100⟩, ⟨(1 : F), 117647, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118938 + (1 : F) * rho 118939) * (relationLc1933 rho) = ((1 : F) * rho 118940)

def relationLc1934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118939) * (relationLc1934 rho) = ((1 : F) * rho 118941)

def relationLc1935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118938) * (relationLc1935 rho) = ((1 : F) * rho 118942)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118941) * ((1 : F) * rho 118942) = ((1 : F) * rho 118943)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118944) * ((1 : F) + (1 : F) * rho 118943) = ((1 : F) * rho 118941 + (1 : F) * rho 118942)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118945) * ((1 : F) + (-1 : F) * rho 118943) = ((1 : F) * rho 118940 + (-1 : F) * rho 118941 + (-1 : F) * rho 118942)

def relationLc1936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 100⟩], residual := [((1 : F), 118944)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117494) * (relationLc1936 rho) = ((1 : F) * rho 118946)

def relationLc1937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 100⟩], residual := [((1 : F), 118945)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117494) * (relationLc1937 rho) = ((1 : F) * rho 118947)

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118938) * ((1 : F) * rho 118939) = ((1 : F) * rho 118948)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118938) * ((1 : F) * rho 118938) = ((1 : F) * rho 118949)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118939) * ((1 : F) * rho 118939) = ((1 : F) * rho 118950)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118951) * ((-1 : F) * rho 118949 + (1 : F) * rho 118950) = ((2 : F) * rho 118948)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118952) * ((2 : F) + (1 : F) * rho 118949 + (-1 : F) * rho 118950) = ((1 : F) * rho 118949 + (1 : F) * rho 118950)

def relationLc1938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 101⟩, ⟨(1 : F), 117647, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118951 + (1 : F) * rho 118952) * (relationLc1938 rho) = ((1 : F) * rho 118953)

def relationLc1939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118952) * (relationLc1939 rho) = ((1 : F) * rho 118954)

def relationLc1940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118951) * (relationLc1940 rho) = ((1 : F) * rho 118955)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118954) * ((1 : F) * rho 118955) = ((1 : F) * rho 118956)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118957) * ((1 : F) + (1 : F) * rho 118956) = ((1 : F) * rho 118954 + (1 : F) * rho 118955)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118958) * ((1 : F) + (-1 : F) * rho 118956) = ((1 : F) * rho 118953 + (-1 : F) * rho 118954 + (-1 : F) * rho 118955)

def relationLc1941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 101⟩], residual := [((1 : F), 118957)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117495) * (relationLc1941 rho) = ((1 : F) * rho 118959)

def relationLc1942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 101⟩], residual := [((1 : F), 118958)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117495) * (relationLc1942 rho) = ((1 : F) * rho 118960)

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118951) * ((1 : F) * rho 118952) = ((1 : F) * rho 118961)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118951) * ((1 : F) * rho 118951) = ((1 : F) * rho 118962)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118952) * ((1 : F) * rho 118952) = ((1 : F) * rho 118963)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118964) * ((-1 : F) * rho 118962 + (1 : F) * rho 118963) = ((2 : F) * rho 118961)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118965) * ((2 : F) + (1 : F) * rho 118962 + (-1 : F) * rho 118963) = ((1 : F) * rho 118962 + (1 : F) * rho 118963)

def relationLc1943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 102⟩, ⟨(1 : F), 117647, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118964 + (1 : F) * rho 118965) * (relationLc1943 rho) = ((1 : F) * rho 118966)

def relationLc1944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118965) * (relationLc1944 rho) = ((1 : F) * rho 118967)

def relationLc1945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118964) * (relationLc1945 rho) = ((1 : F) * rho 118968)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118967) * ((1 : F) * rho 118968) = ((1 : F) * rho 118969)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118970) * ((1 : F) + (1 : F) * rho 118969) = ((1 : F) * rho 118967 + (1 : F) * rho 118968)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118971) * ((1 : F) + (-1 : F) * rho 118969) = ((1 : F) * rho 118966 + (-1 : F) * rho 118967 + (-1 : F) * rho 118968)

def relationLc1946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 102⟩], residual := [((1 : F), 118970)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117496) * (relationLc1946 rho) = ((1 : F) * rho 118972)

def relationLc1947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 102⟩], residual := [((1 : F), 118971)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117496) * (relationLc1947 rho) = ((1 : F) * rho 118973)

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118964) * ((1 : F) * rho 118965) = ((1 : F) * rho 118974)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118964) * ((1 : F) * rho 118964) = ((1 : F) * rho 118975)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118965) * ((1 : F) * rho 118965) = ((1 : F) * rho 118976)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118977) * ((-1 : F) * rho 118975 + (1 : F) * rho 118976) = ((2 : F) * rho 118974)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118978) * ((2 : F) + (1 : F) * rho 118975 + (-1 : F) * rho 118976) = ((1 : F) * rho 118975 + (1 : F) * rho 118976)

def relationLc1948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 103⟩, ⟨(1 : F), 117647, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118977 + (1 : F) * rho 118978) * (relationLc1948 rho) = ((1 : F) * rho 118979)

def relationLc1949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118978) * (relationLc1949 rho) = ((1 : F) * rho 118980)

def relationLc1950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118977) * (relationLc1950 rho) = ((1 : F) * rho 118981)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118980) * ((1 : F) * rho 118981) = ((1 : F) * rho 118982)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118983) * ((1 : F) + (1 : F) * rho 118982) = ((1 : F) * rho 118980 + (1 : F) * rho 118981)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118984) * ((1 : F) + (-1 : F) * rho 118982) = ((1 : F) * rho 118979 + (-1 : F) * rho 118980 + (-1 : F) * rho 118981)

def relationLc1951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 103⟩], residual := [((1 : F), 118983)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117497) * (relationLc1951 rho) = ((1 : F) * rho 118985)

def relationLc1952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 103⟩], residual := [((1 : F), 118984)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117497) * (relationLc1952 rho) = ((1 : F) * rho 118986)

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118977) * ((1 : F) * rho 118978) = ((1 : F) * rho 118987)

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118977) * ((1 : F) * rho 118977) = ((1 : F) * rho 118988)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118978) * ((1 : F) * rho 118978) = ((1 : F) * rho 118989)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118990) * ((-1 : F) * rho 118988 + (1 : F) * rho 118989) = ((2 : F) * rho 118987)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118991) * ((2 : F) + (1 : F) * rho 118988 + (-1 : F) * rho 118989) = ((1 : F) * rho 118988 + (1 : F) * rho 118989)

def relationLc1953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 104⟩, ⟨(1 : F), 117647, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118990 + (1 : F) * rho 118991) * (relationLc1953 rho) = ((1 : F) * rho 118992)

def relationLc1954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118991) * (relationLc1954 rho) = ((1 : F) * rho 118993)

def relationLc1955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118990) * (relationLc1955 rho) = ((1 : F) * rho 118994)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 118993) * ((1 : F) * rho 118994) = ((1 : F) * rho 118995)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118996) * ((1 : F) + (1 : F) * rho 118995) = ((1 : F) * rho 118993 + (1 : F) * rho 118994)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118997) * ((1 : F) + (-1 : F) * rho 118995) = ((1 : F) * rho 118992 + (-1 : F) * rho 118993 + (-1 : F) * rho 118994)

def relationLc1956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 104⟩], residual := [((1 : F), 118996)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117498) * (relationLc1956 rho) = ((1 : F) * rho 118998)

def relationLc1957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 104⟩], residual := [((1 : F), 118997)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117498) * (relationLc1957 rho) = ((1 : F) * rho 118999)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118990) * ((1 : F) * rho 118991) = ((1 : F) * rho 119000)

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118990) * ((1 : F) * rho 118990) = ((1 : F) * rho 119001)

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118991) * ((1 : F) * rho 118991) = ((1 : F) * rho 119002)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119003) * ((-1 : F) * rho 119001 + (1 : F) * rho 119002) = ((2 : F) * rho 119000)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119004) * ((2 : F) + (1 : F) * rho 119001 + (-1 : F) * rho 119002) = ((1 : F) * rho 119001 + (1 : F) * rho 119002)

def relationLc1958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 105⟩, ⟨(1 : F), 117647, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119003 + (1 : F) * rho 119004) * (relationLc1958 rho) = ((1 : F) * rho 119005)

def relationLc1959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119004) * (relationLc1959 rho) = ((1 : F) * rho 119006)

def relationLc1960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119003) * (relationLc1960 rho) = ((1 : F) * rho 119007)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119006) * ((1 : F) * rho 119007) = ((1 : F) * rho 119008)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119009) * ((1 : F) + (1 : F) * rho 119008) = ((1 : F) * rho 119006 + (1 : F) * rho 119007)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119010) * ((1 : F) + (-1 : F) * rho 119008) = ((1 : F) * rho 119005 + (-1 : F) * rho 119006 + (-1 : F) * rho 119007)

def relationLc1961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 105⟩], residual := [((1 : F), 119009)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117499) * (relationLc1961 rho) = ((1 : F) * rho 119011)

def relationLc1962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 105⟩], residual := [((1 : F), 119010)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117499) * (relationLc1962 rho) = ((1 : F) * rho 119012)

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119003) * ((1 : F) * rho 119004) = ((1 : F) * rho 119013)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119003) * ((1 : F) * rho 119003) = ((1 : F) * rho 119014)

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119004) * ((1 : F) * rho 119004) = ((1 : F) * rho 119015)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119016) * ((-1 : F) * rho 119014 + (1 : F) * rho 119015) = ((2 : F) * rho 119013)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119017) * ((2 : F) + (1 : F) * rho 119014 + (-1 : F) * rho 119015) = ((1 : F) * rho 119014 + (1 : F) * rho 119015)

def relationLc1963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 106⟩, ⟨(1 : F), 117647, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119016 + (1 : F) * rho 119017) * (relationLc1963 rho) = ((1 : F) * rho 119018)

def relationLc1964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119017) * (relationLc1964 rho) = ((1 : F) * rho 119019)

def relationLc1965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119016) * (relationLc1965 rho) = ((1 : F) * rho 119020)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119019) * ((1 : F) * rho 119020) = ((1 : F) * rho 119021)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119022) * ((1 : F) + (1 : F) * rho 119021) = ((1 : F) * rho 119019 + (1 : F) * rho 119020)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119023) * ((1 : F) + (-1 : F) * rho 119021) = ((1 : F) * rho 119018 + (-1 : F) * rho 119019 + (-1 : F) * rho 119020)

def relationLc1966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 106⟩], residual := [((1 : F), 119022)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117500) * (relationLc1966 rho) = ((1 : F) * rho 119024)

def relationLc1967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 106⟩], residual := [((1 : F), 119023)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117500) * (relationLc1967 rho) = ((1 : F) * rho 119025)

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119016) * ((1 : F) * rho 119017) = ((1 : F) * rho 119026)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119016) * ((1 : F) * rho 119016) = ((1 : F) * rho 119027)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119017) * ((1 : F) * rho 119017) = ((1 : F) * rho 119028)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119029) * ((-1 : F) * rho 119027 + (1 : F) * rho 119028) = ((2 : F) * rho 119026)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119030) * ((2 : F) + (1 : F) * rho 119027 + (-1 : F) * rho 119028) = ((1 : F) * rho 119027 + (1 : F) * rho 119028)

def relationLc1968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 107⟩, ⟨(1 : F), 117647, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119029 + (1 : F) * rho 119030) * (relationLc1968 rho) = ((1 : F) * rho 119031)

def relationLc1969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119030) * (relationLc1969 rho) = ((1 : F) * rho 119032)

def relationLc1970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119029) * (relationLc1970 rho) = ((1 : F) * rho 119033)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119032) * ((1 : F) * rho 119033) = ((1 : F) * rho 119034)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119035) * ((1 : F) + (1 : F) * rho 119034) = ((1 : F) * rho 119032 + (1 : F) * rho 119033)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119036) * ((1 : F) + (-1 : F) * rho 119034) = ((1 : F) * rho 119031 + (-1 : F) * rho 119032 + (-1 : F) * rho 119033)

def relationLc1971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 107⟩], residual := [((1 : F), 119035)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117501) * (relationLc1971 rho) = ((1 : F) * rho 119037)

def relationLc1972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 107⟩], residual := [((1 : F), 119036)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117501) * (relationLc1972 rho) = ((1 : F) * rho 119038)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119029) * ((1 : F) * rho 119030) = ((1 : F) * rho 119039)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119029) * ((1 : F) * rho 119029) = ((1 : F) * rho 119040)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119030) * ((1 : F) * rho 119030) = ((1 : F) * rho 119041)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119042) * ((-1 : F) * rho 119040 + (1 : F) * rho 119041) = ((2 : F) * rho 119039)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119043) * ((2 : F) + (1 : F) * rho 119040 + (-1 : F) * rho 119041) = ((1 : F) * rho 119040 + (1 : F) * rho 119041)

def relationLc1973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 108⟩, ⟨(1 : F), 117647, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119042 + (1 : F) * rho 119043) * (relationLc1973 rho) = ((1 : F) * rho 119044)

def relationLc1974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119043) * (relationLc1974 rho) = ((1 : F) * rho 119045)

def relationLc1975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119042) * (relationLc1975 rho) = ((1 : F) * rho 119046)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119045) * ((1 : F) * rho 119046) = ((1 : F) * rho 119047)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119048) * ((1 : F) + (1 : F) * rho 119047) = ((1 : F) * rho 119045 + (1 : F) * rho 119046)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119049) * ((1 : F) + (-1 : F) * rho 119047) = ((1 : F) * rho 119044 + (-1 : F) * rho 119045 + (-1 : F) * rho 119046)

def relationLc1976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 108⟩], residual := [((1 : F), 119048)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117502) * (relationLc1976 rho) = ((1 : F) * rho 119050)

def relationLc1977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 108⟩], residual := [((1 : F), 119049)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117502) * (relationLc1977 rho) = ((1 : F) * rho 119051)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119042) * ((1 : F) * rho 119043) = ((1 : F) * rho 119052)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119042) * ((1 : F) * rho 119042) = ((1 : F) * rho 119053)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119043) * ((1 : F) * rho 119043) = ((1 : F) * rho 119054)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119055) * ((-1 : F) * rho 119053 + (1 : F) * rho 119054) = ((2 : F) * rho 119052)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119056) * ((2 : F) + (1 : F) * rho 119053 + (-1 : F) * rho 119054) = ((1 : F) * rho 119053 + (1 : F) * rho 119054)

def relationLc1978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 109⟩, ⟨(1 : F), 117647, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119055 + (1 : F) * rho 119056) * (relationLc1978 rho) = ((1 : F) * rho 119057)

def relationLc1979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119056) * (relationLc1979 rho) = ((1 : F) * rho 119058)

def relationLc1980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119055) * (relationLc1980 rho) = ((1 : F) * rho 119059)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119058) * ((1 : F) * rho 119059) = ((1 : F) * rho 119060)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119061) * ((1 : F) + (1 : F) * rho 119060) = ((1 : F) * rho 119058 + (1 : F) * rho 119059)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119062) * ((1 : F) + (-1 : F) * rho 119060) = ((1 : F) * rho 119057 + (-1 : F) * rho 119058 + (-1 : F) * rho 119059)

def relationLc1981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 109⟩], residual := [((1 : F), 119061)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117503) * (relationLc1981 rho) = ((1 : F) * rho 119063)

def relationLc1982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 109⟩], residual := [((1 : F), 119062)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117503) * (relationLc1982 rho) = ((1 : F) * rho 119064)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119055) * ((1 : F) * rho 119056) = ((1 : F) * rho 119065)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119055) * ((1 : F) * rho 119055) = ((1 : F) * rho 119066)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119056) * ((1 : F) * rho 119056) = ((1 : F) * rho 119067)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119068) * ((-1 : F) * rho 119066 + (1 : F) * rho 119067) = ((2 : F) * rho 119065)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119069) * ((2 : F) + (1 : F) * rho 119066 + (-1 : F) * rho 119067) = ((1 : F) * rho 119066 + (1 : F) * rho 119067)

def relationLc1983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 110⟩, ⟨(1 : F), 117647, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119068 + (1 : F) * rho 119069) * (relationLc1983 rho) = ((1 : F) * rho 119070)

def relationLc1984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119069) * (relationLc1984 rho) = ((1 : F) * rho 119071)

def relationLc1985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119068) * (relationLc1985 rho) = ((1 : F) * rho 119072)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119071) * ((1 : F) * rho 119072) = ((1 : F) * rho 119073)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119074) * ((1 : F) + (1 : F) * rho 119073) = ((1 : F) * rho 119071 + (1 : F) * rho 119072)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119075) * ((1 : F) + (-1 : F) * rho 119073) = ((1 : F) * rho 119070 + (-1 : F) * rho 119071 + (-1 : F) * rho 119072)

def relationLc1986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 110⟩], residual := [((1 : F), 119074)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117504) * (relationLc1986 rho) = ((1 : F) * rho 119076)

def relationLc1987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 110⟩], residual := [((1 : F), 119075)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117504) * (relationLc1987 rho) = ((1 : F) * rho 119077)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119068) * ((1 : F) * rho 119069) = ((1 : F) * rho 119078)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119068) * ((1 : F) * rho 119068) = ((1 : F) * rho 119079)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119069) * ((1 : F) * rho 119069) = ((1 : F) * rho 119080)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119081) * ((-1 : F) * rho 119079 + (1 : F) * rho 119080) = ((2 : F) * rho 119078)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119082) * ((2 : F) + (1 : F) * rho 119079 + (-1 : F) * rho 119080) = ((1 : F) * rho 119079 + (1 : F) * rho 119080)

def relationLc1988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 111⟩, ⟨(1 : F), 117647, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119081 + (1 : F) * rho 119082) * (relationLc1988 rho) = ((1 : F) * rho 119083)

def relationLc1989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119082) * (relationLc1989 rho) = ((1 : F) * rho 119084)

def relationLc1990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119081) * (relationLc1990 rho) = ((1 : F) * rho 119085)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119084) * ((1 : F) * rho 119085) = ((1 : F) * rho 119086)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119087) * ((1 : F) + (1 : F) * rho 119086) = ((1 : F) * rho 119084 + (1 : F) * rho 119085)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119088) * ((1 : F) + (-1 : F) * rho 119086) = ((1 : F) * rho 119083 + (-1 : F) * rho 119084 + (-1 : F) * rho 119085)

def relationLc1991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 111⟩], residual := [((1 : F), 119087)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117505) * (relationLc1991 rho) = ((1 : F) * rho 119089)

def relationLc1992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 111⟩], residual := [((1 : F), 119088)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117505) * (relationLc1992 rho) = ((1 : F) * rho 119090)

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119081) * ((1 : F) * rho 119082) = ((1 : F) * rho 119091)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119081) * ((1 : F) * rho 119081) = ((1 : F) * rho 119092)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119082) * ((1 : F) * rho 119082) = ((1 : F) * rho 119093)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119094) * ((-1 : F) * rho 119092 + (1 : F) * rho 119093) = ((2 : F) * rho 119091)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119095) * ((2 : F) + (1 : F) * rho 119092 + (-1 : F) * rho 119093) = ((1 : F) * rho 119092 + (1 : F) * rho 119093)

def relationLc1993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 112⟩, ⟨(1 : F), 117647, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119094 + (1 : F) * rho 119095) * (relationLc1993 rho) = ((1 : F) * rho 119096)

def relationLc1994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119095) * (relationLc1994 rho) = ((1 : F) * rho 119097)

def relationLc1995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119094) * (relationLc1995 rho) = ((1 : F) * rho 119098)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119097) * ((1 : F) * rho 119098) = ((1 : F) * rho 119099)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119100) * ((1 : F) + (1 : F) * rho 119099) = ((1 : F) * rho 119097 + (1 : F) * rho 119098)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119101) * ((1 : F) + (-1 : F) * rho 119099) = ((1 : F) * rho 119096 + (-1 : F) * rho 119097 + (-1 : F) * rho 119098)

def relationLc1996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 112⟩], residual := [((1 : F), 119100)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117506) * (relationLc1996 rho) = ((1 : F) * rho 119102)

def relationLc1997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 112⟩], residual := [((1 : F), 119101)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117506) * (relationLc1997 rho) = ((1 : F) * rho 119103)

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119094) * ((1 : F) * rho 119095) = ((1 : F) * rho 119104)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119094) * ((1 : F) * rho 119094) = ((1 : F) * rho 119105)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119095) * ((1 : F) * rho 119095) = ((1 : F) * rho 119106)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119107) * ((-1 : F) * rho 119105 + (1 : F) * rho 119106) = ((2 : F) * rho 119104)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119108) * ((2 : F) + (1 : F) * rho 119105 + (-1 : F) * rho 119106) = ((1 : F) * rho 119105 + (1 : F) * rho 119106)

def relationLc1998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 113⟩, ⟨(1 : F), 117647, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119107 + (1 : F) * rho 119108) * (relationLc1998 rho) = ((1 : F) * rho 119109)

def relationLc1999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119108) * (relationLc1999 rho) = ((1 : F) * rho 119110)

def relationLc2000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119107) * (relationLc2000 rho) = ((1 : F) * rho 119111)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119110) * ((1 : F) * rho 119111) = ((1 : F) * rho 119112)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119113) * ((1 : F) + (1 : F) * rho 119112) = ((1 : F) * rho 119110 + (1 : F) * rho 119111)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119114) * ((1 : F) + (-1 : F) * rho 119112) = ((1 : F) * rho 119109 + (-1 : F) * rho 119110 + (-1 : F) * rho 119111)

def relationLc2001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 113⟩], residual := [((1 : F), 119113)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117507) * (relationLc2001 rho) = ((1 : F) * rho 119115)

def relationLc2002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 113⟩], residual := [((1 : F), 119114)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117507) * (relationLc2002 rho) = ((1 : F) * rho 119116)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119107) * ((1 : F) * rho 119108) = ((1 : F) * rho 119117)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119107) * ((1 : F) * rho 119107) = ((1 : F) * rho 119118)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119108) * ((1 : F) * rho 119108) = ((1 : F) * rho 119119)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119120) * ((-1 : F) * rho 119118 + (1 : F) * rho 119119) = ((2 : F) * rho 119117)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119121) * ((2 : F) + (1 : F) * rho 119118 + (-1 : F) * rho 119119) = ((1 : F) * rho 119118 + (1 : F) * rho 119119)

def relationLc2003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 114⟩, ⟨(1 : F), 117647, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119120 + (1 : F) * rho 119121) * (relationLc2003 rho) = ((1 : F) * rho 119122)

def relationLc2004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119121) * (relationLc2004 rho) = ((1 : F) * rho 119123)

def relationLc2005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119120) * (relationLc2005 rho) = ((1 : F) * rho 119124)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119123) * ((1 : F) * rho 119124) = ((1 : F) * rho 119125)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119126) * ((1 : F) + (1 : F) * rho 119125) = ((1 : F) * rho 119123 + (1 : F) * rho 119124)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119127) * ((1 : F) + (-1 : F) * rho 119125) = ((1 : F) * rho 119122 + (-1 : F) * rho 119123 + (-1 : F) * rho 119124)

def relationLc2006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 114⟩], residual := [((1 : F), 119126)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117508) * (relationLc2006 rho) = ((1 : F) * rho 119128)

def relationLc2007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 114⟩], residual := [((1 : F), 119127)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117508) * (relationLc2007 rho) = ((1 : F) * rho 119129)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119120) * ((1 : F) * rho 119121) = ((1 : F) * rho 119130)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119120) * ((1 : F) * rho 119120) = ((1 : F) * rho 119131)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119121) * ((1 : F) * rho 119121) = ((1 : F) * rho 119132)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119133) * ((-1 : F) * rho 119131 + (1 : F) * rho 119132) = ((2 : F) * rho 119130)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119134) * ((2 : F) + (1 : F) * rho 119131 + (-1 : F) * rho 119132) = ((1 : F) * rho 119131 + (1 : F) * rho 119132)

def relationLc2008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 115⟩, ⟨(1 : F), 117647, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119133 + (1 : F) * rho 119134) * (relationLc2008 rho) = ((1 : F) * rho 119135)

def relationLc2009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119134) * (relationLc2009 rho) = ((1 : F) * rho 119136)

def relationLc2010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119133) * (relationLc2010 rho) = ((1 : F) * rho 119137)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119136) * ((1 : F) * rho 119137) = ((1 : F) * rho 119138)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119139) * ((1 : F) + (1 : F) * rho 119138) = ((1 : F) * rho 119136 + (1 : F) * rho 119137)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119140) * ((1 : F) + (-1 : F) * rho 119138) = ((1 : F) * rho 119135 + (-1 : F) * rho 119136 + (-1 : F) * rho 119137)

def relationLc2011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 115⟩], residual := [((1 : F), 119139)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117509) * (relationLc2011 rho) = ((1 : F) * rho 119141)

def relationLc2012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 115⟩], residual := [((1 : F), 119140)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117509) * (relationLc2012 rho) = ((1 : F) * rho 119142)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119133) * ((1 : F) * rho 119134) = ((1 : F) * rho 119143)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119133) * ((1 : F) * rho 119133) = ((1 : F) * rho 119144)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119134) * ((1 : F) * rho 119134) = ((1 : F) * rho 119145)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119146) * ((-1 : F) * rho 119144 + (1 : F) * rho 119145) = ((2 : F) * rho 119143)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119147) * ((2 : F) + (1 : F) * rho 119144 + (-1 : F) * rho 119145) = ((1 : F) * rho 119144 + (1 : F) * rho 119145)

def relationLc2013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 116⟩, ⟨(1 : F), 117647, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119146 + (1 : F) * rho 119147) * (relationLc2013 rho) = ((1 : F) * rho 119148)

def relationLc2014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119147) * (relationLc2014 rho) = ((1 : F) * rho 119149)

def relationLc2015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119146) * (relationLc2015 rho) = ((1 : F) * rho 119150)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119149) * ((1 : F) * rho 119150) = ((1 : F) * rho 119151)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119152) * ((1 : F) + (1 : F) * rho 119151) = ((1 : F) * rho 119149 + (1 : F) * rho 119150)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119153) * ((1 : F) + (-1 : F) * rho 119151) = ((1 : F) * rho 119148 + (-1 : F) * rho 119149 + (-1 : F) * rho 119150)

def relationLc2016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 116⟩], residual := [((1 : F), 119152)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117510) * (relationLc2016 rho) = ((1 : F) * rho 119154)

def relationLc2017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 116⟩], residual := [((1 : F), 119153)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117510) * (relationLc2017 rho) = ((1 : F) * rho 119155)

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119146) * ((1 : F) * rho 119147) = ((1 : F) * rho 119156)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119146) * ((1 : F) * rho 119146) = ((1 : F) * rho 119157)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119147) * ((1 : F) * rho 119147) = ((1 : F) * rho 119158)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119159) * ((-1 : F) * rho 119157 + (1 : F) * rho 119158) = ((2 : F) * rho 119156)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119160) * ((2 : F) + (1 : F) * rho 119157 + (-1 : F) * rho 119158) = ((1 : F) * rho 119157 + (1 : F) * rho 119158)

def relationLc2018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 117⟩, ⟨(1 : F), 117647, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119159 + (1 : F) * rho 119160) * (relationLc2018 rho) = ((1 : F) * rho 119161)

def relationLc2019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119160) * (relationLc2019 rho) = ((1 : F) * rho 119162)

def relationLc2020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119159) * (relationLc2020 rho) = ((1 : F) * rho 119163)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119162) * ((1 : F) * rho 119163) = ((1 : F) * rho 119164)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119165) * ((1 : F) + (1 : F) * rho 119164) = ((1 : F) * rho 119162 + (1 : F) * rho 119163)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119166) * ((1 : F) + (-1 : F) * rho 119164) = ((1 : F) * rho 119161 + (-1 : F) * rho 119162 + (-1 : F) * rho 119163)

def relationLc2021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 117⟩], residual := [((1 : F), 119165)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117511) * (relationLc2021 rho) = ((1 : F) * rho 119167)

def relationLc2022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 117⟩], residual := [((1 : F), 119166)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117511) * (relationLc2022 rho) = ((1 : F) * rho 119168)

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119159) * ((1 : F) * rho 119160) = ((1 : F) * rho 119169)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119159) * ((1 : F) * rho 119159) = ((1 : F) * rho 119170)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119160) * ((1 : F) * rho 119160) = ((1 : F) * rho 119171)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119172) * ((-1 : F) * rho 119170 + (1 : F) * rho 119171) = ((2 : F) * rho 119169)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119173) * ((2 : F) + (1 : F) * rho 119170 + (-1 : F) * rho 119171) = ((1 : F) * rho 119170 + (1 : F) * rho 119171)

def relationLc2023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 118⟩, ⟨(1 : F), 117647, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119172 + (1 : F) * rho 119173) * (relationLc2023 rho) = ((1 : F) * rho 119174)

def relationLc2024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119173) * (relationLc2024 rho) = ((1 : F) * rho 119175)

def relationLc2025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119172) * (relationLc2025 rho) = ((1 : F) * rho 119176)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119175) * ((1 : F) * rho 119176) = ((1 : F) * rho 119177)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119178) * ((1 : F) + (1 : F) * rho 119177) = ((1 : F) * rho 119175 + (1 : F) * rho 119176)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119179) * ((1 : F) + (-1 : F) * rho 119177) = ((1 : F) * rho 119174 + (-1 : F) * rho 119175 + (-1 : F) * rho 119176)

def relationLc2026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 118⟩], residual := [((1 : F), 119178)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117512) * (relationLc2026 rho) = ((1 : F) * rho 119180)

def relationLc2027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 118⟩], residual := [((1 : F), 119179)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117512) * (relationLc2027 rho) = ((1 : F) * rho 119181)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119172) * ((1 : F) * rho 119173) = ((1 : F) * rho 119182)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119172) * ((1 : F) * rho 119172) = ((1 : F) * rho 119183)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119173) * ((1 : F) * rho 119173) = ((1 : F) * rho 119184)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119185) * ((-1 : F) * rho 119183 + (1 : F) * rho 119184) = ((2 : F) * rho 119182)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119186) * ((2 : F) + (1 : F) * rho 119183 + (-1 : F) * rho 119184) = ((1 : F) * rho 119183 + (1 : F) * rho 119184)

def relationLc2028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 119⟩, ⟨(1 : F), 117647, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119185 + (1 : F) * rho 119186) * (relationLc2028 rho) = ((1 : F) * rho 119187)

def relationLc2029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119186) * (relationLc2029 rho) = ((1 : F) * rho 119188)

def relationLc2030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119185) * (relationLc2030 rho) = ((1 : F) * rho 119189)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119188) * ((1 : F) * rho 119189) = ((1 : F) * rho 119190)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119191) * ((1 : F) + (1 : F) * rho 119190) = ((1 : F) * rho 119188 + (1 : F) * rho 119189)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119192) * ((1 : F) + (-1 : F) * rho 119190) = ((1 : F) * rho 119187 + (-1 : F) * rho 119188 + (-1 : F) * rho 119189)

def relationLc2031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 119⟩], residual := [((1 : F), 119191)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117513) * (relationLc2031 rho) = ((1 : F) * rho 119193)

def relationLc2032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 119⟩], residual := [((1 : F), 119192)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117513) * (relationLc2032 rho) = ((1 : F) * rho 119194)

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119185) * ((1 : F) * rho 119186) = ((1 : F) * rho 119195)

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119185) * ((1 : F) * rho 119185) = ((1 : F) * rho 119196)

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119186) * ((1 : F) * rho 119186) = ((1 : F) * rho 119197)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119198) * ((-1 : F) * rho 119196 + (1 : F) * rho 119197) = ((2 : F) * rho 119195)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119199) * ((2 : F) + (1 : F) * rho 119196 + (-1 : F) * rho 119197) = ((1 : F) * rho 119196 + (1 : F) * rho 119197)

def relationLc2033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 120⟩, ⟨(1 : F), 117647, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119198 + (1 : F) * rho 119199) * (relationLc2033 rho) = ((1 : F) * rho 119200)

def relationLc2034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119199) * (relationLc2034 rho) = ((1 : F) * rho 119201)

def relationLc2035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119198) * (relationLc2035 rho) = ((1 : F) * rho 119202)

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119201) * ((1 : F) * rho 119202) = ((1 : F) * rho 119203)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119204) * ((1 : F) + (1 : F) * rho 119203) = ((1 : F) * rho 119201 + (1 : F) * rho 119202)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119205) * ((1 : F) + (-1 : F) * rho 119203) = ((1 : F) * rho 119200 + (-1 : F) * rho 119201 + (-1 : F) * rho 119202)

def relationLc2036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 120⟩], residual := [((1 : F), 119204)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117514) * (relationLc2036 rho) = ((1 : F) * rho 119206)

def relationLc2037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 120⟩], residual := [((1 : F), 119205)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117514) * (relationLc2037 rho) = ((1 : F) * rho 119207)

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119198) * ((1 : F) * rho 119199) = ((1 : F) * rho 119208)

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119198) * ((1 : F) * rho 119198) = ((1 : F) * rho 119209)

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119199) * ((1 : F) * rho 119199) = ((1 : F) * rho 119210)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119211) * ((-1 : F) * rho 119209 + (1 : F) * rho 119210) = ((2 : F) * rho 119208)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119212) * ((2 : F) + (1 : F) * rho 119209 + (-1 : F) * rho 119210) = ((1 : F) * rho 119209 + (1 : F) * rho 119210)

def relationLc2038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 121⟩, ⟨(1 : F), 117647, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119211 + (1 : F) * rho 119212) * (relationLc2038 rho) = ((1 : F) * rho 119213)

def relationLc2039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119212) * (relationLc2039 rho) = ((1 : F) * rho 119214)

def relationLc2040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119211) * (relationLc2040 rho) = ((1 : F) * rho 119215)

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119214) * ((1 : F) * rho 119215) = ((1 : F) * rho 119216)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119217) * ((1 : F) + (1 : F) * rho 119216) = ((1 : F) * rho 119214 + (1 : F) * rho 119215)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119218) * ((1 : F) + (-1 : F) * rho 119216) = ((1 : F) * rho 119213 + (-1 : F) * rho 119214 + (-1 : F) * rho 119215)

def relationLc2041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 121⟩], residual := [((1 : F), 119217)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117515) * (relationLc2041 rho) = ((1 : F) * rho 119219)

def relationLc2042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 121⟩], residual := [((1 : F), 119218)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117515) * (relationLc2042 rho) = ((1 : F) * rho 119220)

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119211) * ((1 : F) * rho 119212) = ((1 : F) * rho 119221)

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119211) * ((1 : F) * rho 119211) = ((1 : F) * rho 119222)

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119212) * ((1 : F) * rho 119212) = ((1 : F) * rho 119223)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119224) * ((-1 : F) * rho 119222 + (1 : F) * rho 119223) = ((2 : F) * rho 119221)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119225) * ((2 : F) + (1 : F) * rho 119222 + (-1 : F) * rho 119223) = ((1 : F) * rho 119222 + (1 : F) * rho 119223)

def relationLc2043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 122⟩, ⟨(1 : F), 117647, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119224 + (1 : F) * rho 119225) * (relationLc2043 rho) = ((1 : F) * rho 119226)

def relationLc2044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119225) * (relationLc2044 rho) = ((1 : F) * rho 119227)

def relationLc2045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119224) * (relationLc2045 rho) = ((1 : F) * rho 119228)

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119227) * ((1 : F) * rho 119228) = ((1 : F) * rho 119229)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119230) * ((1 : F) + (1 : F) * rho 119229) = ((1 : F) * rho 119227 + (1 : F) * rho 119228)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119231) * ((1 : F) + (-1 : F) * rho 119229) = ((1 : F) * rho 119226 + (-1 : F) * rho 119227 + (-1 : F) * rho 119228)

def relationLc2046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 122⟩], residual := [((1 : F), 119230)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117516) * (relationLc2046 rho) = ((1 : F) * rho 119232)

def relationLc2047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 122⟩], residual := [((1 : F), 119231)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117516) * (relationLc2047 rho) = ((1 : F) * rho 119233)

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119224) * ((1 : F) * rho 119225) = ((1 : F) * rho 119234)

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119224) * ((1 : F) * rho 119224) = ((1 : F) * rho 119235)

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119225) * ((1 : F) * rho 119225) = ((1 : F) * rho 119236)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119237) * ((-1 : F) * rho 119235 + (1 : F) * rho 119236) = ((2 : F) * rho 119234)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119238) * ((2 : F) + (1 : F) * rho 119235 + (-1 : F) * rho 119236) = ((1 : F) * rho 119235 + (1 : F) * rho 119236)

def relationLc2048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 123⟩, ⟨(1 : F), 117647, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119237 + (1 : F) * rho 119238) * (relationLc2048 rho) = ((1 : F) * rho 119239)

def relationLc2049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119238) * (relationLc2049 rho) = ((1 : F) * rho 119240)

def relationLc2050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119237) * (relationLc2050 rho) = ((1 : F) * rho 119241)

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119240) * ((1 : F) * rho 119241) = ((1 : F) * rho 119242)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119243) * ((1 : F) + (1 : F) * rho 119242) = ((1 : F) * rho 119240 + (1 : F) * rho 119241)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119244) * ((1 : F) + (-1 : F) * rho 119242) = ((1 : F) * rho 119239 + (-1 : F) * rho 119240 + (-1 : F) * rho 119241)

def relationLc2051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 123⟩], residual := [((1 : F), 119243)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117517) * (relationLc2051 rho) = ((1 : F) * rho 119245)

def relationLc2052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 123⟩], residual := [((1 : F), 119244)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117517) * (relationLc2052 rho) = ((1 : F) * rho 119246)

def relationRow3662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119237) * ((1 : F) * rho 119238) = ((1 : F) * rho 119247)

def relationRow3663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119237) * ((1 : F) * rho 119237) = ((1 : F) * rho 119248)

def relationRow3664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119238) * ((1 : F) * rho 119238) = ((1 : F) * rho 119249)

def relationRow3665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119250) * ((-1 : F) * rho 119248 + (1 : F) * rho 119249) = ((2 : F) * rho 119247)

def relationRow3666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119251) * ((2 : F) + (1 : F) * rho 119248 + (-1 : F) * rho 119249) = ((1 : F) * rho 119248 + (1 : F) * rho 119249)

def relationLc2053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 124⟩, ⟨(1 : F), 117647, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119250 + (1 : F) * rho 119251) * (relationLc2053 rho) = ((1 : F) * rho 119252)

def relationLc2054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119251) * (relationLc2054 rho) = ((1 : F) * rho 119253)

def relationLc2055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119250) * (relationLc2055 rho) = ((1 : F) * rho 119254)

def relationRow3670 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119253) * ((1 : F) * rho 119254) = ((1 : F) * rho 119255)

def relationRow3671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119256) * ((1 : F) + (1 : F) * rho 119255) = ((1 : F) * rho 119253 + (1 : F) * rho 119254)

def relationRow3672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119257) * ((1 : F) + (-1 : F) * rho 119255) = ((1 : F) * rho 119252 + (-1 : F) * rho 119253 + (-1 : F) * rho 119254)

def relationLc2056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 124⟩], residual := [((1 : F), 119256)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117518) * (relationLc2056 rho) = ((1 : F) * rho 119258)

def relationLc2057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 124⟩], residual := [((1 : F), 119257)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117518) * (relationLc2057 rho) = ((1 : F) * rho 119259)

def relationRow3675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119250) * ((1 : F) * rho 119251) = ((1 : F) * rho 119260)

def relationRow3676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119250) * ((1 : F) * rho 119250) = ((1 : F) * rho 119261)

def relationRow3677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119251) * ((1 : F) * rho 119251) = ((1 : F) * rho 119262)

def relationRow3678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119263) * ((-1 : F) * rho 119261 + (1 : F) * rho 119262) = ((2 : F) * rho 119260)

def relationRow3679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119264) * ((2 : F) + (1 : F) * rho 119261 + (-1 : F) * rho 119262) = ((1 : F) * rho 119261 + (1 : F) * rho 119262)

def relationLc2058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 125⟩, ⟨(1 : F), 117647, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119263 + (1 : F) * rho 119264) * (relationLc2058 rho) = ((1 : F) * rho 119265)

def relationLc2059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119264) * (relationLc2059 rho) = ((1 : F) * rho 119266)

def relationLc2060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119263) * (relationLc2060 rho) = ((1 : F) * rho 119267)

def relationRow3683 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119266) * ((1 : F) * rho 119267) = ((1 : F) * rho 119268)

def relationRow3684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119269) * ((1 : F) + (1 : F) * rho 119268) = ((1 : F) * rho 119266 + (1 : F) * rho 119267)

def relationRow3685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119270) * ((1 : F) + (-1 : F) * rho 119268) = ((1 : F) * rho 119265 + (-1 : F) * rho 119266 + (-1 : F) * rho 119267)

def relationLc2061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 125⟩], residual := [((1 : F), 119269)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117519) * (relationLc2061 rho) = ((1 : F) * rho 119271)

def relationLc2062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 125⟩], residual := [((1 : F), 119270)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117519) * (relationLc2062 rho) = ((1 : F) * rho 119272)

def relationRow3688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119263) * ((1 : F) * rho 119264) = ((1 : F) * rho 119273)

def relationRow3689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119263) * ((1 : F) * rho 119263) = ((1 : F) * rho 119274)

def relationRow3690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119264) * ((1 : F) * rho 119264) = ((1 : F) * rho 119275)

def relationRow3691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119276) * ((-1 : F) * rho 119274 + (1 : F) * rho 119275) = ((2 : F) * rho 119273)

def relationRow3692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119277) * ((2 : F) + (1 : F) * rho 119274 + (-1 : F) * rho 119275) = ((1 : F) * rho 119274 + (1 : F) * rho 119275)

def relationLc2063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 126⟩, ⟨(1 : F), 117647, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119276 + (1 : F) * rho 119277) * (relationLc2063 rho) = ((1 : F) * rho 119278)

def relationLc2064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119277) * (relationLc2064 rho) = ((1 : F) * rho 119279)

def relationLc2065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119276) * (relationLc2065 rho) = ((1 : F) * rho 119280)

def relationRow3696 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119279) * ((1 : F) * rho 119280) = ((1 : F) * rho 119281)

def relationRow3697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119282) * ((1 : F) + (1 : F) * rho 119281) = ((1 : F) * rho 119279 + (1 : F) * rho 119280)

def relationRow3698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119283) * ((1 : F) + (-1 : F) * rho 119281) = ((1 : F) * rho 119278 + (-1 : F) * rho 119279 + (-1 : F) * rho 119280)

def relationLc2066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 126⟩], residual := [((1 : F), 119282)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117520) * (relationLc2066 rho) = ((1 : F) * rho 119284)

def relationLc2067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 126⟩], residual := [((1 : F), 119283)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117520) * (relationLc2067 rho) = ((1 : F) * rho 119285)

def relationRow3701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119276) * ((1 : F) * rho 119277) = ((1 : F) * rho 119286)

def relationRow3702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119276) * ((1 : F) * rho 119276) = ((1 : F) * rho 119287)

def relationRow3703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119277) * ((1 : F) * rho 119277) = ((1 : F) * rho 119288)

def relationRow3704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119289) * ((-1 : F) * rho 119287 + (1 : F) * rho 119288) = ((2 : F) * rho 119286)

def relationRow3705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119290) * ((2 : F) + (1 : F) * rho 119287 + (-1 : F) * rho 119288) = ((1 : F) * rho 119287 + (1 : F) * rho 119288)

def relationLc2068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 127⟩, ⟨(1 : F), 117647, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119289 + (1 : F) * rho 119290) * (relationLc2068 rho) = ((1 : F) * rho 119291)

def relationLc2069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119290) * (relationLc2069 rho) = ((1 : F) * rho 119292)

def relationLc2070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119289) * (relationLc2070 rho) = ((1 : F) * rho 119293)

def relationRow3709 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119292) * ((1 : F) * rho 119293) = ((1 : F) * rho 119294)

def relationRow3710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119295) * ((1 : F) + (1 : F) * rho 119294) = ((1 : F) * rho 119292 + (1 : F) * rho 119293)

def relationRow3711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119296) * ((1 : F) + (-1 : F) * rho 119294) = ((1 : F) * rho 119291 + (-1 : F) * rho 119292 + (-1 : F) * rho 119293)

def relationLc2071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 127⟩], residual := [((1 : F), 119295)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117521) * (relationLc2071 rho) = ((1 : F) * rho 119297)

def relationLc2072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 127⟩], residual := [((1 : F), 119296)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117521) * (relationLc2072 rho) = ((1 : F) * rho 119298)

def relationRow3714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119289) * ((1 : F) * rho 119290) = ((1 : F) * rho 119299)

def relationRow3715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119289) * ((1 : F) * rho 119289) = ((1 : F) * rho 119300)

def relationRow3716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119290) * ((1 : F) * rho 119290) = ((1 : F) * rho 119301)

def relationRow3717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119302) * ((-1 : F) * rho 119300 + (1 : F) * rho 119301) = ((2 : F) * rho 119299)

def relationRow3718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119303) * ((2 : F) + (1 : F) * rho 119300 + (-1 : F) * rho 119301) = ((1 : F) * rho 119300 + (1 : F) * rho 119301)

def relationLc2073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 128⟩, ⟨(1 : F), 117647, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119302 + (1 : F) * rho 119303) * (relationLc2073 rho) = ((1 : F) * rho 119304)

def relationLc2074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119303) * (relationLc2074 rho) = ((1 : F) * rho 119305)

def relationLc2075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119302) * (relationLc2075 rho) = ((1 : F) * rho 119306)

def relationRow3722 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119305) * ((1 : F) * rho 119306) = ((1 : F) * rho 119307)

def relationRow3723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119308) * ((1 : F) + (1 : F) * rho 119307) = ((1 : F) * rho 119305 + (1 : F) * rho 119306)

def relationRow3724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119309) * ((1 : F) + (-1 : F) * rho 119307) = ((1 : F) * rho 119304 + (-1 : F) * rho 119305 + (-1 : F) * rho 119306)

def relationLc2076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 128⟩], residual := [((1 : F), 119308)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117522) * (relationLc2076 rho) = ((1 : F) * rho 119310)

def relationLc2077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 128⟩], residual := [((1 : F), 119309)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117522) * (relationLc2077 rho) = ((1 : F) * rho 119311)

def relationRow3727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119302) * ((1 : F) * rho 119303) = ((1 : F) * rho 119312)

def relationRow3728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119302) * ((1 : F) * rho 119302) = ((1 : F) * rho 119313)

def relationRow3729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119303) * ((1 : F) * rho 119303) = ((1 : F) * rho 119314)

def relationRow3730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119315) * ((-1 : F) * rho 119313 + (1 : F) * rho 119314) = ((2 : F) * rho 119312)

def relationRow3731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119316) * ((2 : F) + (1 : F) * rho 119313 + (-1 : F) * rho 119314) = ((1 : F) * rho 119313 + (1 : F) * rho 119314)

def relationLc2078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 129⟩, ⟨(1 : F), 117647, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119315 + (1 : F) * rho 119316) * (relationLc2078 rho) = ((1 : F) * rho 119317)

def relationLc2079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119316) * (relationLc2079 rho) = ((1 : F) * rho 119318)

def relationLc2080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119315) * (relationLc2080 rho) = ((1 : F) * rho 119319)

def relationRow3735 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119318) * ((1 : F) * rho 119319) = ((1 : F) * rho 119320)

def relationRow3736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119321) * ((1 : F) + (1 : F) * rho 119320) = ((1 : F) * rho 119318 + (1 : F) * rho 119319)

def relationRow3737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119322) * ((1 : F) + (-1 : F) * rho 119320) = ((1 : F) * rho 119317 + (-1 : F) * rho 119318 + (-1 : F) * rho 119319)

def relationLc2081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 129⟩], residual := [((1 : F), 119321)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117523) * (relationLc2081 rho) = ((1 : F) * rho 119323)

def relationLc2082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 129⟩], residual := [((1 : F), 119322)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117523) * (relationLc2082 rho) = ((1 : F) * rho 119324)

def relationRow3740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119315) * ((1 : F) * rho 119316) = ((1 : F) * rho 119325)

def relationRow3741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119315) * ((1 : F) * rho 119315) = ((1 : F) * rho 119326)

def relationRow3742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119316) * ((1 : F) * rho 119316) = ((1 : F) * rho 119327)

def relationRow3743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119328) * ((-1 : F) * rho 119326 + (1 : F) * rho 119327) = ((2 : F) * rho 119325)

def relationRow3744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119329) * ((2 : F) + (1 : F) * rho 119326 + (-1 : F) * rho 119327) = ((1 : F) * rho 119326 + (1 : F) * rho 119327)

def relationLc2083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 130⟩, ⟨(1 : F), 117647, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119328 + (1 : F) * rho 119329) * (relationLc2083 rho) = ((1 : F) * rho 119330)

def relationLc2084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119329) * (relationLc2084 rho) = ((1 : F) * rho 119331)

def relationLc2085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119328) * (relationLc2085 rho) = ((1 : F) * rho 119332)

def relationRow3748 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119331) * ((1 : F) * rho 119332) = ((1 : F) * rho 119333)

def relationRow3749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119334) * ((1 : F) + (1 : F) * rho 119333) = ((1 : F) * rho 119331 + (1 : F) * rho 119332)

def relationRow3750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119335) * ((1 : F) + (-1 : F) * rho 119333) = ((1 : F) * rho 119330 + (-1 : F) * rho 119331 + (-1 : F) * rho 119332)

def relationLc2086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 130⟩], residual := [((1 : F), 119334)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117524) * (relationLc2086 rho) = ((1 : F) * rho 119336)

def relationLc2087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 130⟩], residual := [((1 : F), 119335)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117524) * (relationLc2087 rho) = ((1 : F) * rho 119337)

def relationRow3753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119328) * ((1 : F) * rho 119329) = ((1 : F) * rho 119338)

def relationRow3754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119328) * ((1 : F) * rho 119328) = ((1 : F) * rho 119339)

def relationRow3755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119329) * ((1 : F) * rho 119329) = ((1 : F) * rho 119340)

def relationRow3756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119341) * ((-1 : F) * rho 119339 + (1 : F) * rho 119340) = ((2 : F) * rho 119338)

def relationRow3757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119342) * ((2 : F) + (1 : F) * rho 119339 + (-1 : F) * rho 119340) = ((1 : F) * rho 119339 + (1 : F) * rho 119340)

def relationLc2088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 131⟩, ⟨(1 : F), 117647, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119341 + (1 : F) * rho 119342) * (relationLc2088 rho) = ((1 : F) * rho 119343)

def relationLc2089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119342) * (relationLc2089 rho) = ((1 : F) * rho 119344)

def relationLc2090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119341) * (relationLc2090 rho) = ((1 : F) * rho 119345)

def relationRow3761 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119344) * ((1 : F) * rho 119345) = ((1 : F) * rho 119346)

def relationRow3762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119347) * ((1 : F) + (1 : F) * rho 119346) = ((1 : F) * rho 119344 + (1 : F) * rho 119345)

def relationRow3763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119348) * ((1 : F) + (-1 : F) * rho 119346) = ((1 : F) * rho 119343 + (-1 : F) * rho 119344 + (-1 : F) * rho 119345)

def relationLc2091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 131⟩], residual := [((1 : F), 119347)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117525) * (relationLc2091 rho) = ((1 : F) * rho 119349)

def relationLc2092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 131⟩], residual := [((1 : F), 119348)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117525) * (relationLc2092 rho) = ((1 : F) * rho 119350)

def relationRow3766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119341) * ((1 : F) * rho 119342) = ((1 : F) * rho 119351)

def relationRow3767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119341) * ((1 : F) * rho 119341) = ((1 : F) * rho 119352)

def relationRow3768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119342) * ((1 : F) * rho 119342) = ((1 : F) * rho 119353)

def relationRow3769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119354) * ((-1 : F) * rho 119352 + (1 : F) * rho 119353) = ((2 : F) * rho 119351)

def relationRow3770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119355) * ((2 : F) + (1 : F) * rho 119352 + (-1 : F) * rho 119353) = ((1 : F) * rho 119352 + (1 : F) * rho 119353)

def relationLc2093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 132⟩, ⟨(1 : F), 117647, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119354 + (1 : F) * rho 119355) * (relationLc2093 rho) = ((1 : F) * rho 119356)

def relationLc2094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119355) * (relationLc2094 rho) = ((1 : F) * rho 119357)

def relationLc2095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119354) * (relationLc2095 rho) = ((1 : F) * rho 119358)

def relationRow3774 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119357) * ((1 : F) * rho 119358) = ((1 : F) * rho 119359)

def relationRow3775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119360) * ((1 : F) + (1 : F) * rho 119359) = ((1 : F) * rho 119357 + (1 : F) * rho 119358)

def relationRow3776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119361) * ((1 : F) + (-1 : F) * rho 119359) = ((1 : F) * rho 119356 + (-1 : F) * rho 119357 + (-1 : F) * rho 119358)

def relationLc2096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 132⟩], residual := [((1 : F), 119360)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117526) * (relationLc2096 rho) = ((1 : F) * rho 119362)

def relationLc2097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 132⟩], residual := [((1 : F), 119361)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117526) * (relationLc2097 rho) = ((1 : F) * rho 119363)

def relationRow3779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119354) * ((1 : F) * rho 119355) = ((1 : F) * rho 119364)

def relationRow3780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119354) * ((1 : F) * rho 119354) = ((1 : F) * rho 119365)

def relationRow3781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119355) * ((1 : F) * rho 119355) = ((1 : F) * rho 119366)

def relationRow3782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119367) * ((-1 : F) * rho 119365 + (1 : F) * rho 119366) = ((2 : F) * rho 119364)

def relationRow3783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119368) * ((2 : F) + (1 : F) * rho 119365 + (-1 : F) * rho 119366) = ((1 : F) * rho 119365 + (1 : F) * rho 119366)

def relationLc2098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 133⟩, ⟨(1 : F), 117647, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119367 + (1 : F) * rho 119368) * (relationLc2098 rho) = ((1 : F) * rho 119369)

def relationLc2099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119368) * (relationLc2099 rho) = ((1 : F) * rho 119370)

def relationLc2100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119367) * (relationLc2100 rho) = ((1 : F) * rho 119371)

def relationRow3787 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119370) * ((1 : F) * rho 119371) = ((1 : F) * rho 119372)

def relationRow3788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119373) * ((1 : F) + (1 : F) * rho 119372) = ((1 : F) * rho 119370 + (1 : F) * rho 119371)

def relationRow3789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119374) * ((1 : F) + (-1 : F) * rho 119372) = ((1 : F) * rho 119369 + (-1 : F) * rho 119370 + (-1 : F) * rho 119371)

def relationLc2101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 133⟩], residual := [((1 : F), 119373)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117527) * (relationLc2101 rho) = ((1 : F) * rho 119375)

def relationLc2102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 133⟩], residual := [((1 : F), 119374)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117527) * (relationLc2102 rho) = ((1 : F) * rho 119376)

def relationRow3792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119367) * ((1 : F) * rho 119368) = ((1 : F) * rho 119377)

def relationRow3793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119367) * ((1 : F) * rho 119367) = ((1 : F) * rho 119378)

def relationRow3794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119368) * ((1 : F) * rho 119368) = ((1 : F) * rho 119379)

def relationRow3795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119380) * ((-1 : F) * rho 119378 + (1 : F) * rho 119379) = ((2 : F) * rho 119377)

def relationRow3796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119381) * ((2 : F) + (1 : F) * rho 119378 + (-1 : F) * rho 119379) = ((1 : F) * rho 119378 + (1 : F) * rho 119379)

def relationLc2103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 134⟩, ⟨(1 : F), 117647, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119380 + (1 : F) * rho 119381) * (relationLc2103 rho) = ((1 : F) * rho 119382)

def relationLc2104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119381) * (relationLc2104 rho) = ((1 : F) * rho 119383)

def relationLc2105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119380) * (relationLc2105 rho) = ((1 : F) * rho 119384)

def relationRow3800 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119383) * ((1 : F) * rho 119384) = ((1 : F) * rho 119385)

def relationRow3801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119386) * ((1 : F) + (1 : F) * rho 119385) = ((1 : F) * rho 119383 + (1 : F) * rho 119384)

def relationRow3802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119387) * ((1 : F) + (-1 : F) * rho 119385) = ((1 : F) * rho 119382 + (-1 : F) * rho 119383 + (-1 : F) * rho 119384)

def relationLc2106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 134⟩], residual := [((1 : F), 119386)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117528) * (relationLc2106 rho) = ((1 : F) * rho 119388)

def relationLc2107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 134⟩], residual := [((1 : F), 119387)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117528) * (relationLc2107 rho) = ((1 : F) * rho 119389)

def relationRow3805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119380) * ((1 : F) * rho 119381) = ((1 : F) * rho 119390)

def relationRow3806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119380) * ((1 : F) * rho 119380) = ((1 : F) * rho 119391)

def relationRow3807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119381) * ((1 : F) * rho 119381) = ((1 : F) * rho 119392)

def relationRow3808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119393) * ((-1 : F) * rho 119391 + (1 : F) * rho 119392) = ((2 : F) * rho 119390)

def relationRow3809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119394) * ((2 : F) + (1 : F) * rho 119391 + (-1 : F) * rho 119392) = ((1 : F) * rho 119391 + (1 : F) * rho 119392)

def relationLc2108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 135⟩, ⟨(1 : F), 117647, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119393 + (1 : F) * rho 119394) * (relationLc2108 rho) = ((1 : F) * rho 119395)

def relationLc2109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119394) * (relationLc2109 rho) = ((1 : F) * rho 119396)

def relationLc2110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119393) * (relationLc2110 rho) = ((1 : F) * rho 119397)

def relationRow3813 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119396) * ((1 : F) * rho 119397) = ((1 : F) * rho 119398)

def relationRow3814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119399) * ((1 : F) + (1 : F) * rho 119398) = ((1 : F) * rho 119396 + (1 : F) * rho 119397)

def relationRow3815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119400) * ((1 : F) + (-1 : F) * rho 119398) = ((1 : F) * rho 119395 + (-1 : F) * rho 119396 + (-1 : F) * rho 119397)

def relationLc2111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 135⟩], residual := [((1 : F), 119399)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117529) * (relationLc2111 rho) = ((1 : F) * rho 119401)

def relationLc2112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 135⟩], residual := [((1 : F), 119400)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117529) * (relationLc2112 rho) = ((1 : F) * rho 119402)

def relationRow3818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119393) * ((1 : F) * rho 119394) = ((1 : F) * rho 119403)

def relationRow3819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119393) * ((1 : F) * rho 119393) = ((1 : F) * rho 119404)

def relationRow3820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119394) * ((1 : F) * rho 119394) = ((1 : F) * rho 119405)

def relationRow3821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119406) * ((-1 : F) * rho 119404 + (1 : F) * rho 119405) = ((2 : F) * rho 119403)

def relationRow3822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119407) * ((2 : F) + (1 : F) * rho 119404 + (-1 : F) * rho 119405) = ((1 : F) * rho 119404 + (1 : F) * rho 119405)

def relationLc2113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 136⟩, ⟨(1 : F), 117647, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119406 + (1 : F) * rho 119407) * (relationLc2113 rho) = ((1 : F) * rho 119408)

def relationLc2114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119407) * (relationLc2114 rho) = ((1 : F) * rho 119409)

def relationLc2115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119406) * (relationLc2115 rho) = ((1 : F) * rho 119410)

def relationRow3826 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119409) * ((1 : F) * rho 119410) = ((1 : F) * rho 119411)

def relationRow3827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119412) * ((1 : F) + (1 : F) * rho 119411) = ((1 : F) * rho 119409 + (1 : F) * rho 119410)

def relationRow3828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119413) * ((1 : F) + (-1 : F) * rho 119411) = ((1 : F) * rho 119408 + (-1 : F) * rho 119409 + (-1 : F) * rho 119410)

def relationLc2116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 136⟩], residual := [((1 : F), 119412)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117530) * (relationLc2116 rho) = ((1 : F) * rho 119414)

def relationLc2117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 136⟩], residual := [((1 : F), 119413)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117530) * (relationLc2117 rho) = ((1 : F) * rho 119415)

def relationRow3831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119406) * ((1 : F) * rho 119407) = ((1 : F) * rho 119416)

def relationRow3832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119406) * ((1 : F) * rho 119406) = ((1 : F) * rho 119417)

def relationRow3833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119407) * ((1 : F) * rho 119407) = ((1 : F) * rho 119418)

def relationRow3834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119419) * ((-1 : F) * rho 119417 + (1 : F) * rho 119418) = ((2 : F) * rho 119416)

def relationRow3835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119420) * ((2 : F) + (1 : F) * rho 119417 + (-1 : F) * rho 119418) = ((1 : F) * rho 119417 + (1 : F) * rho 119418)

def relationLc2118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 137⟩, ⟨(1 : F), 117647, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119419 + (1 : F) * rho 119420) * (relationLc2118 rho) = ((1 : F) * rho 119421)

def relationLc2119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119420) * (relationLc2119 rho) = ((1 : F) * rho 119422)

def relationLc2120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119419) * (relationLc2120 rho) = ((1 : F) * rho 119423)

def relationRow3839 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119422) * ((1 : F) * rho 119423) = ((1 : F) * rho 119424)

def relationRow3840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119425) * ((1 : F) + (1 : F) * rho 119424) = ((1 : F) * rho 119422 + (1 : F) * rho 119423)

def relationRow3841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119426) * ((1 : F) + (-1 : F) * rho 119424) = ((1 : F) * rho 119421 + (-1 : F) * rho 119422 + (-1 : F) * rho 119423)

def relationLc2121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 137⟩], residual := [((1 : F), 119425)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117531) * (relationLc2121 rho) = ((1 : F) * rho 119427)

def relationLc2122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 137⟩], residual := [((1 : F), 119426)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117531) * (relationLc2122 rho) = ((1 : F) * rho 119428)

def relationRow3844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119419) * ((1 : F) * rho 119420) = ((1 : F) * rho 119429)

def relationRow3845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119419) * ((1 : F) * rho 119419) = ((1 : F) * rho 119430)

def relationRow3846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119420) * ((1 : F) * rho 119420) = ((1 : F) * rho 119431)

def relationRow3847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119432) * ((-1 : F) * rho 119430 + (1 : F) * rho 119431) = ((2 : F) * rho 119429)

def relationRow3848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119433) * ((2 : F) + (1 : F) * rho 119430 + (-1 : F) * rho 119431) = ((1 : F) * rho 119430 + (1 : F) * rho 119431)

def relationLc2123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 138⟩, ⟨(1 : F), 117647, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119432 + (1 : F) * rho 119433) * (relationLc2123 rho) = ((1 : F) * rho 119434)

def relationLc2124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119433) * (relationLc2124 rho) = ((1 : F) * rho 119435)

def relationLc2125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119432) * (relationLc2125 rho) = ((1 : F) * rho 119436)

def relationRow3852 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119435) * ((1 : F) * rho 119436) = ((1 : F) * rho 119437)

def relationRow3853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119438) * ((1 : F) + (1 : F) * rho 119437) = ((1 : F) * rho 119435 + (1 : F) * rho 119436)

def relationRow3854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119439) * ((1 : F) + (-1 : F) * rho 119437) = ((1 : F) * rho 119434 + (-1 : F) * rho 119435 + (-1 : F) * rho 119436)

def relationLc2126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 138⟩], residual := [((1 : F), 119438)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117532) * (relationLc2126 rho) = ((1 : F) * rho 119440)

def relationLc2127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 138⟩], residual := [((1 : F), 119439)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117532) * (relationLc2127 rho) = ((1 : F) * rho 119441)

def relationRow3857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119432) * ((1 : F) * rho 119433) = ((1 : F) * rho 119442)

def relationRow3858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119432) * ((1 : F) * rho 119432) = ((1 : F) * rho 119443)

def relationRow3859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119433) * ((1 : F) * rho 119433) = ((1 : F) * rho 119444)

def relationRow3860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119445) * ((-1 : F) * rho 119443 + (1 : F) * rho 119444) = ((2 : F) * rho 119442)

def relationRow3861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119446) * ((2 : F) + (1 : F) * rho 119443 + (-1 : F) * rho 119444) = ((1 : F) * rho 119443 + (1 : F) * rho 119444)

def relationLc2128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 139⟩, ⟨(1 : F), 117647, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119445 + (1 : F) * rho 119446) * (relationLc2128 rho) = ((1 : F) * rho 119447)

def relationLc2129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119446) * (relationLc2129 rho) = ((1 : F) * rho 119448)

def relationLc2130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117647, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119445) * (relationLc2130 rho) = ((1 : F) * rho 119449)

def relationRow3865 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 119448) * ((1 : F) * rho 119449) = ((1 : F) * rho 119450)

def relationRow3866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119451) * ((1 : F) + (1 : F) * rho 119450) = ((1 : F) * rho 119448 + (1 : F) * rho 119449)

def relationRow3867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119452) * ((1 : F) + (-1 : F) * rho 119450) = ((1 : F) * rho 119447 + (-1 : F) * rho 119448 + (-1 : F) * rho 119449)

def relationLc2131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 117646, 13, 139⟩], residual := [((1 : F), 119451)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117533) * (relationLc2131 rho) = ((1 : F) * rho 119453)

def relationLc2132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 117647, 13, 139⟩], residual := [((1 : F), 119452)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117533) * (relationLc2132 rho) = ((1 : F) * rho 119454)

def relationRow3870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119445) * ((1 : F) * rho 119446) = ((1 : F) * rho 119455)

def relationRow3871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119445) * ((1 : F) * rho 119445) = ((1 : F) * rho 119456)

def relationRow3872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119446) * ((1 : F) * rho 119446) = ((1 : F) * rho 119457)

def relationRow3873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119458) * ((-1 : F) * rho 119456 + (1 : F) * rho 119457) = ((2 : F) * rho 119455)

def relationRow3874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119459) * ((2 : F) + (1 : F) * rho 119456 + (-1 : F) * rho 119457) = ((1 : F) * rho 119456 + (1 : F) * rho 119457)

def relationLc2133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 117646, 13, 140⟩, ⟨(1 : F), 117647, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119458 + (1 : F) * rho 119459) * (relationLc2133 rho) = ((1 : F) * rho 119460)

def relationLc2134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 117646, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg109
