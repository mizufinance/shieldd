import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs103

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4415) * (relationLc1157 rho) = ((1 : F) * rho 5611)

def relationLc1158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 49⟩], residual := [((1 : F), 5610), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4415) * (relationLc1158 rho) = ((1 : F) * rho 5612)

def relationLc1159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 50⟩, ⟨(1 : F), 5220, 8, 50⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5787 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1159 rho) = ((1 : F) * rho 5613)

def relationLc1160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7294741384406122612791044117814251732765985977416739593294040271150085610129 : F), 4471, 5, 149⟩, ⟨(7294741384406122612791044117814251732765985977416739593294040271150085610129 : F), 5219, 8, 50⟩], residual := [((8280214252583025169891409716798129779029250702630506565416096652795038393465 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (237407082182476649271201308514110417937957700889391563201001451196613456842 : F), runs := [⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 4472, 5, 149⟩, ⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 5220, 8, 50⟩], residual := [((4440596737623467634352615922521817381278024270263026038921952693420240567282 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5788 (rho : Nat -> F) : Prop :=
    (relationLc1160 rho) * (relationLc1161 rho) = ((1 : F) * rho 5614)

def relationLc1162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (237407082182476649271201308514110417937957700889391563201001451196613456842 : F), runs := [⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 4472, 5, 149⟩, ⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 5220, 8, 50⟩, ⟨(961186733346023561115570340324357733199172280018292165698470412330626102152 : F), 4471, 5, 149⟩, ⟨(961186733346023561115570340324357733199172280018292165698470412330626102152 : F), 5219, 8, 50⟩], residual := [((429353156714312750522287818459088917432687562358820428081310804626925562691 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5789 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1162 rho) = ((1 : F) * rho 5615)

def relationRow5790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5616) * ((1 : F) + (1 : F) * rho 5614) = ((1 : F) * rho 5615)

def relationLc1163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), runs := [⟨(7483275016082346863133254598457188798176727055135771662236763043586783136889 : F), 4471, 5, 149⟩, ⟨(7483275016082346863133254598457188798176727055135771662236763043586783136889 : F), 5219, 8, 50⟩, ⟨(8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), 4472, 5, 149⟩, ⟨(8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), 5220, 8, 50⟩], residual := [((8015108592714057673726537120322457613943211772795243399853922651290483676350 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5791 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1163 rho) = ((1 : F) * rho 5617)

def relationRow5792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5618) * ((1 : F) + (-1 : F) * rho 5614) = ((1198593815528500210386771648838468151137129980907683728899471863527239558994 : F) * rho 5613 + (1 : F) * rho 5617)

def relationLc1164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 50⟩], residual := [((1 : F), 5616), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4416) * (relationLc1164 rho) = ((1 : F) * rho 5619)

def relationLc1165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 50⟩], residual := [((1 : F), 5618), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4416) * (relationLc1165 rho) = ((1 : F) * rho 5620)

def relationLc1166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 51⟩, ⟨(1 : F), 5220, 8, 51⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5795 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1166 rho) = ((1 : F) * rho 5621)

def relationLc1167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4788152598484509111380621716104005142396465390819607224791025872631424613381 : F), 4471, 5, 149⟩, ⟨(4788152598484509111380621716104005142396465390819607224791025872631424613381 : F), 5219, 8, 51⟩], residual := [((5568233743258565406855880537247248386639754788323356025239016120687784694847 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (276116596555470026893685789675440525669836519435740554516571487869501568414 : F), runs := [⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 4472, 5, 149⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 5220, 8, 51⟩], residual := [((7604009220590200803672988464630369465922061573662031730530357480128314349007 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5796 (rho : Nat -> F) : Prop :=
    (relationLc1167 rho) * (relationLc1168 rho) = ((1 : F) * rho 5622)

def relationLc1169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (276116596555470026893685789675440525669836519435740554516571487869501568414 : F), runs := [⟨(1647989448199865835482932310711166803085998402448382390558968398347562219930 : F), 4471, 5, 149⟩, ⟨(1647989448199865835482932310711166803085998402448382390558968398347562219930 : F), 5219, 8, 51⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 4472, 5, 149⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 5220, 8, 51⟩], residual := [((2702977219678547987146810688369003902318391372049352287242320252204299777480 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5797 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1169 rho) = ((1 : F) * rho 5623)

def relationRow5798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5624) * ((1 : F) + (1 : F) * rho 5622) = ((1 : F) * rho 5623)

def relationLc1170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), runs := [⟨(6796472301228504588765892628070379728289900932705681437376265057569847019111 : F), 4471, 5, 149⟩, ⟨(6796472301228504588765892628070379728289900932705681437376265057569847019111 : F), 5219, 8, 51⟩, ⟨(8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), 4472, 5, 149⟩, ⟨(8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), 5220, 8, 51⟩], residual := [((5741484529749822437102014250412542629057507963104711540692913203713109461561 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5799 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1170 rho) = ((1 : F) * rho 5625)

def relationRow5800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5626) * ((1 : F) + (-1 : F) * rho 5622) = ((1924106044755335862376618100386607328755834921884122945075539886217063788344 : F) * rho 5621 + (1 : F) * rho 5625)

def relationLc1171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 51⟩], residual := [((1 : F), 5624), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4417) * (relationLc1171 rho) = ((1 : F) * rho 5627)

def relationLc1172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 51⟩], residual := [((1 : F), 5626), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4417) * (relationLc1172 rho) = ((1 : F) * rho 5628)

def relationLc1173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 52⟩, ⟨(1 : F), 5220, 8, 52⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5803 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1173 rho) = ((1 : F) * rho 5629)

def relationLc1174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1472990168100766808274768776588950065096616103908472784243790925035217376848 : F), 4471, 5, 149⟩, ⟨(1472990168100766808274768776588950065096616103908472784243790925035217376848 : F), 5219, 8, 52⟩], residual := [((4101247221261016052067604421392065072123844859804398562413106244858019716921 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), runs := [⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 4472, 5, 149⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 5220, 8, 52⟩], residual := [((8244586507561696599760777546095843143132366719533414419000579313209516988736 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5804 (rho : Nat -> F) : Prop :=
    (relationLc1174 rho) * (relationLc1175 rho) = ((1 : F) * rho 5630)

def relationLc1176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), runs := [⟨(3357587405240507661811027315542279488330867831057245657111704459278994939909 : F), 4471, 5, 149⟩, ⟨(3357587405240507661811027315542279488330867831057245657111704459278994939909 : F), 5219, 8, 52⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 4472, 5, 149⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 5220, 8, 52⟩], residual := [((2124338250684215562669463738909416516637465792976779071560742119494102154647 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5805 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1176 rho) = ((1 : F) * rho 5631)

def relationRow5806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5632) * ((1 : F) + (1 : F) * rho 5630) = ((1 : F) * rho 5631)

def relationLc1177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), runs := [⟨(5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), 4472, 5, 149⟩, ⟨(5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), 5220, 8, 52⟩, ⟨(5086874344187862762437797623239267043045031504096818170823528996638414299132 : F), 4471, 5, 149⟩, ⟨(5086874344187862762437797623239267043045031504096818170823528996638414299132 : F), 5219, 8, 52⟩], residual := [((6320123498744154861579361199872130014738433542177284756374491336423307084394 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5807 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1177 rho) = ((1 : F) * rho 5633)

def relationRow5808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5634) * ((1 : F) + (-1 : F) * rho 5630) = ((6799685965125510894046453527071308945795064131398509927530528952043280184447 : F) * rho 5629 + (1 : F) * rho 5633)

def relationLc1178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 52⟩], residual := [((1 : F), 5632), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4418) * (relationLc1178 rho) = ((1 : F) * rho 5635)

def relationLc1179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 52⟩], residual := [((1 : F), 5634), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4418) * (relationLc1179 rho) = ((1 : F) * rho 5636)

def relationLc1180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 53⟩, ⟨(1 : F), 5220, 8, 53⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5811 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1180 rho) = ((1 : F) * rho 5637)

def relationLc1181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4634094232405047917389638427388196843876424390529208030164184382239773207702 : F), 4471, 5, 149⟩, ⟨(4634094232405047917389638427388196843876424390529208030164184382239773207702 : F), 5219, 8, 53⟩], residual := [((6738134345351785891826393668637195759734714576430081917563349080497569352953 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), runs := [⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 4472, 5, 149⟩, ⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 5220, 8, 53⟩], residual := [((7914361061998835072296676203602698436586194749795357566391867891878379072504 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5812 (rho : Nat -> F) : Prop :=
    (relationLc1181 rho) * (relationLc1182 rho) = ((1 : F) * rho 5638)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
