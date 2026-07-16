import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs54

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow1929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 831) * (relationLc1054 rho) = ((1 : F) * rho 1929)

def relationLc1055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 35⟩], residual := [((1 : F), 1928), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 831) * (relationLc1055 rho) = ((1 : F) * rho 1930)

def relationLc1056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 36⟩, ⟨(1 : F), 1650, 8, 36⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1931 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1056 rho) = ((1 : F) * rho 1931)

def relationLc1057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6028579224337606591443459905021778812168747518565097276810086992500255754658 : F), 901, 5, 149⟩, ⟨(6028579224337606591443459905021778812168747518565097276810086992500255754658 : F), 1649, 8, 36⟩], residual := [((6381661940768385857326634826811761934878076726829780415823298289526390967490 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), runs := [⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 902, 5, 149⟩, ⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 1650, 8, 36⟩], residual := [((1452863053084963223896290692224473309609477121996708903053775524417059294317 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1932 (rho : Nat -> F) : Prop :=
    (relationLc1057 rho) * (relationLc1058 rho) = ((1 : F) * rho 1932)

def relationLc1059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), runs := [⟨(4985933094490275429668023278964753142752531367791546144483724375668070482941 : F), 901, 5, 149⟩, ⟨(4985933094490275429668023278964753142752531367791546144483724375668070482941 : F), 1649, 8, 36⟩, ⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 902, 5, 149⟩, ⟨(7787428424287560873464197071160094215955456615894628038324752536842263774777 : F), 1650, 8, 36⟩], residual := [((4784122770234899523511542971905252416131679765126573120030500563903044330618 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1933 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1059 rho) = ((1 : F) * rho 1933)

def relationRow1934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * ((1 : F) + (1 : F) * rho 1932) = ((1 : F) * rho 1933)

def relationLc1060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (657033325140809550784627867621452315420442719259435789610480919075145464264 : F), runs := [⟨(3458528654938094994580801659816793388623367967362517683451509080249338756100 : F), 901, 5, 149⟩, ⟨(3458528654938094994580801659816793388623367967362517683451509080249338756100 : F), 1649, 8, 36⟩, ⟨(657033325140809550784627867621452315420442719259435789610480919075145464264 : F), 902, 5, 149⟩, ⟨(657033325140809550784627867621452315420442719259435789610480919075145464264 : F), 1650, 8, 36⟩], residual := [((3660338979193470900737281966876294115244219570027490707904732892014364908423 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1935 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1060 rho) = ((1 : F) * rho 1935)

def relationRow1936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * ((1 : F) + (-1 : F) * rho 1932) = ((4328899769349465878883395411343300827332088648532110354873243456592925018677 : F) * rho 1931 + (1 : F) * rho 1935)

def relationLc1061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 36⟩], residual := [((1 : F), 1934), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 832) * (relationLc1061 rho) = ((1 : F) * rho 1937)

def relationLc1062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 36⟩], residual := [((1 : F), 1936), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 832) * (relationLc1062 rho) = ((1 : F) * rho 1938)

def relationLc1063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 37⟩, ⟨(1 : F), 1650, 8, 37⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1939 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1063 rho) = ((1 : F) * rho 1939)

def relationLc1064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4596919794334890205495364398857343729149742954419236979109192546333741823495 : F), 901, 5, 149⟩, ⟨(4596919794334890205495364398857343729149742954419236979109192546333741823495 : F), 1649, 8, 37⟩], residual := [((7826491336625565773713388100152299427331399470180970387061441917424441790953 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), runs := [⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 902, 5, 149⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 1650, 8, 37⟩], residual := [((5918976997624896128603067142306423185695956680637276924820692671152121793628 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1940 (rho : Nat -> F) : Prop :=
    (relationLc1064 rho) * (relationLc1065 rho) = ((1 : F) * rho 1940)

def relationLc1066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), runs := [⟨(2587131426023031291835702890689105556190617884135030876471102330112524756020 : F), 901, 5, 149⟩, ⟨(2587131426023031291835702890689105556190617884135030876471102330112524756020 : F), 1649, 8, 37⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 902, 5, 149⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 1650, 8, 37⟩], residual := [((1625262592615038539626989504833041947927858077968751558005269837710336438244 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1941 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1066 rho) = ((1 : F) * rho 1941)

def relationRow1942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1942) * ((1 : F) + (1 : F) * rho 1940) = ((1 : F) * rho 1941)

def relationLc1067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2780335827837733432131378289849803592677100462025226270565671679486408496448 : F), runs := [⟨(2780335827837733432131378289849803592677100462025226270565671679486408496448 : F), 902, 5, 149⟩, ⟨(2780335827837733432131378289849803592677100462025226270565671679486408496448 : F), 1650, 8, 37⟩, ⟨(5857330323405339132413122048092440975185281451019032951464131125804884483021 : F), 901, 5, 149⟩, ⟨(5857330323405339132413122048092440975185281451019032951464131125804884483021 : F), 1649, 8, 37⟩], residual := [((6819199156813331884621835433948504583448041257185312269929963618207072800797 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1943 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1067 rho) = ((1 : F) * rho 1943)

def relationRow1944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1944) * ((1 : F) + (-1 : F) * rho 1940) = ((8251257347613668283953149539620848494889416757263868433840664106543525498613 : F) * rho 1939 + (1 : F) * rho 1943)

def relationLc1068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 37⟩], residual := [((1 : F), 1942), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 833) * (relationLc1068 rho) = ((1 : F) * rho 1945)

def relationLc1069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 37⟩], residual := [((1 : F), 1944), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 833) * (relationLc1069 rho) = ((1 : F) * rho 1946)

def relationLc1070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 38⟩, ⟨(1 : F), 1650, 8, 38⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1947 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1070 rho) = ((1 : F) * rho 1947)

def relationLc1071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6922811000887993217579984030095195121464617178287420021988095849235860064564 : F), 901, 5, 149⟩, ⟨(6922811000887993217579984030095195121464617178287420021988095849235860064564 : F), 1649, 8, 38⟩], residual := [((14303776005448437087817101055051617761828693284628317724679631503107821478 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), runs := [⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 902, 5, 149⟩, ⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 1650, 8, 38⟩], residual := [((566254701759488235120972677527957762407484274840097124827533952264695348694 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1948 (rho : Nat -> F) : Prop :=
    (relationLc1071 rho) * (relationLc1072 rho) = ((1 : F) * rho 1948)

def relationLc1073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), runs := [⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 902, 5, 149⟩, ⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 1650, 8, 38⟩, ⟨(6087559099472509237605849677509937766940350039658617799879838242099118097801 : F), 901, 5, 149⟩, ⟨(6087559099472509237605849677509937766940350039658617799879838242099118097801 : F), 1649, 8, 38⟩], residual := [((7663408851238017846377131014723390299574372802032898411634975999337123407531 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1949 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1073 rho) = ((1 : F) * rho 1949)

def relationRow1950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1950) * ((1 : F) + (1 : F) * rho 1948) = ((1 : F) * rho 1949)

def relationLc1074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3877802047026090182637615681377463772442098972789156123670321536406812886255 : F), runs := [⟨(2356902649955861186642975261271608764435549295495446028055395213818291141240 : F), 901, 5, 149⟩, ⟨(2356902649955861186642975261271608764435549295495446028055395213818291141240 : F), 1649, 8, 38⟩, ⟨(3877802047026090182637615681377463772442098972789156123670321536406812886255 : F), 902, 5, 149⟩, ⟨(3877802047026090182637615681377463772442098972789156123670321536406812886255 : F), 1650, 8, 38⟩], residual := [((781052898190352577871693924058156231801526533121165416300257456580285831510 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1951 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1074 rho) = ((1 : F) * rho 1951)

def relationRow1952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1952) * ((1 : F) + (-1 : F) * rho 1948) = ((2209757052446419054968233996132473994498251066869461676209516705692305211546 : F) * rho 1947 + (1 : F) * rho 1951)

def relationLc1075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 38⟩], residual := [((1 : F), 1950), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 834) * (relationLc1075 rho) = ((1 : F) * rho 1953)

def relationLc1076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 38⟩], residual := [((1 : F), 1952), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 834) * (relationLc1076 rho) = ((1 : F) * rho 1954)

def relationLc1077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 39⟩, ⟨(1 : F), 1650, 8, 39⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1955 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1077 rho) = ((1 : F) * rho 1955)

def relationLc1078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6524314985460573496601737361348284694458658975715625217606691023570314861904 : F), 901, 5, 149⟩, ⟨(6524314985460573496601737361348284694458658975715625217606691023570314861904 : F), 1649, 8, 39⟩], residual := [((3891133338582028720854362833555171518308555506521266766552101859987109084684 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), runs := [⟨(3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), 902, 5, 149⟩, ⟨(3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), 1650, 8, 39⟩], residual := [((1595464300149660764758530111730061010614402182284645456524319626499860751122 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1956 (rho : Nat -> F) : Prop :=
    (relationLc1078 rho) * (relationLc1079 rho) = ((1 : F) * rho 1956)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
