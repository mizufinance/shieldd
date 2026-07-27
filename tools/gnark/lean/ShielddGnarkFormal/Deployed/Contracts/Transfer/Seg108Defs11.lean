import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationLc1911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 95⟩], residual := [((1 : F), 109850)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108460) * (relationLc1911 rho) = ((1 : F) * rho 109852)

def relationLc1912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 95⟩], residual := [((1 : F), 109851)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108460) * (relationLc1912 rho) = ((1 : F) * rho 109853)

def relationRow3298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109844) * ((1 : F) * rho 109845) = ((1 : F) * rho 109854)

def relationRow3299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109844) * ((1 : F) * rho 109844) = ((1 : F) * rho 109855)

def relationRow3300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109845) * ((1 : F) * rho 109845) = ((1 : F) * rho 109856)

def relationRow3301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109857) * ((-1 : F) * rho 109855 + (1 : F) * rho 109856) = ((2 : F) * rho 109854)

def relationRow3302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109858) * ((2 : F) + (1 : F) * rho 109855 + (-1 : F) * rho 109856) = ((1 : F) * rho 109855 + (1 : F) * rho 109856)

def relationLc1913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 96⟩, ⟨(1 : F), 108618, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109857 + (1 : F) * rho 109858) * (relationLc1913 rho) = ((1 : F) * rho 109859)

def relationLc1914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109858) * (relationLc1914 rho) = ((1 : F) * rho 109860)

def relationLc1915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109857) * (relationLc1915 rho) = ((1 : F) * rho 109861)

def relationRow3306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109860) * ((1 : F) * rho 109861) = ((1 : F) * rho 109862)

def relationRow3307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109863) * ((1 : F) + (1 : F) * rho 109862) = ((1 : F) * rho 109860 + (1 : F) * rho 109861)

def relationRow3308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109864) * ((1 : F) + (-1 : F) * rho 109862) = ((1 : F) * rho 109859 + (-1 : F) * rho 109860 + (-1 : F) * rho 109861)

def relationLc1916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 96⟩], residual := [((1 : F), 109863)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108461) * (relationLc1916 rho) = ((1 : F) * rho 109865)

def relationLc1917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 96⟩], residual := [((1 : F), 109864)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108461) * (relationLc1917 rho) = ((1 : F) * rho 109866)

def relationRow3311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109857) * ((1 : F) * rho 109858) = ((1 : F) * rho 109867)

def relationRow3312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109857) * ((1 : F) * rho 109857) = ((1 : F) * rho 109868)

def relationRow3313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109858) * ((1 : F) * rho 109858) = ((1 : F) * rho 109869)

def relationRow3314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109870) * ((-1 : F) * rho 109868 + (1 : F) * rho 109869) = ((2 : F) * rho 109867)

def relationRow3315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109871) * ((2 : F) + (1 : F) * rho 109868 + (-1 : F) * rho 109869) = ((1 : F) * rho 109868 + (1 : F) * rho 109869)

def relationLc1918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 97⟩, ⟨(1 : F), 108618, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109870 + (1 : F) * rho 109871) * (relationLc1918 rho) = ((1 : F) * rho 109872)

def relationLc1919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109871) * (relationLc1919 rho) = ((1 : F) * rho 109873)

def relationLc1920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109870) * (relationLc1920 rho) = ((1 : F) * rho 109874)

def relationRow3319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109873) * ((1 : F) * rho 109874) = ((1 : F) * rho 109875)

def relationRow3320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109876) * ((1 : F) + (1 : F) * rho 109875) = ((1 : F) * rho 109873 + (1 : F) * rho 109874)

def relationRow3321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109877) * ((1 : F) + (-1 : F) * rho 109875) = ((1 : F) * rho 109872 + (-1 : F) * rho 109873 + (-1 : F) * rho 109874)

def relationLc1921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 97⟩], residual := [((1 : F), 109876)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108462) * (relationLc1921 rho) = ((1 : F) * rho 109878)

def relationLc1922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 97⟩], residual := [((1 : F), 109877)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108462) * (relationLc1922 rho) = ((1 : F) * rho 109879)

def relationRow3324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109870) * ((1 : F) * rho 109871) = ((1 : F) * rho 109880)

def relationRow3325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109870) * ((1 : F) * rho 109870) = ((1 : F) * rho 109881)

def relationRow3326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109871) * ((1 : F) * rho 109871) = ((1 : F) * rho 109882)

def relationRow3327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109883) * ((-1 : F) * rho 109881 + (1 : F) * rho 109882) = ((2 : F) * rho 109880)

def relationRow3328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109884) * ((2 : F) + (1 : F) * rho 109881 + (-1 : F) * rho 109882) = ((1 : F) * rho 109881 + (1 : F) * rho 109882)

def relationLc1923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 98⟩, ⟨(1 : F), 108618, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109883 + (1 : F) * rho 109884) * (relationLc1923 rho) = ((1 : F) * rho 109885)

def relationLc1924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109884) * (relationLc1924 rho) = ((1 : F) * rho 109886)

def relationLc1925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109883) * (relationLc1925 rho) = ((1 : F) * rho 109887)

def relationRow3332 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109886) * ((1 : F) * rho 109887) = ((1 : F) * rho 109888)

def relationRow3333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109889) * ((1 : F) + (1 : F) * rho 109888) = ((1 : F) * rho 109886 + (1 : F) * rho 109887)

def relationRow3334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109890) * ((1 : F) + (-1 : F) * rho 109888) = ((1 : F) * rho 109885 + (-1 : F) * rho 109886 + (-1 : F) * rho 109887)

def relationLc1926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 98⟩], residual := [((1 : F), 109889)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108463) * (relationLc1926 rho) = ((1 : F) * rho 109891)

def relationLc1927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 98⟩], residual := [((1 : F), 109890)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108463) * (relationLc1927 rho) = ((1 : F) * rho 109892)

def relationRow3337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109883) * ((1 : F) * rho 109884) = ((1 : F) * rho 109893)

def relationRow3338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109883) * ((1 : F) * rho 109883) = ((1 : F) * rho 109894)

def relationRow3339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109884) * ((1 : F) * rho 109884) = ((1 : F) * rho 109895)

def relationRow3340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109896) * ((-1 : F) * rho 109894 + (1 : F) * rho 109895) = ((2 : F) * rho 109893)

def relationRow3341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109897) * ((2 : F) + (1 : F) * rho 109894 + (-1 : F) * rho 109895) = ((1 : F) * rho 109894 + (1 : F) * rho 109895)

def relationLc1928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 99⟩, ⟨(1 : F), 108618, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109896 + (1 : F) * rho 109897) * (relationLc1928 rho) = ((1 : F) * rho 109898)

def relationLc1929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109897) * (relationLc1929 rho) = ((1 : F) * rho 109899)

def relationLc1930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109896) * (relationLc1930 rho) = ((1 : F) * rho 109900)

def relationRow3345 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109899) * ((1 : F) * rho 109900) = ((1 : F) * rho 109901)

def relationRow3346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109902) * ((1 : F) + (1 : F) * rho 109901) = ((1 : F) * rho 109899 + (1 : F) * rho 109900)

def relationRow3347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109903) * ((1 : F) + (-1 : F) * rho 109901) = ((1 : F) * rho 109898 + (-1 : F) * rho 109899 + (-1 : F) * rho 109900)

def relationLc1931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 99⟩], residual := [((1 : F), 109902)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108464) * (relationLc1931 rho) = ((1 : F) * rho 109904)

def relationLc1932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 99⟩], residual := [((1 : F), 109903)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108464) * (relationLc1932 rho) = ((1 : F) * rho 109905)

def relationRow3350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109896) * ((1 : F) * rho 109897) = ((1 : F) * rho 109906)

def relationRow3351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109896) * ((1 : F) * rho 109896) = ((1 : F) * rho 109907)

def relationRow3352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109897) * ((1 : F) * rho 109897) = ((1 : F) * rho 109908)

def relationRow3353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109909) * ((-1 : F) * rho 109907 + (1 : F) * rho 109908) = ((2 : F) * rho 109906)

def relationRow3354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109910) * ((2 : F) + (1 : F) * rho 109907 + (-1 : F) * rho 109908) = ((1 : F) * rho 109907 + (1 : F) * rho 109908)

def relationLc1933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 100⟩, ⟨(1 : F), 108618, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109909 + (1 : F) * rho 109910) * (relationLc1933 rho) = ((1 : F) * rho 109911)

def relationLc1934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109910) * (relationLc1934 rho) = ((1 : F) * rho 109912)

def relationLc1935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109909) * (relationLc1935 rho) = ((1 : F) * rho 109913)

def relationRow3358 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109912) * ((1 : F) * rho 109913) = ((1 : F) * rho 109914)

def relationRow3359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109915) * ((1 : F) + (1 : F) * rho 109914) = ((1 : F) * rho 109912 + (1 : F) * rho 109913)

def relationRow3360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109916) * ((1 : F) + (-1 : F) * rho 109914) = ((1 : F) * rho 109911 + (-1 : F) * rho 109912 + (-1 : F) * rho 109913)

def relationLc1936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 100⟩], residual := [((1 : F), 109915)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108465) * (relationLc1936 rho) = ((1 : F) * rho 109917)

def relationLc1937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 100⟩], residual := [((1 : F), 109916)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108465) * (relationLc1937 rho) = ((1 : F) * rho 109918)

def relationRow3363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109909) * ((1 : F) * rho 109910) = ((1 : F) * rho 109919)

def relationRow3364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109909) * ((1 : F) * rho 109909) = ((1 : F) * rho 109920)

def relationRow3365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109910) * ((1 : F) * rho 109910) = ((1 : F) * rho 109921)

def relationRow3366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109922) * ((-1 : F) * rho 109920 + (1 : F) * rho 109921) = ((2 : F) * rho 109919)

def relationRow3367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109923) * ((2 : F) + (1 : F) * rho 109920 + (-1 : F) * rho 109921) = ((1 : F) * rho 109920 + (1 : F) * rho 109921)

def relationLc1938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 101⟩, ⟨(1 : F), 108618, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109922 + (1 : F) * rho 109923) * (relationLc1938 rho) = ((1 : F) * rho 109924)

def relationLc1939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109923) * (relationLc1939 rho) = ((1 : F) * rho 109925)

def relationLc1940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109922) * (relationLc1940 rho) = ((1 : F) * rho 109926)

def relationRow3371 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109925) * ((1 : F) * rho 109926) = ((1 : F) * rho 109927)

def relationRow3372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109928) * ((1 : F) + (1 : F) * rho 109927) = ((1 : F) * rho 109925 + (1 : F) * rho 109926)

def relationRow3373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109929) * ((1 : F) + (-1 : F) * rho 109927) = ((1 : F) * rho 109924 + (-1 : F) * rho 109925 + (-1 : F) * rho 109926)

def relationLc1941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 101⟩], residual := [((1 : F), 109928)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108466) * (relationLc1941 rho) = ((1 : F) * rho 109930)

def relationLc1942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 101⟩], residual := [((1 : F), 109929)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108466) * (relationLc1942 rho) = ((1 : F) * rho 109931)

def relationRow3376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109922) * ((1 : F) * rho 109923) = ((1 : F) * rho 109932)

def relationRow3377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109922) * ((1 : F) * rho 109922) = ((1 : F) * rho 109933)

def relationRow3378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109923) * ((1 : F) * rho 109923) = ((1 : F) * rho 109934)

def relationRow3379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109935) * ((-1 : F) * rho 109933 + (1 : F) * rho 109934) = ((2 : F) * rho 109932)

def relationRow3380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109936) * ((2 : F) + (1 : F) * rho 109933 + (-1 : F) * rho 109934) = ((1 : F) * rho 109933 + (1 : F) * rho 109934)

def relationLc1943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 102⟩, ⟨(1 : F), 108618, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109935 + (1 : F) * rho 109936) * (relationLc1943 rho) = ((1 : F) * rho 109937)

def relationLc1944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109936) * (relationLc1944 rho) = ((1 : F) * rho 109938)

def relationLc1945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109935) * (relationLc1945 rho) = ((1 : F) * rho 109939)

def relationRow3384 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109938) * ((1 : F) * rho 109939) = ((1 : F) * rho 109940)

def relationRow3385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109941) * ((1 : F) + (1 : F) * rho 109940) = ((1 : F) * rho 109938 + (1 : F) * rho 109939)

def relationRow3386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109942) * ((1 : F) + (-1 : F) * rho 109940) = ((1 : F) * rho 109937 + (-1 : F) * rho 109938 + (-1 : F) * rho 109939)

def relationLc1946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 102⟩], residual := [((1 : F), 109941)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108467) * (relationLc1946 rho) = ((1 : F) * rho 109943)

def relationLc1947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 102⟩], residual := [((1 : F), 109942)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108467) * (relationLc1947 rho) = ((1 : F) * rho 109944)

def relationRow3389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109935) * ((1 : F) * rho 109936) = ((1 : F) * rho 109945)

def relationRow3390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109935) * ((1 : F) * rho 109935) = ((1 : F) * rho 109946)

def relationRow3391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109936) * ((1 : F) * rho 109936) = ((1 : F) * rho 109947)

def relationRow3392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109948) * ((-1 : F) * rho 109946 + (1 : F) * rho 109947) = ((2 : F) * rho 109945)

def relationRow3393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109949) * ((2 : F) + (1 : F) * rho 109946 + (-1 : F) * rho 109947) = ((1 : F) * rho 109946 + (1 : F) * rho 109947)

def relationLc1948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 103⟩, ⟨(1 : F), 108618, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109948 + (1 : F) * rho 109949) * (relationLc1948 rho) = ((1 : F) * rho 109950)

def relationLc1949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109949) * (relationLc1949 rho) = ((1 : F) * rho 109951)

def relationLc1950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109948) * (relationLc1950 rho) = ((1 : F) * rho 109952)

def relationRow3397 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109951) * ((1 : F) * rho 109952) = ((1 : F) * rho 109953)

def relationRow3398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109954) * ((1 : F) + (1 : F) * rho 109953) = ((1 : F) * rho 109951 + (1 : F) * rho 109952)

def relationRow3399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109955) * ((1 : F) + (-1 : F) * rho 109953) = ((1 : F) * rho 109950 + (-1 : F) * rho 109951 + (-1 : F) * rho 109952)

def relationLc1951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 103⟩], residual := [((1 : F), 109954)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108468) * (relationLc1951 rho) = ((1 : F) * rho 109956)

def relationLc1952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 103⟩], residual := [((1 : F), 109955)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108468) * (relationLc1952 rho) = ((1 : F) * rho 109957)

def relationRow3402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109948) * ((1 : F) * rho 109949) = ((1 : F) * rho 109958)

def relationRow3403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109948) * ((1 : F) * rho 109948) = ((1 : F) * rho 109959)

def relationRow3404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109949) * ((1 : F) * rho 109949) = ((1 : F) * rho 109960)

def relationRow3405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109961) * ((-1 : F) * rho 109959 + (1 : F) * rho 109960) = ((2 : F) * rho 109958)

def relationRow3406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109962) * ((2 : F) + (1 : F) * rho 109959 + (-1 : F) * rho 109960) = ((1 : F) * rho 109959 + (1 : F) * rho 109960)

def relationLc1953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 104⟩, ⟨(1 : F), 108618, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109961 + (1 : F) * rho 109962) * (relationLc1953 rho) = ((1 : F) * rho 109963)

def relationLc1954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109962) * (relationLc1954 rho) = ((1 : F) * rho 109964)

def relationLc1955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109961) * (relationLc1955 rho) = ((1 : F) * rho 109965)

def relationRow3410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109964) * ((1 : F) * rho 109965) = ((1 : F) * rho 109966)

def relationRow3411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109967) * ((1 : F) + (1 : F) * rho 109966) = ((1 : F) * rho 109964 + (1 : F) * rho 109965)

def relationRow3412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109968) * ((1 : F) + (-1 : F) * rho 109966) = ((1 : F) * rho 109963 + (-1 : F) * rho 109964 + (-1 : F) * rho 109965)

def relationLc1956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 104⟩], residual := [((1 : F), 109967)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108469) * (relationLc1956 rho) = ((1 : F) * rho 109969)

def relationLc1957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 104⟩], residual := [((1 : F), 109968)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108469) * (relationLc1957 rho) = ((1 : F) * rho 109970)

def relationRow3415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109961) * ((1 : F) * rho 109962) = ((1 : F) * rho 109971)

def relationRow3416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109961) * ((1 : F) * rho 109961) = ((1 : F) * rho 109972)

def relationRow3417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109962) * ((1 : F) * rho 109962) = ((1 : F) * rho 109973)

def relationRow3418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109974) * ((-1 : F) * rho 109972 + (1 : F) * rho 109973) = ((2 : F) * rho 109971)

def relationRow3419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109975) * ((2 : F) + (1 : F) * rho 109972 + (-1 : F) * rho 109973) = ((1 : F) * rho 109972 + (1 : F) * rho 109973)

def relationLc1958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 105⟩, ⟨(1 : F), 108618, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109974 + (1 : F) * rho 109975) * (relationLc1958 rho) = ((1 : F) * rho 109976)

def relationLc1959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109975) * (relationLc1959 rho) = ((1 : F) * rho 109977)

def relationLc1960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109974) * (relationLc1960 rho) = ((1 : F) * rho 109978)

def relationRow3423 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109977) * ((1 : F) * rho 109978) = ((1 : F) * rho 109979)

def relationRow3424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109980) * ((1 : F) + (1 : F) * rho 109979) = ((1 : F) * rho 109977 + (1 : F) * rho 109978)

def relationRow3425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109981) * ((1 : F) + (-1 : F) * rho 109979) = ((1 : F) * rho 109976 + (-1 : F) * rho 109977 + (-1 : F) * rho 109978)

def relationLc1961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 105⟩], residual := [((1 : F), 109980)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108470) * (relationLc1961 rho) = ((1 : F) * rho 109982)

def relationLc1962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 105⟩], residual := [((1 : F), 109981)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108470) * (relationLc1962 rho) = ((1 : F) * rho 109983)

def relationRow3428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109974) * ((1 : F) * rho 109975) = ((1 : F) * rho 109984)

def relationRow3429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109974) * ((1 : F) * rho 109974) = ((1 : F) * rho 109985)

def relationRow3430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109975) * ((1 : F) * rho 109975) = ((1 : F) * rho 109986)

def relationRow3431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109987) * ((-1 : F) * rho 109985 + (1 : F) * rho 109986) = ((2 : F) * rho 109984)

def relationRow3432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109988) * ((2 : F) + (1 : F) * rho 109985 + (-1 : F) * rho 109986) = ((1 : F) * rho 109985 + (1 : F) * rho 109986)

def relationLc1963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 106⟩, ⟨(1 : F), 108618, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109987 + (1 : F) * rho 109988) * (relationLc1963 rho) = ((1 : F) * rho 109989)

def relationLc1964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109988) * (relationLc1964 rho) = ((1 : F) * rho 109990)

def relationLc1965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109987) * (relationLc1965 rho) = ((1 : F) * rho 109991)

def relationRow3436 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 109990) * ((1 : F) * rho 109991) = ((1 : F) * rho 109992)

def relationRow3437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109993) * ((1 : F) + (1 : F) * rho 109992) = ((1 : F) * rho 109990 + (1 : F) * rho 109991)

def relationRow3438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109994) * ((1 : F) + (-1 : F) * rho 109992) = ((1 : F) * rho 109989 + (-1 : F) * rho 109990 + (-1 : F) * rho 109991)

def relationLc1966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 106⟩], residual := [((1 : F), 109993)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108471) * (relationLc1966 rho) = ((1 : F) * rho 109995)

def relationLc1967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 106⟩], residual := [((1 : F), 109994)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108471) * (relationLc1967 rho) = ((1 : F) * rho 109996)

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109987) * ((1 : F) * rho 109988) = ((1 : F) * rho 109997)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109987) * ((1 : F) * rho 109987) = ((1 : F) * rho 109998)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109988) * ((1 : F) * rho 109988) = ((1 : F) * rho 109999)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110000) * ((-1 : F) * rho 109998 + (1 : F) * rho 109999) = ((2 : F) * rho 109997)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110001) * ((2 : F) + (1 : F) * rho 109998 + (-1 : F) * rho 109999) = ((1 : F) * rho 109998 + (1 : F) * rho 109999)

def relationLc1968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 107⟩, ⟨(1 : F), 108618, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110000 + (1 : F) * rho 110001) * (relationLc1968 rho) = ((1 : F) * rho 110002)

def relationLc1969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110001) * (relationLc1969 rho) = ((1 : F) * rho 110003)

def relationLc1970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110000) * (relationLc1970 rho) = ((1 : F) * rho 110004)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110003) * ((1 : F) * rho 110004) = ((1 : F) * rho 110005)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110006) * ((1 : F) + (1 : F) * rho 110005) = ((1 : F) * rho 110003 + (1 : F) * rho 110004)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110007) * ((1 : F) + (-1 : F) * rho 110005) = ((1 : F) * rho 110002 + (-1 : F) * rho 110003 + (-1 : F) * rho 110004)

def relationLc1971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 107⟩], residual := [((1 : F), 110006)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108472) * (relationLc1971 rho) = ((1 : F) * rho 110008)

def relationLc1972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 107⟩], residual := [((1 : F), 110007)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108472) * (relationLc1972 rho) = ((1 : F) * rho 110009)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110000) * ((1 : F) * rho 110001) = ((1 : F) * rho 110010)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110000) * ((1 : F) * rho 110000) = ((1 : F) * rho 110011)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110001) * ((1 : F) * rho 110001) = ((1 : F) * rho 110012)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110013) * ((-1 : F) * rho 110011 + (1 : F) * rho 110012) = ((2 : F) * rho 110010)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110014) * ((2 : F) + (1 : F) * rho 110011 + (-1 : F) * rho 110012) = ((1 : F) * rho 110011 + (1 : F) * rho 110012)

def relationLc1973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 108⟩, ⟨(1 : F), 108618, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110013 + (1 : F) * rho 110014) * (relationLc1973 rho) = ((1 : F) * rho 110015)

def relationLc1974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110014) * (relationLc1974 rho) = ((1 : F) * rho 110016)

def relationLc1975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110013) * (relationLc1975 rho) = ((1 : F) * rho 110017)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110016) * ((1 : F) * rho 110017) = ((1 : F) * rho 110018)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110019) * ((1 : F) + (1 : F) * rho 110018) = ((1 : F) * rho 110016 + (1 : F) * rho 110017)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110020) * ((1 : F) + (-1 : F) * rho 110018) = ((1 : F) * rho 110015 + (-1 : F) * rho 110016 + (-1 : F) * rho 110017)

def relationLc1976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 108⟩], residual := [((1 : F), 110019)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108473) * (relationLc1976 rho) = ((1 : F) * rho 110021)

def relationLc1977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 108⟩], residual := [((1 : F), 110020)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108473) * (relationLc1977 rho) = ((1 : F) * rho 110022)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110013) * ((1 : F) * rho 110014) = ((1 : F) * rho 110023)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110013) * ((1 : F) * rho 110013) = ((1 : F) * rho 110024)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110014) * ((1 : F) * rho 110014) = ((1 : F) * rho 110025)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110026) * ((-1 : F) * rho 110024 + (1 : F) * rho 110025) = ((2 : F) * rho 110023)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110027) * ((2 : F) + (1 : F) * rho 110024 + (-1 : F) * rho 110025) = ((1 : F) * rho 110024 + (1 : F) * rho 110025)

def relationLc1978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 109⟩, ⟨(1 : F), 108618, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110026 + (1 : F) * rho 110027) * (relationLc1978 rho) = ((1 : F) * rho 110028)

def relationLc1979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110027) * (relationLc1979 rho) = ((1 : F) * rho 110029)

def relationLc1980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110026) * (relationLc1980 rho) = ((1 : F) * rho 110030)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110029) * ((1 : F) * rho 110030) = ((1 : F) * rho 110031)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110032) * ((1 : F) + (1 : F) * rho 110031) = ((1 : F) * rho 110029 + (1 : F) * rho 110030)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110033) * ((1 : F) + (-1 : F) * rho 110031) = ((1 : F) * rho 110028 + (-1 : F) * rho 110029 + (-1 : F) * rho 110030)

def relationLc1981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 109⟩], residual := [((1 : F), 110032)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108474) * (relationLc1981 rho) = ((1 : F) * rho 110034)

def relationLc1982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 109⟩], residual := [((1 : F), 110033)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108474) * (relationLc1982 rho) = ((1 : F) * rho 110035)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110026) * ((1 : F) * rho 110027) = ((1 : F) * rho 110036)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110026) * ((1 : F) * rho 110026) = ((1 : F) * rho 110037)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110027) * ((1 : F) * rho 110027) = ((1 : F) * rho 110038)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110039) * ((-1 : F) * rho 110037 + (1 : F) * rho 110038) = ((2 : F) * rho 110036)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110040) * ((2 : F) + (1 : F) * rho 110037 + (-1 : F) * rho 110038) = ((1 : F) * rho 110037 + (1 : F) * rho 110038)

def relationLc1983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 110⟩, ⟨(1 : F), 108618, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110039 + (1 : F) * rho 110040) * (relationLc1983 rho) = ((1 : F) * rho 110041)

def relationLc1984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110040) * (relationLc1984 rho) = ((1 : F) * rho 110042)

def relationLc1985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110039) * (relationLc1985 rho) = ((1 : F) * rho 110043)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110042) * ((1 : F) * rho 110043) = ((1 : F) * rho 110044)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110045) * ((1 : F) + (1 : F) * rho 110044) = ((1 : F) * rho 110042 + (1 : F) * rho 110043)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110046) * ((1 : F) + (-1 : F) * rho 110044) = ((1 : F) * rho 110041 + (-1 : F) * rho 110042 + (-1 : F) * rho 110043)

def relationLc1986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 110⟩], residual := [((1 : F), 110045)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108475) * (relationLc1986 rho) = ((1 : F) * rho 110047)

def relationLc1987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 110⟩], residual := [((1 : F), 110046)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108475) * (relationLc1987 rho) = ((1 : F) * rho 110048)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110039) * ((1 : F) * rho 110040) = ((1 : F) * rho 110049)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110039) * ((1 : F) * rho 110039) = ((1 : F) * rho 110050)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110040) * ((1 : F) * rho 110040) = ((1 : F) * rho 110051)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110052) * ((-1 : F) * rho 110050 + (1 : F) * rho 110051) = ((2 : F) * rho 110049)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110053) * ((2 : F) + (1 : F) * rho 110050 + (-1 : F) * rho 110051) = ((1 : F) * rho 110050 + (1 : F) * rho 110051)

def relationLc1988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 111⟩, ⟨(1 : F), 108618, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110052 + (1 : F) * rho 110053) * (relationLc1988 rho) = ((1 : F) * rho 110054)

def relationLc1989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110053) * (relationLc1989 rho) = ((1 : F) * rho 110055)

def relationLc1990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110052) * (relationLc1990 rho) = ((1 : F) * rho 110056)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110055) * ((1 : F) * rho 110056) = ((1 : F) * rho 110057)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110058) * ((1 : F) + (1 : F) * rho 110057) = ((1 : F) * rho 110055 + (1 : F) * rho 110056)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110059) * ((1 : F) + (-1 : F) * rho 110057) = ((1 : F) * rho 110054 + (-1 : F) * rho 110055 + (-1 : F) * rho 110056)

def relationLc1991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 111⟩], residual := [((1 : F), 110058)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108476) * (relationLc1991 rho) = ((1 : F) * rho 110060)

def relationLc1992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 111⟩], residual := [((1 : F), 110059)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108476) * (relationLc1992 rho) = ((1 : F) * rho 110061)

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110052) * ((1 : F) * rho 110053) = ((1 : F) * rho 110062)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110052) * ((1 : F) * rho 110052) = ((1 : F) * rho 110063)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110053) * ((1 : F) * rho 110053) = ((1 : F) * rho 110064)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110065) * ((-1 : F) * rho 110063 + (1 : F) * rho 110064) = ((2 : F) * rho 110062)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110066) * ((2 : F) + (1 : F) * rho 110063 + (-1 : F) * rho 110064) = ((1 : F) * rho 110063 + (1 : F) * rho 110064)

def relationLc1993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 112⟩, ⟨(1 : F), 108618, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110065 + (1 : F) * rho 110066) * (relationLc1993 rho) = ((1 : F) * rho 110067)

def relationLc1994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110066) * (relationLc1994 rho) = ((1 : F) * rho 110068)

def relationLc1995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110065) * (relationLc1995 rho) = ((1 : F) * rho 110069)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110068) * ((1 : F) * rho 110069) = ((1 : F) * rho 110070)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110071) * ((1 : F) + (1 : F) * rho 110070) = ((1 : F) * rho 110068 + (1 : F) * rho 110069)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110072) * ((1 : F) + (-1 : F) * rho 110070) = ((1 : F) * rho 110067 + (-1 : F) * rho 110068 + (-1 : F) * rho 110069)

def relationLc1996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 112⟩], residual := [((1 : F), 110071)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108477) * (relationLc1996 rho) = ((1 : F) * rho 110073)

def relationLc1997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 112⟩], residual := [((1 : F), 110072)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108477) * (relationLc1997 rho) = ((1 : F) * rho 110074)

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110065) * ((1 : F) * rho 110066) = ((1 : F) * rho 110075)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110065) * ((1 : F) * rho 110065) = ((1 : F) * rho 110076)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110066) * ((1 : F) * rho 110066) = ((1 : F) * rho 110077)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110078) * ((-1 : F) * rho 110076 + (1 : F) * rho 110077) = ((2 : F) * rho 110075)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110079) * ((2 : F) + (1 : F) * rho 110076 + (-1 : F) * rho 110077) = ((1 : F) * rho 110076 + (1 : F) * rho 110077)

def relationLc1998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 113⟩, ⟨(1 : F), 108618, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110078 + (1 : F) * rho 110079) * (relationLc1998 rho) = ((1 : F) * rho 110080)

def relationLc1999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110079) * (relationLc1999 rho) = ((1 : F) * rho 110081)

def relationLc2000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110078) * (relationLc2000 rho) = ((1 : F) * rho 110082)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110081) * ((1 : F) * rho 110082) = ((1 : F) * rho 110083)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110084) * ((1 : F) + (1 : F) * rho 110083) = ((1 : F) * rho 110081 + (1 : F) * rho 110082)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110085) * ((1 : F) + (-1 : F) * rho 110083) = ((1 : F) * rho 110080 + (-1 : F) * rho 110081 + (-1 : F) * rho 110082)

def relationLc2001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 113⟩], residual := [((1 : F), 110084)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108478) * (relationLc2001 rho) = ((1 : F) * rho 110086)

def relationLc2002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 113⟩], residual := [((1 : F), 110085)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108478) * (relationLc2002 rho) = ((1 : F) * rho 110087)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110078) * ((1 : F) * rho 110079) = ((1 : F) * rho 110088)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110078) * ((1 : F) * rho 110078) = ((1 : F) * rho 110089)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110079) * ((1 : F) * rho 110079) = ((1 : F) * rho 110090)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110091) * ((-1 : F) * rho 110089 + (1 : F) * rho 110090) = ((2 : F) * rho 110088)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110092) * ((2 : F) + (1 : F) * rho 110089 + (-1 : F) * rho 110090) = ((1 : F) * rho 110089 + (1 : F) * rho 110090)

def relationLc2003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 114⟩, ⟨(1 : F), 108618, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110091 + (1 : F) * rho 110092) * (relationLc2003 rho) = ((1 : F) * rho 110093)

def relationLc2004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110092) * (relationLc2004 rho) = ((1 : F) * rho 110094)

def relationLc2005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110091) * (relationLc2005 rho) = ((1 : F) * rho 110095)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110094) * ((1 : F) * rho 110095) = ((1 : F) * rho 110096)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110097) * ((1 : F) + (1 : F) * rho 110096) = ((1 : F) * rho 110094 + (1 : F) * rho 110095)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110098) * ((1 : F) + (-1 : F) * rho 110096) = ((1 : F) * rho 110093 + (-1 : F) * rho 110094 + (-1 : F) * rho 110095)

def relationLc2006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 114⟩], residual := [((1 : F), 110097)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108479) * (relationLc2006 rho) = ((1 : F) * rho 110099)

def relationLc2007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 114⟩], residual := [((1 : F), 110098)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108479) * (relationLc2007 rho) = ((1 : F) * rho 110100)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110091) * ((1 : F) * rho 110092) = ((1 : F) * rho 110101)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110091) * ((1 : F) * rho 110091) = ((1 : F) * rho 110102)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110092) * ((1 : F) * rho 110092) = ((1 : F) * rho 110103)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110104) * ((-1 : F) * rho 110102 + (1 : F) * rho 110103) = ((2 : F) * rho 110101)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110105) * ((2 : F) + (1 : F) * rho 110102 + (-1 : F) * rho 110103) = ((1 : F) * rho 110102 + (1 : F) * rho 110103)

def relationLc2008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 115⟩, ⟨(1 : F), 108618, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110104 + (1 : F) * rho 110105) * (relationLc2008 rho) = ((1 : F) * rho 110106)

def relationLc2009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110105) * (relationLc2009 rho) = ((1 : F) * rho 110107)

def relationLc2010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110104) * (relationLc2010 rho) = ((1 : F) * rho 110108)

def relationRow3553 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110107) * ((1 : F) * rho 110108) = ((1 : F) * rho 110109)

def relationRow3554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110110) * ((1 : F) + (1 : F) * rho 110109) = ((1 : F) * rho 110107 + (1 : F) * rho 110108)

def relationRow3555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110111) * ((1 : F) + (-1 : F) * rho 110109) = ((1 : F) * rho 110106 + (-1 : F) * rho 110107 + (-1 : F) * rho 110108)

def relationLc2011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 115⟩], residual := [((1 : F), 110110)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108480) * (relationLc2011 rho) = ((1 : F) * rho 110112)

def relationLc2012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 115⟩], residual := [((1 : F), 110111)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108480) * (relationLc2012 rho) = ((1 : F) * rho 110113)

def relationRow3558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110104) * ((1 : F) * rho 110105) = ((1 : F) * rho 110114)

def relationRow3559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110104) * ((1 : F) * rho 110104) = ((1 : F) * rho 110115)

def relationRow3560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110105) * ((1 : F) * rho 110105) = ((1 : F) * rho 110116)

def relationRow3561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110117) * ((-1 : F) * rho 110115 + (1 : F) * rho 110116) = ((2 : F) * rho 110114)

def relationRow3562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110118) * ((2 : F) + (1 : F) * rho 110115 + (-1 : F) * rho 110116) = ((1 : F) * rho 110115 + (1 : F) * rho 110116)

def relationLc2013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 116⟩, ⟨(1 : F), 108618, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110117 + (1 : F) * rho 110118) * (relationLc2013 rho) = ((1 : F) * rho 110119)

def relationLc2014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110118) * (relationLc2014 rho) = ((1 : F) * rho 110120)

def relationLc2015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110117) * (relationLc2015 rho) = ((1 : F) * rho 110121)

def relationRow3566 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110120) * ((1 : F) * rho 110121) = ((1 : F) * rho 110122)

def relationRow3567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110123) * ((1 : F) + (1 : F) * rho 110122) = ((1 : F) * rho 110120 + (1 : F) * rho 110121)

def relationRow3568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110124) * ((1 : F) + (-1 : F) * rho 110122) = ((1 : F) * rho 110119 + (-1 : F) * rho 110120 + (-1 : F) * rho 110121)

def relationLc2016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 116⟩], residual := [((1 : F), 110123)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108481) * (relationLc2016 rho) = ((1 : F) * rho 110125)

def relationLc2017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 116⟩], residual := [((1 : F), 110124)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108481) * (relationLc2017 rho) = ((1 : F) * rho 110126)

def relationRow3571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110117) * ((1 : F) * rho 110118) = ((1 : F) * rho 110127)

def relationRow3572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110117) * ((1 : F) * rho 110117) = ((1 : F) * rho 110128)

def relationRow3573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110118) * ((1 : F) * rho 110118) = ((1 : F) * rho 110129)

def relationRow3574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110130) * ((-1 : F) * rho 110128 + (1 : F) * rho 110129) = ((2 : F) * rho 110127)

def relationRow3575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110131) * ((2 : F) + (1 : F) * rho 110128 + (-1 : F) * rho 110129) = ((1 : F) * rho 110128 + (1 : F) * rho 110129)

def relationLc2018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 117⟩, ⟨(1 : F), 108618, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110130 + (1 : F) * rho 110131) * (relationLc2018 rho) = ((1 : F) * rho 110132)

def relationLc2019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110131) * (relationLc2019 rho) = ((1 : F) * rho 110133)

def relationLc2020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110130) * (relationLc2020 rho) = ((1 : F) * rho 110134)

def relationRow3579 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110133) * ((1 : F) * rho 110134) = ((1 : F) * rho 110135)

def relationRow3580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110136) * ((1 : F) + (1 : F) * rho 110135) = ((1 : F) * rho 110133 + (1 : F) * rho 110134)

def relationRow3581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110137) * ((1 : F) + (-1 : F) * rho 110135) = ((1 : F) * rho 110132 + (-1 : F) * rho 110133 + (-1 : F) * rho 110134)

def relationLc2021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 117⟩], residual := [((1 : F), 110136)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108482) * (relationLc2021 rho) = ((1 : F) * rho 110138)

def relationLc2022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 117⟩], residual := [((1 : F), 110137)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108482) * (relationLc2022 rho) = ((1 : F) * rho 110139)

def relationRow3584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110130) * ((1 : F) * rho 110131) = ((1 : F) * rho 110140)

def relationRow3585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110130) * ((1 : F) * rho 110130) = ((1 : F) * rho 110141)

def relationRow3586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110131) * ((1 : F) * rho 110131) = ((1 : F) * rho 110142)

def relationRow3587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110143) * ((-1 : F) * rho 110141 + (1 : F) * rho 110142) = ((2 : F) * rho 110140)

def relationRow3588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110144) * ((2 : F) + (1 : F) * rho 110141 + (-1 : F) * rho 110142) = ((1 : F) * rho 110141 + (1 : F) * rho 110142)

def relationLc2023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 118⟩, ⟨(1 : F), 108618, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110143 + (1 : F) * rho 110144) * (relationLc2023 rho) = ((1 : F) * rho 110145)

def relationLc2024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110144) * (relationLc2024 rho) = ((1 : F) * rho 110146)

def relationLc2025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110143) * (relationLc2025 rho) = ((1 : F) * rho 110147)

def relationRow3592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110146) * ((1 : F) * rho 110147) = ((1 : F) * rho 110148)

def relationRow3593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110149) * ((1 : F) + (1 : F) * rho 110148) = ((1 : F) * rho 110146 + (1 : F) * rho 110147)

def relationRow3594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110150) * ((1 : F) + (-1 : F) * rho 110148) = ((1 : F) * rho 110145 + (-1 : F) * rho 110146 + (-1 : F) * rho 110147)

def relationLc2026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 118⟩], residual := [((1 : F), 110149)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108483) * (relationLc2026 rho) = ((1 : F) * rho 110151)

def relationLc2027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 118⟩], residual := [((1 : F), 110150)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108483) * (relationLc2027 rho) = ((1 : F) * rho 110152)

def relationRow3597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110143) * ((1 : F) * rho 110144) = ((1 : F) * rho 110153)

def relationRow3598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110143) * ((1 : F) * rho 110143) = ((1 : F) * rho 110154)

def relationRow3599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110144) * ((1 : F) * rho 110144) = ((1 : F) * rho 110155)

def relationRow3600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110156) * ((-1 : F) * rho 110154 + (1 : F) * rho 110155) = ((2 : F) * rho 110153)

def relationRow3601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110157) * ((2 : F) + (1 : F) * rho 110154 + (-1 : F) * rho 110155) = ((1 : F) * rho 110154 + (1 : F) * rho 110155)

def relationLc2028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 119⟩, ⟨(1 : F), 108618, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110156 + (1 : F) * rho 110157) * (relationLc2028 rho) = ((1 : F) * rho 110158)

def relationLc2029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110157) * (relationLc2029 rho) = ((1 : F) * rho 110159)

def relationLc2030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110156) * (relationLc2030 rho) = ((1 : F) * rho 110160)

def relationRow3605 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110159) * ((1 : F) * rho 110160) = ((1 : F) * rho 110161)

def relationRow3606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110162) * ((1 : F) + (1 : F) * rho 110161) = ((1 : F) * rho 110159 + (1 : F) * rho 110160)

def relationRow3607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110163) * ((1 : F) + (-1 : F) * rho 110161) = ((1 : F) * rho 110158 + (-1 : F) * rho 110159 + (-1 : F) * rho 110160)

def relationLc2031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 119⟩], residual := [((1 : F), 110162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108484) * (relationLc2031 rho) = ((1 : F) * rho 110164)

def relationLc2032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 119⟩], residual := [((1 : F), 110163)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108484) * (relationLc2032 rho) = ((1 : F) * rho 110165)

def relationRow3610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110156) * ((1 : F) * rho 110157) = ((1 : F) * rho 110166)

def relationRow3611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110156) * ((1 : F) * rho 110156) = ((1 : F) * rho 110167)

def relationRow3612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110157) * ((1 : F) * rho 110157) = ((1 : F) * rho 110168)

def relationRow3613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110169) * ((-1 : F) * rho 110167 + (1 : F) * rho 110168) = ((2 : F) * rho 110166)

def relationRow3614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110170) * ((2 : F) + (1 : F) * rho 110167 + (-1 : F) * rho 110168) = ((1 : F) * rho 110167 + (1 : F) * rho 110168)

def relationLc2033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 120⟩, ⟨(1 : F), 108618, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110169 + (1 : F) * rho 110170) * (relationLc2033 rho) = ((1 : F) * rho 110171)

def relationLc2034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110170) * (relationLc2034 rho) = ((1 : F) * rho 110172)

def relationLc2035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110169) * (relationLc2035 rho) = ((1 : F) * rho 110173)

def relationRow3618 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110172) * ((1 : F) * rho 110173) = ((1 : F) * rho 110174)

def relationRow3619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110175) * ((1 : F) + (1 : F) * rho 110174) = ((1 : F) * rho 110172 + (1 : F) * rho 110173)

def relationRow3620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110176) * ((1 : F) + (-1 : F) * rho 110174) = ((1 : F) * rho 110171 + (-1 : F) * rho 110172 + (-1 : F) * rho 110173)

def relationLc2036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 120⟩], residual := [((1 : F), 110175)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108485) * (relationLc2036 rho) = ((1 : F) * rho 110177)

def relationLc2037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 120⟩], residual := [((1 : F), 110176)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108485) * (relationLc2037 rho) = ((1 : F) * rho 110178)

def relationRow3623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110169) * ((1 : F) * rho 110170) = ((1 : F) * rho 110179)

def relationRow3624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110169) * ((1 : F) * rho 110169) = ((1 : F) * rho 110180)

def relationRow3625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110170) * ((1 : F) * rho 110170) = ((1 : F) * rho 110181)

def relationRow3626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110182) * ((-1 : F) * rho 110180 + (1 : F) * rho 110181) = ((2 : F) * rho 110179)

def relationRow3627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110183) * ((2 : F) + (1 : F) * rho 110180 + (-1 : F) * rho 110181) = ((1 : F) * rho 110180 + (1 : F) * rho 110181)

def relationLc2038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 121⟩, ⟨(1 : F), 108618, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110182 + (1 : F) * rho 110183) * (relationLc2038 rho) = ((1 : F) * rho 110184)

def relationLc2039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110183) * (relationLc2039 rho) = ((1 : F) * rho 110185)

def relationLc2040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110182) * (relationLc2040 rho) = ((1 : F) * rho 110186)

def relationRow3631 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110185) * ((1 : F) * rho 110186) = ((1 : F) * rho 110187)

def relationRow3632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110188) * ((1 : F) + (1 : F) * rho 110187) = ((1 : F) * rho 110185 + (1 : F) * rho 110186)

def relationRow3633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110189) * ((1 : F) + (-1 : F) * rho 110187) = ((1 : F) * rho 110184 + (-1 : F) * rho 110185 + (-1 : F) * rho 110186)

def relationLc2041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 121⟩], residual := [((1 : F), 110188)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108486) * (relationLc2041 rho) = ((1 : F) * rho 110190)

def relationLc2042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 121⟩], residual := [((1 : F), 110189)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108486) * (relationLc2042 rho) = ((1 : F) * rho 110191)

def relationRow3636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110182) * ((1 : F) * rho 110183) = ((1 : F) * rho 110192)

def relationRow3637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110182) * ((1 : F) * rho 110182) = ((1 : F) * rho 110193)

def relationRow3638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110183) * ((1 : F) * rho 110183) = ((1 : F) * rho 110194)

def relationRow3639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110195) * ((-1 : F) * rho 110193 + (1 : F) * rho 110194) = ((2 : F) * rho 110192)

def relationRow3640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110196) * ((2 : F) + (1 : F) * rho 110193 + (-1 : F) * rho 110194) = ((1 : F) * rho 110193 + (1 : F) * rho 110194)

def relationLc2043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 122⟩, ⟨(1 : F), 108618, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110195 + (1 : F) * rho 110196) * (relationLc2043 rho) = ((1 : F) * rho 110197)

def relationLc2044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110196) * (relationLc2044 rho) = ((1 : F) * rho 110198)

def relationLc2045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110195) * (relationLc2045 rho) = ((1 : F) * rho 110199)

def relationRow3644 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110198) * ((1 : F) * rho 110199) = ((1 : F) * rho 110200)

def relationRow3645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110201) * ((1 : F) + (1 : F) * rho 110200) = ((1 : F) * rho 110198 + (1 : F) * rho 110199)

def relationRow3646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110202) * ((1 : F) + (-1 : F) * rho 110200) = ((1 : F) * rho 110197 + (-1 : F) * rho 110198 + (-1 : F) * rho 110199)

def relationLc2046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 122⟩], residual := [((1 : F), 110201)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108487) * (relationLc2046 rho) = ((1 : F) * rho 110203)

def relationLc2047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 122⟩], residual := [((1 : F), 110202)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108487) * (relationLc2047 rho) = ((1 : F) * rho 110204)

def relationRow3649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110195) * ((1 : F) * rho 110196) = ((1 : F) * rho 110205)

def relationRow3650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110195) * ((1 : F) * rho 110195) = ((1 : F) * rho 110206)

def relationRow3651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110196) * ((1 : F) * rho 110196) = ((1 : F) * rho 110207)

def relationRow3652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110208) * ((-1 : F) * rho 110206 + (1 : F) * rho 110207) = ((2 : F) * rho 110205)

def relationRow3653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110209) * ((2 : F) + (1 : F) * rho 110206 + (-1 : F) * rho 110207) = ((1 : F) * rho 110206 + (1 : F) * rho 110207)

def relationLc2048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 123⟩, ⟨(1 : F), 108618, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110208 + (1 : F) * rho 110209) * (relationLc2048 rho) = ((1 : F) * rho 110210)

def relationLc2049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110209) * (relationLc2049 rho) = ((1 : F) * rho 110211)

def relationLc2050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110208) * (relationLc2050 rho) = ((1 : F) * rho 110212)

def relationRow3657 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110211) * ((1 : F) * rho 110212) = ((1 : F) * rho 110213)

def relationRow3658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110214) * ((1 : F) + (1 : F) * rho 110213) = ((1 : F) * rho 110211 + (1 : F) * rho 110212)

def relationRow3659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110215) * ((1 : F) + (-1 : F) * rho 110213) = ((1 : F) * rho 110210 + (-1 : F) * rho 110211 + (-1 : F) * rho 110212)

def relationLc2051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 123⟩], residual := [((1 : F), 110214)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108488) * (relationLc2051 rho) = ((1 : F) * rho 110216)

def relationLc2052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 123⟩], residual := [((1 : F), 110215)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108488) * (relationLc2052 rho) = ((1 : F) * rho 110217)

def relationRow3662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110208) * ((1 : F) * rho 110209) = ((1 : F) * rho 110218)

def relationRow3663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110208) * ((1 : F) * rho 110208) = ((1 : F) * rho 110219)

def relationRow3664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110209) * ((1 : F) * rho 110209) = ((1 : F) * rho 110220)

def relationRow3665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110221) * ((-1 : F) * rho 110219 + (1 : F) * rho 110220) = ((2 : F) * rho 110218)

def relationRow3666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110222) * ((2 : F) + (1 : F) * rho 110219 + (-1 : F) * rho 110220) = ((1 : F) * rho 110219 + (1 : F) * rho 110220)

def relationLc2053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 124⟩, ⟨(1 : F), 108618, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110221 + (1 : F) * rho 110222) * (relationLc2053 rho) = ((1 : F) * rho 110223)

def relationLc2054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110222) * (relationLc2054 rho) = ((1 : F) * rho 110224)

def relationLc2055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110221) * (relationLc2055 rho) = ((1 : F) * rho 110225)

def relationRow3670 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110224) * ((1 : F) * rho 110225) = ((1 : F) * rho 110226)

def relationRow3671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110227) * ((1 : F) + (1 : F) * rho 110226) = ((1 : F) * rho 110224 + (1 : F) * rho 110225)

def relationRow3672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110228) * ((1 : F) + (-1 : F) * rho 110226) = ((1 : F) * rho 110223 + (-1 : F) * rho 110224 + (-1 : F) * rho 110225)

def relationLc2056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 124⟩], residual := [((1 : F), 110227)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108489) * (relationLc2056 rho) = ((1 : F) * rho 110229)

def relationLc2057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 124⟩], residual := [((1 : F), 110228)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108489) * (relationLc2057 rho) = ((1 : F) * rho 110230)

def relationRow3675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110221) * ((1 : F) * rho 110222) = ((1 : F) * rho 110231)

def relationRow3676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110221) * ((1 : F) * rho 110221) = ((1 : F) * rho 110232)

def relationRow3677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110222) * ((1 : F) * rho 110222) = ((1 : F) * rho 110233)

def relationRow3678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110234) * ((-1 : F) * rho 110232 + (1 : F) * rho 110233) = ((2 : F) * rho 110231)

def relationRow3679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110235) * ((2 : F) + (1 : F) * rho 110232 + (-1 : F) * rho 110233) = ((1 : F) * rho 110232 + (1 : F) * rho 110233)

def relationLc2058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 125⟩, ⟨(1 : F), 108618, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110234 + (1 : F) * rho 110235) * (relationLc2058 rho) = ((1 : F) * rho 110236)

def relationLc2059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110235) * (relationLc2059 rho) = ((1 : F) * rho 110237)

def relationLc2060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110234) * (relationLc2060 rho) = ((1 : F) * rho 110238)

def relationRow3683 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110237) * ((1 : F) * rho 110238) = ((1 : F) * rho 110239)

def relationRow3684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110240) * ((1 : F) + (1 : F) * rho 110239) = ((1 : F) * rho 110237 + (1 : F) * rho 110238)

def relationRow3685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110241) * ((1 : F) + (-1 : F) * rho 110239) = ((1 : F) * rho 110236 + (-1 : F) * rho 110237 + (-1 : F) * rho 110238)

def relationLc2061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 125⟩], residual := [((1 : F), 110240)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108490) * (relationLc2061 rho) = ((1 : F) * rho 110242)

def relationLc2062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 125⟩], residual := [((1 : F), 110241)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108490) * (relationLc2062 rho) = ((1 : F) * rho 110243)

def relationRow3688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110234) * ((1 : F) * rho 110235) = ((1 : F) * rho 110244)

def relationRow3689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110234) * ((1 : F) * rho 110234) = ((1 : F) * rho 110245)

def relationRow3690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110235) * ((1 : F) * rho 110235) = ((1 : F) * rho 110246)

def relationRow3691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110247) * ((-1 : F) * rho 110245 + (1 : F) * rho 110246) = ((2 : F) * rho 110244)

def relationRow3692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110248) * ((2 : F) + (1 : F) * rho 110245 + (-1 : F) * rho 110246) = ((1 : F) * rho 110245 + (1 : F) * rho 110246)

def relationLc2063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 126⟩, ⟨(1 : F), 108618, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110247 + (1 : F) * rho 110248) * (relationLc2063 rho) = ((1 : F) * rho 110249)

def relationLc2064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110248) * (relationLc2064 rho) = ((1 : F) * rho 110250)

def relationLc2065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110247) * (relationLc2065 rho) = ((1 : F) * rho 110251)

def relationRow3696 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110250) * ((1 : F) * rho 110251) = ((1 : F) * rho 110252)

def relationRow3697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110253) * ((1 : F) + (1 : F) * rho 110252) = ((1 : F) * rho 110250 + (1 : F) * rho 110251)

def relationRow3698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110254) * ((1 : F) + (-1 : F) * rho 110252) = ((1 : F) * rho 110249 + (-1 : F) * rho 110250 + (-1 : F) * rho 110251)

def relationLc2066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 126⟩], residual := [((1 : F), 110253)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108491) * (relationLc2066 rho) = ((1 : F) * rho 110255)

def relationLc2067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 126⟩], residual := [((1 : F), 110254)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108491) * (relationLc2067 rho) = ((1 : F) * rho 110256)

def relationRow3701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110247) * ((1 : F) * rho 110248) = ((1 : F) * rho 110257)

def relationRow3702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110247) * ((1 : F) * rho 110247) = ((1 : F) * rho 110258)

def relationRow3703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110248) * ((1 : F) * rho 110248) = ((1 : F) * rho 110259)

def relationRow3704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110260) * ((-1 : F) * rho 110258 + (1 : F) * rho 110259) = ((2 : F) * rho 110257)

def relationRow3705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110261) * ((2 : F) + (1 : F) * rho 110258 + (-1 : F) * rho 110259) = ((1 : F) * rho 110258 + (1 : F) * rho 110259)

def relationLc2068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 127⟩, ⟨(1 : F), 108618, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110260 + (1 : F) * rho 110261) * (relationLc2068 rho) = ((1 : F) * rho 110262)

def relationLc2069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110261) * (relationLc2069 rho) = ((1 : F) * rho 110263)

def relationLc2070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110260) * (relationLc2070 rho) = ((1 : F) * rho 110264)

def relationRow3709 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110263) * ((1 : F) * rho 110264) = ((1 : F) * rho 110265)

def relationRow3710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110266) * ((1 : F) + (1 : F) * rho 110265) = ((1 : F) * rho 110263 + (1 : F) * rho 110264)

def relationRow3711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110267) * ((1 : F) + (-1 : F) * rho 110265) = ((1 : F) * rho 110262 + (-1 : F) * rho 110263 + (-1 : F) * rho 110264)

def relationLc2071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 127⟩], residual := [((1 : F), 110266)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108492) * (relationLc2071 rho) = ((1 : F) * rho 110268)

def relationLc2072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 127⟩], residual := [((1 : F), 110267)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108492) * (relationLc2072 rho) = ((1 : F) * rho 110269)

def relationRow3714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110260) * ((1 : F) * rho 110261) = ((1 : F) * rho 110270)

def relationRow3715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110260) * ((1 : F) * rho 110260) = ((1 : F) * rho 110271)

def relationRow3716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110261) * ((1 : F) * rho 110261) = ((1 : F) * rho 110272)

def relationRow3717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110273) * ((-1 : F) * rho 110271 + (1 : F) * rho 110272) = ((2 : F) * rho 110270)

def relationRow3718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110274) * ((2 : F) + (1 : F) * rho 110271 + (-1 : F) * rho 110272) = ((1 : F) * rho 110271 + (1 : F) * rho 110272)

def relationLc2073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 128⟩, ⟨(1 : F), 108618, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110273 + (1 : F) * rho 110274) * (relationLc2073 rho) = ((1 : F) * rho 110275)

def relationLc2074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110274) * (relationLc2074 rho) = ((1 : F) * rho 110276)

def relationLc2075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110273) * (relationLc2075 rho) = ((1 : F) * rho 110277)

def relationRow3722 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110276) * ((1 : F) * rho 110277) = ((1 : F) * rho 110278)

def relationRow3723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110279) * ((1 : F) + (1 : F) * rho 110278) = ((1 : F) * rho 110276 + (1 : F) * rho 110277)

def relationRow3724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110280) * ((1 : F) + (-1 : F) * rho 110278) = ((1 : F) * rho 110275 + (-1 : F) * rho 110276 + (-1 : F) * rho 110277)

def relationLc2076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 128⟩], residual := [((1 : F), 110279)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108493) * (relationLc2076 rho) = ((1 : F) * rho 110281)

def relationLc2077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 128⟩], residual := [((1 : F), 110280)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108493) * (relationLc2077 rho) = ((1 : F) * rho 110282)

def relationRow3727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110273) * ((1 : F) * rho 110274) = ((1 : F) * rho 110283)

def relationRow3728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110273) * ((1 : F) * rho 110273) = ((1 : F) * rho 110284)

def relationRow3729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110274) * ((1 : F) * rho 110274) = ((1 : F) * rho 110285)

def relationRow3730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110286) * ((-1 : F) * rho 110284 + (1 : F) * rho 110285) = ((2 : F) * rho 110283)

def relationRow3731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110287) * ((2 : F) + (1 : F) * rho 110284 + (-1 : F) * rho 110285) = ((1 : F) * rho 110284 + (1 : F) * rho 110285)

def relationLc2078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 129⟩, ⟨(1 : F), 108618, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110286 + (1 : F) * rho 110287) * (relationLc2078 rho) = ((1 : F) * rho 110288)

def relationLc2079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110287) * (relationLc2079 rho) = ((1 : F) * rho 110289)

def relationLc2080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110286) * (relationLc2080 rho) = ((1 : F) * rho 110290)

def relationRow3735 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110289) * ((1 : F) * rho 110290) = ((1 : F) * rho 110291)

def relationRow3736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110292) * ((1 : F) + (1 : F) * rho 110291) = ((1 : F) * rho 110289 + (1 : F) * rho 110290)

def relationRow3737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110293) * ((1 : F) + (-1 : F) * rho 110291) = ((1 : F) * rho 110288 + (-1 : F) * rho 110289 + (-1 : F) * rho 110290)

def relationLc2081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 129⟩], residual := [((1 : F), 110292)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108494) * (relationLc2081 rho) = ((1 : F) * rho 110294)

def relationLc2082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 129⟩], residual := [((1 : F), 110293)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108494) * (relationLc2082 rho) = ((1 : F) * rho 110295)

def relationRow3740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110286) * ((1 : F) * rho 110287) = ((1 : F) * rho 110296)

def relationRow3741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110286) * ((1 : F) * rho 110286) = ((1 : F) * rho 110297)

def relationRow3742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110287) * ((1 : F) * rho 110287) = ((1 : F) * rho 110298)

def relationRow3743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110299) * ((-1 : F) * rho 110297 + (1 : F) * rho 110298) = ((2 : F) * rho 110296)

def relationRow3744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110300) * ((2 : F) + (1 : F) * rho 110297 + (-1 : F) * rho 110298) = ((1 : F) * rho 110297 + (1 : F) * rho 110298)

def relationLc2083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 130⟩, ⟨(1 : F), 108618, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110299 + (1 : F) * rho 110300) * (relationLc2083 rho) = ((1 : F) * rho 110301)

def relationLc2084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110300) * (relationLc2084 rho) = ((1 : F) * rho 110302)

def relationLc2085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110299) * (relationLc2085 rho) = ((1 : F) * rho 110303)

def relationRow3748 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110302) * ((1 : F) * rho 110303) = ((1 : F) * rho 110304)

def relationRow3749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110305) * ((1 : F) + (1 : F) * rho 110304) = ((1 : F) * rho 110302 + (1 : F) * rho 110303)

def relationRow3750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110306) * ((1 : F) + (-1 : F) * rho 110304) = ((1 : F) * rho 110301 + (-1 : F) * rho 110302 + (-1 : F) * rho 110303)

def relationLc2086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 130⟩], residual := [((1 : F), 110305)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108495) * (relationLc2086 rho) = ((1 : F) * rho 110307)

def relationLc2087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 130⟩], residual := [((1 : F), 110306)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108495) * (relationLc2087 rho) = ((1 : F) * rho 110308)

def relationRow3753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110299) * ((1 : F) * rho 110300) = ((1 : F) * rho 110309)

def relationRow3754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110299) * ((1 : F) * rho 110299) = ((1 : F) * rho 110310)

def relationRow3755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110300) * ((1 : F) * rho 110300) = ((1 : F) * rho 110311)

def relationRow3756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110312) * ((-1 : F) * rho 110310 + (1 : F) * rho 110311) = ((2 : F) * rho 110309)

def relationRow3757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110313) * ((2 : F) + (1 : F) * rho 110310 + (-1 : F) * rho 110311) = ((1 : F) * rho 110310 + (1 : F) * rho 110311)

def relationLc2088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 131⟩, ⟨(1 : F), 108618, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110312 + (1 : F) * rho 110313) * (relationLc2088 rho) = ((1 : F) * rho 110314)

def relationLc2089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110313) * (relationLc2089 rho) = ((1 : F) * rho 110315)

def relationLc2090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110312) * (relationLc2090 rho) = ((1 : F) * rho 110316)

def relationRow3761 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110315) * ((1 : F) * rho 110316) = ((1 : F) * rho 110317)

def relationRow3762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110318) * ((1 : F) + (1 : F) * rho 110317) = ((1 : F) * rho 110315 + (1 : F) * rho 110316)

def relationRow3763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110319) * ((1 : F) + (-1 : F) * rho 110317) = ((1 : F) * rho 110314 + (-1 : F) * rho 110315 + (-1 : F) * rho 110316)

def relationLc2091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 131⟩], residual := [((1 : F), 110318)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108496) * (relationLc2091 rho) = ((1 : F) * rho 110320)

def relationLc2092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 131⟩], residual := [((1 : F), 110319)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108496) * (relationLc2092 rho) = ((1 : F) * rho 110321)

def relationRow3766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110312) * ((1 : F) * rho 110313) = ((1 : F) * rho 110322)

def relationRow3767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110312) * ((1 : F) * rho 110312) = ((1 : F) * rho 110323)

def relationRow3768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110313) * ((1 : F) * rho 110313) = ((1 : F) * rho 110324)

def relationRow3769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110325) * ((-1 : F) * rho 110323 + (1 : F) * rho 110324) = ((2 : F) * rho 110322)

def relationRow3770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110326) * ((2 : F) + (1 : F) * rho 110323 + (-1 : F) * rho 110324) = ((1 : F) * rho 110323 + (1 : F) * rho 110324)

def relationLc2093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 132⟩, ⟨(1 : F), 108618, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110325 + (1 : F) * rho 110326) * (relationLc2093 rho) = ((1 : F) * rho 110327)

def relationLc2094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110326) * (relationLc2094 rho) = ((1 : F) * rho 110328)

def relationLc2095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110325) * (relationLc2095 rho) = ((1 : F) * rho 110329)

def relationRow3774 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110328) * ((1 : F) * rho 110329) = ((1 : F) * rho 110330)

def relationRow3775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110331) * ((1 : F) + (1 : F) * rho 110330) = ((1 : F) * rho 110328 + (1 : F) * rho 110329)

def relationRow3776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110332) * ((1 : F) + (-1 : F) * rho 110330) = ((1 : F) * rho 110327 + (-1 : F) * rho 110328 + (-1 : F) * rho 110329)

def relationLc2096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 132⟩], residual := [((1 : F), 110331)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108497) * (relationLc2096 rho) = ((1 : F) * rho 110333)

def relationLc2097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 132⟩], residual := [((1 : F), 110332)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108497) * (relationLc2097 rho) = ((1 : F) * rho 110334)

def relationRow3779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110325) * ((1 : F) * rho 110326) = ((1 : F) * rho 110335)

def relationRow3780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110325) * ((1 : F) * rho 110325) = ((1 : F) * rho 110336)

def relationRow3781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110326) * ((1 : F) * rho 110326) = ((1 : F) * rho 110337)

def relationRow3782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110338) * ((-1 : F) * rho 110336 + (1 : F) * rho 110337) = ((2 : F) * rho 110335)

def relationRow3783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110339) * ((2 : F) + (1 : F) * rho 110336 + (-1 : F) * rho 110337) = ((1 : F) * rho 110336 + (1 : F) * rho 110337)

def relationLc2098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 133⟩, ⟨(1 : F), 108618, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110338 + (1 : F) * rho 110339) * (relationLc2098 rho) = ((1 : F) * rho 110340)

def relationLc2099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110339) * (relationLc2099 rho) = ((1 : F) * rho 110341)

def relationLc2100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110338) * (relationLc2100 rho) = ((1 : F) * rho 110342)

def relationRow3787 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110341) * ((1 : F) * rho 110342) = ((1 : F) * rho 110343)

def relationRow3788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110344) * ((1 : F) + (1 : F) * rho 110343) = ((1 : F) * rho 110341 + (1 : F) * rho 110342)

def relationRow3789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110345) * ((1 : F) + (-1 : F) * rho 110343) = ((1 : F) * rho 110340 + (-1 : F) * rho 110341 + (-1 : F) * rho 110342)

def relationLc2101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 133⟩], residual := [((1 : F), 110344)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108498) * (relationLc2101 rho) = ((1 : F) * rho 110346)

def relationLc2102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 133⟩], residual := [((1 : F), 110345)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108498) * (relationLc2102 rho) = ((1 : F) * rho 110347)

def relationRow3792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110338) * ((1 : F) * rho 110339) = ((1 : F) * rho 110348)

def relationRow3793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110338) * ((1 : F) * rho 110338) = ((1 : F) * rho 110349)

def relationRow3794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110339) * ((1 : F) * rho 110339) = ((1 : F) * rho 110350)

def relationRow3795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110351) * ((-1 : F) * rho 110349 + (1 : F) * rho 110350) = ((2 : F) * rho 110348)

def relationRow3796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110352) * ((2 : F) + (1 : F) * rho 110349 + (-1 : F) * rho 110350) = ((1 : F) * rho 110349 + (1 : F) * rho 110350)

def relationLc2103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 134⟩, ⟨(1 : F), 108618, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110351 + (1 : F) * rho 110352) * (relationLc2103 rho) = ((1 : F) * rho 110353)

def relationLc2104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110352) * (relationLc2104 rho) = ((1 : F) * rho 110354)

def relationLc2105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110351) * (relationLc2105 rho) = ((1 : F) * rho 110355)

def relationRow3800 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110354) * ((1 : F) * rho 110355) = ((1 : F) * rho 110356)

def relationRow3801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110357) * ((1 : F) + (1 : F) * rho 110356) = ((1 : F) * rho 110354 + (1 : F) * rho 110355)

def relationRow3802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110358) * ((1 : F) + (-1 : F) * rho 110356) = ((1 : F) * rho 110353 + (-1 : F) * rho 110354 + (-1 : F) * rho 110355)

def relationLc2106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 134⟩], residual := [((1 : F), 110357)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108499) * (relationLc2106 rho) = ((1 : F) * rho 110359)

def relationLc2107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 134⟩], residual := [((1 : F), 110358)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108499) * (relationLc2107 rho) = ((1 : F) * rho 110360)

def relationRow3805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110351) * ((1 : F) * rho 110352) = ((1 : F) * rho 110361)

def relationRow3806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110351) * ((1 : F) * rho 110351) = ((1 : F) * rho 110362)

def relationRow3807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110352) * ((1 : F) * rho 110352) = ((1 : F) * rho 110363)

def relationRow3808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110364) * ((-1 : F) * rho 110362 + (1 : F) * rho 110363) = ((2 : F) * rho 110361)

def relationRow3809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110365) * ((2 : F) + (1 : F) * rho 110362 + (-1 : F) * rho 110363) = ((1 : F) * rho 110362 + (1 : F) * rho 110363)

def relationLc2108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 135⟩, ⟨(1 : F), 108618, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110364 + (1 : F) * rho 110365) * (relationLc2108 rho) = ((1 : F) * rho 110366)

def relationLc2109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110365) * (relationLc2109 rho) = ((1 : F) * rho 110367)

def relationLc2110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110364) * (relationLc2110 rho) = ((1 : F) * rho 110368)

def relationRow3813 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110367) * ((1 : F) * rho 110368) = ((1 : F) * rho 110369)

def relationRow3814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110370) * ((1 : F) + (1 : F) * rho 110369) = ((1 : F) * rho 110367 + (1 : F) * rho 110368)

def relationRow3815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110371) * ((1 : F) + (-1 : F) * rho 110369) = ((1 : F) * rho 110366 + (-1 : F) * rho 110367 + (-1 : F) * rho 110368)

def relationLc2111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 135⟩], residual := [((1 : F), 110370)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108500) * (relationLc2111 rho) = ((1 : F) * rho 110372)

def relationLc2112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 135⟩], residual := [((1 : F), 110371)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108500) * (relationLc2112 rho) = ((1 : F) * rho 110373)

def relationRow3818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110364) * ((1 : F) * rho 110365) = ((1 : F) * rho 110374)

def relationRow3819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110364) * ((1 : F) * rho 110364) = ((1 : F) * rho 110375)

def relationRow3820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110365) * ((1 : F) * rho 110365) = ((1 : F) * rho 110376)

def relationRow3821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110377) * ((-1 : F) * rho 110375 + (1 : F) * rho 110376) = ((2 : F) * rho 110374)

def relationRow3822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110378) * ((2 : F) + (1 : F) * rho 110375 + (-1 : F) * rho 110376) = ((1 : F) * rho 110375 + (1 : F) * rho 110376)

def relationLc2113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 136⟩, ⟨(1 : F), 108618, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110377 + (1 : F) * rho 110378) * (relationLc2113 rho) = ((1 : F) * rho 110379)

def relationLc2114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110378) * (relationLc2114 rho) = ((1 : F) * rho 110380)

def relationLc2115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110377) * (relationLc2115 rho) = ((1 : F) * rho 110381)

def relationRow3826 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110380) * ((1 : F) * rho 110381) = ((1 : F) * rho 110382)

def relationRow3827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110383) * ((1 : F) + (1 : F) * rho 110382) = ((1 : F) * rho 110380 + (1 : F) * rho 110381)

def relationRow3828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110384) * ((1 : F) + (-1 : F) * rho 110382) = ((1 : F) * rho 110379 + (-1 : F) * rho 110380 + (-1 : F) * rho 110381)

def relationLc2116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 136⟩], residual := [((1 : F), 110383)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108501) * (relationLc2116 rho) = ((1 : F) * rho 110385)

def relationLc2117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 136⟩], residual := [((1 : F), 110384)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108501) * (relationLc2117 rho) = ((1 : F) * rho 110386)

def relationRow3831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110377) * ((1 : F) * rho 110378) = ((1 : F) * rho 110387)

def relationRow3832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110377) * ((1 : F) * rho 110377) = ((1 : F) * rho 110388)

def relationRow3833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110378) * ((1 : F) * rho 110378) = ((1 : F) * rho 110389)

def relationRow3834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110390) * ((-1 : F) * rho 110388 + (1 : F) * rho 110389) = ((2 : F) * rho 110387)

def relationRow3835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110391) * ((2 : F) + (1 : F) * rho 110388 + (-1 : F) * rho 110389) = ((1 : F) * rho 110388 + (1 : F) * rho 110389)

def relationLc2118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 137⟩, ⟨(1 : F), 108618, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110390 + (1 : F) * rho 110391) * (relationLc2118 rho) = ((1 : F) * rho 110392)

def relationLc2119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110391) * (relationLc2119 rho) = ((1 : F) * rho 110393)

def relationLc2120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110390) * (relationLc2120 rho) = ((1 : F) * rho 110394)

def relationRow3839 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110393) * ((1 : F) * rho 110394) = ((1 : F) * rho 110395)

def relationRow3840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110396) * ((1 : F) + (1 : F) * rho 110395) = ((1 : F) * rho 110393 + (1 : F) * rho 110394)

def relationRow3841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110397) * ((1 : F) + (-1 : F) * rho 110395) = ((1 : F) * rho 110392 + (-1 : F) * rho 110393 + (-1 : F) * rho 110394)

def relationLc2121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 137⟩], residual := [((1 : F), 110396)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108502) * (relationLc2121 rho) = ((1 : F) * rho 110398)

def relationLc2122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 137⟩], residual := [((1 : F), 110397)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108502) * (relationLc2122 rho) = ((1 : F) * rho 110399)

def relationRow3844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110390) * ((1 : F) * rho 110391) = ((1 : F) * rho 110400)

def relationRow3845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110390) * ((1 : F) * rho 110390) = ((1 : F) * rho 110401)

def relationRow3846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110391) * ((1 : F) * rho 110391) = ((1 : F) * rho 110402)

def relationRow3847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110403) * ((-1 : F) * rho 110401 + (1 : F) * rho 110402) = ((2 : F) * rho 110400)

def relationRow3848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110404) * ((2 : F) + (1 : F) * rho 110401 + (-1 : F) * rho 110402) = ((1 : F) * rho 110401 + (1 : F) * rho 110402)

def relationLc2123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 138⟩, ⟨(1 : F), 108618, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110403 + (1 : F) * rho 110404) * (relationLc2123 rho) = ((1 : F) * rho 110405)

def relationLc2124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110404) * (relationLc2124 rho) = ((1 : F) * rho 110406)

def relationLc2125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110403) * (relationLc2125 rho) = ((1 : F) * rho 110407)

def relationRow3852 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110406) * ((1 : F) * rho 110407) = ((1 : F) * rho 110408)

def relationRow3853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110409) * ((1 : F) + (1 : F) * rho 110408) = ((1 : F) * rho 110406 + (1 : F) * rho 110407)

def relationRow3854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110410) * ((1 : F) + (-1 : F) * rho 110408) = ((1 : F) * rho 110405 + (-1 : F) * rho 110406 + (-1 : F) * rho 110407)

def relationLc2126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 138⟩], residual := [((1 : F), 110409)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108503) * (relationLc2126 rho) = ((1 : F) * rho 110411)

def relationLc2127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 138⟩], residual := [((1 : F), 110410)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108503) * (relationLc2127 rho) = ((1 : F) * rho 110412)

def relationRow3857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110403) * ((1 : F) * rho 110404) = ((1 : F) * rho 110413)

def relationRow3858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110403) * ((1 : F) * rho 110403) = ((1 : F) * rho 110414)

def relationRow3859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110404) * ((1 : F) * rho 110404) = ((1 : F) * rho 110415)

def relationRow3860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110416) * ((-1 : F) * rho 110414 + (1 : F) * rho 110415) = ((2 : F) * rho 110413)

def relationRow3861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110417) * ((2 : F) + (1 : F) * rho 110414 + (-1 : F) * rho 110415) = ((1 : F) * rho 110414 + (1 : F) * rho 110415)

def relationLc2128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 139⟩, ⟨(1 : F), 108618, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110416 + (1 : F) * rho 110417) * (relationLc2128 rho) = ((1 : F) * rho 110418)

def relationLc2129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110417) * (relationLc2129 rho) = ((1 : F) * rho 110419)

def relationLc2130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108618, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110416) * (relationLc2130 rho) = ((1 : F) * rho 110420)

def relationRow3865 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 110419) * ((1 : F) * rho 110420) = ((1 : F) * rho 110421)

def relationRow3866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110422) * ((1 : F) + (1 : F) * rho 110421) = ((1 : F) * rho 110419 + (1 : F) * rho 110420)

def relationRow3867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110423) * ((1 : F) + (-1 : F) * rho 110421) = ((1 : F) * rho 110418 + (-1 : F) * rho 110419 + (-1 : F) * rho 110420)

def relationLc2131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 108617, 13, 139⟩], residual := [((1 : F), 110422)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108504) * (relationLc2131 rho) = ((1 : F) * rho 110424)

def relationLc2132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 108618, 13, 139⟩], residual := [((1 : F), 110423)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108504) * (relationLc2132 rho) = ((1 : F) * rho 110425)

def relationRow3870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110416) * ((1 : F) * rho 110417) = ((1 : F) * rho 110426)

def relationRow3871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110416) * ((1 : F) * rho 110416) = ((1 : F) * rho 110427)

def relationRow3872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110417) * ((1 : F) * rho 110417) = ((1 : F) * rho 110428)

def relationRow3873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110429) * ((-1 : F) * rho 110427 + (1 : F) * rho 110428) = ((2 : F) * rho 110426)

def relationRow3874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110430) * ((2 : F) + (1 : F) * rho 110427 + (-1 : F) * rho 110428) = ((1 : F) * rho 110427 + (1 : F) * rho 110428)

def relationLc2133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 108617, 13, 140⟩, ⟨(1 : F), 108618, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110429 + (1 : F) * rho 110430) * (relationLc2133 rho) = ((1 : F) * rho 110431)

def relationLc2134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 108617, 13, 140⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
