import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg106Defs16

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106

def relationRow6882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94010) * (relationLc3080 rho) = ((1 : F) * rho 95378)

def relationRow6883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95369) * ((1 : F) * rho 95370) = ((1 : F) * rho 95379)

def relationRow6884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95369) * ((1 : F) * rho 95369) = ((1 : F) * rho 95380)

def relationRow6885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95370) * ((1 : F) * rho 95370) = ((1 : F) * rho 95381)

def relationRow6886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95382) * ((-1 : F) * rho 95380 + (1 : F) * rho 95381) = ((2 : F) * rho 95379)

def relationRow6887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95383) * ((2 : F) + (1 : F) * rho 95380 + (-1 : F) * rho 95381) = ((1 : F) * rho 95380 + (1 : F) * rho 95381)

def relationLc3081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 94⟩, ⟨(1 : F), 94169, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95382 + (1 : F) * rho 95383) * (relationLc3081 rho) = ((1 : F) * rho 95384)

def relationLc3082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95383) * (relationLc3082 rho) = ((1 : F) * rho 95385)

def relationLc3083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 94⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95382) * (relationLc3083 rho) = ((1 : F) * rho 95386)

def relationRow6891 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95385) * ((1 : F) * rho 95386) = ((1 : F) * rho 95387)

def relationRow6892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95388) * ((1 : F) + (1 : F) * rho 95387) = ((1 : F) * rho 95385 + (1 : F) * rho 95386)

def relationRow6893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95389) * ((1 : F) + (-1 : F) * rho 95387) = ((1 : F) * rho 95384 + (-1 : F) * rho 95385 + (-1 : F) * rho 95386)

def relationLc3084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 94⟩], residual := [((1 : F), 95388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94011) * (relationLc3084 rho) = ((1 : F) * rho 95390)

def relationLc3085 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 94⟩], residual := [((1 : F), 95389)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94011) * (relationLc3085 rho) = ((1 : F) * rho 95391)

def relationRow6896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95382) * ((1 : F) * rho 95383) = ((1 : F) * rho 95392)

def relationRow6897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95382) * ((1 : F) * rho 95382) = ((1 : F) * rho 95393)

def relationRow6898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95383) * ((1 : F) * rho 95383) = ((1 : F) * rho 95394)

def relationRow6899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95395) * ((-1 : F) * rho 95393 + (1 : F) * rho 95394) = ((2 : F) * rho 95392)

def relationRow6900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95396) * ((2 : F) + (1 : F) * rho 95393 + (-1 : F) * rho 95394) = ((1 : F) * rho 95393 + (1 : F) * rho 95394)

def relationLc3086 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 95⟩, ⟨(1 : F), 94169, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95395 + (1 : F) * rho 95396) * (relationLc3086 rho) = ((1 : F) * rho 95397)

def relationLc3087 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95396) * (relationLc3087 rho) = ((1 : F) * rho 95398)

def relationLc3088 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 95⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95395) * (relationLc3088 rho) = ((1 : F) * rho 95399)

def relationRow6904 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95398) * ((1 : F) * rho 95399) = ((1 : F) * rho 95400)

def relationRow6905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95401) * ((1 : F) + (1 : F) * rho 95400) = ((1 : F) * rho 95398 + (1 : F) * rho 95399)

def relationRow6906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95402) * ((1 : F) + (-1 : F) * rho 95400) = ((1 : F) * rho 95397 + (-1 : F) * rho 95398 + (-1 : F) * rho 95399)

def relationLc3089 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 95⟩], residual := [((1 : F), 95401)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94012) * (relationLc3089 rho) = ((1 : F) * rho 95403)

def relationLc3090 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 95⟩], residual := [((1 : F), 95402)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94012) * (relationLc3090 rho) = ((1 : F) * rho 95404)

def relationRow6909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95395) * ((1 : F) * rho 95396) = ((1 : F) * rho 95405)

def relationRow6910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95395) * ((1 : F) * rho 95395) = ((1 : F) * rho 95406)

def relationRow6911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95396) * ((1 : F) * rho 95396) = ((1 : F) * rho 95407)

def relationRow6912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95408) * ((-1 : F) * rho 95406 + (1 : F) * rho 95407) = ((2 : F) * rho 95405)

def relationRow6913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95409) * ((2 : F) + (1 : F) * rho 95406 + (-1 : F) * rho 95407) = ((1 : F) * rho 95406 + (1 : F) * rho 95407)

def relationLc3091 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 96⟩, ⟨(1 : F), 94169, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95408 + (1 : F) * rho 95409) * (relationLc3091 rho) = ((1 : F) * rho 95410)

def relationLc3092 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95409) * (relationLc3092 rho) = ((1 : F) * rho 95411)

def relationLc3093 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 96⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95408) * (relationLc3093 rho) = ((1 : F) * rho 95412)

def relationRow6917 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95411) * ((1 : F) * rho 95412) = ((1 : F) * rho 95413)

def relationRow6918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95414) * ((1 : F) + (1 : F) * rho 95413) = ((1 : F) * rho 95411 + (1 : F) * rho 95412)

def relationRow6919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95415) * ((1 : F) + (-1 : F) * rho 95413) = ((1 : F) * rho 95410 + (-1 : F) * rho 95411 + (-1 : F) * rho 95412)

def relationLc3094 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 96⟩], residual := [((1 : F), 95414)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94013) * (relationLc3094 rho) = ((1 : F) * rho 95416)

def relationLc3095 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 96⟩], residual := [((1 : F), 95415)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94013) * (relationLc3095 rho) = ((1 : F) * rho 95417)

def relationRow6922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95408) * ((1 : F) * rho 95409) = ((1 : F) * rho 95418)

def relationRow6923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95408) * ((1 : F) * rho 95408) = ((1 : F) * rho 95419)

def relationRow6924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95409) * ((1 : F) * rho 95409) = ((1 : F) * rho 95420)

def relationRow6925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95421) * ((-1 : F) * rho 95419 + (1 : F) * rho 95420) = ((2 : F) * rho 95418)

def relationRow6926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95422) * ((2 : F) + (1 : F) * rho 95419 + (-1 : F) * rho 95420) = ((1 : F) * rho 95419 + (1 : F) * rho 95420)

def relationLc3096 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 97⟩, ⟨(1 : F), 94169, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95421 + (1 : F) * rho 95422) * (relationLc3096 rho) = ((1 : F) * rho 95423)

def relationLc3097 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95422) * (relationLc3097 rho) = ((1 : F) * rho 95424)

def relationLc3098 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 97⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95421) * (relationLc3098 rho) = ((1 : F) * rho 95425)

def relationRow6930 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95424) * ((1 : F) * rho 95425) = ((1 : F) * rho 95426)

def relationRow6931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95427) * ((1 : F) + (1 : F) * rho 95426) = ((1 : F) * rho 95424 + (1 : F) * rho 95425)

def relationRow6932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95428) * ((1 : F) + (-1 : F) * rho 95426) = ((1 : F) * rho 95423 + (-1 : F) * rho 95424 + (-1 : F) * rho 95425)

def relationLc3099 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 97⟩], residual := [((1 : F), 95427)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94014) * (relationLc3099 rho) = ((1 : F) * rho 95429)

def relationLc3100 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 97⟩], residual := [((1 : F), 95428)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94014) * (relationLc3100 rho) = ((1 : F) * rho 95430)

def relationRow6935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95421) * ((1 : F) * rho 95422) = ((1 : F) * rho 95431)

def relationRow6936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95421) * ((1 : F) * rho 95421) = ((1 : F) * rho 95432)

def relationRow6937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95422) * ((1 : F) * rho 95422) = ((1 : F) * rho 95433)

def relationRow6938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95434) * ((-1 : F) * rho 95432 + (1 : F) * rho 95433) = ((2 : F) * rho 95431)

def relationRow6939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95435) * ((2 : F) + (1 : F) * rho 95432 + (-1 : F) * rho 95433) = ((1 : F) * rho 95432 + (1 : F) * rho 95433)

def relationLc3101 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 98⟩, ⟨(1 : F), 94169, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95434 + (1 : F) * rho 95435) * (relationLc3101 rho) = ((1 : F) * rho 95436)

def relationLc3102 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95435) * (relationLc3102 rho) = ((1 : F) * rho 95437)

def relationLc3103 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 98⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95434) * (relationLc3103 rho) = ((1 : F) * rho 95438)

def relationRow6943 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95437) * ((1 : F) * rho 95438) = ((1 : F) * rho 95439)

def relationRow6944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95440) * ((1 : F) + (1 : F) * rho 95439) = ((1 : F) * rho 95437 + (1 : F) * rho 95438)

def relationRow6945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95441) * ((1 : F) + (-1 : F) * rho 95439) = ((1 : F) * rho 95436 + (-1 : F) * rho 95437 + (-1 : F) * rho 95438)

def relationLc3104 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 98⟩], residual := [((1 : F), 95440)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94015) * (relationLc3104 rho) = ((1 : F) * rho 95442)

def relationLc3105 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 98⟩], residual := [((1 : F), 95441)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94015) * (relationLc3105 rho) = ((1 : F) * rho 95443)

def relationRow6948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95434) * ((1 : F) * rho 95435) = ((1 : F) * rho 95444)

def relationRow6949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95434) * ((1 : F) * rho 95434) = ((1 : F) * rho 95445)

def relationRow6950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95435) * ((1 : F) * rho 95435) = ((1 : F) * rho 95446)

def relationRow6951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95447) * ((-1 : F) * rho 95445 + (1 : F) * rho 95446) = ((2 : F) * rho 95444)

def relationRow6952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95448) * ((2 : F) + (1 : F) * rho 95445 + (-1 : F) * rho 95446) = ((1 : F) * rho 95445 + (1 : F) * rho 95446)

def relationLc3106 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 99⟩, ⟨(1 : F), 94169, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95447 + (1 : F) * rho 95448) * (relationLc3106 rho) = ((1 : F) * rho 95449)

def relationLc3107 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95448) * (relationLc3107 rho) = ((1 : F) * rho 95450)

def relationLc3108 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 99⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95447) * (relationLc3108 rho) = ((1 : F) * rho 95451)

def relationRow6956 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95450) * ((1 : F) * rho 95451) = ((1 : F) * rho 95452)

def relationRow6957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95453) * ((1 : F) + (1 : F) * rho 95452) = ((1 : F) * rho 95450 + (1 : F) * rho 95451)

def relationRow6958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95454) * ((1 : F) + (-1 : F) * rho 95452) = ((1 : F) * rho 95449 + (-1 : F) * rho 95450 + (-1 : F) * rho 95451)

def relationLc3109 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 99⟩], residual := [((1 : F), 95453)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94016) * (relationLc3109 rho) = ((1 : F) * rho 95455)

def relationLc3110 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 99⟩], residual := [((1 : F), 95454)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94016) * (relationLc3110 rho) = ((1 : F) * rho 95456)

def relationRow6961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95447) * ((1 : F) * rho 95448) = ((1 : F) * rho 95457)

def relationRow6962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95447) * ((1 : F) * rho 95447) = ((1 : F) * rho 95458)

def relationRow6963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95448) * ((1 : F) * rho 95448) = ((1 : F) * rho 95459)

def relationRow6964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95460) * ((-1 : F) * rho 95458 + (1 : F) * rho 95459) = ((2 : F) * rho 95457)

def relationRow6965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95461) * ((2 : F) + (1 : F) * rho 95458 + (-1 : F) * rho 95459) = ((1 : F) * rho 95458 + (1 : F) * rho 95459)

def relationLc3111 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 100⟩, ⟨(1 : F), 94169, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95460 + (1 : F) * rho 95461) * (relationLc3111 rho) = ((1 : F) * rho 95462)

def relationLc3112 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95461) * (relationLc3112 rho) = ((1 : F) * rho 95463)

def relationLc3113 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 100⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95460) * (relationLc3113 rho) = ((1 : F) * rho 95464)

def relationRow6969 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95463) * ((1 : F) * rho 95464) = ((1 : F) * rho 95465)

def relationRow6970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95466) * ((1 : F) + (1 : F) * rho 95465) = ((1 : F) * rho 95463 + (1 : F) * rho 95464)

def relationRow6971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95467) * ((1 : F) + (-1 : F) * rho 95465) = ((1 : F) * rho 95462 + (-1 : F) * rho 95463 + (-1 : F) * rho 95464)

def relationLc3114 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 100⟩], residual := [((1 : F), 95466)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94017) * (relationLc3114 rho) = ((1 : F) * rho 95468)

def relationLc3115 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 100⟩], residual := [((1 : F), 95467)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94017) * (relationLc3115 rho) = ((1 : F) * rho 95469)

def relationRow6974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95460) * ((1 : F) * rho 95461) = ((1 : F) * rho 95470)

def relationRow6975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95460) * ((1 : F) * rho 95460) = ((1 : F) * rho 95471)

def relationRow6976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95461) * ((1 : F) * rho 95461) = ((1 : F) * rho 95472)

def relationRow6977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95473) * ((-1 : F) * rho 95471 + (1 : F) * rho 95472) = ((2 : F) * rho 95470)

def relationRow6978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95474) * ((2 : F) + (1 : F) * rho 95471 + (-1 : F) * rho 95472) = ((1 : F) * rho 95471 + (1 : F) * rho 95472)

def relationLc3116 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 101⟩, ⟨(1 : F), 94169, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95473 + (1 : F) * rho 95474) * (relationLc3116 rho) = ((1 : F) * rho 95475)

def relationLc3117 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95474) * (relationLc3117 rho) = ((1 : F) * rho 95476)

def relationLc3118 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 101⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95473) * (relationLc3118 rho) = ((1 : F) * rho 95477)

def relationRow6982 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95476) * ((1 : F) * rho 95477) = ((1 : F) * rho 95478)

def relationRow6983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95479) * ((1 : F) + (1 : F) * rho 95478) = ((1 : F) * rho 95476 + (1 : F) * rho 95477)

def relationRow6984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95480) * ((1 : F) + (-1 : F) * rho 95478) = ((1 : F) * rho 95475 + (-1 : F) * rho 95476 + (-1 : F) * rho 95477)

def relationLc3119 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 101⟩], residual := [((1 : F), 95479)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94018) * (relationLc3119 rho) = ((1 : F) * rho 95481)

def relationLc3120 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 101⟩], residual := [((1 : F), 95480)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94018) * (relationLc3120 rho) = ((1 : F) * rho 95482)

def relationRow6987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95473) * ((1 : F) * rho 95474) = ((1 : F) * rho 95483)

def relationRow6988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95473) * ((1 : F) * rho 95473) = ((1 : F) * rho 95484)

def relationRow6989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95474) * ((1 : F) * rho 95474) = ((1 : F) * rho 95485)

def relationRow6990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95486) * ((-1 : F) * rho 95484 + (1 : F) * rho 95485) = ((2 : F) * rho 95483)

def relationRow6991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95487) * ((2 : F) + (1 : F) * rho 95484 + (-1 : F) * rho 95485) = ((1 : F) * rho 95484 + (1 : F) * rho 95485)

def relationLc3121 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 102⟩, ⟨(1 : F), 94169, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95486 + (1 : F) * rho 95487) * (relationLc3121 rho) = ((1 : F) * rho 95488)

def relationLc3122 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95487) * (relationLc3122 rho) = ((1 : F) * rho 95489)

def relationLc3123 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 102⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95486) * (relationLc3123 rho) = ((1 : F) * rho 95490)

def relationRow6995 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95489) * ((1 : F) * rho 95490) = ((1 : F) * rho 95491)

def relationRow6996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95492) * ((1 : F) + (1 : F) * rho 95491) = ((1 : F) * rho 95489 + (1 : F) * rho 95490)

def relationRow6997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95493) * ((1 : F) + (-1 : F) * rho 95491) = ((1 : F) * rho 95488 + (-1 : F) * rho 95489 + (-1 : F) * rho 95490)

def relationLc3124 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 102⟩], residual := [((1 : F), 95492)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94019) * (relationLc3124 rho) = ((1 : F) * rho 95494)

def relationLc3125 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 102⟩], residual := [((1 : F), 95493)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow6999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94019) * (relationLc3125 rho) = ((1 : F) * rho 95495)

def relationRow7000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95486) * ((1 : F) * rho 95487) = ((1 : F) * rho 95496)

def relationRow7001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95486) * ((1 : F) * rho 95486) = ((1 : F) * rho 95497)

def relationRow7002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95487) * ((1 : F) * rho 95487) = ((1 : F) * rho 95498)

def relationRow7003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95499) * ((-1 : F) * rho 95497 + (1 : F) * rho 95498) = ((2 : F) * rho 95496)

def relationRow7004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95500) * ((2 : F) + (1 : F) * rho 95497 + (-1 : F) * rho 95498) = ((1 : F) * rho 95497 + (1 : F) * rho 95498)

def relationLc3126 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 103⟩, ⟨(1 : F), 94169, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95499 + (1 : F) * rho 95500) * (relationLc3126 rho) = ((1 : F) * rho 95501)

def relationLc3127 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95500) * (relationLc3127 rho) = ((1 : F) * rho 95502)

def relationLc3128 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 103⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95499) * (relationLc3128 rho) = ((1 : F) * rho 95503)

def relationRow7008 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95502) * ((1 : F) * rho 95503) = ((1 : F) * rho 95504)

def relationRow7009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95505) * ((1 : F) + (1 : F) * rho 95504) = ((1 : F) * rho 95502 + (1 : F) * rho 95503)

def relationRow7010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95506) * ((1 : F) + (-1 : F) * rho 95504) = ((1 : F) * rho 95501 + (-1 : F) * rho 95502 + (-1 : F) * rho 95503)

def relationLc3129 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 103⟩], residual := [((1 : F), 95505)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94020) * (relationLc3129 rho) = ((1 : F) * rho 95507)

def relationLc3130 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 103⟩], residual := [((1 : F), 95506)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94020) * (relationLc3130 rho) = ((1 : F) * rho 95508)

def relationRow7013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95499) * ((1 : F) * rho 95500) = ((1 : F) * rho 95509)

def relationRow7014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95499) * ((1 : F) * rho 95499) = ((1 : F) * rho 95510)

def relationRow7015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95500) * ((1 : F) * rho 95500) = ((1 : F) * rho 95511)

def relationRow7016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95512) * ((-1 : F) * rho 95510 + (1 : F) * rho 95511) = ((2 : F) * rho 95509)

def relationRow7017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95513) * ((2 : F) + (1 : F) * rho 95510 + (-1 : F) * rho 95511) = ((1 : F) * rho 95510 + (1 : F) * rho 95511)

def relationLc3131 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 104⟩, ⟨(1 : F), 94169, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95512 + (1 : F) * rho 95513) * (relationLc3131 rho) = ((1 : F) * rho 95514)

def relationLc3132 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95513) * (relationLc3132 rho) = ((1 : F) * rho 95515)

def relationLc3133 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 104⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95512) * (relationLc3133 rho) = ((1 : F) * rho 95516)

def relationRow7021 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95515) * ((1 : F) * rho 95516) = ((1 : F) * rho 95517)

def relationRow7022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95518) * ((1 : F) + (1 : F) * rho 95517) = ((1 : F) * rho 95515 + (1 : F) * rho 95516)

def relationRow7023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95519) * ((1 : F) + (-1 : F) * rho 95517) = ((1 : F) * rho 95514 + (-1 : F) * rho 95515 + (-1 : F) * rho 95516)

def relationLc3134 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 104⟩], residual := [((1 : F), 95518)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94021) * (relationLc3134 rho) = ((1 : F) * rho 95520)

def relationLc3135 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 104⟩], residual := [((1 : F), 95519)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94021) * (relationLc3135 rho) = ((1 : F) * rho 95521)

def relationRow7026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95512) * ((1 : F) * rho 95513) = ((1 : F) * rho 95522)

def relationRow7027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95512) * ((1 : F) * rho 95512) = ((1 : F) * rho 95523)

def relationRow7028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95513) * ((1 : F) * rho 95513) = ((1 : F) * rho 95524)

def relationRow7029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95525) * ((-1 : F) * rho 95523 + (1 : F) * rho 95524) = ((2 : F) * rho 95522)

def relationRow7030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95526) * ((2 : F) + (1 : F) * rho 95523 + (-1 : F) * rho 95524) = ((1 : F) * rho 95523 + (1 : F) * rho 95524)

def relationLc3136 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 105⟩, ⟨(1 : F), 94169, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95525 + (1 : F) * rho 95526) * (relationLc3136 rho) = ((1 : F) * rho 95527)

def relationLc3137 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95526) * (relationLc3137 rho) = ((1 : F) * rho 95528)

def relationLc3138 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 105⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95525) * (relationLc3138 rho) = ((1 : F) * rho 95529)

def relationRow7034 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95528) * ((1 : F) * rho 95529) = ((1 : F) * rho 95530)

def relationRow7035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95531) * ((1 : F) + (1 : F) * rho 95530) = ((1 : F) * rho 95528 + (1 : F) * rho 95529)

def relationRow7036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95532) * ((1 : F) + (-1 : F) * rho 95530) = ((1 : F) * rho 95527 + (-1 : F) * rho 95528 + (-1 : F) * rho 95529)

def relationLc3139 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 105⟩], residual := [((1 : F), 95531)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94022) * (relationLc3139 rho) = ((1 : F) * rho 95533)

def relationLc3140 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 105⟩], residual := [((1 : F), 95532)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94022) * (relationLc3140 rho) = ((1 : F) * rho 95534)

def relationRow7039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95525) * ((1 : F) * rho 95526) = ((1 : F) * rho 95535)

def relationRow7040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95525) * ((1 : F) * rho 95525) = ((1 : F) * rho 95536)

def relationRow7041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95526) * ((1 : F) * rho 95526) = ((1 : F) * rho 95537)

def relationRow7042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95538) * ((-1 : F) * rho 95536 + (1 : F) * rho 95537) = ((2 : F) * rho 95535)

def relationRow7043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95539) * ((2 : F) + (1 : F) * rho 95536 + (-1 : F) * rho 95537) = ((1 : F) * rho 95536 + (1 : F) * rho 95537)

def relationLc3141 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 106⟩, ⟨(1 : F), 94169, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95538 + (1 : F) * rho 95539) * (relationLc3141 rho) = ((1 : F) * rho 95540)

def relationLc3142 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95539) * (relationLc3142 rho) = ((1 : F) * rho 95541)

def relationLc3143 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 106⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95538) * (relationLc3143 rho) = ((1 : F) * rho 95542)

def relationRow7047 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95541) * ((1 : F) * rho 95542) = ((1 : F) * rho 95543)

def relationRow7048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95544) * ((1 : F) + (1 : F) * rho 95543) = ((1 : F) * rho 95541 + (1 : F) * rho 95542)

def relationRow7049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95545) * ((1 : F) + (-1 : F) * rho 95543) = ((1 : F) * rho 95540 + (-1 : F) * rho 95541 + (-1 : F) * rho 95542)

def relationLc3144 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 106⟩], residual := [((1 : F), 95544)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94023) * (relationLc3144 rho) = ((1 : F) * rho 95546)

def relationLc3145 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 106⟩], residual := [((1 : F), 95545)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94023) * (relationLc3145 rho) = ((1 : F) * rho 95547)

def relationRow7052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95538) * ((1 : F) * rho 95539) = ((1 : F) * rho 95548)

def relationRow7053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95538) * ((1 : F) * rho 95538) = ((1 : F) * rho 95549)

def relationRow7054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95539) * ((1 : F) * rho 95539) = ((1 : F) * rho 95550)

def relationRow7055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95551) * ((-1 : F) * rho 95549 + (1 : F) * rho 95550) = ((2 : F) * rho 95548)

def relationRow7056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95552) * ((2 : F) + (1 : F) * rho 95549 + (-1 : F) * rho 95550) = ((1 : F) * rho 95549 + (1 : F) * rho 95550)

def relationLc3146 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 107⟩, ⟨(1 : F), 94169, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95551 + (1 : F) * rho 95552) * (relationLc3146 rho) = ((1 : F) * rho 95553)

def relationLc3147 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95552) * (relationLc3147 rho) = ((1 : F) * rho 95554)

def relationLc3148 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 107⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95551) * (relationLc3148 rho) = ((1 : F) * rho 95555)

def relationRow7060 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95554) * ((1 : F) * rho 95555) = ((1 : F) * rho 95556)

def relationRow7061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95557) * ((1 : F) + (1 : F) * rho 95556) = ((1 : F) * rho 95554 + (1 : F) * rho 95555)

def relationRow7062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95558) * ((1 : F) + (-1 : F) * rho 95556) = ((1 : F) * rho 95553 + (-1 : F) * rho 95554 + (-1 : F) * rho 95555)

def relationLc3149 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 107⟩], residual := [((1 : F), 95557)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94024) * (relationLc3149 rho) = ((1 : F) * rho 95559)

def relationLc3150 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 107⟩], residual := [((1 : F), 95558)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94024) * (relationLc3150 rho) = ((1 : F) * rho 95560)

def relationRow7065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95551) * ((1 : F) * rho 95552) = ((1 : F) * rho 95561)

def relationRow7066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95551) * ((1 : F) * rho 95551) = ((1 : F) * rho 95562)

def relationRow7067 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95552) * ((1 : F) * rho 95552) = ((1 : F) * rho 95563)

def relationRow7068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95564) * ((-1 : F) * rho 95562 + (1 : F) * rho 95563) = ((2 : F) * rho 95561)

def relationRow7069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95565) * ((2 : F) + (1 : F) * rho 95562 + (-1 : F) * rho 95563) = ((1 : F) * rho 95562 + (1 : F) * rho 95563)

def relationLc3151 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 108⟩, ⟨(1 : F), 94169, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95564 + (1 : F) * rho 95565) * (relationLc3151 rho) = ((1 : F) * rho 95566)

def relationLc3152 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95565) * (relationLc3152 rho) = ((1 : F) * rho 95567)

def relationLc3153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 108⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95564) * (relationLc3153 rho) = ((1 : F) * rho 95568)

def relationRow7073 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95567) * ((1 : F) * rho 95568) = ((1 : F) * rho 95569)

def relationRow7074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95570) * ((1 : F) + (1 : F) * rho 95569) = ((1 : F) * rho 95567 + (1 : F) * rho 95568)

def relationRow7075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95571) * ((1 : F) + (-1 : F) * rho 95569) = ((1 : F) * rho 95566 + (-1 : F) * rho 95567 + (-1 : F) * rho 95568)

def relationLc3154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 108⟩], residual := [((1 : F), 95570)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94025) * (relationLc3154 rho) = ((1 : F) * rho 95572)

def relationLc3155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 108⟩], residual := [((1 : F), 95571)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94025) * (relationLc3155 rho) = ((1 : F) * rho 95573)

def relationRow7078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95564) * ((1 : F) * rho 95565) = ((1 : F) * rho 95574)

def relationRow7079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95564) * ((1 : F) * rho 95564) = ((1 : F) * rho 95575)

def relationRow7080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95565) * ((1 : F) * rho 95565) = ((1 : F) * rho 95576)

def relationRow7081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95577) * ((-1 : F) * rho 95575 + (1 : F) * rho 95576) = ((2 : F) * rho 95574)

def relationRow7082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95578) * ((2 : F) + (1 : F) * rho 95575 + (-1 : F) * rho 95576) = ((1 : F) * rho 95575 + (1 : F) * rho 95576)

def relationLc3156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 109⟩, ⟨(1 : F), 94169, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95577 + (1 : F) * rho 95578) * (relationLc3156 rho) = ((1 : F) * rho 95579)

def relationLc3157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95578) * (relationLc3157 rho) = ((1 : F) * rho 95580)

def relationLc3158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 109⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95577) * (relationLc3158 rho) = ((1 : F) * rho 95581)

def relationRow7086 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95580) * ((1 : F) * rho 95581) = ((1 : F) * rho 95582)

def relationRow7087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95583) * ((1 : F) + (1 : F) * rho 95582) = ((1 : F) * rho 95580 + (1 : F) * rho 95581)

def relationRow7088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95584) * ((1 : F) + (-1 : F) * rho 95582) = ((1 : F) * rho 95579 + (-1 : F) * rho 95580 + (-1 : F) * rho 95581)

def relationLc3159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 109⟩], residual := [((1 : F), 95583)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94026) * (relationLc3159 rho) = ((1 : F) * rho 95585)

def relationLc3160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 109⟩], residual := [((1 : F), 95584)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94026) * (relationLc3160 rho) = ((1 : F) * rho 95586)

def relationRow7091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95577) * ((1 : F) * rho 95578) = ((1 : F) * rho 95587)

def relationRow7092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95577) * ((1 : F) * rho 95577) = ((1 : F) * rho 95588)

def relationRow7093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95578) * ((1 : F) * rho 95578) = ((1 : F) * rho 95589)

def relationRow7094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95590) * ((-1 : F) * rho 95588 + (1 : F) * rho 95589) = ((2 : F) * rho 95587)

def relationRow7095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95591) * ((2 : F) + (1 : F) * rho 95588 + (-1 : F) * rho 95589) = ((1 : F) * rho 95588 + (1 : F) * rho 95589)

def relationLc3161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 110⟩, ⟨(1 : F), 94169, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95590 + (1 : F) * rho 95591) * (relationLc3161 rho) = ((1 : F) * rho 95592)

def relationLc3162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95591) * (relationLc3162 rho) = ((1 : F) * rho 95593)

def relationLc3163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 110⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95590) * (relationLc3163 rho) = ((1 : F) * rho 95594)

def relationRow7099 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95593) * ((1 : F) * rho 95594) = ((1 : F) * rho 95595)

def relationRow7100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95596) * ((1 : F) + (1 : F) * rho 95595) = ((1 : F) * rho 95593 + (1 : F) * rho 95594)

def relationRow7101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95597) * ((1 : F) + (-1 : F) * rho 95595) = ((1 : F) * rho 95592 + (-1 : F) * rho 95593 + (-1 : F) * rho 95594)

def relationLc3164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 110⟩], residual := [((1 : F), 95596)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94027) * (relationLc3164 rho) = ((1 : F) * rho 95598)

def relationLc3165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 110⟩], residual := [((1 : F), 95597)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94027) * (relationLc3165 rho) = ((1 : F) * rho 95599)

def relationRow7104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95590) * ((1 : F) * rho 95591) = ((1 : F) * rho 95600)

def relationRow7105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95590) * ((1 : F) * rho 95590) = ((1 : F) * rho 95601)

def relationRow7106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95591) * ((1 : F) * rho 95591) = ((1 : F) * rho 95602)

def relationRow7107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95603) * ((-1 : F) * rho 95601 + (1 : F) * rho 95602) = ((2 : F) * rho 95600)

def relationRow7108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95604) * ((2 : F) + (1 : F) * rho 95601 + (-1 : F) * rho 95602) = ((1 : F) * rho 95601 + (1 : F) * rho 95602)

def relationLc3166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 111⟩, ⟨(1 : F), 94169, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95603 + (1 : F) * rho 95604) * (relationLc3166 rho) = ((1 : F) * rho 95605)

def relationLc3167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95604) * (relationLc3167 rho) = ((1 : F) * rho 95606)

def relationLc3168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 111⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95603) * (relationLc3168 rho) = ((1 : F) * rho 95607)

def relationRow7112 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95606) * ((1 : F) * rho 95607) = ((1 : F) * rho 95608)

def relationRow7113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95609) * ((1 : F) + (1 : F) * rho 95608) = ((1 : F) * rho 95606 + (1 : F) * rho 95607)

def relationRow7114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95610) * ((1 : F) + (-1 : F) * rho 95608) = ((1 : F) * rho 95605 + (-1 : F) * rho 95606 + (-1 : F) * rho 95607)

def relationLc3169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 111⟩], residual := [((1 : F), 95609)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94028) * (relationLc3169 rho) = ((1 : F) * rho 95611)

def relationLc3170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 111⟩], residual := [((1 : F), 95610)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94028) * (relationLc3170 rho) = ((1 : F) * rho 95612)

def relationRow7117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95603) * ((1 : F) * rho 95604) = ((1 : F) * rho 95613)

def relationRow7118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95603) * ((1 : F) * rho 95603) = ((1 : F) * rho 95614)

def relationRow7119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95604) * ((1 : F) * rho 95604) = ((1 : F) * rho 95615)

def relationRow7120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95616) * ((-1 : F) * rho 95614 + (1 : F) * rho 95615) = ((2 : F) * rho 95613)

def relationRow7121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95617) * ((2 : F) + (1 : F) * rho 95614 + (-1 : F) * rho 95615) = ((1 : F) * rho 95614 + (1 : F) * rho 95615)

def relationLc3171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 112⟩, ⟨(1 : F), 94169, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95616 + (1 : F) * rho 95617) * (relationLc3171 rho) = ((1 : F) * rho 95618)

def relationLc3172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95617) * (relationLc3172 rho) = ((1 : F) * rho 95619)

def relationLc3173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 112⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95616) * (relationLc3173 rho) = ((1 : F) * rho 95620)

def relationRow7125 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95619) * ((1 : F) * rho 95620) = ((1 : F) * rho 95621)

def relationRow7126 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95622) * ((1 : F) + (1 : F) * rho 95621) = ((1 : F) * rho 95619 + (1 : F) * rho 95620)

def relationRow7127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95623) * ((1 : F) + (-1 : F) * rho 95621) = ((1 : F) * rho 95618 + (-1 : F) * rho 95619 + (-1 : F) * rho 95620)

def relationLc3174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 112⟩], residual := [((1 : F), 95622)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94029) * (relationLc3174 rho) = ((1 : F) * rho 95624)

def relationLc3175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 112⟩], residual := [((1 : F), 95623)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94029) * (relationLc3175 rho) = ((1 : F) * rho 95625)

def relationRow7130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95616) * ((1 : F) * rho 95617) = ((1 : F) * rho 95626)

def relationRow7131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95616) * ((1 : F) * rho 95616) = ((1 : F) * rho 95627)

def relationRow7132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95617) * ((1 : F) * rho 95617) = ((1 : F) * rho 95628)

def relationRow7133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95629) * ((-1 : F) * rho 95627 + (1 : F) * rho 95628) = ((2 : F) * rho 95626)

def relationRow7134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95630) * ((2 : F) + (1 : F) * rho 95627 + (-1 : F) * rho 95628) = ((1 : F) * rho 95627 + (1 : F) * rho 95628)

def relationLc3176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 113⟩, ⟨(1 : F), 94169, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95629 + (1 : F) * rho 95630) * (relationLc3176 rho) = ((1 : F) * rho 95631)

def relationLc3177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95630) * (relationLc3177 rho) = ((1 : F) * rho 95632)

def relationLc3178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 113⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95629) * (relationLc3178 rho) = ((1 : F) * rho 95633)

def relationRow7138 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95632) * ((1 : F) * rho 95633) = ((1 : F) * rho 95634)

def relationRow7139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95635) * ((1 : F) + (1 : F) * rho 95634) = ((1 : F) * rho 95632 + (1 : F) * rho 95633)

def relationRow7140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95636) * ((1 : F) + (-1 : F) * rho 95634) = ((1 : F) * rho 95631 + (-1 : F) * rho 95632 + (-1 : F) * rho 95633)

def relationLc3179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 113⟩], residual := [((1 : F), 95635)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94030) * (relationLc3179 rho) = ((1 : F) * rho 95637)

def relationLc3180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 113⟩], residual := [((1 : F), 95636)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94030) * (relationLc3180 rho) = ((1 : F) * rho 95638)

def relationRow7143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95629) * ((1 : F) * rho 95630) = ((1 : F) * rho 95639)

def relationRow7144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95629) * ((1 : F) * rho 95629) = ((1 : F) * rho 95640)

def relationRow7145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95630) * ((1 : F) * rho 95630) = ((1 : F) * rho 95641)

def relationRow7146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95642) * ((-1 : F) * rho 95640 + (1 : F) * rho 95641) = ((2 : F) * rho 95639)

def relationRow7147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95643) * ((2 : F) + (1 : F) * rho 95640 + (-1 : F) * rho 95641) = ((1 : F) * rho 95640 + (1 : F) * rho 95641)

def relationLc3181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 114⟩, ⟨(1 : F), 94169, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95642 + (1 : F) * rho 95643) * (relationLc3181 rho) = ((1 : F) * rho 95644)

def relationLc3182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95643) * (relationLc3182 rho) = ((1 : F) * rho 95645)

def relationLc3183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 114⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95642) * (relationLc3183 rho) = ((1 : F) * rho 95646)

def relationRow7151 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95645) * ((1 : F) * rho 95646) = ((1 : F) * rho 95647)

def relationRow7152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95648) * ((1 : F) + (1 : F) * rho 95647) = ((1 : F) * rho 95645 + (1 : F) * rho 95646)

def relationRow7153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95649) * ((1 : F) + (-1 : F) * rho 95647) = ((1 : F) * rho 95644 + (-1 : F) * rho 95645 + (-1 : F) * rho 95646)

def relationLc3184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 114⟩], residual := [((1 : F), 95648)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94031) * (relationLc3184 rho) = ((1 : F) * rho 95650)

def relationLc3185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 114⟩], residual := [((1 : F), 95649)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94031) * (relationLc3185 rho) = ((1 : F) * rho 95651)

def relationRow7156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95642) * ((1 : F) * rho 95643) = ((1 : F) * rho 95652)

def relationRow7157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95642) * ((1 : F) * rho 95642) = ((1 : F) * rho 95653)

def relationRow7158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95643) * ((1 : F) * rho 95643) = ((1 : F) * rho 95654)

def relationRow7159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95655) * ((-1 : F) * rho 95653 + (1 : F) * rho 95654) = ((2 : F) * rho 95652)

def relationRow7160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95656) * ((2 : F) + (1 : F) * rho 95653 + (-1 : F) * rho 95654) = ((1 : F) * rho 95653 + (1 : F) * rho 95654)

def relationLc3186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 115⟩, ⟨(1 : F), 94169, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95655 + (1 : F) * rho 95656) * (relationLc3186 rho) = ((1 : F) * rho 95657)

def relationLc3187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95656) * (relationLc3187 rho) = ((1 : F) * rho 95658)

def relationLc3188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 115⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95655) * (relationLc3188 rho) = ((1 : F) * rho 95659)

def relationRow7164 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95658) * ((1 : F) * rho 95659) = ((1 : F) * rho 95660)

def relationRow7165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95661) * ((1 : F) + (1 : F) * rho 95660) = ((1 : F) * rho 95658 + (1 : F) * rho 95659)

def relationRow7166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95662) * ((1 : F) + (-1 : F) * rho 95660) = ((1 : F) * rho 95657 + (-1 : F) * rho 95658 + (-1 : F) * rho 95659)

def relationLc3189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 115⟩], residual := [((1 : F), 95661)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94032) * (relationLc3189 rho) = ((1 : F) * rho 95663)

def relationLc3190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 115⟩], residual := [((1 : F), 95662)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94032) * (relationLc3190 rho) = ((1 : F) * rho 95664)

def relationRow7169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95655) * ((1 : F) * rho 95656) = ((1 : F) * rho 95665)

def relationRow7170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95655) * ((1 : F) * rho 95655) = ((1 : F) * rho 95666)

def relationRow7171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95656) * ((1 : F) * rho 95656) = ((1 : F) * rho 95667)

def relationRow7172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95668) * ((-1 : F) * rho 95666 + (1 : F) * rho 95667) = ((2 : F) * rho 95665)

def relationRow7173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95669) * ((2 : F) + (1 : F) * rho 95666 + (-1 : F) * rho 95667) = ((1 : F) * rho 95666 + (1 : F) * rho 95667)

def relationLc3191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 116⟩, ⟨(1 : F), 94169, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95668 + (1 : F) * rho 95669) * (relationLc3191 rho) = ((1 : F) * rho 95670)

def relationLc3192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95669) * (relationLc3192 rho) = ((1 : F) * rho 95671)

def relationLc3193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 116⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95668) * (relationLc3193 rho) = ((1 : F) * rho 95672)

def relationRow7177 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95671) * ((1 : F) * rho 95672) = ((1 : F) * rho 95673)

def relationRow7178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95674) * ((1 : F) + (1 : F) * rho 95673) = ((1 : F) * rho 95671 + (1 : F) * rho 95672)

def relationRow7179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95675) * ((1 : F) + (-1 : F) * rho 95673) = ((1 : F) * rho 95670 + (-1 : F) * rho 95671 + (-1 : F) * rho 95672)

def relationLc3194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 116⟩], residual := [((1 : F), 95674)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94033) * (relationLc3194 rho) = ((1 : F) * rho 95676)

def relationLc3195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 116⟩], residual := [((1 : F), 95675)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94033) * (relationLc3195 rho) = ((1 : F) * rho 95677)

def relationRow7182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95668) * ((1 : F) * rho 95669) = ((1 : F) * rho 95678)

def relationRow7183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95668) * ((1 : F) * rho 95668) = ((1 : F) * rho 95679)

def relationRow7184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95669) * ((1 : F) * rho 95669) = ((1 : F) * rho 95680)

def relationRow7185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95681) * ((-1 : F) * rho 95679 + (1 : F) * rho 95680) = ((2 : F) * rho 95678)

def relationRow7186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95682) * ((2 : F) + (1 : F) * rho 95679 + (-1 : F) * rho 95680) = ((1 : F) * rho 95679 + (1 : F) * rho 95680)

def relationLc3196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 117⟩, ⟨(1 : F), 94169, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95681 + (1 : F) * rho 95682) * (relationLc3196 rho) = ((1 : F) * rho 95683)

def relationLc3197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95682) * (relationLc3197 rho) = ((1 : F) * rho 95684)

def relationLc3198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 117⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95681) * (relationLc3198 rho) = ((1 : F) * rho 95685)

def relationRow7190 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95684) * ((1 : F) * rho 95685) = ((1 : F) * rho 95686)

def relationRow7191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95687) * ((1 : F) + (1 : F) * rho 95686) = ((1 : F) * rho 95684 + (1 : F) * rho 95685)

def relationRow7192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95688) * ((1 : F) + (-1 : F) * rho 95686) = ((1 : F) * rho 95683 + (-1 : F) * rho 95684 + (-1 : F) * rho 95685)

def relationLc3199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 117⟩], residual := [((1 : F), 95687)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94034) * (relationLc3199 rho) = ((1 : F) * rho 95689)

def relationLc3200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 117⟩], residual := [((1 : F), 95688)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94034) * (relationLc3200 rho) = ((1 : F) * rho 95690)

def relationRow7195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95681) * ((1 : F) * rho 95682) = ((1 : F) * rho 95691)

def relationRow7196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95681) * ((1 : F) * rho 95681) = ((1 : F) * rho 95692)

def relationRow7197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95682) * ((1 : F) * rho 95682) = ((1 : F) * rho 95693)

def relationRow7198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95694) * ((-1 : F) * rho 95692 + (1 : F) * rho 95693) = ((2 : F) * rho 95691)

def relationRow7199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95695) * ((2 : F) + (1 : F) * rho 95692 + (-1 : F) * rho 95693) = ((1 : F) * rho 95692 + (1 : F) * rho 95693)

def relationLc3201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 118⟩, ⟨(1 : F), 94169, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95694 + (1 : F) * rho 95695) * (relationLc3201 rho) = ((1 : F) * rho 95696)

def relationLc3202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95695) * (relationLc3202 rho) = ((1 : F) * rho 95697)

def relationLc3203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 118⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95694) * (relationLc3203 rho) = ((1 : F) * rho 95698)

def relationRow7203 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95697) * ((1 : F) * rho 95698) = ((1 : F) * rho 95699)

def relationRow7204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95700) * ((1 : F) + (1 : F) * rho 95699) = ((1 : F) * rho 95697 + (1 : F) * rho 95698)

def relationRow7205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95701) * ((1 : F) + (-1 : F) * rho 95699) = ((1 : F) * rho 95696 + (-1 : F) * rho 95697 + (-1 : F) * rho 95698)

def relationLc3204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 118⟩], residual := [((1 : F), 95700)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94035) * (relationLc3204 rho) = ((1 : F) * rho 95702)

def relationLc3205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 118⟩], residual := [((1 : F), 95701)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94035) * (relationLc3205 rho) = ((1 : F) * rho 95703)

def relationRow7208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95694) * ((1 : F) * rho 95695) = ((1 : F) * rho 95704)

def relationRow7209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95694) * ((1 : F) * rho 95694) = ((1 : F) * rho 95705)

def relationRow7210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95695) * ((1 : F) * rho 95695) = ((1 : F) * rho 95706)

def relationRow7211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95707) * ((-1 : F) * rho 95705 + (1 : F) * rho 95706) = ((2 : F) * rho 95704)

def relationRow7212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95708) * ((2 : F) + (1 : F) * rho 95705 + (-1 : F) * rho 95706) = ((1 : F) * rho 95705 + (1 : F) * rho 95706)

def relationLc3206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 119⟩, ⟨(1 : F), 94169, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95707 + (1 : F) * rho 95708) * (relationLc3206 rho) = ((1 : F) * rho 95709)

def relationLc3207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95708) * (relationLc3207 rho) = ((1 : F) * rho 95710)

def relationLc3208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 119⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95707) * (relationLc3208 rho) = ((1 : F) * rho 95711)

def relationRow7216 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95710) * ((1 : F) * rho 95711) = ((1 : F) * rho 95712)

def relationRow7217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95713) * ((1 : F) + (1 : F) * rho 95712) = ((1 : F) * rho 95710 + (1 : F) * rho 95711)

def relationRow7218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95714) * ((1 : F) + (-1 : F) * rho 95712) = ((1 : F) * rho 95709 + (-1 : F) * rho 95710 + (-1 : F) * rho 95711)

def relationLc3209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 119⟩], residual := [((1 : F), 95713)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94036) * (relationLc3209 rho) = ((1 : F) * rho 95715)

def relationLc3210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 119⟩], residual := [((1 : F), 95714)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94036) * (relationLc3210 rho) = ((1 : F) * rho 95716)

def relationRow7221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95707) * ((1 : F) * rho 95708) = ((1 : F) * rho 95717)

def relationRow7222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95707) * ((1 : F) * rho 95707) = ((1 : F) * rho 95718)

def relationRow7223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95708) * ((1 : F) * rho 95708) = ((1 : F) * rho 95719)

def relationRow7224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95720) * ((-1 : F) * rho 95718 + (1 : F) * rho 95719) = ((2 : F) * rho 95717)

def relationRow7225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95721) * ((2 : F) + (1 : F) * rho 95718 + (-1 : F) * rho 95719) = ((1 : F) * rho 95718 + (1 : F) * rho 95719)

def relationLc3211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 120⟩, ⟨(1 : F), 94169, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95720 + (1 : F) * rho 95721) * (relationLc3211 rho) = ((1 : F) * rho 95722)

def relationLc3212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95721) * (relationLc3212 rho) = ((1 : F) * rho 95723)

def relationLc3213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 120⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95720) * (relationLc3213 rho) = ((1 : F) * rho 95724)

def relationRow7229 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95723) * ((1 : F) * rho 95724) = ((1 : F) * rho 95725)

def relationRow7230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95726) * ((1 : F) + (1 : F) * rho 95725) = ((1 : F) * rho 95723 + (1 : F) * rho 95724)

def relationRow7231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95727) * ((1 : F) + (-1 : F) * rho 95725) = ((1 : F) * rho 95722 + (-1 : F) * rho 95723 + (-1 : F) * rho 95724)

def relationLc3214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 120⟩], residual := [((1 : F), 95726)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94037) * (relationLc3214 rho) = ((1 : F) * rho 95728)

def relationLc3215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 120⟩], residual := [((1 : F), 95727)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94037) * (relationLc3215 rho) = ((1 : F) * rho 95729)

def relationRow7234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95720) * ((1 : F) * rho 95721) = ((1 : F) * rho 95730)

def relationRow7235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95720) * ((1 : F) * rho 95720) = ((1 : F) * rho 95731)

def relationRow7236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95721) * ((1 : F) * rho 95721) = ((1 : F) * rho 95732)

def relationRow7237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95733) * ((-1 : F) * rho 95731 + (1 : F) * rho 95732) = ((2 : F) * rho 95730)

def relationRow7238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95734) * ((2 : F) + (1 : F) * rho 95731 + (-1 : F) * rho 95732) = ((1 : F) * rho 95731 + (1 : F) * rho 95732)

def relationLc3216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 121⟩, ⟨(1 : F), 94169, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95733 + (1 : F) * rho 95734) * (relationLc3216 rho) = ((1 : F) * rho 95735)

def relationLc3217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95734) * (relationLc3217 rho) = ((1 : F) * rho 95736)

def relationLc3218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 121⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95733) * (relationLc3218 rho) = ((1 : F) * rho 95737)

def relationRow7242 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95736) * ((1 : F) * rho 95737) = ((1 : F) * rho 95738)

def relationRow7243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95739) * ((1 : F) + (1 : F) * rho 95738) = ((1 : F) * rho 95736 + (1 : F) * rho 95737)

def relationRow7244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95740) * ((1 : F) + (-1 : F) * rho 95738) = ((1 : F) * rho 95735 + (-1 : F) * rho 95736 + (-1 : F) * rho 95737)

def relationLc3219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 121⟩], residual := [((1 : F), 95739)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94038) * (relationLc3219 rho) = ((1 : F) * rho 95741)

def relationLc3220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 121⟩], residual := [((1 : F), 95740)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94038) * (relationLc3220 rho) = ((1 : F) * rho 95742)

def relationRow7247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95733) * ((1 : F) * rho 95734) = ((1 : F) * rho 95743)

def relationRow7248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95733) * ((1 : F) * rho 95733) = ((1 : F) * rho 95744)

def relationRow7249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95734) * ((1 : F) * rho 95734) = ((1 : F) * rho 95745)

def relationRow7250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95746) * ((-1 : F) * rho 95744 + (1 : F) * rho 95745) = ((2 : F) * rho 95743)

def relationRow7251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95747) * ((2 : F) + (1 : F) * rho 95744 + (-1 : F) * rho 95745) = ((1 : F) * rho 95744 + (1 : F) * rho 95745)

def relationLc3221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 122⟩, ⟨(1 : F), 94169, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95746 + (1 : F) * rho 95747) * (relationLc3221 rho) = ((1 : F) * rho 95748)

def relationLc3222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95747) * (relationLc3222 rho) = ((1 : F) * rho 95749)

def relationLc3223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 122⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95746) * (relationLc3223 rho) = ((1 : F) * rho 95750)

def relationRow7255 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95749) * ((1 : F) * rho 95750) = ((1 : F) * rho 95751)

def relationRow7256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95752) * ((1 : F) + (1 : F) * rho 95751) = ((1 : F) * rho 95749 + (1 : F) * rho 95750)

def relationRow7257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95753) * ((1 : F) + (-1 : F) * rho 95751) = ((1 : F) * rho 95748 + (-1 : F) * rho 95749 + (-1 : F) * rho 95750)

def relationLc3224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 122⟩], residual := [((1 : F), 95752)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94039) * (relationLc3224 rho) = ((1 : F) * rho 95754)

def relationLc3225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 122⟩], residual := [((1 : F), 95753)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94039) * (relationLc3225 rho) = ((1 : F) * rho 95755)

def relationRow7260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95746) * ((1 : F) * rho 95747) = ((1 : F) * rho 95756)

def relationRow7261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95746) * ((1 : F) * rho 95746) = ((1 : F) * rho 95757)

def relationRow7262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95747) * ((1 : F) * rho 95747) = ((1 : F) * rho 95758)

def relationRow7263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95759) * ((-1 : F) * rho 95757 + (1 : F) * rho 95758) = ((2 : F) * rho 95756)

def relationRow7264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95760) * ((2 : F) + (1 : F) * rho 95757 + (-1 : F) * rho 95758) = ((1 : F) * rho 95757 + (1 : F) * rho 95758)

def relationLc3226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 123⟩, ⟨(1 : F), 94169, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95759 + (1 : F) * rho 95760) * (relationLc3226 rho) = ((1 : F) * rho 95761)

def relationLc3227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95760) * (relationLc3227 rho) = ((1 : F) * rho 95762)

def relationLc3228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 123⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95759) * (relationLc3228 rho) = ((1 : F) * rho 95763)

def relationRow7268 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95762) * ((1 : F) * rho 95763) = ((1 : F) * rho 95764)

def relationRow7269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95765) * ((1 : F) + (1 : F) * rho 95764) = ((1 : F) * rho 95762 + (1 : F) * rho 95763)

def relationRow7270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95766) * ((1 : F) + (-1 : F) * rho 95764) = ((1 : F) * rho 95761 + (-1 : F) * rho 95762 + (-1 : F) * rho 95763)

def relationLc3229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 123⟩], residual := [((1 : F), 95765)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94040) * (relationLc3229 rho) = ((1 : F) * rho 95767)

def relationLc3230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 123⟩], residual := [((1 : F), 95766)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94040) * (relationLc3230 rho) = ((1 : F) * rho 95768)

def relationRow7273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95759) * ((1 : F) * rho 95760) = ((1 : F) * rho 95769)

def relationRow7274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95759) * ((1 : F) * rho 95759) = ((1 : F) * rho 95770)

def relationRow7275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95760) * ((1 : F) * rho 95760) = ((1 : F) * rho 95771)

def relationRow7276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95772) * ((-1 : F) * rho 95770 + (1 : F) * rho 95771) = ((2 : F) * rho 95769)

def relationRow7277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95773) * ((2 : F) + (1 : F) * rho 95770 + (-1 : F) * rho 95771) = ((1 : F) * rho 95770 + (1 : F) * rho 95771)

def relationLc3231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 124⟩, ⟨(1 : F), 94169, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95772 + (1 : F) * rho 95773) * (relationLc3231 rho) = ((1 : F) * rho 95774)

def relationLc3232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95773) * (relationLc3232 rho) = ((1 : F) * rho 95775)

def relationLc3233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 124⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95772) * (relationLc3233 rho) = ((1 : F) * rho 95776)

def relationRow7281 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95775) * ((1 : F) * rho 95776) = ((1 : F) * rho 95777)

def relationRow7282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95778) * ((1 : F) + (1 : F) * rho 95777) = ((1 : F) * rho 95775 + (1 : F) * rho 95776)

def relationRow7283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95779) * ((1 : F) + (-1 : F) * rho 95777) = ((1 : F) * rho 95774 + (-1 : F) * rho 95775 + (-1 : F) * rho 95776)

def relationLc3234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 124⟩], residual := [((1 : F), 95778)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94041) * (relationLc3234 rho) = ((1 : F) * rho 95780)

def relationLc3235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 124⟩], residual := [((1 : F), 95779)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94041) * (relationLc3235 rho) = ((1 : F) * rho 95781)

def relationRow7286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95772) * ((1 : F) * rho 95773) = ((1 : F) * rho 95782)

def relationRow7287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95772) * ((1 : F) * rho 95772) = ((1 : F) * rho 95783)

def relationRow7288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95773) * ((1 : F) * rho 95773) = ((1 : F) * rho 95784)

def relationRow7289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95785) * ((-1 : F) * rho 95783 + (1 : F) * rho 95784) = ((2 : F) * rho 95782)

def relationRow7290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95786) * ((2 : F) + (1 : F) * rho 95783 + (-1 : F) * rho 95784) = ((1 : F) * rho 95783 + (1 : F) * rho 95784)

def relationLc3236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 125⟩, ⟨(1 : F), 94169, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95785 + (1 : F) * rho 95786) * (relationLc3236 rho) = ((1 : F) * rho 95787)

def relationLc3237 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95786) * (relationLc3237 rho) = ((1 : F) * rho 95788)

def relationLc3238 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 125⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95785) * (relationLc3238 rho) = ((1 : F) * rho 95789)

def relationRow7294 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95788) * ((1 : F) * rho 95789) = ((1 : F) * rho 95790)

def relationRow7295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95791) * ((1 : F) + (1 : F) * rho 95790) = ((1 : F) * rho 95788 + (1 : F) * rho 95789)

def relationRow7296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95792) * ((1 : F) + (-1 : F) * rho 95790) = ((1 : F) * rho 95787 + (-1 : F) * rho 95788 + (-1 : F) * rho 95789)

def relationLc3239 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 125⟩], residual := [((1 : F), 95791)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94042) * (relationLc3239 rho) = ((1 : F) * rho 95793)

def relationLc3240 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 125⟩], residual := [((1 : F), 95792)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94042) * (relationLc3240 rho) = ((1 : F) * rho 95794)

def relationRow7299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95785) * ((1 : F) * rho 95786) = ((1 : F) * rho 95795)

def relationRow7300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95785) * ((1 : F) * rho 95785) = ((1 : F) * rho 95796)

def relationRow7301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95786) * ((1 : F) * rho 95786) = ((1 : F) * rho 95797)

def relationRow7302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95798) * ((-1 : F) * rho 95796 + (1 : F) * rho 95797) = ((2 : F) * rho 95795)

def relationRow7303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95799) * ((2 : F) + (1 : F) * rho 95796 + (-1 : F) * rho 95797) = ((1 : F) * rho 95796 + (1 : F) * rho 95797)

def relationLc3241 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 126⟩, ⟨(1 : F), 94169, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95798 + (1 : F) * rho 95799) * (relationLc3241 rho) = ((1 : F) * rho 95800)

def relationLc3242 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95799) * (relationLc3242 rho) = ((1 : F) * rho 95801)

def relationLc3243 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 126⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95798) * (relationLc3243 rho) = ((1 : F) * rho 95802)

def relationRow7307 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95801) * ((1 : F) * rho 95802) = ((1 : F) * rho 95803)

def relationRow7308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95804) * ((1 : F) + (1 : F) * rho 95803) = ((1 : F) * rho 95801 + (1 : F) * rho 95802)

def relationRow7309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95805) * ((1 : F) + (-1 : F) * rho 95803) = ((1 : F) * rho 95800 + (-1 : F) * rho 95801 + (-1 : F) * rho 95802)

def relationLc3244 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 126⟩], residual := [((1 : F), 95804)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94043) * (relationLc3244 rho) = ((1 : F) * rho 95806)

def relationLc3245 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 126⟩], residual := [((1 : F), 95805)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94043) * (relationLc3245 rho) = ((1 : F) * rho 95807)

def relationRow7312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95798) * ((1 : F) * rho 95799) = ((1 : F) * rho 95808)

def relationRow7313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95798) * ((1 : F) * rho 95798) = ((1 : F) * rho 95809)

def relationRow7314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95799) * ((1 : F) * rho 95799) = ((1 : F) * rho 95810)

def relationRow7315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95811) * ((-1 : F) * rho 95809 + (1 : F) * rho 95810) = ((2 : F) * rho 95808)

def relationRow7316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95812) * ((2 : F) + (1 : F) * rho 95809 + (-1 : F) * rho 95810) = ((1 : F) * rho 95809 + (1 : F) * rho 95810)

def relationLc3246 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 127⟩, ⟨(1 : F), 94169, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95811 + (1 : F) * rho 95812) * (relationLc3246 rho) = ((1 : F) * rho 95813)

def relationLc3247 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95812) * (relationLc3247 rho) = ((1 : F) * rho 95814)

def relationLc3248 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 127⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95811) * (relationLc3248 rho) = ((1 : F) * rho 95815)

def relationRow7320 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95814) * ((1 : F) * rho 95815) = ((1 : F) * rho 95816)

def relationRow7321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95817) * ((1 : F) + (1 : F) * rho 95816) = ((1 : F) * rho 95814 + (1 : F) * rho 95815)

def relationRow7322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95818) * ((1 : F) + (-1 : F) * rho 95816) = ((1 : F) * rho 95813 + (-1 : F) * rho 95814 + (-1 : F) * rho 95815)

def relationLc3249 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 127⟩], residual := [((1 : F), 95817)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94044) * (relationLc3249 rho) = ((1 : F) * rho 95819)

def relationLc3250 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 127⟩], residual := [((1 : F), 95818)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94044) * (relationLc3250 rho) = ((1 : F) * rho 95820)

def relationRow7325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95811) * ((1 : F) * rho 95812) = ((1 : F) * rho 95821)

def relationRow7326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95811) * ((1 : F) * rho 95811) = ((1 : F) * rho 95822)

def relationRow7327 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95812) * ((1 : F) * rho 95812) = ((1 : F) * rho 95823)

def relationRow7328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95824) * ((-1 : F) * rho 95822 + (1 : F) * rho 95823) = ((2 : F) * rho 95821)

def relationRow7329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95825) * ((2 : F) + (1 : F) * rho 95822 + (-1 : F) * rho 95823) = ((1 : F) * rho 95822 + (1 : F) * rho 95823)

def relationLc3251 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 128⟩, ⟨(1 : F), 94169, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95824 + (1 : F) * rho 95825) * (relationLc3251 rho) = ((1 : F) * rho 95826)

def relationLc3252 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95825) * (relationLc3252 rho) = ((1 : F) * rho 95827)

def relationLc3253 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 128⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7332 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95824) * (relationLc3253 rho) = ((1 : F) * rho 95828)

def relationRow7333 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95827) * ((1 : F) * rho 95828) = ((1 : F) * rho 95829)

def relationRow7334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95830) * ((1 : F) + (1 : F) * rho 95829) = ((1 : F) * rho 95827 + (1 : F) * rho 95828)

def relationRow7335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95831) * ((1 : F) + (-1 : F) * rho 95829) = ((1 : F) * rho 95826 + (-1 : F) * rho 95827 + (-1 : F) * rho 95828)

def relationLc3254 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 128⟩], residual := [((1 : F), 95830)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7336 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94045) * (relationLc3254 rho) = ((1 : F) * rho 95832)

def relationLc3255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 128⟩], residual := [((1 : F), 95831)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7337 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94045) * (relationLc3255 rho) = ((1 : F) * rho 95833)

def relationRow7338 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95824) * ((1 : F) * rho 95825) = ((1 : F) * rho 95834)

def relationRow7339 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95824) * ((1 : F) * rho 95824) = ((1 : F) * rho 95835)

def relationRow7340 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95825) * ((1 : F) * rho 95825) = ((1 : F) * rho 95836)

def relationRow7341 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95837) * ((-1 : F) * rho 95835 + (1 : F) * rho 95836) = ((2 : F) * rho 95834)

def relationRow7342 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95838) * ((2 : F) + (1 : F) * rho 95835 + (-1 : F) * rho 95836) = ((1 : F) * rho 95835 + (1 : F) * rho 95836)

def relationLc3256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 129⟩, ⟨(1 : F), 94169, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7343 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95837 + (1 : F) * rho 95838) * (relationLc3256 rho) = ((1 : F) * rho 95839)

def relationLc3257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7344 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95838) * (relationLc3257 rho) = ((1 : F) * rho 95840)

def relationLc3258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 129⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7345 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95837) * (relationLc3258 rho) = ((1 : F) * rho 95841)

def relationRow7346 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95840) * ((1 : F) * rho 95841) = ((1 : F) * rho 95842)

def relationRow7347 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95843) * ((1 : F) + (1 : F) * rho 95842) = ((1 : F) * rho 95840 + (1 : F) * rho 95841)

def relationRow7348 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95844) * ((1 : F) + (-1 : F) * rho 95842) = ((1 : F) * rho 95839 + (-1 : F) * rho 95840 + (-1 : F) * rho 95841)

def relationLc3259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 129⟩], residual := [((1 : F), 95843)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7349 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94046) * (relationLc3259 rho) = ((1 : F) * rho 95845)

def relationLc3260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 129⟩], residual := [((1 : F), 95844)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7350 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94046) * (relationLc3260 rho) = ((1 : F) * rho 95846)

def relationRow7351 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95837) * ((1 : F) * rho 95838) = ((1 : F) * rho 95847)

def relationRow7352 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95837) * ((1 : F) * rho 95837) = ((1 : F) * rho 95848)

def relationRow7353 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95838) * ((1 : F) * rho 95838) = ((1 : F) * rho 95849)

def relationRow7354 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95850) * ((-1 : F) * rho 95848 + (1 : F) * rho 95849) = ((2 : F) * rho 95847)

def relationRow7355 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95851) * ((2 : F) + (1 : F) * rho 95848 + (-1 : F) * rho 95849) = ((1 : F) * rho 95848 + (1 : F) * rho 95849)

def relationLc3261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 130⟩, ⟨(1 : F), 94169, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7356 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95850 + (1 : F) * rho 95851) * (relationLc3261 rho) = ((1 : F) * rho 95852)

def relationLc3262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7357 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95851) * (relationLc3262 rho) = ((1 : F) * rho 95853)

def relationLc3263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 130⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7358 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95850) * (relationLc3263 rho) = ((1 : F) * rho 95854)

def relationRow7359 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95853) * ((1 : F) * rho 95854) = ((1 : F) * rho 95855)

def relationRow7360 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95856) * ((1 : F) + (1 : F) * rho 95855) = ((1 : F) * rho 95853 + (1 : F) * rho 95854)

def relationRow7361 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95857) * ((1 : F) + (-1 : F) * rho 95855) = ((1 : F) * rho 95852 + (-1 : F) * rho 95853 + (-1 : F) * rho 95854)

def relationLc3264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 130⟩], residual := [((1 : F), 95856)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7362 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94047) * (relationLc3264 rho) = ((1 : F) * rho 95858)

def relationLc3265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 130⟩], residual := [((1 : F), 95857)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94047) * (relationLc3265 rho) = ((1 : F) * rho 95859)

def relationRow7364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95850) * ((1 : F) * rho 95851) = ((1 : F) * rho 95860)

def relationRow7365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95850) * ((1 : F) * rho 95850) = ((1 : F) * rho 95861)

def relationRow7366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95851) * ((1 : F) * rho 95851) = ((1 : F) * rho 95862)

def relationRow7367 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95863) * ((-1 : F) * rho 95861 + (1 : F) * rho 95862) = ((2 : F) * rho 95860)

def relationRow7368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95864) * ((2 : F) + (1 : F) * rho 95861 + (-1 : F) * rho 95862) = ((1 : F) * rho 95861 + (1 : F) * rho 95862)

def relationLc3266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 131⟩, ⟨(1 : F), 94169, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95863 + (1 : F) * rho 95864) * (relationLc3266 rho) = ((1 : F) * rho 95865)

def relationLc3267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95864) * (relationLc3267 rho) = ((1 : F) * rho 95866)

def relationLc3268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 131⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95863) * (relationLc3268 rho) = ((1 : F) * rho 95867)

def relationRow7372 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95866) * ((1 : F) * rho 95867) = ((1 : F) * rho 95868)

def relationRow7373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95869) * ((1 : F) + (1 : F) * rho 95868) = ((1 : F) * rho 95866 + (1 : F) * rho 95867)

def relationRow7374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95870) * ((1 : F) + (-1 : F) * rho 95868) = ((1 : F) * rho 95865 + (-1 : F) * rho 95866 + (-1 : F) * rho 95867)

def relationLc3269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 131⟩], residual := [((1 : F), 95869)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94048) * (relationLc3269 rho) = ((1 : F) * rho 95871)

def relationLc3270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 131⟩], residual := [((1 : F), 95870)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94048) * (relationLc3270 rho) = ((1 : F) * rho 95872)

def relationRow7377 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95863) * ((1 : F) * rho 95864) = ((1 : F) * rho 95873)

def relationRow7378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95863) * ((1 : F) * rho 95863) = ((1 : F) * rho 95874)

def relationRow7379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95864) * ((1 : F) * rho 95864) = ((1 : F) * rho 95875)

def relationRow7380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95876) * ((-1 : F) * rho 95874 + (1 : F) * rho 95875) = ((2 : F) * rho 95873)

def relationRow7381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95877) * ((2 : F) + (1 : F) * rho 95874 + (-1 : F) * rho 95875) = ((1 : F) * rho 95874 + (1 : F) * rho 95875)

def relationLc3271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 132⟩, ⟨(1 : F), 94169, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7382 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95876 + (1 : F) * rho 95877) * (relationLc3271 rho) = ((1 : F) * rho 95878)

def relationLc3272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95877) * (relationLc3272 rho) = ((1 : F) * rho 95879)

def relationLc3273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 132⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95876) * (relationLc3273 rho) = ((1 : F) * rho 95880)

def relationRow7385 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95879) * ((1 : F) * rho 95880) = ((1 : F) * rho 95881)

def relationRow7386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95882) * ((1 : F) + (1 : F) * rho 95881) = ((1 : F) * rho 95879 + (1 : F) * rho 95880)

def relationRow7387 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95883) * ((1 : F) + (-1 : F) * rho 95881) = ((1 : F) * rho 95878 + (-1 : F) * rho 95879 + (-1 : F) * rho 95880)

def relationLc3274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 132⟩], residual := [((1 : F), 95882)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94049) * (relationLc3274 rho) = ((1 : F) * rho 95884)

def relationLc3275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 132⟩], residual := [((1 : F), 95883)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94049) * (relationLc3275 rho) = ((1 : F) * rho 95885)

def relationRow7390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95876) * ((1 : F) * rho 95877) = ((1 : F) * rho 95886)

def relationRow7391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95876) * ((1 : F) * rho 95876) = ((1 : F) * rho 95887)

def relationRow7392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95877) * ((1 : F) * rho 95877) = ((1 : F) * rho 95888)

def relationRow7393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95889) * ((-1 : F) * rho 95887 + (1 : F) * rho 95888) = ((2 : F) * rho 95886)

def relationRow7394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95890) * ((2 : F) + (1 : F) * rho 95887 + (-1 : F) * rho 95888) = ((1 : F) * rho 95887 + (1 : F) * rho 95888)

def relationLc3276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 133⟩, ⟨(1 : F), 94169, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95889 + (1 : F) * rho 95890) * (relationLc3276 rho) = ((1 : F) * rho 95891)

def relationLc3277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95890) * (relationLc3277 rho) = ((1 : F) * rho 95892)

def relationLc3278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 133⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95889) * (relationLc3278 rho) = ((1 : F) * rho 95893)

def relationRow7398 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95892) * ((1 : F) * rho 95893) = ((1 : F) * rho 95894)

def relationRow7399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95895) * ((1 : F) + (1 : F) * rho 95894) = ((1 : F) * rho 95892 + (1 : F) * rho 95893)

def relationRow7400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95896) * ((1 : F) + (-1 : F) * rho 95894) = ((1 : F) * rho 95891 + (-1 : F) * rho 95892 + (-1 : F) * rho 95893)

def relationLc3279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 133⟩], residual := [((1 : F), 95895)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94050) * (relationLc3279 rho) = ((1 : F) * rho 95897)

def relationLc3280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 133⟩], residual := [((1 : F), 95896)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94050) * (relationLc3280 rho) = ((1 : F) * rho 95898)

def relationRow7403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95889) * ((1 : F) * rho 95890) = ((1 : F) * rho 95899)

def relationRow7404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95889) * ((1 : F) * rho 95889) = ((1 : F) * rho 95900)

def relationRow7405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95890) * ((1 : F) * rho 95890) = ((1 : F) * rho 95901)

def relationRow7406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95902) * ((-1 : F) * rho 95900 + (1 : F) * rho 95901) = ((2 : F) * rho 95899)

def relationRow7407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95903) * ((2 : F) + (1 : F) * rho 95900 + (-1 : F) * rho 95901) = ((1 : F) * rho 95900 + (1 : F) * rho 95901)

def relationLc3281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 134⟩, ⟨(1 : F), 94169, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95902 + (1 : F) * rho 95903) * (relationLc3281 rho) = ((1 : F) * rho 95904)

def relationLc3282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95903) * (relationLc3282 rho) = ((1 : F) * rho 95905)

def relationLc3283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 134⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95902) * (relationLc3283 rho) = ((1 : F) * rho 95906)

def relationRow7411 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95905) * ((1 : F) * rho 95906) = ((1 : F) * rho 95907)

def relationRow7412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95908) * ((1 : F) + (1 : F) * rho 95907) = ((1 : F) * rho 95905 + (1 : F) * rho 95906)

def relationRow7413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95909) * ((1 : F) + (-1 : F) * rho 95907) = ((1 : F) * rho 95904 + (-1 : F) * rho 95905 + (-1 : F) * rho 95906)

def relationLc3284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 134⟩], residual := [((1 : F), 95908)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94051) * (relationLc3284 rho) = ((1 : F) * rho 95910)

def relationLc3285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 134⟩], residual := [((1 : F), 95909)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94051) * (relationLc3285 rho) = ((1 : F) * rho 95911)

def relationRow7416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95902) * ((1 : F) * rho 95903) = ((1 : F) * rho 95912)

def relationRow7417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95902) * ((1 : F) * rho 95902) = ((1 : F) * rho 95913)

def relationRow7418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95903) * ((1 : F) * rho 95903) = ((1 : F) * rho 95914)

def relationRow7419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95915) * ((-1 : F) * rho 95913 + (1 : F) * rho 95914) = ((2 : F) * rho 95912)

def relationRow7420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95916) * ((2 : F) + (1 : F) * rho 95913 + (-1 : F) * rho 95914) = ((1 : F) * rho 95913 + (1 : F) * rho 95914)

def relationLc3286 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 135⟩, ⟨(1 : F), 94169, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95915 + (1 : F) * rho 95916) * (relationLc3286 rho) = ((1 : F) * rho 95917)

def relationLc3287 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95916) * (relationLc3287 rho) = ((1 : F) * rho 95918)

def relationLc3288 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 135⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95915) * (relationLc3288 rho) = ((1 : F) * rho 95919)

def relationRow7424 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95918) * ((1 : F) * rho 95919) = ((1 : F) * rho 95920)

def relationRow7425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95921) * ((1 : F) + (1 : F) * rho 95920) = ((1 : F) * rho 95918 + (1 : F) * rho 95919)

def relationRow7426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95922) * ((1 : F) + (-1 : F) * rho 95920) = ((1 : F) * rho 95917 + (-1 : F) * rho 95918 + (-1 : F) * rho 95919)

def relationLc3289 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 135⟩], residual := [((1 : F), 95921)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94052) * (relationLc3289 rho) = ((1 : F) * rho 95923)

def relationLc3290 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 135⟩], residual := [((1 : F), 95922)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7428 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94052) * (relationLc3290 rho) = ((1 : F) * rho 95924)

def relationRow7429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95915) * ((1 : F) * rho 95916) = ((1 : F) * rho 95925)

def relationRow7430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95915) * ((1 : F) * rho 95915) = ((1 : F) * rho 95926)

def relationRow7431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95916) * ((1 : F) * rho 95916) = ((1 : F) * rho 95927)

def relationRow7432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95928) * ((-1 : F) * rho 95926 + (1 : F) * rho 95927) = ((2 : F) * rho 95925)

def relationRow7433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95929) * ((2 : F) + (1 : F) * rho 95926 + (-1 : F) * rho 95927) = ((1 : F) * rho 95926 + (1 : F) * rho 95927)

def relationLc3291 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 136⟩, ⟨(1 : F), 94169, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95928 + (1 : F) * rho 95929) * (relationLc3291 rho) = ((1 : F) * rho 95930)

def relationLc3292 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95929) * (relationLc3292 rho) = ((1 : F) * rho 95931)

def relationLc3293 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 136⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95928) * (relationLc3293 rho) = ((1 : F) * rho 95932)

def relationRow7437 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95931) * ((1 : F) * rho 95932) = ((1 : F) * rho 95933)

def relationRow7438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95934) * ((1 : F) + (1 : F) * rho 95933) = ((1 : F) * rho 95931 + (1 : F) * rho 95932)

def relationRow7439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95935) * ((1 : F) + (-1 : F) * rho 95933) = ((1 : F) * rho 95930 + (-1 : F) * rho 95931 + (-1 : F) * rho 95932)

def relationLc3294 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 136⟩], residual := [((1 : F), 95934)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94053) * (relationLc3294 rho) = ((1 : F) * rho 95936)

def relationLc3295 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 136⟩], residual := [((1 : F), 95935)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94053) * (relationLc3295 rho) = ((1 : F) * rho 95937)

def relationRow7442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95928) * ((1 : F) * rho 95929) = ((1 : F) * rho 95938)

def relationRow7443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95928) * ((1 : F) * rho 95928) = ((1 : F) * rho 95939)

def relationRow7444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95929) * ((1 : F) * rho 95929) = ((1 : F) * rho 95940)

def relationRow7445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95941) * ((-1 : F) * rho 95939 + (1 : F) * rho 95940) = ((2 : F) * rho 95938)

def relationRow7446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95942) * ((2 : F) + (1 : F) * rho 95939 + (-1 : F) * rho 95940) = ((1 : F) * rho 95939 + (1 : F) * rho 95940)

def relationLc3296 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 137⟩, ⟨(1 : F), 94169, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95941 + (1 : F) * rho 95942) * (relationLc3296 rho) = ((1 : F) * rho 95943)

def relationLc3297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95942) * (relationLc3297 rho) = ((1 : F) * rho 95944)

def relationLc3298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 137⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95941) * (relationLc3298 rho) = ((1 : F) * rho 95945)

def relationRow7450 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95944) * ((1 : F) * rho 95945) = ((1 : F) * rho 95946)

def relationRow7451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95947) * ((1 : F) + (1 : F) * rho 95946) = ((1 : F) * rho 95944 + (1 : F) * rho 95945)

def relationRow7452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95948) * ((1 : F) + (-1 : F) * rho 95946) = ((1 : F) * rho 95943 + (-1 : F) * rho 95944 + (-1 : F) * rho 95945)

def relationLc3299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 137⟩], residual := [((1 : F), 95947)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94054) * (relationLc3299 rho) = ((1 : F) * rho 95949)

def relationLc3300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 137⟩], residual := [((1 : F), 95948)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94054) * (relationLc3300 rho) = ((1 : F) * rho 95950)

def relationRow7455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95941) * ((1 : F) * rho 95942) = ((1 : F) * rho 95951)

def relationRow7456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95941) * ((1 : F) * rho 95941) = ((1 : F) * rho 95952)

def relationRow7457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95942) * ((1 : F) * rho 95942) = ((1 : F) * rho 95953)

def relationRow7458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95954) * ((-1 : F) * rho 95952 + (1 : F) * rho 95953) = ((2 : F) * rho 95951)

def relationRow7459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95955) * ((2 : F) + (1 : F) * rho 95952 + (-1 : F) * rho 95953) = ((1 : F) * rho 95952 + (1 : F) * rho 95953)

def relationLc3301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 138⟩, ⟨(1 : F), 94169, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95954 + (1 : F) * rho 95955) * (relationLc3301 rho) = ((1 : F) * rho 95956)

def relationLc3302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1 : F), 94168, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95955) * (relationLc3302 rho) = ((1 : F) * rho 95957)

def relationLc3303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94169, 13, 138⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95954) * (relationLc3303 rho) = ((1 : F) * rho 95958)

def relationRow7463 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 95957) * ((1 : F) * rho 95958) = ((1 : F) * rho 95959)

def relationRow7464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95960) * ((1 : F) + (1 : F) * rho 95959) = ((1 : F) * rho 95957 + (1 : F) * rho 95958)

def relationRow7465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95961) * ((1 : F) + (-1 : F) * rho 95959) = ((1 : F) * rho 95956 + (-1 : F) * rho 95957 + (-1 : F) * rho 95958)

def relationLc3304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 94168, 13, 138⟩], residual := [((1 : F), 95960)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94055) * (relationLc3304 rho) = ((1 : F) * rho 95962)

def relationLc3305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 94169, 13, 138⟩], residual := [((1 : F), 95961)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94055) * (relationLc3305 rho) = ((1 : F) * rho 95963)

def relationRow7468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95954) * ((1 : F) * rho 95955) = ((1 : F) * rho 95964)

def relationRow7469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95954) * ((1 : F) * rho 95954) = ((1 : F) * rho 95965)

def relationRow7470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95955) * ((1 : F) * rho 95955) = ((1 : F) * rho 95966)

def relationRow7471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95967) * ((-1 : F) * rho 95965 + (1 : F) * rho 95966) = ((2 : F) * rho 95964)

def relationRow7472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95968) * ((2 : F) + (1 : F) * rho 95965 + (-1 : F) * rho 95966) = ((1 : F) * rho 95965 + (1 : F) * rho 95966)

def relationLc3306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 94168, 13, 139⟩, ⟨(1 : F), 94169, 13, 139⟩], residual := [] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow7473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95967 + (1 : F) * rho 95968) * (relationLc3306 rho) = ((1 : F) * rho 95969)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106
