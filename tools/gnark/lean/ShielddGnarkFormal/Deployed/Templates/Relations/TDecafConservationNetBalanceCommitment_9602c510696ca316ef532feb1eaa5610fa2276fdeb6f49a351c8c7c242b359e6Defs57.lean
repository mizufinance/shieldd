import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs56

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc1163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), runs := [⟨(6796472301228504588765892628070379728289900932705681437376265057569847019111 : F), 643, 5, 149⟩, ⟨(6796472301228504588765892628070379728289900932705681437376265057569847019111 : F), 1391, 8, 51⟩, ⟨(8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), 644, 5, 149⟩, ⟨(8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), 1392, 8, 51⟩], residual := [((5741484529749822437102014250412542629057507963104711540692913203713109461561 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1797 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1163 rho) = ((1 : F) * rho 1797)

def relationRow1798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1798) * ((1 : F) + (-1 : F) * rho 1794) = ((1924106044755335862376618100386607328755834921884122945075539886217063788344 : F) * rho 1793 + (1 : F) * rho 1797)

def relationLc1164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 51⟩], residual := [((1 : F), 1796), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 589) * (relationLc1164 rho) = ((1 : F) * rho 1799)

def relationLc1165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 51⟩], residual := [((1 : F), 1798), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 589) * (relationLc1165 rho) = ((1 : F) * rho 1800)

def relationLc1166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 52⟩, ⟨(1 : F), 1392, 8, 52⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1801 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1166 rho) = ((1 : F) * rho 1801)

def relationLc1167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1472990168100766808274768776588950065096616103908472784243790925035217376848 : F), 643, 5, 149⟩, ⟨(1472990168100766808274768776588950065096616103908472784243790925035217376848 : F), 1391, 8, 52⟩], residual := [((4101247221261016052067604421392065072123844859804398562413106244858019716921 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), runs := [⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 644, 5, 149⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 1392, 8, 52⟩], residual := [((8244586507561696599760777546095843143132366719533414419000579313209516988736 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1802 (rho : Nat -> F) : Prop :=
    (relationLc1167 rho) * (relationLc1168 rho) = ((1 : F) * rho 1802)

def relationLc1169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), runs := [⟨(3357587405240507661811027315542279488330867831057245657111704459278994939909 : F), 643, 5, 149⟩, ⟨(3357587405240507661811027315542279488330867831057245657111704459278994939909 : F), 1391, 8, 52⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 644, 5, 149⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 1392, 8, 52⟩], residual := [((2124338250684215562669463738909416516637465792976779071560742119494102154647 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1803 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1169 rho) = ((1 : F) * rho 1803)

def relationRow1804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1804) * ((1 : F) + (1 : F) * rho 1802) = ((1 : F) * rho 1803)

def relationLc1170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), runs := [⟨(5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), 644, 5, 149⟩, ⟨(5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), 1392, 8, 52⟩, ⟨(5086874344187862762437797623239267043045031504096818170823528996638414299132 : F), 643, 5, 149⟩, ⟨(5086874344187862762437797623239267043045031504096818170823528996638414299132 : F), 1391, 8, 52⟩], residual := [((6320123498744154861579361199872130014738433542177284756374491336423307084394 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1805 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1170 rho) = ((1 : F) * rho 1805)

def relationRow1806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1806) * ((1 : F) + (-1 : F) * rho 1802) = ((6799685965125510894046453527071308945795064131398509927530528952043280184447 : F) * rho 1801 + (1 : F) * rho 1805)

def relationLc1171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 52⟩], residual := [((1 : F), 1804), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 590) * (relationLc1171 rho) = ((1 : F) * rho 1807)

def relationLc1172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 52⟩], residual := [((1 : F), 1806), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 590) * (relationLc1172 rho) = ((1 : F) * rho 1808)

def relationLc1173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 53⟩, ⟨(1 : F), 1392, 8, 53⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1809 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1173 rho) = ((1 : F) * rho 1809)

def relationLc1174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4634094232405047917389638427388196843876424390529208030164184382239773207702 : F), 643, 5, 149⟩, ⟨(4634094232405047917389638427388196843876424390529208030164184382239773207702 : F), 1391, 8, 53⟩], residual := [((6738134345351785891826393668637195759734714576430081917563349080497569352953 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), runs := [⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 644, 5, 149⟩, ⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 1392, 8, 53⟩], residual := [((7914361061998835072296676203602698436586194749795357566391867891878379072504 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1810 (rho : Nat -> F) : Prop :=
    (relationLc1174 rho) * (relationLc1175 rho) = ((1 : F) * rho 1810)

def relationLc1176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), runs := [⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 644, 5, 149⟩, ⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 1392, 8, 53⟩, ⟨(6838724771047401226623639668549172794634004037794561182111799145169223029428 : F), 643, 5, 149⟩, ⟨(6838724771047401226623639668549172794634004037794561182111799145169223029428 : F), 1391, 8, 53⟩], residual := [((7427422077621273656092863568508976673186311377046092062263730683766810370922 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1811 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1176 rho) = ((1 : F) * rho 1811)

def relationRow1812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1812) * ((1 : F) + (1 : F) * rho 1810) = ((1 : F) * rho 1811)

def relationLc1177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1743505993814253963826801763893162786232948227562705265612526849400049613051 : F), runs := [⟨(1605736978380969197625185270232373736741895297359502645823434310748186209613 : F), 643, 5, 149⟩, ⟨(1605736978380969197625185270232373736741895297359502645823434310748186209613 : F), 1391, 8, 53⟩, ⟨(1743505993814253963826801763893162786232948227562705265612526849400049613051 : F), 644, 5, 149⟩, ⟨(1743505993814253963826801763893162786232948227562705265612526849400049613051 : F), 1392, 8, 53⟩], residual := [((1017039671807096768155961370272569858189587958107971765671502772150598868119 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1813 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1177 rho) = ((1 : F) * rho 1813)

def relationRow1814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1814) * ((1 : F) + (-1 : F) * rho 1810) = ((5095218777233147262796837904656010008401055810231855916499272295769173416377 : F) * rho 1809 + (1 : F) * rho 1813)

def relationLc1178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 53⟩], residual := [((1 : F), 1812), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 591) * (relationLc1178 rho) = ((1 : F) * rho 1815)

def relationLc1179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 53⟩], residual := [((1 : F), 1814), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 591) * (relationLc1179 rho) = ((1 : F) * rho 1816)

def relationLc1180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 54⟩, ⟨(1 : F), 1392, 8, 54⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1817 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1180 rho) = ((1 : F) * rho 1817)

def relationLc1181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6252801731037269485165717073273153637218394150851405520605446725800038741185 : F), 643, 5, 149⟩, ⟨(6252801731037269485165717073273153637218394150851405520605446725800038741185 : F), 1391, 8, 54⟩], residual := [((564167192971765932790941774524313935462998939855634453737492982849320556999 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7785157229099352850933791713914015122664496508205396539435072476621716026728 : F), runs := [⟨(7785157229099352850933791713914015122664496508205396539435072476621716026728 : F), 644, 5, 149⟩, ⟨(7785157229099352850933791713914015122664496508205396539435072476621716026728 : F), 1392, 8, 54⟩], residual := [((168003565122874189380771387783550189351077983037762698356310535685290194946 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1818 (rho : Nat -> F) : Prop :=
    (relationLc1181 rho) * (relationLc1182 rho) = ((1 : F) * rho 1818)

def relationLc1183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7785157229099352850933791713914015122664496508205396539435072476621716026728 : F), runs := [⟨(2123667417923591665504807628470197607067701419904927458101108123060944604824 : F), 643, 5, 149⟩, ⟨(2123667417923591665504807628470197607067701419904927458101108123060944604824 : F), 1391, 8, 54⟩, ⟨(7785157229099352850933791713914015122664496508205396539435072476621716026728 : F), 644, 5, 149⟩, ⟨(7785157229099352850933791713914015122664496508205396539435072476621716026728 : F), 1392, 8, 54⟩], residual := [((5655273535768641454767475888479578046029778212712467408283685830934784950588 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1819 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1183 rho) = ((1 : F) * rho 1819)

def relationRow1820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1820) * ((1 : F) + (1 : F) * rho 1818) = ((1 : F) * rho 1819)

def relationLc1184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (659304520329017573315033224867531408711402826948667288500160979295693212313 : F), runs := [⟨(6320794331504778758744017310311348924308197915249136369834125332856464634217 : F), 643, 5, 149⟩, ⟨(6320794331504778758744017310311348924308197915249136369834125332856464634217 : F), 1391, 8, 54⟩, ⟨(659304520329017573315033224867531408711402826948667288500160979295693212313 : F), 644, 5, 149⟩, ⟨(659304520329017573315033224867531408711402826948667288500160979295693212313 : F), 1392, 8, 54⟩], residual := [((2789188213659728969481349050301968485346121122441596419651547624982624288453 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1821 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1184 rho) = ((1 : F) * rho 1821)

def relationRow1822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1822) * ((1 : F) + (-1 : F) * rho 1818) = ((1464362897594574092189774403602666198356298592956260169600947143765251392511 : F) * rho 1817 + (1 : F) * rho 1821)

def relationLc1185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 54⟩], residual := [((1 : F), 1820), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 592) * (relationLc1185 rho) = ((1 : F) * rho 1823)

def relationLc1186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 54⟩], residual := [((1 : F), 1822), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 592) * (relationLc1186 rho) = ((1 : F) * rho 1824)

def relationLc1187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 55⟩, ⟨(1 : F), 1392, 8, 55⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1825 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1187 rho) = ((1 : F) * rho 1825)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
