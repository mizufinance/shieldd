import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs58

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow2041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 845) * (relationLc1152 rho) = ((1 : F) * rho 2041)

def relationLc1153 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 49⟩], residual := [((1 : F), 2040), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 845) * (relationLc1153 rho) = ((1 : F) * rho 2042)

def relationLc1154 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 50⟩, ⟨(1 : F), 1650, 8, 50⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2043 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1154 rho) = ((1 : F) * rho 2043)

def relationLc1155 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7294741384406122612791044117814251732765985977416739593294040271150085610129 : F), 901, 5, 149⟩, ⟨(7294741384406122612791044117814251732765985977416739593294040271150085610129 : F), 1649, 8, 50⟩], residual := [((8280214252583025169891409716798129779029250702630506565416096652795038393465 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1156 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (237407082182476649271201308514110417937957700889391563201001451196613456842 : F), runs := [⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 902, 5, 149⟩, ⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 1650, 8, 50⟩], residual := [((4440596737623467634352615922521817381278024270263026038921952693420240567282 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2044 (rho : Nat -> F) : Prop :=
    (relationLc1155 rho) * (relationLc1156 rho) = ((1 : F) * rho 2044)

def relationLc1157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (237407082182476649271201308514110417937957700889391563201001451196613456842 : F), runs := [⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 902, 5, 149⟩, ⟨(237407082182476649271201308514110417937957700889391563201001451196613456842 : F), 1650, 8, 50⟩, ⟨(961186733346023561115570340324357733199172280018292165698470412330626102152 : F), 901, 5, 149⟩, ⟨(961186733346023561115570340324357733199172280018292165698470412330626102152 : F), 1649, 8, 50⟩], residual := [((429353156714312750522287818459088917432687562358820428081310804626925562691 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2045 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1157 rho) = ((1 : F) * rho 2045)

def relationRow2046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2046) * ((1 : F) + (1 : F) * rho 2044) = ((1 : F) * rho 2045)

def relationLc1158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), runs := [⟨(7483275016082346863133254598457188798176727055135771662236763043586783136889 : F), 901, 5, 149⟩, ⟨(7483275016082346863133254598457188798176727055135771662236763043586783136889 : F), 1649, 8, 50⟩, ⟨(8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), 902, 5, 149⟩, ⟨(8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), 1650, 8, 50⟩], residual := [((8015108592714057673726537120322457613943211772795243399853922651290483676350 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2047 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1158 rho) = ((1 : F) * rho 2047)

def relationRow2048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2048) * ((1 : F) + (-1 : F) * rho 2044) = ((1198593815528500210386771648838468151137129980907683728899471863527239558994 : F) * rho 2043 + (1 : F) * rho 2047)

def relationLc1159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 50⟩], residual := [((1 : F), 2046), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 846) * (relationLc1159 rho) = ((1 : F) * rho 2049)

def relationLc1160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 50⟩], residual := [((1 : F), 2048), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 846) * (relationLc1160 rho) = ((1 : F) * rho 2050)

def relationLc1161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 51⟩, ⟨(1 : F), 1650, 8, 51⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2051 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1161 rho) = ((1 : F) * rho 2051)

def relationLc1162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4788152598484509111380621716104005142396465390819607224791025872631424613381 : F), 901, 5, 149⟩, ⟨(4788152598484509111380621716104005142396465390819607224791025872631424613381 : F), 1649, 8, 51⟩], residual := [((5568233743258565406855880537247248386639754788323356025239016120687784694847 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (276116596555470026893685789675440525669836519435740554516571487869501568414 : F), runs := [⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 902, 5, 149⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 1650, 8, 51⟩], residual := [((7604009220590200803672988464630369465922061573662031730530357480128314349007 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2052 (rho : Nat -> F) : Prop :=
    (relationLc1162 rho) * (relationLc1163 rho) = ((1 : F) * rho 2052)

def relationLc1164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (276116596555470026893685789675440525669836519435740554516571487869501568414 : F), runs := [⟨(1647989448199865835482932310711166803085998402448382390558968398347562219930 : F), 901, 5, 149⟩, ⟨(1647989448199865835482932310711166803085998402448382390558968398347562219930 : F), 1649, 8, 51⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 902, 5, 149⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 1650, 8, 51⟩], residual := [((2702977219678547987146810688369003902318391372049352287242320252204299777480 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2053 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1164 rho) = ((1 : F) * rho 2053)

def relationRow2054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2054) * ((1 : F) + (1 : F) * rho 2052) = ((1 : F) * rho 2053)

def relationLc1165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), runs := [⟨(6796472301228504588765892628070379728289900932705681437376265057569847019111 : F), 901, 5, 149⟩, ⟨(6796472301228504588765892628070379728289900932705681437376265057569847019111 : F), 1649, 8, 51⟩, ⟨(8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), 902, 5, 149⟩, ⟨(8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), 1650, 8, 51⟩], residual := [((5741484529749822437102014250412542629057507963104711540692913203713109461561 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2055 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1165 rho) = ((1 : F) * rho 2055)

def relationRow2056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2056) * ((1 : F) + (-1 : F) * rho 2052) = ((1924106044755335862376618100386607328755834921884122945075539886217063788344 : F) * rho 2051 + (1 : F) * rho 2055)

def relationLc1166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 51⟩], residual := [((1 : F), 2054), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 847) * (relationLc1166 rho) = ((1 : F) * rho 2057)

def relationLc1167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 51⟩], residual := [((1 : F), 2056), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 847) * (relationLc1167 rho) = ((1 : F) * rho 2058)

def relationLc1168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 52⟩, ⟨(1 : F), 1650, 8, 52⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2059 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1168 rho) = ((1 : F) * rho 2059)

def relationLc1169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1472990168100766808274768776588950065096616103908472784243790925035217376848 : F), 901, 5, 149⟩, ⟨(1472990168100766808274768776588950065096616103908472784243790925035217376848 : F), 1649, 8, 52⟩], residual := [((4101247221261016052067604421392065072123844859804398562413106244858019716921 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), runs := [⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 902, 5, 149⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 1650, 8, 52⟩], residual := [((8244586507561696599760777546095843143132366719533414419000579313209516988736 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2060 (rho : Nat -> F) : Prop :=
    (relationLc1169 rho) * (relationLc1170 rho) = ((1 : F) * rho 2060)

def relationLc1171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), runs := [⟨(3357587405240507661811027315542279488330867831057245657111704459278994939909 : F), 901, 5, 149⟩, ⟨(3357587405240507661811027315542279488330867831057245657111704459278994939909 : F), 1649, 8, 52⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 902, 5, 149⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 1650, 8, 52⟩], residual := [((2124338250684215562669463738909416516637465792976779071560742119494102154647 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2061 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1171 rho) = ((1 : F) * rho 2061)

def relationRow2062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2062) * ((1 : F) + (1 : F) * rho 2060) = ((1 : F) * rho 2061)

def relationLc1172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), runs := [⟨(5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), 902, 5, 149⟩, ⟨(5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), 1650, 8, 52⟩, ⟨(5086874344187862762437797623239267043045031504096818170823528996638414299132 : F), 901, 5, 149⟩, ⟨(5086874344187862762437797623239267043045031504096818170823528996638414299132 : F), 1649, 8, 52⟩], residual := [((6320123498744154861579361199872130014738433542177284756374491336423307084394 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2063 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1172 rho) = ((1 : F) * rho 2063)

def relationRow2064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2064) * ((1 : F) + (-1 : F) * rho 2060) = ((6799685965125510894046453527071308945795064131398509927530528952043280184447 : F) * rho 2059 + (1 : F) * rho 2063)

def relationLc1173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 149⟩, ⟨(-1 : F), 1649, 8, 52⟩], residual := [((1 : F), 2062), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 848) * (relationLc1173 rho) = ((1 : F) * rho 2065)

def relationLc1174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 149⟩, ⟨(-1 : F), 1650, 8, 52⟩], residual := [((1 : F), 2064), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 848) * (relationLc1174 rho) = ((1 : F) * rho 2066)

def relationLc1175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 901, 5, 149⟩, ⟨(1 : F), 902, 5, 149⟩, ⟨(1 : F), 1649, 8, 53⟩, ⟨(1 : F), 1650, 8, 53⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2067 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1175 rho) = ((1 : F) * rho 2067)

def relationLc1176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4634094232405047917389638427388196843876424390529208030164184382239773207702 : F), 901, 5, 149⟩, ⟨(4634094232405047917389638427388196843876424390529208030164184382239773207702 : F), 1649, 8, 53⟩], residual := [((6738134345351785891826393668637195759734714576430081917563349080497569352953 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), runs := [⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 902, 5, 149⟩, ⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 1650, 8, 53⟩], residual := [((7914361061998835072296676203602698436586194749795357566391867891878379072504 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2068 (rho : Nat -> F) : Prop :=
    (relationLc1176 rho) * (relationLc1177 rho) = ((1 : F) * rho 2068)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
