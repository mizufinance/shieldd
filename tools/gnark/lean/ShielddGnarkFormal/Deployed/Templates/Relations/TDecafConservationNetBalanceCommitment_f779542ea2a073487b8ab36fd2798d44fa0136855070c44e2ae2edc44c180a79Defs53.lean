import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs52

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationLc1006 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 28⟩], residual := [((1 : F), 1872), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 824) * (relationLc1006 rho) = ((1 : F) * rho 1874)

def relationLc1007 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 29⟩, ⟨(1 : F), 1650, 8, 29⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1875 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1007 rho) = ((1 : F) * rho 1875)

def relationLc1008 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4108357388061236572813112521456755833627089174705441165679412082848428423135 : F), 901, 5, 149⟩, ⟨(4108357388061236572813112521456755833627089174705441165679412082848428423135 : F), 1649, 8, 29⟩], residual := [((4123372059699344288277837313666126440828906553166339005009536672862144757468 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1009 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), runs := [⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 902, 5, 149⟩, ⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 1650, 8, 29⟩], residual := [((5807655721081984382075658649034336050204781834756902235012964053436416760975 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1876 (rho : Nat -> F) : Prop :=
    (relationLc1008 rho) * (relationLc1009 rho) = ((1 : F) * rho 1876)

def relationLc1010 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), runs := [⟨(1614221379281109225873679279112349918714836479827408232335090736890828718752 : F), 901, 5, 149⟩, ⟨(1614221379281109225873679279112349918714836479827408232335090736890828718752 : F), 1649, 8, 29⟩, ⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 902, 5, 149⟩, ⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 1650, 8, 29⟩], residual := [((6122089050441692039078024167226060425562256059215830234924832866324735853835 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1010 rho) = ((1 : F) * rho 1877)

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1878) * ((1 : F) + (1 : F) * rho 1876) = ((1 : F) * rho 1877)

def relationLc1011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), runs := [⟨(3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), 902, 5, 149⟩, ⟨(3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), 1650, 8, 29⟩, ⟨(6830240370147261198375145659669196612661062855326655595600142719026580520289 : F), 901, 5, 149⟩, ⟨(6830240370147261198375145659669196612661062855326655595600142719026580520289 : F), 1649, 8, 29⟩], residual := [((2322372698986678385170800771555486105813643275938233593010400589592673385206 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1879 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1011 rho) = ((1 : F) * rho 1879)

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1880) * ((1 : F) + (-1 : F) * rho 1876) = ((6409374326668287048524850472784877527334496763268196648541433676811571450528 : F) * rho 1875 + (1 : F) * rho 1879)

def relationLc1012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 29⟩], residual := [((1 : F), 1878), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 825) * (relationLc1012 rho) = ((1 : F) * rho 1881)

def relationLc1013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 29⟩], residual := [((1 : F), 1880), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 825) * (relationLc1013 rho) = ((1 : F) * rho 1882)

def relationLc1014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 30⟩, ⟨(1 : F), 1650, 8, 30⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1883 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1014 rho) = ((1 : F) * rho 1883)

def relationLc1015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2030418877256702153354468411292183127062917588355041579667419295840969680588 : F), 901, 5, 149⟩, ⟨(2030418877256702153354468411292183127062917588355041579667419295840969680588 : F), 1649, 8, 30⟩], residual := [((1747355640068679147516328884857115463749624824253420006611042383112582562104 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), runs := [⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 902, 5, 149⟩, ⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 1650, 8, 30⟩], residual := [((7305892694301029992493071465213924921567977686636080727368555182846421408795 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1884 (rho : Nat -> F) : Prop :=
    (relationLc1015 rho) * (relationLc1016 rho) = ((1 : F) * rho 1884)

def relationLc1017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), runs := [⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 902, 5, 149⟩, ⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 1650, 8, 30⟩, ⟨(6083144384519493791896324904071478793578622929786030430707294081222152755324 : F), 901, 5, 149⟩, ⟨(6083144384519493791896324904071478793578622929786030430707294081222152755324 : F), 1649, 8, 30⟩], residual := [((4902552823771956875741508036393245377867373978126235817730127599362191232359 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1885 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1017 rho) = ((1 : F) * rho 1885)

def relationRow1886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1886) * ((1 : F) + (1 : F) * rho 1884) = ((1 : F) * rho 1885)

def relationLc1018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), runs := [⟨(2361317364908876632352500034710067737797276405368033397227939374695256483717 : F), 901, 5, 149⟩, ⟨(2361317364908876632352500034710067737797276405368033397227939374695256483717 : F), 1649, 8, 30⟩, ⟨(6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), 902, 5, 149⟩, ⟨(6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), 1650, 8, 30⟩], residual := [((3541908925656413548507316902388301153508525357027828010205105856555218006682 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1887 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1018 rho) = ((1 : F) * rho 1887)

def relationRow1888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1888) * ((1 : F) + (-1 : F) * rho 1884) = ((7686423614582255436268024427089613636785173679939363390885207048027867045143 : F) * rho 1883 + (1 : F) * rho 1887)

def relationLc1019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 30⟩], residual := [((1 : F), 1886), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 826) * (relationLc1019 rho) = ((1 : F) * rho 1889)

def relationLc1020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 30⟩], residual := [((1 : F), 1888), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 826) * (relationLc1020 rho) = ((1 : F) * rho 1890)

def relationLc1021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 31⟩, ⟨(1 : F), 1650, 8, 31⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1891 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1021 rho) = ((1 : F) * rho 1891)

def relationLc1022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(930106514699292104098886691997863737420803130699452871113229389318586867854 : F), 901, 5, 149⟩, ⟨(930106514699292104098886691997863737420803130699452871113229389318586867854 : F), 1649, 8, 31⟩], residual := [((1253059424289635349379570659365335954028514234507196113617158335561908180886 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), runs := [⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 902, 5, 149⟩, ⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 1650, 8, 31⟩], residual := [((1575016505422756477411102303246794318989971918617923936142043927069825021556 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1892 (rho : Nat -> F) : Prop :=
    (relationLc1022 rho) * (relationLc1023 rho) = ((1 : F) * rho 1892)

def relationLc1024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), runs := [⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 902, 5, 149⟩, ⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 1650, 8, 31⟩, ⟨(7863356838019432405003655557591687605593454363760040053244927156863618264247 : F), 901, 5, 149⟩, ⟨(7863356838019432405003655557591687605593454363760040053244927156863618264247 : F), 1649, 8, 31⟩], residual := [((6673974231467654620138423143695952282970001346474765915045547065742091277826 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1893 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1024 rho) = ((1 : F) * rho 1893)

def relationRow1894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1894) * ((1 : F) + (1 : F) * rho 1892) = ((1 : F) * rho 1893)

def relationLc1025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), runs := [⟨(2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), 902, 5, 149⟩, ⟨(2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), 1650, 8, 31⟩, ⟨(581104911408938019245169381189858925782444971394023774690306299053790974794 : F), 901, 5, 149⟩, ⟨(581104911408938019245169381189858925782444971394023774690306299053790974794 : F), 1649, 8, 31⟩], residual := [((1770487517960715804110401795085594248405897988679297912889686390175317961215 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1895 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1025 rho) = ((1 : F) * rho 1895)

def relationRow1896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1896) * ((1 : F) + (-1 : F) * rho 1892) = ((4869257656597027975892546339553743434167906512224945345279395190554089752560 : F) * rho 1891 + (1 : F) * rho 1895)

def relationLc1026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 31⟩], residual := [((1 : F), 1894), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 827) * (relationLc1026 rho) = ((1 : F) * rho 1897)

def relationLc1027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 31⟩], residual := [((1 : F), 1896), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 827) * (relationLc1027 rho) = ((1 : F) * rho 1898)

def relationLc1028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 32⟩, ⟨(1 : F), 1650, 8, 32⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1899 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1028 rho) = ((1 : F) * rho 1899)

def relationLc1029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1280360060523824470092106696621627832627530184276510703344518048220712403801 : F), 901, 5, 149⟩, ⟨(1280360060523824470092106696621627832627530184276510703344518048220712403801 : F), 1649, 8, 32⟩], residual := [((8287987664941402397117653789786020645287437279613880328591813012593442627238 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), runs := [⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 902, 5, 149⟩, ⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 1650, 8, 32⟩], residual := [((121575702908755372201135340724619640361875339229139199078923729978452142890 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1900 (rho : Nat -> F) : Prop :=
    (relationLc1029 rho) * (relationLc1030 rho) = ((1 : F) * rho 1900)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
