import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs97

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4394) * (relationLc1010 rho) = ((1 : F) * rho 5443)

def relationLc1011 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 28⟩], residual := [((1 : F), 5442), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4394) * (relationLc1011 rho) = ((1 : F) * rho 5444)

def relationLc1012 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 29⟩, ⟨(1 : F), 5220, 8, 29⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5619 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1012 rho) = ((1 : F) * rho 5445)

def relationLc1013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4108357388061236572813112521456755833627089174705441165679412082848428423135 : F), 4471, 5, 149⟩, ⟨(4108357388061236572813112521456755833627089174705441165679412082848428423135 : F), 5219, 8, 29⟩], residual := [((4123372059699344288277837313666126440828906553166339005009536672862144757468 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), runs := [⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 4472, 5, 149⟩, ⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 5220, 8, 29⟩], residual := [((5807655721081984382075658649034336050204781834756902235012964053436416760975 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5620 (rho : Nat -> F) : Prop :=
    (relationLc1013 rho) * (relationLc1014 rho) = ((1 : F) * rho 5446)

def relationLc1015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), runs := [⟨(1614221379281109225873679279112349918714836479827408232335090736890828718752 : F), 4471, 5, 149⟩, ⟨(1614221379281109225873679279112349918714836479827408232335090736890828718752 : F), 5219, 8, 29⟩, ⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 4472, 5, 149⟩, ⟨(4795152947387177822651171193672527608619660283440788416206342939920742731776 : F), 5220, 8, 29⟩], residual := [((6122089050441692039078024167226060425562256059215830234924832866324735853835 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5621 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1015 rho) = ((1 : F) * rho 5447)

def relationRow5622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5448) * ((1 : F) + (1 : F) * rho 5446) = ((1 : F) * rho 5447)

def relationLc1016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), runs := [⟨(3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), 4472, 5, 149⟩, ⟨(3649308802041192601597653745109018922756239051713275411728890515996666507265 : F), 5220, 8, 29⟩, ⟨(6830240370147261198375145659669196612661062855326655595600142719026580520289 : F), 4471, 5, 149⟩, ⟨(6830240370147261198375145659669196612661062855326655595600142719026580520289 : F), 5219, 8, 29⟩], residual := [((2322372698986678385170800771555486105813643275938233593010400589592673385206 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5623 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1016 rho) = ((1 : F) * rho 5449)

def relationRow5624 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5450) * ((1 : F) + (-1 : F) * rho 5446) = ((6409374326668287048524850472784877527334496763268196648541433676811571450528 : F) * rho 5445 + (1 : F) * rho 5449)

def relationLc1017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 29⟩], residual := [((1 : F), 5448), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5625 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4395) * (relationLc1017 rho) = ((1 : F) * rho 5451)

def relationLc1018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 29⟩], residual := [((1 : F), 5450), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5626 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4395) * (relationLc1018 rho) = ((1 : F) * rho 5452)

def relationLc1019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 30⟩, ⟨(1 : F), 5220, 8, 30⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5627 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1019 rho) = ((1 : F) * rho 5453)

def relationLc1020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2030418877256702153354468411292183127062917588355041579667419295840969680588 : F), 4471, 5, 149⟩, ⟨(2030418877256702153354468411292183127062917588355041579667419295840969680588 : F), 5219, 8, 30⟩], residual := [((1747355640068679147516328884857115463749624824253420006611042383112582562104 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), runs := [⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 4472, 5, 149⟩, ⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 5220, 8, 30⟩], residual := [((7305892694301029992493071465213924921567977686636080727368555182846421408795 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5628 (rho : Nat -> F) : Prop :=
    (relationLc1020 rho) * (relationLc1021 rho) = ((1 : F) * rho 5454)

def relationLc1022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), runs := [⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 4472, 5, 149⟩, ⟨(1603279230062761644371699523018134843206550750153332960177912966805714289819 : F), 5220, 8, 30⟩, ⟨(6083144384519493791896324904071478793578622929786030430707294081222152755324 : F), 4471, 5, 149⟩, ⟨(6083144384519493791896324904071478793578622929786030430707294081222152755324 : F), 5219, 8, 30⟩], residual := [((4902552823771956875741508036393245377867373978126235817730127599362191232359 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5629 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1022 rho) = ((1 : F) * rho 5455)

def relationRow5630 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5456) * ((1 : F) + (1 : F) * rho 5454) = ((1 : F) * rho 5455)

def relationLc1023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), runs := [⟨(2361317364908876632352500034710067737797276405368033397227939374695256483717 : F), 4471, 5, 149⟩, ⟨(2361317364908876632352500034710067737797276405368033397227939374695256483717 : F), 5219, 8, 30⟩, ⟨(6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), 4472, 5, 149⟩, ⟨(6841182519365608779877125415763411688169348585000730867757320489111694949222 : F), 5220, 8, 30⟩], residual := [((3541908925656413548507316902388301153508525357027828010205105856555218006682 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5631 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1023 rho) = ((1 : F) * rho 5457)

def relationRow5632 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5458) * ((1 : F) + (-1 : F) * rho 5454) = ((7686423614582255436268024427089613636785173679939363390885207048027867045143 : F) * rho 5453 + (1 : F) * rho 5457)

def relationLc1024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 30⟩], residual := [((1 : F), 5456), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5633 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4396) * (relationLc1024 rho) = ((1 : F) * rho 5459)

def relationLc1025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 30⟩], residual := [((1 : F), 5458), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5634 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4396) * (relationLc1025 rho) = ((1 : F) * rho 5460)

def relationLc1026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 31⟩, ⟨(1 : F), 5220, 8, 31⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5635 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1026 rho) = ((1 : F) * rho 5461)

def relationLc1027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(930106514699292104098886691997863737420803130699452871113229389318586867854 : F), 4471, 5, 149⟩, ⟨(930106514699292104098886691997863737420803130699452871113229389318586867854 : F), 5219, 8, 31⟩], residual := [((1253059424289635349379570659365335954028514234507196113617158335561908180886 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), runs := [⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 4472, 5, 149⟩, ⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 5220, 8, 31⟩], residual := [((1575016505422756477411102303246794318989971918617923936142043927069825021556 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5636 (rho : Nat -> F) : Prop :=
    (relationLc1027 rho) * (relationLc1028 rho) = ((1 : F) * rho 5462)

def relationLc1029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), runs := [⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 4472, 5, 149⟩, ⟨(5450362568005965995137715720743602359950351483618969119969701489607880727354 : F), 5220, 8, 31⟩, ⟨(7863356838019432405003655557591687605593454363760040053244927156863618264247 : F), 4471, 5, 149⟩, ⟨(7863356838019432405003655557591687605593454363760040053244927156863618264247 : F), 5219, 8, 31⟩], residual := [((6673974231467654620138423143695952282970001346474765915045547065742091277826 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5637 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1029 rho) = ((1 : F) * rho 5463)

def relationRow5638 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5464) * ((1 : F) + (1 : F) * rho 5462) = ((1 : F) * rho 5463)

def relationLc1030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), runs := [⟨(2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), 4472, 5, 149⟩, ⟨(2994099181422404429111109218037944171425547851535094707965531966309528511687 : F), 5220, 8, 31⟩, ⟨(581104911408938019245169381189858925782444971394023774690306299053790974794 : F), 4471, 5, 149⟩, ⟨(581104911408938019245169381189858925782444971394023774690306299053790974794 : F), 5219, 8, 31⟩], residual := [((1770487517960715804110401795085594248405897988679297912889686390175317961215 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5639 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1030 rho) = ((1 : F) * rho 5465)

def relationRow5640 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5466) * ((1 : F) + (-1 : F) * rho 5462) = ((4869257656597027975892546339553743434167906512224945345279395190554089752560 : F) * rho 5461 + (1 : F) * rho 5465)

def relationLc1031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 31⟩], residual := [((1 : F), 5464), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5641 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4397) * (relationLc1031 rho) = ((1 : F) * rho 5467)

def relationLc1032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 31⟩], residual := [((1 : F), 5466), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5642 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4397) * (relationLc1032 rho) = ((1 : F) * rho 5468)

def relationLc1033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 32⟩, ⟨(1 : F), 5220, 8, 32⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5643 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1033 rho) = ((1 : F) * rho 5469)

def relationLc1034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1280360060523824470092106696621627832627530184276510703344518048220712403801 : F), 4471, 5, 149⟩, ⟨(1280360060523824470092106696621627832627530184276510703344518048220712403801 : F), 5219, 8, 32⟩], residual := [((8287987664941402397117653789786020645287437279613880328591813012593442627238 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), runs := [⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 4472, 5, 149⟩, ⟨(3726626880727964336139318661652673543979097185776260883037520700210038994276 : F), 5220, 8, 32⟩], residual := [((121575702908755372201135340724619640361875339229139199078923729978452142890 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5644 (rho : Nat -> F) : Prop :=
    (relationLc1034 rho) * (relationLc1035 rho) = ((1 : F) * rho 5470)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
