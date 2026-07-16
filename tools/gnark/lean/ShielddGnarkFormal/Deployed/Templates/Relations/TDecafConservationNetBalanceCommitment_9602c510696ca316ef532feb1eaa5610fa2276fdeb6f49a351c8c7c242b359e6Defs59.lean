import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs58

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc1212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (979348654399919238376025066245532923653268697934253449793316038604839436367 : F), runs := [⟨(290626132458656064260751118491287892469957810608596341659541215268348152531 : F), 643, 5, 149⟩, ⟨(290626132458656064260751118491287892469957810608596341659541215268348152531 : F), 1391, 8, 58⟩, ⟨(979348654399919238376025066245532923653268697934253449793316038604839436367 : F), 644, 5, 149⟩, ⟨(979348654399919238376025066245532923653268697934253449793316038604839436367 : F), 1392, 8, 58⟩], residual := [((4741290513163858981345851100135423170099144600916579635124654637149330544347 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1853 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1212 rho) = ((1 : F) * rho 1853)

def relationRow1854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1854) * ((1 : F) + (-1 : F) * rho 1850) = ((7174486962569795121612048754044725715252672826611214036482376202044221650143 : F) * rho 1849 + (1 : F) * rho 1853)

def relationLc1213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 58⟩], residual := [((1 : F), 1852), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 596) * (relationLc1213 rho) = ((1 : F) * rho 1855)

def relationLc1214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 58⟩], residual := [((1 : F), 1854), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 596) * (relationLc1214 rho) = ((1 : F) * rho 1856)

def relationLc1215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 59⟩, ⟨(1 : F), 1392, 8, 59⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1857 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1215 rho) = ((1 : F) * rho 1857)

def relationLc1216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5626874210683066344703416103870189711441465301563842461754122511592407790138 : F), 643, 5, 149⟩, ⟨(5626874210683066344703416103870189711441465301563842461754122511592407790138 : F), 1391, 8, 59⟩], residual := [((1808281244680904552489492991420048991943923359052202397801231545156362684153 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), runs := [⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 644, 5, 149⟩, ⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 1392, 8, 59⟩], residual := [((2394394569641527098060815883352803663392756907676881861840041555934705680524 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1858 (rho : Nat -> F) : Prop :=
    (relationLc1216 rho) * (relationLc1217 rho) = ((1 : F) * rho 1858)

def relationLc1218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), runs := [⟨(4829265910451333594512553487381529642303084944426558117612016650407467118045 : F), 643, 5, 149⟩, ⟨(4829265910451333594512553487381529642303084944426558117612016650407467118045 : F), 1391, 8, 59⟩, ⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 644, 5, 149⟩, ⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 1392, 8, 59⟩], residual := [((2258025703545099012580609683747085116207892576639643554931393688409119222388 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1859 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1218 rho) = ((1 : F) * rho 1859)

def relationRow1860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1860) * ((1 : F) + (1 : F) * rho 1858) = ((1 : F) * rho 1859)

def relationLc1219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (414361405024579578251881115155764767417908286371741218450333081729881101360 : F), runs := [⟨(3615195838977036829736271451400016889072814390727505710323216805509942120996 : F), 643, 5, 149⟩, ⟨(3615195838977036829736271451400016889072814390727505710323216805509942120996 : F), 1391, 8, 59⟩, ⟨(414361405024579578251881115155764767417908286371741218450333081729881101360 : F), 644, 5, 149⟩, ⟨(414361405024579578251881115155764767417908286371741218450333081729881101360 : F), 1392, 8, 59⟩], residual := [((6186436045883271411668215255034461415168006758514420273003839767508290016653 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1861 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1219 rho) = ((1 : F) * rho 1861)

def relationRow1862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1862) * ((1 : F) + (-1 : F) * rho 1858) = ((4414904505426754016260672372225764874885176658054816899161683568677586016685 : F) * rho 1857 + (1 : F) * rho 1861)

def relationLc1220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 59⟩], residual := [((1 : F), 1860), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 597) * (relationLc1220 rho) = ((1 : F) * rho 1863)

def relationLc1221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 59⟩], residual := [((1 : F), 1862), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 597) * (relationLc1221 rho) = ((1 : F) * rho 1864)

def relationLc1222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 60⟩, ⟨(1 : F), 1392, 8, 60⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1865 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1222 rho) = ((1 : F) * rho 1865)

def relationLc1223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5473384982003616673406746261125479475040486441609635798000763090753894835591 : F), 643, 5, 149⟩, ⟨(5473384982003616673406746261125479475040486441609635798000763090753894835591 : F), 1391, 8, 60⟩], residual := [((5921283769484743309292289095720219236617528250280403079561652748954462198901 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), runs := [⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 644, 5, 149⟩, ⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 1392, 8, 60⟩], residual := [((2978822135553467932400026135049372739244910881062198026797986470482102973233 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1866 (rho : Nat -> F) : Prop :=
    (relationLc1223 rho) * (relationLc1224 rho) = ((1 : F) * rho 1866)

def relationLc1225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), runs := [⟨(1153456347483115601279021059595869794902982791302576608046116169125695631023 : F), 643, 5, 149⟩, ⟨(1153456347483115601279021059595869794902982791302576608046116169125695631023 : F), 1391, 8, 60⟩, ⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 644, 5, 149⟩, ⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 1392, 8, 60⟩], residual := [((4462266693966748656716864766843460750124038380526592012857316289874748242644 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1867 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1225 rho) = ((1 : F) * rho 1867)

def relationRow1868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1868) * ((1 : F) + (1 : F) * rho 1866) = ((1 : F) * rho 1867)

def relationLc1226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4661561271162594863317085738595352427819255735851480508000201472242608435424 : F), runs := [⟨(4661561271162594863317085738595352427819255735851480508000201472242608435424 : F), 644, 5, 149⟩, ⟨(4661561271162594863317085738595352427819255735851480508000201472242608435424 : F), 1392, 8, 60⟩, ⟨(7291005401945254822969803879185676736472916543851487219889117286791713608018 : F), 643, 5, 149⟩, ⟨(7291005401945254822969803879185676736472916543851487219889117286791713608018 : F), 1391, 8, 60⟩], residual := [((3982195055461621767531960171938085781251860954627471815077917166042660996397 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1869 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1226 rho) = ((1 : F) * rho 1869)

def relationRow1870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1870) * ((1 : F) + (-1 : F) * rho 1866) = ((4936356825748891162210760259782063898459626390605159927981148152800496434640 : F) * rho 1865 + (1 : F) * rho 1869)

def relationLc1227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 60⟩], residual := [((1 : F), 1868), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * (relationLc1227 rho) = ((1 : F) * rho 1871)

def relationLc1228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 60⟩], residual := [((1 : F), 1870), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * (relationLc1228 rho) = ((1 : F) * rho 1872)

def relationLc1229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 61⟩, ⟨(1 : F), 1392, 8, 61⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1873 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1229 rho) = ((1 : F) * rho 1873)

def relationLc1230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4970835380288419513008239029437287106231989988900827406336487343702981714531 : F), 643, 5, 149⟩, ⟨(4970835380288419513008239029437287106231989988900827406336487343702981714531 : F), 1391, 8, 61⟩], residual := [((3914855939400010267395769549785628516737672253666516413791924500803172494869 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5327628337272062592313728388198953727348222447182547552187548765040713893608 : F), runs := [⟨(5327628337272062592313728388198953727348222447182547552187548765040713893608 : F), 644, 5, 149⟩, ⟨(5327628337272062592313728388198953727348222447182547552187548765040713893608 : F), 1392, 8, 61⟩], residual := [((7616254520482598805940572677297280819744719537678599802357995976373364873921 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1874 (rho : Nat -> F) : Prop :=
    (relationLc1230 rho) * (relationLc1231 rho) = ((1 : F) * rho 1874)

def relationLc1232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5327628337272062592313728388198953727348222447182547552187548765040713893608 : F), runs := [⟨(423728751917898826075663953917726187800063816483669137843282601518448122082 : F), 643, 5, 149⟩, ⟨(423728751917898826075663953917726187800063816483669137843282601518448122082 : F), 1391, 8, 61⟩, ⟨(5327628337272062592313728388198953727348222447182547552187548765040713893608 : F), 644, 5, 149⟩, ⟨(5327628337272062592313728388198953727348222447182547552187548765040713893608 : F), 1392, 8, 61⟩], residual := [((106703423238430874894827281416370557814794399874792126340723427035637150383 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1875 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1232 rho) = ((1 : F) * rho 1875)

def relationRow1876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1876) * ((1 : F) + (1 : F) * rho 1874) = ((1 : F) * rho 1875)

def relationLc1233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3116833412156307831935096550582592804027676887971516275747684690876695345433 : F), runs := [⟨(3116833412156307831935096550582592804027676887971516275747684690876695345433 : F), 644, 5, 149⟩, ⟨(3116833412156307831935096550582592804027676887971516275747684690876695345433 : F), 1392, 8, 61⟩, ⟨(8020732997510471598173160984863820343575835518670394690091950854398961116959 : F), 643, 5, 149⟩, ⟨(8020732997510471598173160984863820343575835518670394690091950854398961116959 : F), 1391, 8, 61⟩], residual := [((8337758326189939549353997657365175973561104935279271701594510028881772088658 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1877 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1233 rho) = ((1 : F) * rho 1877)

def relationRow1878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1878) * ((1 : F) + (-1 : F) * rho 1874) = ((5751357089189961418389392342116679915148286263666216690030831366559162015690 : F) * rho 1873 + (1 : F) * rho 1877)

def relationLc1234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 61⟩], residual := [((1 : F), 1876), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 599) * (relationLc1234 rho) = ((1 : F) * rho 1879)

def relationLc1235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 61⟩], residual := [((1 : F), 1878), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 599) * (relationLc1235 rho) = ((1 : F) * rho 1880)

def relationLc1236 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 62⟩, ⟨(1 : F), 1392, 8, 62⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1881 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1236 rho) = ((1 : F) * rho 1881)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
