import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg106Defs15

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106

def relationRow6291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94785) * (relationLc2852 rho) = ((1 : F) * rho 94787)

def relationLc2853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 48⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94784) * (relationLc2853 rho) = ((1 : F) * rho 94788)

def relationRow6293 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94787) * ((1 : F) * rho 94788) = ((1 : F) * rho 94789)

def relationRow6294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94790) * ((1 : F) + (1 : F) * rho 94789) = ((1 : F) * rho 94787 + (1 : F) * rho 94788)

def relationRow6295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94791) * ((1 : F) + (-1 : F) * rho 94789) = ((1 : F) * rho 94786 + (-1 : F) * rho 94787 + (-1 : F) * rho 94788)

def relationLc2854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 48⟩], residual := [((1 : F), 94790)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93965) * (relationLc2854 rho) = ((1 : F) * rho 94792)

def relationLc2855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 48⟩], residual := [((1 : F), 94791)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93965) * (relationLc2855 rho) = ((1 : F) * rho 94793)

def relationRow6298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94784) * ((1 : F) * rho 94785) = ((1 : F) * rho 94794)

def relationRow6299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94784) * ((1 : F) * rho 94784) = ((1 : F) * rho 94795)

def relationRow6300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94785) * ((1 : F) * rho 94785) = ((1 : F) * rho 94796)

def relationRow6301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94797) * ((-1 : F) * rho 94795 + (1 : F) * rho 94796) = ((2 : F) * rho 94794)

def relationRow6302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94798) * ((2 : F) + (1 : F) * rho 94795 + (-1 : F) * rho 94796) = ((1 : F) * rho 94795 + (1 : F) * rho 94796)

def relationLc2856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 49⟩, ⟨(1 : F), 94169, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94797 + (1 : F) * rho 94798) * (relationLc2856 rho) = ((1 : F) * rho 94799)

def relationLc2857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94798) * (relationLc2857 rho) = ((1 : F) * rho 94800)

def relationLc2858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 49⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94797) * (relationLc2858 rho) = ((1 : F) * rho 94801)

def relationRow6306 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94800) * ((1 : F) * rho 94801) = ((1 : F) * rho 94802)

def relationRow6307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94803) * ((1 : F) + (1 : F) * rho 94802) = ((1 : F) * rho 94800 + (1 : F) * rho 94801)

def relationRow6308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94804) * ((1 : F) + (-1 : F) * rho 94802) = ((1 : F) * rho 94799 + (-1 : F) * rho 94800 + (-1 : F) * rho 94801)

def relationLc2859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 49⟩], residual := [((1 : F), 94803)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93966) * (relationLc2859 rho) = ((1 : F) * rho 94805)

def relationLc2860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 49⟩], residual := [((1 : F), 94804)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93966) * (relationLc2860 rho) = ((1 : F) * rho 94806)

def relationRow6311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94797) * ((1 : F) * rho 94798) = ((1 : F) * rho 94807)

def relationRow6312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94797) * ((1 : F) * rho 94797) = ((1 : F) * rho 94808)

def relationRow6313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94798) * ((1 : F) * rho 94798) = ((1 : F) * rho 94809)

def relationRow6314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94810) * ((-1 : F) * rho 94808 + (1 : F) * rho 94809) = ((2 : F) * rho 94807)

def relationRow6315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94811) * ((2 : F) + (1 : F) * rho 94808 + (-1 : F) * rho 94809) = ((1 : F) * rho 94808 + (1 : F) * rho 94809)

def relationLc2861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 50⟩, ⟨(1 : F), 94169, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94810 + (1 : F) * rho 94811) * (relationLc2861 rho) = ((1 : F) * rho 94812)

def relationLc2862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94811) * (relationLc2862 rho) = ((1 : F) * rho 94813)

def relationLc2863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 50⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94810) * (relationLc2863 rho) = ((1 : F) * rho 94814)

def relationRow6319 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94813) * ((1 : F) * rho 94814) = ((1 : F) * rho 94815)

def relationRow6320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94816) * ((1 : F) + (1 : F) * rho 94815) = ((1 : F) * rho 94813 + (1 : F) * rho 94814)

def relationRow6321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94817) * ((1 : F) + (-1 : F) * rho 94815) = ((1 : F) * rho 94812 + (-1 : F) * rho 94813 + (-1 : F) * rho 94814)

def relationLc2864 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 50⟩], residual := [((1 : F), 94816)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93967) * (relationLc2864 rho) = ((1 : F) * rho 94818)

def relationLc2865 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 50⟩], residual := [((1 : F), 94817)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93967) * (relationLc2865 rho) = ((1 : F) * rho 94819)

def relationRow6324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94810) * ((1 : F) * rho 94811) = ((1 : F) * rho 94820)

def relationRow6325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94810) * ((1 : F) * rho 94810) = ((1 : F) * rho 94821)

def relationRow6326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94811) * ((1 : F) * rho 94811) = ((1 : F) * rho 94822)

def relationRow6327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94823) * ((-1 : F) * rho 94821 + (1 : F) * rho 94822) = ((2 : F) * rho 94820)

def relationRow6328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94824) * ((2 : F) + (1 : F) * rho 94821 + (-1 : F) * rho 94822) = ((1 : F) * rho 94821 + (1 : F) * rho 94822)

def relationLc2866 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 51⟩, ⟨(1 : F), 94169, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94823 + (1 : F) * rho 94824) * (relationLc2866 rho) = ((1 : F) * rho 94825)

def relationLc2867 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94824) * (relationLc2867 rho) = ((1 : F) * rho 94826)

def relationLc2868 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 51⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94823) * (relationLc2868 rho) = ((1 : F) * rho 94827)

def relationRow6332 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94826) * ((1 : F) * rho 94827) = ((1 : F) * rho 94828)

def relationRow6333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94829) * ((1 : F) + (1 : F) * rho 94828) = ((1 : F) * rho 94826 + (1 : F) * rho 94827)

def relationRow6334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94830) * ((1 : F) + (-1 : F) * rho 94828) = ((1 : F) * rho 94825 + (-1 : F) * rho 94826 + (-1 : F) * rho 94827)

def relationLc2869 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 51⟩], residual := [((1 : F), 94829)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93968) * (relationLc2869 rho) = ((1 : F) * rho 94831)

def relationLc2870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 51⟩], residual := [((1 : F), 94830)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93968) * (relationLc2870 rho) = ((1 : F) * rho 94832)

def relationRow6337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94823) * ((1 : F) * rho 94824) = ((1 : F) * rho 94833)

def relationRow6338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94823) * ((1 : F) * rho 94823) = ((1 : F) * rho 94834)

def relationRow6339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94824) * ((1 : F) * rho 94824) = ((1 : F) * rho 94835)

def relationRow6340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94836) * ((-1 : F) * rho 94834 + (1 : F) * rho 94835) = ((2 : F) * rho 94833)

def relationRow6341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94837) * ((2 : F) + (1 : F) * rho 94834 + (-1 : F) * rho 94835) = ((1 : F) * rho 94834 + (1 : F) * rho 94835)

def relationLc2871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 52⟩, ⟨(1 : F), 94169, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94836 + (1 : F) * rho 94837) * (relationLc2871 rho) = ((1 : F) * rho 94838)

def relationLc2872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94837) * (relationLc2872 rho) = ((1 : F) * rho 94839)

def relationLc2873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 52⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94836) * (relationLc2873 rho) = ((1 : F) * rho 94840)

def relationRow6345 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94839) * ((1 : F) * rho 94840) = ((1 : F) * rho 94841)

def relationRow6346 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94842) * ((1 : F) + (1 : F) * rho 94841) = ((1 : F) * rho 94839 + (1 : F) * rho 94840)

def relationRow6347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94843) * ((1 : F) + (-1 : F) * rho 94841) = ((1 : F) * rho 94838 + (-1 : F) * rho 94839 + (-1 : F) * rho 94840)

def relationLc2874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 52⟩], residual := [((1 : F), 94842)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93969) * (relationLc2874 rho) = ((1 : F) * rho 94844)

def relationLc2875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 52⟩], residual := [((1 : F), 94843)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93969) * (relationLc2875 rho) = ((1 : F) * rho 94845)

def relationRow6350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94836) * ((1 : F) * rho 94837) = ((1 : F) * rho 94846)

def relationRow6351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94836) * ((1 : F) * rho 94836) = ((1 : F) * rho 94847)

def relationRow6352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94837) * ((1 : F) * rho 94837) = ((1 : F) * rho 94848)

def relationRow6353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94849) * ((-1 : F) * rho 94847 + (1 : F) * rho 94848) = ((2 : F) * rho 94846)

def relationRow6354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94850) * ((2 : F) + (1 : F) * rho 94847 + (-1 : F) * rho 94848) = ((1 : F) * rho 94847 + (1 : F) * rho 94848)

def relationLc2876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 53⟩, ⟨(1 : F), 94169, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94849 + (1 : F) * rho 94850) * (relationLc2876 rho) = ((1 : F) * rho 94851)

def relationLc2877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94850) * (relationLc2877 rho) = ((1 : F) * rho 94852)

def relationLc2878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 53⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94849) * (relationLc2878 rho) = ((1 : F) * rho 94853)

def relationRow6358 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94852) * ((1 : F) * rho 94853) = ((1 : F) * rho 94854)

def relationRow6359 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94855) * ((1 : F) + (1 : F) * rho 94854) = ((1 : F) * rho 94852 + (1 : F) * rho 94853)

def relationRow6360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94856) * ((1 : F) + (-1 : F) * rho 94854) = ((1 : F) * rho 94851 + (-1 : F) * rho 94852 + (-1 : F) * rho 94853)

def relationLc2879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 53⟩], residual := [((1 : F), 94855)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93970) * (relationLc2879 rho) = ((1 : F) * rho 94857)

def relationLc2880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 53⟩], residual := [((1 : F), 94856)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93970) * (relationLc2880 rho) = ((1 : F) * rho 94858)

def relationRow6363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94849) * ((1 : F) * rho 94850) = ((1 : F) * rho 94859)

def relationRow6364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94849) * ((1 : F) * rho 94849) = ((1 : F) * rho 94860)

def relationRow6365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94850) * ((1 : F) * rho 94850) = ((1 : F) * rho 94861)

def relationRow6366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94862) * ((-1 : F) * rho 94860 + (1 : F) * rho 94861) = ((2 : F) * rho 94859)

def relationRow6367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94863) * ((2 : F) + (1 : F) * rho 94860 + (-1 : F) * rho 94861) = ((1 : F) * rho 94860 + (1 : F) * rho 94861)

def relationLc2881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 54⟩, ⟨(1 : F), 94169, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94862 + (1 : F) * rho 94863) * (relationLc2881 rho) = ((1 : F) * rho 94864)

def relationLc2882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94863) * (relationLc2882 rho) = ((1 : F) * rho 94865)

def relationLc2883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 54⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94862) * (relationLc2883 rho) = ((1 : F) * rho 94866)

def relationRow6371 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94865) * ((1 : F) * rho 94866) = ((1 : F) * rho 94867)

def relationRow6372 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94868) * ((1 : F) + (1 : F) * rho 94867) = ((1 : F) * rho 94865 + (1 : F) * rho 94866)

def relationRow6373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94869) * ((1 : F) + (-1 : F) * rho 94867) = ((1 : F) * rho 94864 + (-1 : F) * rho 94865 + (-1 : F) * rho 94866)

def relationLc2884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 54⟩], residual := [((1 : F), 94868)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93971) * (relationLc2884 rho) = ((1 : F) * rho 94870)

def relationLc2885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 54⟩], residual := [((1 : F), 94869)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93971) * (relationLc2885 rho) = ((1 : F) * rho 94871)

def relationRow6376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94862) * ((1 : F) * rho 94863) = ((1 : F) * rho 94872)

def relationRow6377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94862) * ((1 : F) * rho 94862) = ((1 : F) * rho 94873)

def relationRow6378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94863) * ((1 : F) * rho 94863) = ((1 : F) * rho 94874)

def relationRow6379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94875) * ((-1 : F) * rho 94873 + (1 : F) * rho 94874) = ((2 : F) * rho 94872)

def relationRow6380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94876) * ((2 : F) + (1 : F) * rho 94873 + (-1 : F) * rho 94874) = ((1 : F) * rho 94873 + (1 : F) * rho 94874)

def relationLc2886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 55⟩, ⟨(1 : F), 94169, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94875 + (1 : F) * rho 94876) * (relationLc2886 rho) = ((1 : F) * rho 94877)

def relationLc2887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94876) * (relationLc2887 rho) = ((1 : F) * rho 94878)

def relationLc2888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 55⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94875) * (relationLc2888 rho) = ((1 : F) * rho 94879)

def relationRow6384 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94878) * ((1 : F) * rho 94879) = ((1 : F) * rho 94880)

def relationRow6385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94881) * ((1 : F) + (1 : F) * rho 94880) = ((1 : F) * rho 94878 + (1 : F) * rho 94879)

def relationRow6386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94882) * ((1 : F) + (-1 : F) * rho 94880) = ((1 : F) * rho 94877 + (-1 : F) * rho 94878 + (-1 : F) * rho 94879)

def relationLc2889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 55⟩], residual := [((1 : F), 94881)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93972) * (relationLc2889 rho) = ((1 : F) * rho 94883)

def relationLc2890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 55⟩], residual := [((1 : F), 94882)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93972) * (relationLc2890 rho) = ((1 : F) * rho 94884)

def relationRow6389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94875) * ((1 : F) * rho 94876) = ((1 : F) * rho 94885)

def relationRow6390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94875) * ((1 : F) * rho 94875) = ((1 : F) * rho 94886)

def relationRow6391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94876) * ((1 : F) * rho 94876) = ((1 : F) * rho 94887)

def relationRow6392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94888) * ((-1 : F) * rho 94886 + (1 : F) * rho 94887) = ((2 : F) * rho 94885)

def relationRow6393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94889) * ((2 : F) + (1 : F) * rho 94886 + (-1 : F) * rho 94887) = ((1 : F) * rho 94886 + (1 : F) * rho 94887)

def relationLc2891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 56⟩, ⟨(1 : F), 94169, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94888 + (1 : F) * rho 94889) * (relationLc2891 rho) = ((1 : F) * rho 94890)

def relationLc2892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94889) * (relationLc2892 rho) = ((1 : F) * rho 94891)

def relationLc2893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 56⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94888) * (relationLc2893 rho) = ((1 : F) * rho 94892)

def relationRow6397 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94891) * ((1 : F) * rho 94892) = ((1 : F) * rho 94893)

def relationRow6398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94894) * ((1 : F) + (1 : F) * rho 94893) = ((1 : F) * rho 94891 + (1 : F) * rho 94892)

def relationRow6399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94895) * ((1 : F) + (-1 : F) * rho 94893) = ((1 : F) * rho 94890 + (-1 : F) * rho 94891 + (-1 : F) * rho 94892)

def relationLc2894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 56⟩], residual := [((1 : F), 94894)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93973) * (relationLc2894 rho) = ((1 : F) * rho 94896)

def relationLc2895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 56⟩], residual := [((1 : F), 94895)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93973) * (relationLc2895 rho) = ((1 : F) * rho 94897)

def relationRow6402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94888) * ((1 : F) * rho 94889) = ((1 : F) * rho 94898)

def relationRow6403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94888) * ((1 : F) * rho 94888) = ((1 : F) * rho 94899)

def relationRow6404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94889) * ((1 : F) * rho 94889) = ((1 : F) * rho 94900)

def relationRow6405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94901) * ((-1 : F) * rho 94899 + (1 : F) * rho 94900) = ((2 : F) * rho 94898)

def relationRow6406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94902) * ((2 : F) + (1 : F) * rho 94899 + (-1 : F) * rho 94900) = ((1 : F) * rho 94899 + (1 : F) * rho 94900)

def relationLc2896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 57⟩, ⟨(1 : F), 94169, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94901 + (1 : F) * rho 94902) * (relationLc2896 rho) = ((1 : F) * rho 94903)

def relationLc2897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94902) * (relationLc2897 rho) = ((1 : F) * rho 94904)

def relationLc2898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 57⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94901) * (relationLc2898 rho) = ((1 : F) * rho 94905)

def relationRow6410 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94904) * ((1 : F) * rho 94905) = ((1 : F) * rho 94906)

def relationRow6411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94907) * ((1 : F) + (1 : F) * rho 94906) = ((1 : F) * rho 94904 + (1 : F) * rho 94905)

def relationRow6412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94908) * ((1 : F) + (-1 : F) * rho 94906) = ((1 : F) * rho 94903 + (-1 : F) * rho 94904 + (-1 : F) * rho 94905)

def relationLc2899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 57⟩], residual := [((1 : F), 94907)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93974) * (relationLc2899 rho) = ((1 : F) * rho 94909)

def relationLc2900 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 57⟩], residual := [((1 : F), 94908)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93974) * (relationLc2900 rho) = ((1 : F) * rho 94910)

def relationRow6415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94901) * ((1 : F) * rho 94902) = ((1 : F) * rho 94911)

def relationRow6416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94901) * ((1 : F) * rho 94901) = ((1 : F) * rho 94912)

def relationRow6417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94902) * ((1 : F) * rho 94902) = ((1 : F) * rho 94913)

def relationRow6418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94914) * ((-1 : F) * rho 94912 + (1 : F) * rho 94913) = ((2 : F) * rho 94911)

def relationRow6419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94915) * ((2 : F) + (1 : F) * rho 94912 + (-1 : F) * rho 94913) = ((1 : F) * rho 94912 + (1 : F) * rho 94913)

def relationLc2901 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 58⟩, ⟨(1 : F), 94169, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94914 + (1 : F) * rho 94915) * (relationLc2901 rho) = ((1 : F) * rho 94916)

def relationLc2902 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94915) * (relationLc2902 rho) = ((1 : F) * rho 94917)

def relationLc2903 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 58⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94914) * (relationLc2903 rho) = ((1 : F) * rho 94918)

def relationRow6423 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94917) * ((1 : F) * rho 94918) = ((1 : F) * rho 94919)

def relationRow6424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94920) * ((1 : F) + (1 : F) * rho 94919) = ((1 : F) * rho 94917 + (1 : F) * rho 94918)

def relationRow6425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94921) * ((1 : F) + (-1 : F) * rho 94919) = ((1 : F) * rho 94916 + (-1 : F) * rho 94917 + (-1 : F) * rho 94918)

def relationLc2904 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 58⟩], residual := [((1 : F), 94920)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93975) * (relationLc2904 rho) = ((1 : F) * rho 94922)

def relationLc2905 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 58⟩], residual := [((1 : F), 94921)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93975) * (relationLc2905 rho) = ((1 : F) * rho 94923)

def relationRow6428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94914) * ((1 : F) * rho 94915) = ((1 : F) * rho 94924)

def relationRow6429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94914) * ((1 : F) * rho 94914) = ((1 : F) * rho 94925)

def relationRow6430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94915) * ((1 : F) * rho 94915) = ((1 : F) * rho 94926)

def relationRow6431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94927) * ((-1 : F) * rho 94925 + (1 : F) * rho 94926) = ((2 : F) * rho 94924)

def relationRow6432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94928) * ((2 : F) + (1 : F) * rho 94925 + (-1 : F) * rho 94926) = ((1 : F) * rho 94925 + (1 : F) * rho 94926)

def relationLc2906 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 59⟩, ⟨(1 : F), 94169, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94927 + (1 : F) * rho 94928) * (relationLc2906 rho) = ((1 : F) * rho 94929)

def relationLc2907 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94928) * (relationLc2907 rho) = ((1 : F) * rho 94930)

def relationLc2908 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 59⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94927) * (relationLc2908 rho) = ((1 : F) * rho 94931)

def relationRow6436 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94930) * ((1 : F) * rho 94931) = ((1 : F) * rho 94932)

def relationRow6437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94933) * ((1 : F) + (1 : F) * rho 94932) = ((1 : F) * rho 94930 + (1 : F) * rho 94931)

def relationRow6438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94934) * ((1 : F) + (-1 : F) * rho 94932) = ((1 : F) * rho 94929 + (-1 : F) * rho 94930 + (-1 : F) * rho 94931)

def relationLc2909 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 59⟩], residual := [((1 : F), 94933)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93976) * (relationLc2909 rho) = ((1 : F) * rho 94935)

def relationLc2910 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 59⟩], residual := [((1 : F), 94934)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93976) * (relationLc2910 rho) = ((1 : F) * rho 94936)

def relationRow6441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94927) * ((1 : F) * rho 94928) = ((1 : F) * rho 94937)

def relationRow6442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94927) * ((1 : F) * rho 94927) = ((1 : F) * rho 94938)

def relationRow6443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94928) * ((1 : F) * rho 94928) = ((1 : F) * rho 94939)

def relationRow6444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94940) * ((-1 : F) * rho 94938 + (1 : F) * rho 94939) = ((2 : F) * rho 94937)

def relationRow6445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94941) * ((2 : F) + (1 : F) * rho 94938 + (-1 : F) * rho 94939) = ((1 : F) * rho 94938 + (1 : F) * rho 94939)

def relationLc2911 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 60⟩, ⟨(1 : F), 94169, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94940 + (1 : F) * rho 94941) * (relationLc2911 rho) = ((1 : F) * rho 94942)

def relationLc2912 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94941) * (relationLc2912 rho) = ((1 : F) * rho 94943)

def relationLc2913 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 60⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94940) * (relationLc2913 rho) = ((1 : F) * rho 94944)

def relationRow6449 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94943) * ((1 : F) * rho 94944) = ((1 : F) * rho 94945)

def relationRow6450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94946) * ((1 : F) + (1 : F) * rho 94945) = ((1 : F) * rho 94943 + (1 : F) * rho 94944)

def relationRow6451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94947) * ((1 : F) + (-1 : F) * rho 94945) = ((1 : F) * rho 94942 + (-1 : F) * rho 94943 + (-1 : F) * rho 94944)

def relationLc2914 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 60⟩], residual := [((1 : F), 94946)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93977) * (relationLc2914 rho) = ((1 : F) * rho 94948)

def relationLc2915 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 60⟩], residual := [((1 : F), 94947)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93977) * (relationLc2915 rho) = ((1 : F) * rho 94949)

def relationRow6454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94940) * ((1 : F) * rho 94941) = ((1 : F) * rho 94950)

def relationRow6455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94940) * ((1 : F) * rho 94940) = ((1 : F) * rho 94951)

def relationRow6456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94941) * ((1 : F) * rho 94941) = ((1 : F) * rho 94952)

def relationRow6457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94953) * ((-1 : F) * rho 94951 + (1 : F) * rho 94952) = ((2 : F) * rho 94950)

def relationRow6458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94954) * ((2 : F) + (1 : F) * rho 94951 + (-1 : F) * rho 94952) = ((1 : F) * rho 94951 + (1 : F) * rho 94952)

def relationLc2916 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 61⟩, ⟨(1 : F), 94169, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94953 + (1 : F) * rho 94954) * (relationLc2916 rho) = ((1 : F) * rho 94955)

def relationLc2917 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94954) * (relationLc2917 rho) = ((1 : F) * rho 94956)

def relationLc2918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 61⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94953) * (relationLc2918 rho) = ((1 : F) * rho 94957)

def relationRow6462 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94956) * ((1 : F) * rho 94957) = ((1 : F) * rho 94958)

def relationRow6463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94959) * ((1 : F) + (1 : F) * rho 94958) = ((1 : F) * rho 94956 + (1 : F) * rho 94957)

def relationRow6464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94960) * ((1 : F) + (-1 : F) * rho 94958) = ((1 : F) * rho 94955 + (-1 : F) * rho 94956 + (-1 : F) * rho 94957)

def relationLc2919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 61⟩], residual := [((1 : F), 94959)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93978) * (relationLc2919 rho) = ((1 : F) * rho 94961)

def relationLc2920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 61⟩], residual := [((1 : F), 94960)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93978) * (relationLc2920 rho) = ((1 : F) * rho 94962)

def relationRow6467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94953) * ((1 : F) * rho 94954) = ((1 : F) * rho 94963)

def relationRow6468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94953) * ((1 : F) * rho 94953) = ((1 : F) * rho 94964)

def relationRow6469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94954) * ((1 : F) * rho 94954) = ((1 : F) * rho 94965)

def relationRow6470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94966) * ((-1 : F) * rho 94964 + (1 : F) * rho 94965) = ((2 : F) * rho 94963)

def relationRow6471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94967) * ((2 : F) + (1 : F) * rho 94964 + (-1 : F) * rho 94965) = ((1 : F) * rho 94964 + (1 : F) * rho 94965)

def relationLc2921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 62⟩, ⟨(1 : F), 94169, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94966 + (1 : F) * rho 94967) * (relationLc2921 rho) = ((1 : F) * rho 94968)

def relationLc2922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94967) * (relationLc2922 rho) = ((1 : F) * rho 94969)

def relationLc2923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 62⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94966) * (relationLc2923 rho) = ((1 : F) * rho 94970)

def relationRow6475 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94969) * ((1 : F) * rho 94970) = ((1 : F) * rho 94971)

def relationRow6476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94972) * ((1 : F) + (1 : F) * rho 94971) = ((1 : F) * rho 94969 + (1 : F) * rho 94970)

def relationRow6477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94973) * ((1 : F) + (-1 : F) * rho 94971) = ((1 : F) * rho 94968 + (-1 : F) * rho 94969 + (-1 : F) * rho 94970)

def relationLc2924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 62⟩], residual := [((1 : F), 94972)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93979) * (relationLc2924 rho) = ((1 : F) * rho 94974)

def relationLc2925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 62⟩], residual := [((1 : F), 94973)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93979) * (relationLc2925 rho) = ((1 : F) * rho 94975)

def relationRow6480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94966) * ((1 : F) * rho 94967) = ((1 : F) * rho 94976)

def relationRow6481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94966) * ((1 : F) * rho 94966) = ((1 : F) * rho 94977)

def relationRow6482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94967) * ((1 : F) * rho 94967) = ((1 : F) * rho 94978)

def relationRow6483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94979) * ((-1 : F) * rho 94977 + (1 : F) * rho 94978) = ((2 : F) * rho 94976)

def relationRow6484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94980) * ((2 : F) + (1 : F) * rho 94977 + (-1 : F) * rho 94978) = ((1 : F) * rho 94977 + (1 : F) * rho 94978)

def relationLc2926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 63⟩, ⟨(1 : F), 94169, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94979 + (1 : F) * rho 94980) * (relationLc2926 rho) = ((1 : F) * rho 94981)

def relationLc2927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94980) * (relationLc2927 rho) = ((1 : F) * rho 94982)

def relationLc2928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 63⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94979) * (relationLc2928 rho) = ((1 : F) * rho 94983)

def relationRow6488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94982) * ((1 : F) * rho 94983) = ((1 : F) * rho 94984)

def relationRow6489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94985) * ((1 : F) + (1 : F) * rho 94984) = ((1 : F) * rho 94982 + (1 : F) * rho 94983)

def relationRow6490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94986) * ((1 : F) + (-1 : F) * rho 94984) = ((1 : F) * rho 94981 + (-1 : F) * rho 94982 + (-1 : F) * rho 94983)

def relationLc2929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 63⟩], residual := [((1 : F), 94985)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93980) * (relationLc2929 rho) = ((1 : F) * rho 94987)

def relationLc2930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 63⟩], residual := [((1 : F), 94986)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93980) * (relationLc2930 rho) = ((1 : F) * rho 94988)

def relationRow6493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94979) * ((1 : F) * rho 94980) = ((1 : F) * rho 94989)

def relationRow6494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94979) * ((1 : F) * rho 94979) = ((1 : F) * rho 94990)

def relationRow6495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94980) * ((1 : F) * rho 94980) = ((1 : F) * rho 94991)

def relationRow6496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94992) * ((-1 : F) * rho 94990 + (1 : F) * rho 94991) = ((2 : F) * rho 94989)

def relationRow6497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94993) * ((2 : F) + (1 : F) * rho 94990 + (-1 : F) * rho 94991) = ((1 : F) * rho 94990 + (1 : F) * rho 94991)

def relationLc2931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 64⟩, ⟨(1 : F), 94169, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94992 + (1 : F) * rho 94993) * (relationLc2931 rho) = ((1 : F) * rho 94994)

def relationLc2932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94993) * (relationLc2932 rho) = ((1 : F) * rho 94995)

def relationLc2933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 64⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94992) * (relationLc2933 rho) = ((1 : F) * rho 94996)

def relationRow6501 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 94995) * ((1 : F) * rho 94996) = ((1 : F) * rho 94997)

def relationRow6502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94998) * ((1 : F) + (1 : F) * rho 94997) = ((1 : F) * rho 94995 + (1 : F) * rho 94996)

def relationRow6503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94999) * ((1 : F) + (-1 : F) * rho 94997) = ((1 : F) * rho 94994 + (-1 : F) * rho 94995 + (-1 : F) * rho 94996)

def relationLc2934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 64⟩], residual := [((1 : F), 94998)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93981) * (relationLc2934 rho) = ((1 : F) * rho 95000)

def relationLc2935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 64⟩], residual := [((1 : F), 94999)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93981) * (relationLc2935 rho) = ((1 : F) * rho 95001)

def relationRow6506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94992) * ((1 : F) * rho 94993) = ((1 : F) * rho 95002)

def relationRow6507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94992) * ((1 : F) * rho 94992) = ((1 : F) * rho 95003)

def relationRow6508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94993) * ((1 : F) * rho 94993) = ((1 : F) * rho 95004)

def relationRow6509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95005) * ((-1 : F) * rho 95003 + (1 : F) * rho 95004) = ((2 : F) * rho 95002)

def relationRow6510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95006) * ((2 : F) + (1 : F) * rho 95003 + (-1 : F) * rho 95004) = ((1 : F) * rho 95003 + (1 : F) * rho 95004)

def relationLc2936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 65⟩, ⟨(1 : F), 94169, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95005 + (1 : F) * rho 95006) * (relationLc2936 rho) = ((1 : F) * rho 95007)

def relationLc2937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95006) * (relationLc2937 rho) = ((1 : F) * rho 95008)

def relationLc2938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 65⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95005) * (relationLc2938 rho) = ((1 : F) * rho 95009)

def relationRow6514 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95008) * ((1 : F) * rho 95009) = ((1 : F) * rho 95010)

def relationRow6515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95011) * ((1 : F) + (1 : F) * rho 95010) = ((1 : F) * rho 95008 + (1 : F) * rho 95009)

def relationRow6516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95012) * ((1 : F) + (-1 : F) * rho 95010) = ((1 : F) * rho 95007 + (-1 : F) * rho 95008 + (-1 : F) * rho 95009)

def relationLc2939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 65⟩], residual := [((1 : F), 95011)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93982) * (relationLc2939 rho) = ((1 : F) * rho 95013)

def relationLc2940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 65⟩], residual := [((1 : F), 95012)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93982) * (relationLc2940 rho) = ((1 : F) * rho 95014)

def relationRow6519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95005) * ((1 : F) * rho 95006) = ((1 : F) * rho 95015)

def relationRow6520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95005) * ((1 : F) * rho 95005) = ((1 : F) * rho 95016)

def relationRow6521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95006) * ((1 : F) * rho 95006) = ((1 : F) * rho 95017)

def relationRow6522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95018) * ((-1 : F) * rho 95016 + (1 : F) * rho 95017) = ((2 : F) * rho 95015)

def relationRow6523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95019) * ((2 : F) + (1 : F) * rho 95016 + (-1 : F) * rho 95017) = ((1 : F) * rho 95016 + (1 : F) * rho 95017)

def relationLc2941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 66⟩, ⟨(1 : F), 94169, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95018 + (1 : F) * rho 95019) * (relationLc2941 rho) = ((1 : F) * rho 95020)

def relationLc2942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95019) * (relationLc2942 rho) = ((1 : F) * rho 95021)

def relationLc2943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 66⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95018) * (relationLc2943 rho) = ((1 : F) * rho 95022)

def relationRow6527 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95021) * ((1 : F) * rho 95022) = ((1 : F) * rho 95023)

def relationRow6528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95024) * ((1 : F) + (1 : F) * rho 95023) = ((1 : F) * rho 95021 + (1 : F) * rho 95022)

def relationRow6529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95025) * ((1 : F) + (-1 : F) * rho 95023) = ((1 : F) * rho 95020 + (-1 : F) * rho 95021 + (-1 : F) * rho 95022)

def relationLc2944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 66⟩], residual := [((1 : F), 95024)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93983) * (relationLc2944 rho) = ((1 : F) * rho 95026)

def relationLc2945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 66⟩], residual := [((1 : F), 95025)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93983) * (relationLc2945 rho) = ((1 : F) * rho 95027)

def relationRow6532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95018) * ((1 : F) * rho 95019) = ((1 : F) * rho 95028)

def relationRow6533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95018) * ((1 : F) * rho 95018) = ((1 : F) * rho 95029)

def relationRow6534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95019) * ((1 : F) * rho 95019) = ((1 : F) * rho 95030)

def relationRow6535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95031) * ((-1 : F) * rho 95029 + (1 : F) * rho 95030) = ((2 : F) * rho 95028)

def relationRow6536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95032) * ((2 : F) + (1 : F) * rho 95029 + (-1 : F) * rho 95030) = ((1 : F) * rho 95029 + (1 : F) * rho 95030)

def relationLc2946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 67⟩, ⟨(1 : F), 94169, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95031 + (1 : F) * rho 95032) * (relationLc2946 rho) = ((1 : F) * rho 95033)

def relationLc2947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95032) * (relationLc2947 rho) = ((1 : F) * rho 95034)

def relationLc2948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 67⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95031) * (relationLc2948 rho) = ((1 : F) * rho 95035)

def relationRow6540 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95034) * ((1 : F) * rho 95035) = ((1 : F) * rho 95036)

def relationRow6541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95037) * ((1 : F) + (1 : F) * rho 95036) = ((1 : F) * rho 95034 + (1 : F) * rho 95035)

def relationRow6542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95038) * ((1 : F) + (-1 : F) * rho 95036) = ((1 : F) * rho 95033 + (-1 : F) * rho 95034 + (-1 : F) * rho 95035)

def relationLc2949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 67⟩], residual := [((1 : F), 95037)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93984) * (relationLc2949 rho) = ((1 : F) * rho 95039)

def relationLc2950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 67⟩], residual := [((1 : F), 95038)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93984) * (relationLc2950 rho) = ((1 : F) * rho 95040)

def relationRow6545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95031) * ((1 : F) * rho 95032) = ((1 : F) * rho 95041)

def relationRow6546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95031) * ((1 : F) * rho 95031) = ((1 : F) * rho 95042)

def relationRow6547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95032) * ((1 : F) * rho 95032) = ((1 : F) * rho 95043)

def relationRow6548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95044) * ((-1 : F) * rho 95042 + (1 : F) * rho 95043) = ((2 : F) * rho 95041)

def relationRow6549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95045) * ((2 : F) + (1 : F) * rho 95042 + (-1 : F) * rho 95043) = ((1 : F) * rho 95042 + (1 : F) * rho 95043)

def relationLc2951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 68⟩, ⟨(1 : F), 94169, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95044 + (1 : F) * rho 95045) * (relationLc2951 rho) = ((1 : F) * rho 95046)

def relationLc2952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95045) * (relationLc2952 rho) = ((1 : F) * rho 95047)

def relationLc2953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 68⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95044) * (relationLc2953 rho) = ((1 : F) * rho 95048)

def relationRow6553 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95047) * ((1 : F) * rho 95048) = ((1 : F) * rho 95049)

def relationRow6554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95050) * ((1 : F) + (1 : F) * rho 95049) = ((1 : F) * rho 95047 + (1 : F) * rho 95048)

def relationRow6555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95051) * ((1 : F) + (-1 : F) * rho 95049) = ((1 : F) * rho 95046 + (-1 : F) * rho 95047 + (-1 : F) * rho 95048)

def relationLc2954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 68⟩], residual := [((1 : F), 95050)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93985) * (relationLc2954 rho) = ((1 : F) * rho 95052)

def relationLc2955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 68⟩], residual := [((1 : F), 95051)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93985) * (relationLc2955 rho) = ((1 : F) * rho 95053)

def relationRow6558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95044) * ((1 : F) * rho 95045) = ((1 : F) * rho 95054)

def relationRow6559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95044) * ((1 : F) * rho 95044) = ((1 : F) * rho 95055)

def relationRow6560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95045) * ((1 : F) * rho 95045) = ((1 : F) * rho 95056)

def relationRow6561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95057) * ((-1 : F) * rho 95055 + (1 : F) * rho 95056) = ((2 : F) * rho 95054)

def relationRow6562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95058) * ((2 : F) + (1 : F) * rho 95055 + (-1 : F) * rho 95056) = ((1 : F) * rho 95055 + (1 : F) * rho 95056)

def relationLc2956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 69⟩, ⟨(1 : F), 94169, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95057 + (1 : F) * rho 95058) * (relationLc2956 rho) = ((1 : F) * rho 95059)

def relationLc2957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95058) * (relationLc2957 rho) = ((1 : F) * rho 95060)

def relationLc2958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 69⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95057) * (relationLc2958 rho) = ((1 : F) * rho 95061)

def relationRow6566 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95060) * ((1 : F) * rho 95061) = ((1 : F) * rho 95062)

def relationRow6567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95063) * ((1 : F) + (1 : F) * rho 95062) = ((1 : F) * rho 95060 + (1 : F) * rho 95061)

def relationRow6568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95064) * ((1 : F) + (-1 : F) * rho 95062) = ((1 : F) * rho 95059 + (-1 : F) * rho 95060 + (-1 : F) * rho 95061)

def relationLc2959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 69⟩], residual := [((1 : F), 95063)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93986) * (relationLc2959 rho) = ((1 : F) * rho 95065)

def relationLc2960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 69⟩], residual := [((1 : F), 95064)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93986) * (relationLc2960 rho) = ((1 : F) * rho 95066)

def relationRow6571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95057) * ((1 : F) * rho 95058) = ((1 : F) * rho 95067)

def relationRow6572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95057) * ((1 : F) * rho 95057) = ((1 : F) * rho 95068)

def relationRow6573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95058) * ((1 : F) * rho 95058) = ((1 : F) * rho 95069)

def relationRow6574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95070) * ((-1 : F) * rho 95068 + (1 : F) * rho 95069) = ((2 : F) * rho 95067)

def relationRow6575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95071) * ((2 : F) + (1 : F) * rho 95068 + (-1 : F) * rho 95069) = ((1 : F) * rho 95068 + (1 : F) * rho 95069)

def relationLc2961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 70⟩, ⟨(1 : F), 94169, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95070 + (1 : F) * rho 95071) * (relationLc2961 rho) = ((1 : F) * rho 95072)

def relationLc2962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95071) * (relationLc2962 rho) = ((1 : F) * rho 95073)

def relationLc2963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 70⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95070) * (relationLc2963 rho) = ((1 : F) * rho 95074)

def relationRow6579 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95073) * ((1 : F) * rho 95074) = ((1 : F) * rho 95075)

def relationRow6580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95076) * ((1 : F) + (1 : F) * rho 95075) = ((1 : F) * rho 95073 + (1 : F) * rho 95074)

def relationRow6581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95077) * ((1 : F) + (-1 : F) * rho 95075) = ((1 : F) * rho 95072 + (-1 : F) * rho 95073 + (-1 : F) * rho 95074)

def relationLc2964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 70⟩], residual := [((1 : F), 95076)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93987) * (relationLc2964 rho) = ((1 : F) * rho 95078)

def relationLc2965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 70⟩], residual := [((1 : F), 95077)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93987) * (relationLc2965 rho) = ((1 : F) * rho 95079)

def relationRow6584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95070) * ((1 : F) * rho 95071) = ((1 : F) * rho 95080)

def relationRow6585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95070) * ((1 : F) * rho 95070) = ((1 : F) * rho 95081)

def relationRow6586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95071) * ((1 : F) * rho 95071) = ((1 : F) * rho 95082)

def relationRow6587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95083) * ((-1 : F) * rho 95081 + (1 : F) * rho 95082) = ((2 : F) * rho 95080)

def relationRow6588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95084) * ((2 : F) + (1 : F) * rho 95081 + (-1 : F) * rho 95082) = ((1 : F) * rho 95081 + (1 : F) * rho 95082)

def relationLc2966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 71⟩, ⟨(1 : F), 94169, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95083 + (1 : F) * rho 95084) * (relationLc2966 rho) = ((1 : F) * rho 95085)

def relationLc2967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95084) * (relationLc2967 rho) = ((1 : F) * rho 95086)

def relationLc2968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 71⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95083) * (relationLc2968 rho) = ((1 : F) * rho 95087)

def relationRow6592 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95086) * ((1 : F) * rho 95087) = ((1 : F) * rho 95088)

def relationRow6593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95089) * ((1 : F) + (1 : F) * rho 95088) = ((1 : F) * rho 95086 + (1 : F) * rho 95087)

def relationRow6594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95090) * ((1 : F) + (-1 : F) * rho 95088) = ((1 : F) * rho 95085 + (-1 : F) * rho 95086 + (-1 : F) * rho 95087)

def relationLc2969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 71⟩], residual := [((1 : F), 95089)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93988) * (relationLc2969 rho) = ((1 : F) * rho 95091)

def relationLc2970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 71⟩], residual := [((1 : F), 95090)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93988) * (relationLc2970 rho) = ((1 : F) * rho 95092)

def relationRow6597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95083) * ((1 : F) * rho 95084) = ((1 : F) * rho 95093)

def relationRow6598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95083) * ((1 : F) * rho 95083) = ((1 : F) * rho 95094)

def relationRow6599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95084) * ((1 : F) * rho 95084) = ((1 : F) * rho 95095)

def relationRow6600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95096) * ((-1 : F) * rho 95094 + (1 : F) * rho 95095) = ((2 : F) * rho 95093)

def relationRow6601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95097) * ((2 : F) + (1 : F) * rho 95094 + (-1 : F) * rho 95095) = ((1 : F) * rho 95094 + (1 : F) * rho 95095)

def relationLc2971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 72⟩, ⟨(1 : F), 94169, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6602 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95096 + (1 : F) * rho 95097) * (relationLc2971 rho) = ((1 : F) * rho 95098)

def relationLc2972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95097) * (relationLc2972 rho) = ((1 : F) * rho 95099)

def relationLc2973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 72⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95096) * (relationLc2973 rho) = ((1 : F) * rho 95100)

def relationRow6605 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95099) * ((1 : F) * rho 95100) = ((1 : F) * rho 95101)

def relationRow6606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95102) * ((1 : F) + (1 : F) * rho 95101) = ((1 : F) * rho 95099 + (1 : F) * rho 95100)

def relationRow6607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95103) * ((1 : F) + (-1 : F) * rho 95101) = ((1 : F) * rho 95098 + (-1 : F) * rho 95099 + (-1 : F) * rho 95100)

def relationLc2974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 72⟩], residual := [((1 : F), 95102)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93989) * (relationLc2974 rho) = ((1 : F) * rho 95104)

def relationLc2975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 72⟩], residual := [((1 : F), 95103)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93989) * (relationLc2975 rho) = ((1 : F) * rho 95105)

def relationRow6610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95096) * ((1 : F) * rho 95097) = ((1 : F) * rho 95106)

def relationRow6611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95096) * ((1 : F) * rho 95096) = ((1 : F) * rho 95107)

def relationRow6612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95097) * ((1 : F) * rho 95097) = ((1 : F) * rho 95108)

def relationRow6613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95109) * ((-1 : F) * rho 95107 + (1 : F) * rho 95108) = ((2 : F) * rho 95106)

def relationRow6614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95110) * ((2 : F) + (1 : F) * rho 95107 + (-1 : F) * rho 95108) = ((1 : F) * rho 95107 + (1 : F) * rho 95108)

def relationLc2976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 73⟩, ⟨(1 : F), 94169, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95109 + (1 : F) * rho 95110) * (relationLc2976 rho) = ((1 : F) * rho 95111)

def relationLc2977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95110) * (relationLc2977 rho) = ((1 : F) * rho 95112)

def relationLc2978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 73⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95109) * (relationLc2978 rho) = ((1 : F) * rho 95113)

def relationRow6618 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95112) * ((1 : F) * rho 95113) = ((1 : F) * rho 95114)

def relationRow6619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95115) * ((1 : F) + (1 : F) * rho 95114) = ((1 : F) * rho 95112 + (1 : F) * rho 95113)

def relationRow6620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95116) * ((1 : F) + (-1 : F) * rho 95114) = ((1 : F) * rho 95111 + (-1 : F) * rho 95112 + (-1 : F) * rho 95113)

def relationLc2979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 73⟩], residual := [((1 : F), 95115)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93990) * (relationLc2979 rho) = ((1 : F) * rho 95117)

def relationLc2980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 73⟩], residual := [((1 : F), 95116)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93990) * (relationLc2980 rho) = ((1 : F) * rho 95118)

def relationRow6623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95109) * ((1 : F) * rho 95110) = ((1 : F) * rho 95119)

def relationRow6624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95109) * ((1 : F) * rho 95109) = ((1 : F) * rho 95120)

def relationRow6625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95110) * ((1 : F) * rho 95110) = ((1 : F) * rho 95121)

def relationRow6626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95122) * ((-1 : F) * rho 95120 + (1 : F) * rho 95121) = ((2 : F) * rho 95119)

def relationRow6627 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95123) * ((2 : F) + (1 : F) * rho 95120 + (-1 : F) * rho 95121) = ((1 : F) * rho 95120 + (1 : F) * rho 95121)

def relationLc2981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 74⟩, ⟨(1 : F), 94169, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6628 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95122 + (1 : F) * rho 95123) * (relationLc2981 rho) = ((1 : F) * rho 95124)

def relationLc2982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6629 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95123) * (relationLc2982 rho) = ((1 : F) * rho 95125)

def relationLc2983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 74⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95122) * (relationLc2983 rho) = ((1 : F) * rho 95126)

def relationRow6631 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95125) * ((1 : F) * rho 95126) = ((1 : F) * rho 95127)

def relationRow6632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95128) * ((1 : F) + (1 : F) * rho 95127) = ((1 : F) * rho 95125 + (1 : F) * rho 95126)

def relationRow6633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95129) * ((1 : F) + (-1 : F) * rho 95127) = ((1 : F) * rho 95124 + (-1 : F) * rho 95125 + (-1 : F) * rho 95126)

def relationLc2984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 74⟩], residual := [((1 : F), 95128)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93991) * (relationLc2984 rho) = ((1 : F) * rho 95130)

def relationLc2985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 74⟩], residual := [((1 : F), 95129)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6635 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93991) * (relationLc2985 rho) = ((1 : F) * rho 95131)

def relationRow6636 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95122) * ((1 : F) * rho 95123) = ((1 : F) * rho 95132)

def relationRow6637 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95122) * ((1 : F) * rho 95122) = ((1 : F) * rho 95133)

def relationRow6638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95123) * ((1 : F) * rho 95123) = ((1 : F) * rho 95134)

def relationRow6639 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95135) * ((-1 : F) * rho 95133 + (1 : F) * rho 95134) = ((2 : F) * rho 95132)

def relationRow6640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95136) * ((2 : F) + (1 : F) * rho 95133 + (-1 : F) * rho 95134) = ((1 : F) * rho 95133 + (1 : F) * rho 95134)

def relationLc2986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 75⟩, ⟨(1 : F), 94169, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95135 + (1 : F) * rho 95136) * (relationLc2986 rho) = ((1 : F) * rho 95137)

def relationLc2987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95136) * (relationLc2987 rho) = ((1 : F) * rho 95138)

def relationLc2988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 75⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6643 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95135) * (relationLc2988 rho) = ((1 : F) * rho 95139)

def relationRow6644 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95138) * ((1 : F) * rho 95139) = ((1 : F) * rho 95140)

def relationRow6645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95141) * ((1 : F) + (1 : F) * rho 95140) = ((1 : F) * rho 95138 + (1 : F) * rho 95139)

def relationRow6646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95142) * ((1 : F) + (-1 : F) * rho 95140) = ((1 : F) * rho 95137 + (-1 : F) * rho 95138 + (-1 : F) * rho 95139)

def relationLc2989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 75⟩], residual := [((1 : F), 95141)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93992) * (relationLc2989 rho) = ((1 : F) * rho 95143)

def relationLc2990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 75⟩], residual := [((1 : F), 95142)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93992) * (relationLc2990 rho) = ((1 : F) * rho 95144)

def relationRow6649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95135) * ((1 : F) * rho 95136) = ((1 : F) * rho 95145)

def relationRow6650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95135) * ((1 : F) * rho 95135) = ((1 : F) * rho 95146)

def relationRow6651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95136) * ((1 : F) * rho 95136) = ((1 : F) * rho 95147)

def relationRow6652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95148) * ((-1 : F) * rho 95146 + (1 : F) * rho 95147) = ((2 : F) * rho 95145)

def relationRow6653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95149) * ((2 : F) + (1 : F) * rho 95146 + (-1 : F) * rho 95147) = ((1 : F) * rho 95146 + (1 : F) * rho 95147)

def relationLc2991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 76⟩, ⟨(1 : F), 94169, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95148 + (1 : F) * rho 95149) * (relationLc2991 rho) = ((1 : F) * rho 95150)

def relationLc2992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95149) * (relationLc2992 rho) = ((1 : F) * rho 95151)

def relationLc2993 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 76⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95148) * (relationLc2993 rho) = ((1 : F) * rho 95152)

def relationRow6657 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95151) * ((1 : F) * rho 95152) = ((1 : F) * rho 95153)

def relationRow6658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95154) * ((1 : F) + (1 : F) * rho 95153) = ((1 : F) * rho 95151 + (1 : F) * rho 95152)

def relationRow6659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95155) * ((1 : F) + (-1 : F) * rho 95153) = ((1 : F) * rho 95150 + (-1 : F) * rho 95151 + (-1 : F) * rho 95152)

def relationLc2994 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 76⟩], residual := [((1 : F), 95154)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93993) * (relationLc2994 rho) = ((1 : F) * rho 95156)

def relationLc2995 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 76⟩], residual := [((1 : F), 95155)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93993) * (relationLc2995 rho) = ((1 : F) * rho 95157)

def relationRow6662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95148) * ((1 : F) * rho 95149) = ((1 : F) * rho 95158)

def relationRow6663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95148) * ((1 : F) * rho 95148) = ((1 : F) * rho 95159)

def relationRow6664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95149) * ((1 : F) * rho 95149) = ((1 : F) * rho 95160)

def relationRow6665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95161) * ((-1 : F) * rho 95159 + (1 : F) * rho 95160) = ((2 : F) * rho 95158)

def relationRow6666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95162) * ((2 : F) + (1 : F) * rho 95159 + (-1 : F) * rho 95160) = ((1 : F) * rho 95159 + (1 : F) * rho 95160)

def relationLc2996 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 77⟩, ⟨(1 : F), 94169, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95161 + (1 : F) * rho 95162) * (relationLc2996 rho) = ((1 : F) * rho 95163)

def relationLc2997 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95162) * (relationLc2997 rho) = ((1 : F) * rho 95164)

def relationLc2998 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 77⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95161) * (relationLc2998 rho) = ((1 : F) * rho 95165)

def relationRow6670 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95164) * ((1 : F) * rho 95165) = ((1 : F) * rho 95166)

def relationRow6671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95167) * ((1 : F) + (1 : F) * rho 95166) = ((1 : F) * rho 95164 + (1 : F) * rho 95165)

def relationRow6672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95168) * ((1 : F) + (-1 : F) * rho 95166) = ((1 : F) * rho 95163 + (-1 : F) * rho 95164 + (-1 : F) * rho 95165)

def relationLc2999 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 77⟩], residual := [((1 : F), 95167)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93994) * (relationLc2999 rho) = ((1 : F) * rho 95169)

def relationLc3000 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 77⟩], residual := [((1 : F), 95168)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93994) * (relationLc3000 rho) = ((1 : F) * rho 95170)

def relationRow6675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95161) * ((1 : F) * rho 95162) = ((1 : F) * rho 95171)

def relationRow6676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95161) * ((1 : F) * rho 95161) = ((1 : F) * rho 95172)

def relationRow6677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95162) * ((1 : F) * rho 95162) = ((1 : F) * rho 95173)

def relationRow6678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95174) * ((-1 : F) * rho 95172 + (1 : F) * rho 95173) = ((2 : F) * rho 95171)

def relationRow6679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95175) * ((2 : F) + (1 : F) * rho 95172 + (-1 : F) * rho 95173) = ((1 : F) * rho 95172 + (1 : F) * rho 95173)

def relationLc3001 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 78⟩, ⟨(1 : F), 94169, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95174 + (1 : F) * rho 95175) * (relationLc3001 rho) = ((1 : F) * rho 95176)

def relationLc3002 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95175) * (relationLc3002 rho) = ((1 : F) * rho 95177)

def relationLc3003 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 78⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95174) * (relationLc3003 rho) = ((1 : F) * rho 95178)

def relationRow6683 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95177) * ((1 : F) * rho 95178) = ((1 : F) * rho 95179)

def relationRow6684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95180) * ((1 : F) + (1 : F) * rho 95179) = ((1 : F) * rho 95177 + (1 : F) * rho 95178)

def relationRow6685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95181) * ((1 : F) + (-1 : F) * rho 95179) = ((1 : F) * rho 95176 + (-1 : F) * rho 95177 + (-1 : F) * rho 95178)

def relationLc3004 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 78⟩], residual := [((1 : F), 95180)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93995) * (relationLc3004 rho) = ((1 : F) * rho 95182)

def relationLc3005 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 78⟩], residual := [((1 : F), 95181)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93995) * (relationLc3005 rho) = ((1 : F) * rho 95183)

def relationRow6688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95174) * ((1 : F) * rho 95175) = ((1 : F) * rho 95184)

def relationRow6689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95174) * ((1 : F) * rho 95174) = ((1 : F) * rho 95185)

def relationRow6690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95175) * ((1 : F) * rho 95175) = ((1 : F) * rho 95186)

def relationRow6691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95187) * ((-1 : F) * rho 95185 + (1 : F) * rho 95186) = ((2 : F) * rho 95184)

def relationRow6692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95188) * ((2 : F) + (1 : F) * rho 95185 + (-1 : F) * rho 95186) = ((1 : F) * rho 95185 + (1 : F) * rho 95186)

def relationLc3006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 79⟩, ⟨(1 : F), 94169, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95187 + (1 : F) * rho 95188) * (relationLc3006 rho) = ((1 : F) * rho 95189)

def relationLc3007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95188) * (relationLc3007 rho) = ((1 : F) * rho 95190)

def relationLc3008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 79⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95187) * (relationLc3008 rho) = ((1 : F) * rho 95191)

def relationRow6696 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95190) * ((1 : F) * rho 95191) = ((1 : F) * rho 95192)

def relationRow6697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95193) * ((1 : F) + (1 : F) * rho 95192) = ((1 : F) * rho 95190 + (1 : F) * rho 95191)

def relationRow6698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95194) * ((1 : F) + (-1 : F) * rho 95192) = ((1 : F) * rho 95189 + (-1 : F) * rho 95190 + (-1 : F) * rho 95191)

def relationLc3009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 79⟩], residual := [((1 : F), 95193)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93996) * (relationLc3009 rho) = ((1 : F) * rho 95195)

def relationLc3010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 79⟩], residual := [((1 : F), 95194)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93996) * (relationLc3010 rho) = ((1 : F) * rho 95196)

def relationRow6701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95187) * ((1 : F) * rho 95188) = ((1 : F) * rho 95197)

def relationRow6702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95187) * ((1 : F) * rho 95187) = ((1 : F) * rho 95198)

def relationRow6703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95188) * ((1 : F) * rho 95188) = ((1 : F) * rho 95199)

def relationRow6704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95200) * ((-1 : F) * rho 95198 + (1 : F) * rho 95199) = ((2 : F) * rho 95197)

def relationRow6705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95201) * ((2 : F) + (1 : F) * rho 95198 + (-1 : F) * rho 95199) = ((1 : F) * rho 95198 + (1 : F) * rho 95199)

def relationLc3011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 80⟩, ⟨(1 : F), 94169, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95200 + (1 : F) * rho 95201) * (relationLc3011 rho) = ((1 : F) * rho 95202)

def relationLc3012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95201) * (relationLc3012 rho) = ((1 : F) * rho 95203)

def relationLc3013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 80⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95200) * (relationLc3013 rho) = ((1 : F) * rho 95204)

def relationRow6709 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95203) * ((1 : F) * rho 95204) = ((1 : F) * rho 95205)

def relationRow6710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95206) * ((1 : F) + (1 : F) * rho 95205) = ((1 : F) * rho 95203 + (1 : F) * rho 95204)

def relationRow6711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95207) * ((1 : F) + (-1 : F) * rho 95205) = ((1 : F) * rho 95202 + (-1 : F) * rho 95203 + (-1 : F) * rho 95204)

def relationLc3014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 80⟩], residual := [((1 : F), 95206)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93997) * (relationLc3014 rho) = ((1 : F) * rho 95208)

def relationLc3015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 80⟩], residual := [((1 : F), 95207)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93997) * (relationLc3015 rho) = ((1 : F) * rho 95209)

def relationRow6714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95200) * ((1 : F) * rho 95201) = ((1 : F) * rho 95210)

def relationRow6715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95200) * ((1 : F) * rho 95200) = ((1 : F) * rho 95211)

def relationRow6716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95201) * ((1 : F) * rho 95201) = ((1 : F) * rho 95212)

def relationRow6717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95213) * ((-1 : F) * rho 95211 + (1 : F) * rho 95212) = ((2 : F) * rho 95210)

def relationRow6718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95214) * ((2 : F) + (1 : F) * rho 95211 + (-1 : F) * rho 95212) = ((1 : F) * rho 95211 + (1 : F) * rho 95212)

def relationLc3016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 81⟩, ⟨(1 : F), 94169, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95213 + (1 : F) * rho 95214) * (relationLc3016 rho) = ((1 : F) * rho 95215)

def relationLc3017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95214) * (relationLc3017 rho) = ((1 : F) * rho 95216)

def relationLc3018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 81⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95213) * (relationLc3018 rho) = ((1 : F) * rho 95217)

def relationRow6722 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95216) * ((1 : F) * rho 95217) = ((1 : F) * rho 95218)

def relationRow6723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95219) * ((1 : F) + (1 : F) * rho 95218) = ((1 : F) * rho 95216 + (1 : F) * rho 95217)

def relationRow6724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95220) * ((1 : F) + (-1 : F) * rho 95218) = ((1 : F) * rho 95215 + (-1 : F) * rho 95216 + (-1 : F) * rho 95217)

def relationLc3019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 81⟩], residual := [((1 : F), 95219)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93998) * (relationLc3019 rho) = ((1 : F) * rho 95221)

def relationLc3020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 81⟩], residual := [((1 : F), 95220)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93998) * (relationLc3020 rho) = ((1 : F) * rho 95222)

def relationRow6727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95213) * ((1 : F) * rho 95214) = ((1 : F) * rho 95223)

def relationRow6728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95213) * ((1 : F) * rho 95213) = ((1 : F) * rho 95224)

def relationRow6729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95214) * ((1 : F) * rho 95214) = ((1 : F) * rho 95225)

def relationRow6730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95226) * ((-1 : F) * rho 95224 + (1 : F) * rho 95225) = ((2 : F) * rho 95223)

def relationRow6731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95227) * ((2 : F) + (1 : F) * rho 95224 + (-1 : F) * rho 95225) = ((1 : F) * rho 95224 + (1 : F) * rho 95225)

def relationLc3021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 82⟩, ⟨(1 : F), 94169, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95226 + (1 : F) * rho 95227) * (relationLc3021 rho) = ((1 : F) * rho 95228)

def relationLc3022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95227) * (relationLc3022 rho) = ((1 : F) * rho 95229)

def relationLc3023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 82⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95226) * (relationLc3023 rho) = ((1 : F) * rho 95230)

def relationRow6735 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95229) * ((1 : F) * rho 95230) = ((1 : F) * rho 95231)

def relationRow6736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95232) * ((1 : F) + (1 : F) * rho 95231) = ((1 : F) * rho 95229 + (1 : F) * rho 95230)

def relationRow6737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95233) * ((1 : F) + (-1 : F) * rho 95231) = ((1 : F) * rho 95228 + (-1 : F) * rho 95229 + (-1 : F) * rho 95230)

def relationLc3024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 82⟩], residual := [((1 : F), 95232)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93999) * (relationLc3024 rho) = ((1 : F) * rho 95234)

def relationLc3025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 82⟩], residual := [((1 : F), 95233)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93999) * (relationLc3025 rho) = ((1 : F) * rho 95235)

def relationRow6740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95226) * ((1 : F) * rho 95227) = ((1 : F) * rho 95236)

def relationRow6741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95226) * ((1 : F) * rho 95226) = ((1 : F) * rho 95237)

def relationRow6742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95227) * ((1 : F) * rho 95227) = ((1 : F) * rho 95238)

def relationRow6743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95239) * ((-1 : F) * rho 95237 + (1 : F) * rho 95238) = ((2 : F) * rho 95236)

def relationRow6744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95240) * ((2 : F) + (1 : F) * rho 95237 + (-1 : F) * rho 95238) = ((1 : F) * rho 95237 + (1 : F) * rho 95238)

def relationLc3026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 83⟩, ⟨(1 : F), 94169, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95239 + (1 : F) * rho 95240) * (relationLc3026 rho) = ((1 : F) * rho 95241)

def relationLc3027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95240) * (relationLc3027 rho) = ((1 : F) * rho 95242)

def relationLc3028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 83⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95239) * (relationLc3028 rho) = ((1 : F) * rho 95243)

def relationRow6748 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95242) * ((1 : F) * rho 95243) = ((1 : F) * rho 95244)

def relationRow6749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95245) * ((1 : F) + (1 : F) * rho 95244) = ((1 : F) * rho 95242 + (1 : F) * rho 95243)

def relationRow6750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95246) * ((1 : F) + (-1 : F) * rho 95244) = ((1 : F) * rho 95241 + (-1 : F) * rho 95242 + (-1 : F) * rho 95243)

def relationLc3029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 83⟩], residual := [((1 : F), 95245)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94000) * (relationLc3029 rho) = ((1 : F) * rho 95247)

def relationLc3030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 83⟩], residual := [((1 : F), 95246)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94000) * (relationLc3030 rho) = ((1 : F) * rho 95248)

def relationRow6753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95239) * ((1 : F) * rho 95240) = ((1 : F) * rho 95249)

def relationRow6754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95239) * ((1 : F) * rho 95239) = ((1 : F) * rho 95250)

def relationRow6755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95240) * ((1 : F) * rho 95240) = ((1 : F) * rho 95251)

def relationRow6756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95252) * ((-1 : F) * rho 95250 + (1 : F) * rho 95251) = ((2 : F) * rho 95249)

def relationRow6757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95253) * ((2 : F) + (1 : F) * rho 95250 + (-1 : F) * rho 95251) = ((1 : F) * rho 95250 + (1 : F) * rho 95251)

def relationLc3031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 84⟩, ⟨(1 : F), 94169, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95252 + (1 : F) * rho 95253) * (relationLc3031 rho) = ((1 : F) * rho 95254)

def relationLc3032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95253) * (relationLc3032 rho) = ((1 : F) * rho 95255)

def relationLc3033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 84⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95252) * (relationLc3033 rho) = ((1 : F) * rho 95256)

def relationRow6761 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95255) * ((1 : F) * rho 95256) = ((1 : F) * rho 95257)

def relationRow6762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95258) * ((1 : F) + (1 : F) * rho 95257) = ((1 : F) * rho 95255 + (1 : F) * rho 95256)

def relationRow6763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95259) * ((1 : F) + (-1 : F) * rho 95257) = ((1 : F) * rho 95254 + (-1 : F) * rho 95255 + (-1 : F) * rho 95256)

def relationLc3034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 84⟩], residual := [((1 : F), 95258)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94001) * (relationLc3034 rho) = ((1 : F) * rho 95260)

def relationLc3035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 84⟩], residual := [((1 : F), 95259)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94001) * (relationLc3035 rho) = ((1 : F) * rho 95261)

def relationRow6766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95252) * ((1 : F) * rho 95253) = ((1 : F) * rho 95262)

def relationRow6767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95252) * ((1 : F) * rho 95252) = ((1 : F) * rho 95263)

def relationRow6768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95253) * ((1 : F) * rho 95253) = ((1 : F) * rho 95264)

def relationRow6769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95265) * ((-1 : F) * rho 95263 + (1 : F) * rho 95264) = ((2 : F) * rho 95262)

def relationRow6770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95266) * ((2 : F) + (1 : F) * rho 95263 + (-1 : F) * rho 95264) = ((1 : F) * rho 95263 + (1 : F) * rho 95264)

def relationLc3036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 85⟩, ⟨(1 : F), 94169, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95265 + (1 : F) * rho 95266) * (relationLc3036 rho) = ((1 : F) * rho 95267)

def relationLc3037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95266) * (relationLc3037 rho) = ((1 : F) * rho 95268)

def relationLc3038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 85⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95265) * (relationLc3038 rho) = ((1 : F) * rho 95269)

def relationRow6774 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95268) * ((1 : F) * rho 95269) = ((1 : F) * rho 95270)

def relationRow6775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95271) * ((1 : F) + (1 : F) * rho 95270) = ((1 : F) * rho 95268 + (1 : F) * rho 95269)

def relationRow6776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95272) * ((1 : F) + (-1 : F) * rho 95270) = ((1 : F) * rho 95267 + (-1 : F) * rho 95268 + (-1 : F) * rho 95269)

def relationLc3039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 85⟩], residual := [((1 : F), 95271)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94002) * (relationLc3039 rho) = ((1 : F) * rho 95273)

def relationLc3040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 85⟩], residual := [((1 : F), 95272)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94002) * (relationLc3040 rho) = ((1 : F) * rho 95274)

def relationRow6779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95265) * ((1 : F) * rho 95266) = ((1 : F) * rho 95275)

def relationRow6780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95265) * ((1 : F) * rho 95265) = ((1 : F) * rho 95276)

def relationRow6781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95266) * ((1 : F) * rho 95266) = ((1 : F) * rho 95277)

def relationRow6782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95278) * ((-1 : F) * rho 95276 + (1 : F) * rho 95277) = ((2 : F) * rho 95275)

def relationRow6783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95279) * ((2 : F) + (1 : F) * rho 95276 + (-1 : F) * rho 95277) = ((1 : F) * rho 95276 + (1 : F) * rho 95277)

def relationLc3041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 86⟩, ⟨(1 : F), 94169, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95278 + (1 : F) * rho 95279) * (relationLc3041 rho) = ((1 : F) * rho 95280)

def relationLc3042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95279) * (relationLc3042 rho) = ((1 : F) * rho 95281)

def relationLc3043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 86⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95278) * (relationLc3043 rho) = ((1 : F) * rho 95282)

def relationRow6787 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95281) * ((1 : F) * rho 95282) = ((1 : F) * rho 95283)

def relationRow6788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95284) * ((1 : F) + (1 : F) * rho 95283) = ((1 : F) * rho 95281 + (1 : F) * rho 95282)

def relationRow6789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95285) * ((1 : F) + (-1 : F) * rho 95283) = ((1 : F) * rho 95280 + (-1 : F) * rho 95281 + (-1 : F) * rho 95282)

def relationLc3044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 86⟩], residual := [((1 : F), 95284)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94003) * (relationLc3044 rho) = ((1 : F) * rho 95286)

def relationLc3045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 86⟩], residual := [((1 : F), 95285)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94003) * (relationLc3045 rho) = ((1 : F) * rho 95287)

def relationRow6792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95278) * ((1 : F) * rho 95279) = ((1 : F) * rho 95288)

def relationRow6793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95278) * ((1 : F) * rho 95278) = ((1 : F) * rho 95289)

def relationRow6794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95279) * ((1 : F) * rho 95279) = ((1 : F) * rho 95290)

def relationRow6795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95291) * ((-1 : F) * rho 95289 + (1 : F) * rho 95290) = ((2 : F) * rho 95288)

def relationRow6796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95292) * ((2 : F) + (1 : F) * rho 95289 + (-1 : F) * rho 95290) = ((1 : F) * rho 95289 + (1 : F) * rho 95290)

def relationLc3046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 87⟩, ⟨(1 : F), 94169, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95291 + (1 : F) * rho 95292) * (relationLc3046 rho) = ((1 : F) * rho 95293)

def relationLc3047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95292) * (relationLc3047 rho) = ((1 : F) * rho 95294)

def relationLc3048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 87⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95291) * (relationLc3048 rho) = ((1 : F) * rho 95295)

def relationRow6800 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95294) * ((1 : F) * rho 95295) = ((1 : F) * rho 95296)

def relationRow6801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95297) * ((1 : F) + (1 : F) * rho 95296) = ((1 : F) * rho 95294 + (1 : F) * rho 95295)

def relationRow6802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95298) * ((1 : F) + (-1 : F) * rho 95296) = ((1 : F) * rho 95293 + (-1 : F) * rho 95294 + (-1 : F) * rho 95295)

def relationLc3049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 87⟩], residual := [((1 : F), 95297)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94004) * (relationLc3049 rho) = ((1 : F) * rho 95299)

def relationLc3050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 87⟩], residual := [((1 : F), 95298)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94004) * (relationLc3050 rho) = ((1 : F) * rho 95300)

def relationRow6805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95291) * ((1 : F) * rho 95292) = ((1 : F) * rho 95301)

def relationRow6806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95291) * ((1 : F) * rho 95291) = ((1 : F) * rho 95302)

def relationRow6807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95292) * ((1 : F) * rho 95292) = ((1 : F) * rho 95303)

def relationRow6808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95304) * ((-1 : F) * rho 95302 + (1 : F) * rho 95303) = ((2 : F) * rho 95301)

def relationRow6809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95305) * ((2 : F) + (1 : F) * rho 95302 + (-1 : F) * rho 95303) = ((1 : F) * rho 95302 + (1 : F) * rho 95303)

def relationLc3051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 88⟩, ⟨(1 : F), 94169, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95304 + (1 : F) * rho 95305) * (relationLc3051 rho) = ((1 : F) * rho 95306)

def relationLc3052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95305) * (relationLc3052 rho) = ((1 : F) * rho 95307)

def relationLc3053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 88⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95304) * (relationLc3053 rho) = ((1 : F) * rho 95308)

def relationRow6813 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95307) * ((1 : F) * rho 95308) = ((1 : F) * rho 95309)

def relationRow6814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95310) * ((1 : F) + (1 : F) * rho 95309) = ((1 : F) * rho 95307 + (1 : F) * rho 95308)

def relationRow6815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95311) * ((1 : F) + (-1 : F) * rho 95309) = ((1 : F) * rho 95306 + (-1 : F) * rho 95307 + (-1 : F) * rho 95308)

def relationLc3054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 88⟩], residual := [((1 : F), 95310)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94005) * (relationLc3054 rho) = ((1 : F) * rho 95312)

def relationLc3055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 88⟩], residual := [((1 : F), 95311)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94005) * (relationLc3055 rho) = ((1 : F) * rho 95313)

def relationRow6818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95304) * ((1 : F) * rho 95305) = ((1 : F) * rho 95314)

def relationRow6819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95304) * ((1 : F) * rho 95304) = ((1 : F) * rho 95315)

def relationRow6820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95305) * ((1 : F) * rho 95305) = ((1 : F) * rho 95316)

def relationRow6821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95317) * ((-1 : F) * rho 95315 + (1 : F) * rho 95316) = ((2 : F) * rho 95314)

def relationRow6822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95318) * ((2 : F) + (1 : F) * rho 95315 + (-1 : F) * rho 95316) = ((1 : F) * rho 95315 + (1 : F) * rho 95316)

def relationLc3056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 89⟩, ⟨(1 : F), 94169, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95317 + (1 : F) * rho 95318) * (relationLc3056 rho) = ((1 : F) * rho 95319)

def relationLc3057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95318) * (relationLc3057 rho) = ((1 : F) * rho 95320)

def relationLc3058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 89⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95317) * (relationLc3058 rho) = ((1 : F) * rho 95321)

def relationRow6826 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95320) * ((1 : F) * rho 95321) = ((1 : F) * rho 95322)

def relationRow6827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95323) * ((1 : F) + (1 : F) * rho 95322) = ((1 : F) * rho 95320 + (1 : F) * rho 95321)

def relationRow6828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95324) * ((1 : F) + (-1 : F) * rho 95322) = ((1 : F) * rho 95319 + (-1 : F) * rho 95320 + (-1 : F) * rho 95321)

def relationLc3059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 89⟩], residual := [((1 : F), 95323)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94006) * (relationLc3059 rho) = ((1 : F) * rho 95325)

def relationLc3060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 89⟩], residual := [((1 : F), 95324)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94006) * (relationLc3060 rho) = ((1 : F) * rho 95326)

def relationRow6831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95317) * ((1 : F) * rho 95318) = ((1 : F) * rho 95327)

def relationRow6832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95317) * ((1 : F) * rho 95317) = ((1 : F) * rho 95328)

def relationRow6833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95318) * ((1 : F) * rho 95318) = ((1 : F) * rho 95329)

def relationRow6834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95330) * ((-1 : F) * rho 95328 + (1 : F) * rho 95329) = ((2 : F) * rho 95327)

def relationRow6835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95331) * ((2 : F) + (1 : F) * rho 95328 + (-1 : F) * rho 95329) = ((1 : F) * rho 95328 + (1 : F) * rho 95329)

def relationLc3061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 90⟩, ⟨(1 : F), 94169, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95330 + (1 : F) * rho 95331) * (relationLc3061 rho) = ((1 : F) * rho 95332)

def relationLc3062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95331) * (relationLc3062 rho) = ((1 : F) * rho 95333)

def relationLc3063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 90⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95330) * (relationLc3063 rho) = ((1 : F) * rho 95334)

def relationRow6839 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95333) * ((1 : F) * rho 95334) = ((1 : F) * rho 95335)

def relationRow6840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95336) * ((1 : F) + (1 : F) * rho 95335) = ((1 : F) * rho 95333 + (1 : F) * rho 95334)

def relationRow6841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95337) * ((1 : F) + (-1 : F) * rho 95335) = ((1 : F) * rho 95332 + (-1 : F) * rho 95333 + (-1 : F) * rho 95334)

def relationLc3064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 90⟩], residual := [((1 : F), 95336)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94007) * (relationLc3064 rho) = ((1 : F) * rho 95338)

def relationLc3065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 90⟩], residual := [((1 : F), 95337)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94007) * (relationLc3065 rho) = ((1 : F) * rho 95339)

def relationRow6844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95330) * ((1 : F) * rho 95331) = ((1 : F) * rho 95340)

def relationRow6845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95330) * ((1 : F) * rho 95330) = ((1 : F) * rho 95341)

def relationRow6846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95331) * ((1 : F) * rho 95331) = ((1 : F) * rho 95342)

def relationRow6847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95343) * ((-1 : F) * rho 95341 + (1 : F) * rho 95342) = ((2 : F) * rho 95340)

def relationRow6848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95344) * ((2 : F) + (1 : F) * rho 95341 + (-1 : F) * rho 95342) = ((1 : F) * rho 95341 + (1 : F) * rho 95342)

def relationLc3066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 91⟩, ⟨(1 : F), 94169, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95343 + (1 : F) * rho 95344) * (relationLc3066 rho) = ((1 : F) * rho 95345)

def relationLc3067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95344) * (relationLc3067 rho) = ((1 : F) * rho 95346)

def relationLc3068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 91⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95343) * (relationLc3068 rho) = ((1 : F) * rho 95347)

def relationRow6852 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95346) * ((1 : F) * rho 95347) = ((1 : F) * rho 95348)

def relationRow6853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95349) * ((1 : F) + (1 : F) * rho 95348) = ((1 : F) * rho 95346 + (1 : F) * rho 95347)

def relationRow6854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95350) * ((1 : F) + (-1 : F) * rho 95348) = ((1 : F) * rho 95345 + (-1 : F) * rho 95346 + (-1 : F) * rho 95347)

def relationLc3069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 91⟩], residual := [((1 : F), 95349)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94008) * (relationLc3069 rho) = ((1 : F) * rho 95351)

def relationLc3070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 91⟩], residual := [((1 : F), 95350)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94008) * (relationLc3070 rho) = ((1 : F) * rho 95352)

def relationRow6857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95343) * ((1 : F) * rho 95344) = ((1 : F) * rho 95353)

def relationRow6858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95343) * ((1 : F) * rho 95343) = ((1 : F) * rho 95354)

def relationRow6859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95344) * ((1 : F) * rho 95344) = ((1 : F) * rho 95355)

def relationRow6860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95356) * ((-1 : F) * rho 95354 + (1 : F) * rho 95355) = ((2 : F) * rho 95353)

def relationRow6861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95357) * ((2 : F) + (1 : F) * rho 95354 + (-1 : F) * rho 95355) = ((1 : F) * rho 95354 + (1 : F) * rho 95355)

def relationLc3071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 92⟩, ⟨(1 : F), 94169, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95356 + (1 : F) * rho 95357) * (relationLc3071 rho) = ((1 : F) * rho 95358)

def relationLc3072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95357) * (relationLc3072 rho) = ((1 : F) * rho 95359)

def relationLc3073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 92⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95356) * (relationLc3073 rho) = ((1 : F) * rho 95360)

def relationRow6865 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95359) * ((1 : F) * rho 95360) = ((1 : F) * rho 95361)

def relationRow6866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95362) * ((1 : F) + (1 : F) * rho 95361) = ((1 : F) * rho 95359 + (1 : F) * rho 95360)

def relationRow6867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95363) * ((1 : F) + (-1 : F) * rho 95361) = ((1 : F) * rho 95358 + (-1 : F) * rho 95359 + (-1 : F) * rho 95360)

def relationLc3074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 92⟩], residual := [((1 : F), 95362)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94009) * (relationLc3074 rho) = ((1 : F) * rho 95364)

def relationLc3075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 92⟩], residual := [((1 : F), 95363)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94009) * (relationLc3075 rho) = ((1 : F) * rho 95365)

def relationRow6870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95356) * ((1 : F) * rho 95357) = ((1 : F) * rho 95366)

def relationRow6871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95356) * ((1 : F) * rho 95356) = ((1 : F) * rho 95367)

def relationRow6872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95357) * ((1 : F) * rho 95357) = ((1 : F) * rho 95368)

def relationRow6873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95369) * ((-1 : F) * rho 95367 + (1 : F) * rho 95368) = ((2 : F) * rho 95366)

def relationRow6874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95370) * ((2 : F) + (1 : F) * rho 95367 + (-1 : F) * rho 95368) = ((1 : F) * rho 95367 + (1 : F) * rho 95368)

def relationLc3076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 93⟩, ⟨(1 : F), 94169, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95369 + (1 : F) * rho 95370) * (relationLc3076 rho) = ((1 : F) * rho 95371)

def relationLc3077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95370) * (relationLc3077 rho) = ((1 : F) * rho 95372)

def relationLc3078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 93⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95369) * (relationLc3078 rho) = ((1 : F) * rho 95373)

def relationRow6878 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95372) * ((1 : F) * rho 95373) = ((1 : F) * rho 95374)

def relationRow6879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95375) * ((1 : F) + (1 : F) * rho 95374) = ((1 : F) * rho 95372 + (1 : F) * rho 95373)

def relationRow6880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95376) * ((1 : F) + (-1 : F) * rho 95374) = ((1 : F) * rho 95371 + (-1 : F) * rho 95372 + (-1 : F) * rho 95373)

def relationLc3079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 93⟩], residual := [((1 : F), 95375)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94010) * (relationLc3079 rho) = ((1 : F) * rho 95377)

def relationLc3080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 93⟩], residual := [((1 : F), 95376)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106
