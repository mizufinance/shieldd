import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs53

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (657033325140809550784627867621452315420442719259435789610480919075145464264 : F), runs := [⟨(3458528654938094994580801659816793388623367967362517683451509080249338756100 : F), 772, 5, 149⟩, ⟨(3458528654938094994580801659816793388623367967362517683451509080249338756100 : F), 1520, 8, 36⟩, ⟨(657033325140809550784627867621452315420442719259435789610480919075145464264 : F), 773, 5, 149⟩, ⟨(657033325140809550784627867621452315420442719259435789610480919075145464264 : F), 1521, 8, 36⟩], residual := [((3660338979193470900737281966876294115244219570027490707904732892014364908423 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1806 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1059 rho) = ((1 : F) * rho 1806)

def relationRow1807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1807) * ((1 : F) + (-1 : F) * rho 1803) = ((4328899769349465878883395411343300827332088648532110354873243456592925018677 : F) * rho 1802 + (1 : F) * rho 1806)

def relationLc1060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 36⟩], residual := [((1 : F), 1805), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 703) * (relationLc1060 rho) = ((1 : F) * rho 1808)

def relationLc1061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 36⟩], residual := [((1 : F), 1807), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 703) * (relationLc1061 rho) = ((1 : F) * rho 1809)

def relationLc1062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 37⟩, ⟨(1 : F), 1521, 8, 37⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1810 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1062 rho) = ((1 : F) * rho 1810)

def relationLc1063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4596919794334890205495364398857343729149742954419236979109192546333741823495 : F), 772, 5, 149⟩, ⟨(4596919794334890205495364398857343729149742954419236979109192546333741823495 : F), 1520, 8, 37⟩], residual := [((7826491336625565773713388100152299427331399470180970387061441917424441790953 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), runs := [⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 773, 5, 149⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 1521, 8, 37⟩], residual := [((5918976997624896128603067142306423185695956680637276924820692671152121793628 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1811 (rho : Nat -> F) : Prop :=
    (relationLc1063 rho) * (relationLc1064 rho) = ((1 : F) * rho 1811)

def relationLc1065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), runs := [⟨(2587131426023031291835702890689105556190617884135030876471102330112524756020 : F), 772, 5, 149⟩, ⟨(2587131426023031291835702890689105556190617884135030876471102330112524756020 : F), 1520, 8, 37⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 773, 5, 149⟩, ⟨(5664125921590636992117446648931742938698798873128837557369561776431000742593 : F), 1521, 8, 37⟩], residual := [((1625262592615038539626989504833041947927858077968751558005269837710336438244 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1812 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1065 rho) = ((1 : F) * rho 1812)

def relationRow1813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1813) * ((1 : F) + (1 : F) * rho 1811) = ((1 : F) * rho 1812)

def relationLc1066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2780335827837733432131378289849803592677100462025226270565671679486408496448 : F), runs := [⟨(2780335827837733432131378289849803592677100462025226270565671679486408496448 : F), 773, 5, 149⟩, ⟨(2780335827837733432131378289849803592677100462025226270565671679486408496448 : F), 1521, 8, 37⟩, ⟨(5857330323405339132413122048092440975185281451019032951464131125804884483021 : F), 772, 5, 149⟩, ⟨(5857330323405339132413122048092440975185281451019032951464131125804884483021 : F), 1520, 8, 37⟩], residual := [((6819199156813331884621835433948504583448041257185312269929963618207072800797 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1814 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1066 rho) = ((1 : F) * rho 1814)

def relationRow1815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1815) * ((1 : F) + (-1 : F) * rho 1811) = ((8251257347613668283953149539620848494889416757263868433840664106543525498613 : F) * rho 1810 + (1 : F) * rho 1814)

def relationLc1067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 37⟩], residual := [((1 : F), 1813), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 704) * (relationLc1067 rho) = ((1 : F) * rho 1816)

def relationLc1068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 37⟩], residual := [((1 : F), 1815), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 704) * (relationLc1068 rho) = ((1 : F) * rho 1817)

def relationLc1069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 38⟩, ⟨(1 : F), 1521, 8, 38⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1818 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1069 rho) = ((1 : F) * rho 1818)

def relationLc1070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6922811000887993217579984030095195121464617178287420021988095849235860064564 : F), 772, 5, 149⟩, ⟨(6922811000887993217579984030095195121464617178287420021988095849235860064564 : F), 1520, 8, 38⟩], residual := [((14303776005448437087817101055051617761828693284628317724679631503107821478 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), runs := [⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 773, 5, 149⟩, ⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 1521, 8, 38⟩], residual := [((566254701759488235120972677527957762407484274840097124827533952264695348694 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1819 (rho : Nat -> F) : Prop :=
    (relationLc1070 rho) * (relationLc1071 rho) = ((1 : F) * rho 1819)

def relationLc1072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), runs := [⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 773, 5, 149⟩, ⟨(4566659702402280241611209257404082758933800362364907704264911919510596352786 : F), 1521, 8, 38⟩, ⟨(6087559099472509237605849677509937766940350039658617799879838242099118097801 : F), 772, 5, 149⟩, ⟨(6087559099472509237605849677509937766940350039658617799879838242099118097801 : F), 1520, 8, 38⟩], residual := [((7663408851238017846377131014723390299574372802032898411634975999337123407531 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1820 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1072 rho) = ((1 : F) * rho 1820)

def relationRow1821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1821) * ((1 : F) + (1 : F) * rho 1819) = ((1 : F) * rho 1820)

def relationLc1073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3877802047026090182637615681377463772442098972789156123670321536406812886255 : F), runs := [⟨(2356902649955861186642975261271608764435549295495446028055395213818291141240 : F), 772, 5, 149⟩, ⟨(2356902649955861186642975261271608764435549295495446028055395213818291141240 : F), 1520, 8, 38⟩, ⟨(3877802047026090182637615681377463772442098972789156123670321536406812886255 : F), 773, 5, 149⟩, ⟨(3877802047026090182637615681377463772442098972789156123670321536406812886255 : F), 1521, 8, 38⟩], residual := [((781052898190352577871693924058156231801526533121165416300257456580285831510 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1822 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1073 rho) = ((1 : F) * rho 1822)

def relationRow1823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1823) * ((1 : F) + (-1 : F) * rho 1819) = ((2209757052446419054968233996132473994498251066869461676209516705692305211546 : F) * rho 1818 + (1 : F) * rho 1822)

def relationLc1074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 38⟩], residual := [((1 : F), 1821), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 705) * (relationLc1074 rho) = ((1 : F) * rho 1824)

def relationLc1075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 38⟩], residual := [((1 : F), 1823), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 705) * (relationLc1075 rho) = ((1 : F) * rho 1825)

def relationLc1076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 39⟩, ⟨(1 : F), 1521, 8, 39⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1826 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1076 rho) = ((1 : F) * rho 1826)

def relationLc1077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6524314985460573496601737361348284694458658975715625217606691023570314861904 : F), 772, 5, 149⟩, ⟨(6524314985460573496601737361348284694458658975715625217606691023570314861904 : F), 1520, 8, 39⟩], residual := [((3891133338582028720854362833555171518308555506521266766552101859987109084684 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), runs := [⟨(3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), 773, 5, 149⟩, ⟨(3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), 1521, 8, 39⟩], residual := [((1595464300149660764758530111730061010614402182284645456524319626499860751122 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1827 (rho : Nat -> F) : Prop :=
    (relationLc1077 rho) * (relationLc1078 rho) = ((1 : F) * rho 1827)

def relationLc1079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), runs := [⟨(3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), 773, 5, 149⟩, ⟨(3309409805907718488973225867968294079518603536308582507670435458888150009119 : F), 1521, 8, 39⟩, ⟨(6512305769415470139547207884734713722697427411635064641005880638813378494733 : F), 772, 5, 149⟩, ⟨(6512305769415470139547207884734713722697427411635064641005880638813378494733 : F), 1520, 8, 39⟩], residual := [((654751795608522464774750025157460544028712172208379900997136053913240491449 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1828 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1079 rho) = ((1 : F) * rho 1828)

def relationRow1829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1829) * ((1 : F) + (1 : F) * rho 1827) = ((1 : F) * rho 1828)

def relationLc1080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5135051943520651935275599070813252451857295798845481320264797997029259229922 : F), runs := [⟨(1932155980012900284701617054046832808678471923518999186929352817104030744308 : F), 772, 5, 149⟩, ⟨(1932155980012900284701617054046832808678471923518999186929352817104030744308 : F), 1520, 8, 39⟩, ⟨(5135051943520651935275599070813252451857295798845481320264797997029259229922 : F), 773, 5, 149⟩, ⟨(5135051943520651935275599070813252451857295798845481320264797997029259229922 : F), 1521, 8, 39⟩], residual := [((7789709953819847959474074913624085987347187162945683926938097402004168747592 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1830 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1080 rho) = ((1 : F) * rho 1830)

def relationRow1831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1831) * ((1 : F) + (-1 : F) * rho 1827) = ((1377253825894818204271608813921461270840131612789583320741082641784119264811 : F) * rho 1826 + (1 : F) * rho 1830)

def relationLc1081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 39⟩], residual := [((1 : F), 1829), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 706) * (relationLc1081 rho) = ((1 : F) * rho 1832)

def relationLc1082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 39⟩], residual := [((1 : F), 1831), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 706) * (relationLc1082 rho) = ((1 : F) * rho 1833)

def relationLc1083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 40⟩, ⟨(1 : F), 1521, 8, 40⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1834 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1083 rho) = ((1 : F) * rho 1834)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
