import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs59

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5583698528164692838402980741959626251173701775268830069611535213005733006979 : F), runs := [⟨(5583698528164692838402980741959626251173701775268830069611535213005733006979 : F), 773, 5, 149⟩, ⟨(5583698528164692838402980741959626251173701775268830069611535213005733006979 : F), 1521, 8, 57⟩, ⟨(981937579773712172214330797632388462843654827090773070401928988692607316781 : F), 772, 5, 149⟩, ⟨(981937579773712172214330797632388462843654827090773070401928988692607316781 : F), 1520, 8, 57⟩], residual := [((3249783709267665357026519084747577317755589655224910399908208259768197357854 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1974 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1206 rho) = ((1 : F) * rho 1974)

def relationRow1975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1975) * ((1 : F) + (-1 : F) * rho 1971) = ((1878825641489965413631513399189531817358542732794460687921769254219068915281 : F) * rho 1970 + (1 : F) * rho 1974)

def relationLc1207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 57⟩], residual := [((1 : F), 1973), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 724) * (relationLc1207 rho) = ((1 : F) * rho 1976)

def relationLc1208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 57⟩], residual := [((1 : F), 1975), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 724) * (relationLc1208 rho) = ((1 : F) * rho 1977)

def relationLc1209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 58⟩, ⟨(1 : F), 1521, 8, 58⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1978 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1209 rho) = ((1 : F) * rho 1978)

def relationLc1210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(242475782950553990148664671100116111350985007453089951790268089730792064113 : F), 772, 5, 149⟩, ⟨(242475782950553990148664671100116111350985007453089951790268089730792064113 : F), 1520, 8, 58⟩], residual := [((4068257700137201981391246638348631810753138665802486623152103742596882974052 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), runs := [⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 773, 5, 149⟩, ⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 1521, 8, 58⟩], residual := [((2692737952833932520316010234032258108169355595324402587875864690555969585701 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1979 (rho : Nat -> F) : Prop :=
    (relationLc1210 rho) * (relationLc1211 rho) = ((1 : F) * rho 1979)

def relationLc1212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), runs := [⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 773, 5, 149⟩, ⟨(7465113095028451185872799872536013607722630637219810378141917417312569802674 : F), 1521, 8, 58⟩, ⟨(8153835616969714359988073820290258638905941524545467486275692240649061086510 : F), 772, 5, 149⟩, ⟨(8153835616969714359988073820290258638905941524545467486275692240649061086510 : F), 1520, 8, 58⟩], residual := [((3703171236264511442902973838646123361276754734237484192810578818768078694694 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1980 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1212 rho) = ((1 : F) * rho 1980)

def relationRow1981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1981) * ((1 : F) + (1 : F) * rho 1979) = ((1 : F) * rho 1980)

def relationLc1213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (979348654399919238376025066245532923653268697934253449793316038604839436367 : F), runs := [⟨(290626132458656064260751118491287892469957810608596341659541215268348152531 : F), 772, 5, 149⟩, ⟨(290626132458656064260751118491287892469957810608596341659541215268348152531 : F), 1520, 8, 58⟩, ⟨(979348654399919238376025066245532923653268697934253449793316038604839436367 : F), 773, 5, 149⟩, ⟨(979348654399919238376025066245532923653268697934253449793316038604839436367 : F), 1521, 8, 58⟩], residual := [((4741290513163858981345851100135423170099144600916579635124654637149330544347 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1982 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1213 rho) = ((1 : F) * rho 1982)

def relationRow1983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1983) * ((1 : F) + (-1 : F) * rho 1979) = ((7174486962569795121612048754044725715252672826611214036482376202044221650143 : F) * rho 1978 + (1 : F) * rho 1982)

def relationLc1214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 58⟩], residual := [((1 : F), 1981), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 725) * (relationLc1214 rho) = ((1 : F) * rho 1984)

def relationLc1215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 58⟩], residual := [((1 : F), 1983), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 725) * (relationLc1215 rho) = ((1 : F) * rho 1985)

def relationLc1216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 59⟩, ⟨(1 : F), 1521, 8, 59⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1986 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1216 rho) = ((1 : F) * rho 1986)

def relationLc1217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5626874210683066344703416103870189711441465301563842461754122511592407790138 : F), 772, 5, 149⟩, ⟨(5626874210683066344703416103870189711441465301563842461754122511592407790138 : F), 1520, 8, 59⟩], residual := [((1808281244680904552489492991420048991943923359052202397801231545156362684153 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), runs := [⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 773, 5, 149⟩, ⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 1521, 8, 59⟩], residual := [((2394394569641527098060815883352803663392756907676881861840041555934705680524 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1987 (rho : Nat -> F) : Prop :=
    (relationLc1217 rho) * (relationLc1218 rho) = ((1 : F) * rho 1987)

def relationLc1219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), runs := [⟨(4829265910451333594512553487381529642303084944426558117612016650407467118045 : F), 772, 5, 149⟩, ⟨(4829265910451333594512553487381529642303084944426558117612016650407467118045 : F), 1520, 8, 59⟩, ⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 773, 5, 149⟩, ⟨(8030100344403790845996943823625781763957991048782322609484900374187528137681 : F), 1521, 8, 59⟩], residual := [((2258025703545099012580609683747085116207892576639643554931393688409119222388 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1988 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1219 rho) = ((1 : F) * rho 1988)

def relationRow1989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1989) * ((1 : F) + (1 : F) * rho 1987) = ((1 : F) * rho 1988)

def relationLc1220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (414361405024579578251881115155764767417908286371741218450333081729881101360 : F), runs := [⟨(3615195838977036829736271451400016889072814390727505710323216805509942120996 : F), 772, 5, 149⟩, ⟨(3615195838977036829736271451400016889072814390727505710323216805509942120996 : F), 1520, 8, 59⟩, ⟨(414361405024579578251881115155764767417908286371741218450333081729881101360 : F), 773, 5, 149⟩, ⟨(414361405024579578251881115155764767417908286371741218450333081729881101360 : F), 1521, 8, 59⟩], residual := [((6186436045883271411668215255034461415168006758514420273003839767508290016653 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1990 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1220 rho) = ((1 : F) * rho 1990)

def relationRow1991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1991) * ((1 : F) + (-1 : F) * rho 1987) = ((4414904505426754016260672372225764874885176658054816899161683568677586016685 : F) * rho 1986 + (1 : F) * rho 1990)

def relationLc1221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 59⟩], residual := [((1 : F), 1989), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 726) * (relationLc1221 rho) = ((1 : F) * rho 1992)

def relationLc1222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 59⟩], residual := [((1 : F), 1991), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 726) * (relationLc1222 rho) = ((1 : F) * rho 1993)

def relationLc1223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 60⟩, ⟨(1 : F), 1521, 8, 60⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1994 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1223 rho) = ((1 : F) * rho 1994)

def relationLc1224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5473384982003616673406746261125479475040486441609635798000763090753894835591 : F), 772, 5, 149⟩, ⟨(5473384982003616673406746261125479475040486441609635798000763090753894835591 : F), 1520, 8, 60⟩], residual := [((5921283769484743309292289095720219236617528250280403079561652748954462198901 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), runs := [⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 773, 5, 149⟩, ⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 1521, 8, 60⟩], residual := [((2978822135553467932400026135049372739244910881062198026797986470482102973233 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1995 (rho : Nat -> F) : Prop :=
    (relationLc1224 rho) * (relationLc1225 rho) = ((1 : F) * rho 1995)

def relationLc1226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), runs := [⟨(1153456347483115601279021059595869794902982791302576608046116169125695631023 : F), 772, 5, 149⟩, ⟨(1153456347483115601279021059595869794902982791302576608046116169125695631023 : F), 1520, 8, 60⟩, ⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 773, 5, 149⟩, ⟨(3782900478265775560931739200186194103556643599302583319935031983674800803617 : F), 1521, 8, 60⟩], residual := [((4462266693966748656716864766843460750124038380526592012857316289874748242644 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1996 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1226 rho) = ((1 : F) * rho 1996)

def relationRow1997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1997) * ((1 : F) + (1 : F) * rho 1995) = ((1 : F) * rho 1996)

def relationLc1227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4661561271162594863317085738595352427819255735851480508000201472242608435424 : F), runs := [⟨(4661561271162594863317085738595352427819255735851480508000201472242608435424 : F), 773, 5, 149⟩, ⟨(4661561271162594863317085738595352427819255735851480508000201472242608435424 : F), 1521, 8, 60⟩, ⟨(7291005401945254822969803879185676736472916543851487219889117286791713608018 : F), 772, 5, 149⟩, ⟨(7291005401945254822969803879185676736472916543851487219889117286791713608018 : F), 1520, 8, 60⟩], residual := [((3982195055461621767531960171938085781251860954627471815077917166042660996397 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1998 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1227 rho) = ((1 : F) * rho 1998)

def relationRow1999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1999) * ((1 : F) + (-1 : F) * rho 1995) = ((4936356825748891162210760259782063898459626390605159927981148152800496434640 : F) * rho 1994 + (1 : F) * rho 1998)

def relationLc1228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 60⟩], residual := [((1 : F), 1997), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 727) * (relationLc1228 rho) = ((1 : F) * rho 2000)

def relationLc1229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 60⟩], residual := [((1 : F), 1999), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 727) * (relationLc1229 rho) = ((1 : F) * rho 2001)

def relationLc1230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 61⟩, ⟨(1 : F), 1521, 8, 61⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2002 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1230 rho) = ((1 : F) * rho 2002)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
