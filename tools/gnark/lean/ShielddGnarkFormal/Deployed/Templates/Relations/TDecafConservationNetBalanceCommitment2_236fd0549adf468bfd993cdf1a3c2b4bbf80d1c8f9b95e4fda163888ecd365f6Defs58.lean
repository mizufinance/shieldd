import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs57

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1157 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), runs := [⟨(7483275016082346863133254598457188798176727055135771662236763043586783136889 : F), 772, 5, 149⟩, ⟨(7483275016082346863133254598457188798176727055135771662236763043586783136889 : F), 1520, 8, 50⟩, ⟨(8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), 773, 5, 149⟩, ⟨(8207054667245893774977623630267436113437941634264672264734232004720795782199 : F), 1521, 8, 50⟩], residual := [((8015108592714057673726537120322457613943211772795243399853922651290483676350 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1918 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1157 rho) = ((1 : F) * rho 1918)

def relationRow1919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1919) * ((1 : F) + (-1 : F) * rho 1915) = ((1198593815528500210386771648838468151137129980907683728899471863527239558994 : F) * rho 1914 + (1 : F) * rho 1918)

def relationLc1158 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 50⟩], residual := [((1 : F), 1917), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 717) * (relationLc1158 rho) = ((1 : F) * rho 1920)

def relationLc1159 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 50⟩], residual := [((1 : F), 1919), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 717) * (relationLc1159 rho) = ((1 : F) * rho 1921)

def relationLc1160 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 51⟩, ⟨(1 : F), 1521, 8, 51⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1922 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1160 rho) = ((1 : F) * rho 1922)

def relationLc1161 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4788152598484509111380621716104005142396465390819607224791025872631424613381 : F), 772, 5, 149⟩, ⟨(4788152598484509111380621716104005142396465390819607224791025872631424613381 : F), 1520, 8, 51⟩], residual := [((5568233743258565406855880537247248386639754788323356025239016120687784694847 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1162 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (276116596555470026893685789675440525669836519435740554516571487869501568414 : F), runs := [⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 773, 5, 149⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 1521, 8, 51⟩], residual := [((7604009220590200803672988464630369465922061573662031730530357480128314349007 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1923 (rho : Nat -> F) : Prop :=
    (relationLc1161 rho) * (relationLc1162 rho) = ((1 : F) * rho 1923)

def relationLc1163 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (276116596555470026893685789675440525669836519435740554516571487869501568414 : F), runs := [⟨(1647989448199865835482932310711166803085998402448382390558968398347562219930 : F), 772, 5, 149⟩, ⟨(1647989448199865835482932310711166803085998402448382390558968398347562219930 : F), 1520, 8, 51⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 773, 5, 149⟩, ⟨(276116596555470026893685789675440525669836519435740554516571487869501568414 : F), 1521, 8, 51⟩], residual := [((2702977219678547987146810688369003902318391372049352287242320252204299777480 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1924 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1163 rho) = ((1 : F) * rho 1924)

def relationRow1925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1925) * ((1 : F) + (1 : F) * rho 1923) = ((1 : F) * rho 1924)

def relationLc1164 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), runs := [⟨(6796472301228504588765892628070379728289900932705681437376265057569847019111 : F), 772, 5, 149⟩, ⟨(6796472301228504588765892628070379728289900932705681437376265057569847019111 : F), 1520, 8, 51⟩, ⟨(8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), 773, 5, 149⟩, ⟨(8168345152872900397355139149106106005706062815718323273418661968047907670627 : F), 1521, 8, 51⟩], residual := [((5741484529749822437102014250412542629057507963104711540692913203713109461561 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1926 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1164 rho) = ((1 : F) * rho 1926)

def relationRow1927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1927) * ((1 : F) + (-1 : F) * rho 1923) = ((1924106044755335862376618100386607328755834921884122945075539886217063788344 : F) * rho 1922 + (1 : F) * rho 1926)

def relationLc1165 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 51⟩], residual := [((1 : F), 1925), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 718) * (relationLc1165 rho) = ((1 : F) * rho 1928)

def relationLc1166 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 51⟩], residual := [((1 : F), 1927), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 718) * (relationLc1166 rho) = ((1 : F) * rho 1929)

def relationLc1167 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 52⟩, ⟨(1 : F), 1521, 8, 52⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1930 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1167 rho) = ((1 : F) * rho 1930)

def relationLc1168 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1472990168100766808274768776588950065096616103908472784243790925035217376848 : F), 772, 5, 149⟩, ⟨(1472990168100766808274768776588950065096616103908472784243790925035217376848 : F), 1520, 8, 52⟩], residual := [((4101247221261016052067604421392065072123844859804398562413106244858019716921 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1169 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), runs := [⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 773, 5, 149⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 1521, 8, 52⟩], residual := [((8244586507561696599760777546095843143132366719533414419000579313209516988736 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1931 (rho : Nat -> F) : Prop :=
    (relationLc1168 rho) * (relationLc1169 rho) = ((1 : F) * rho 1931)

def relationLc1170 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), runs := [⟨(3357587405240507661811027315542279488330867831057245657111704459278994939909 : F), 772, 5, 149⟩, ⟨(3357587405240507661811027315542279488330867831057245657111704459278994939909 : F), 1520, 8, 52⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 773, 5, 149⟩, ⟨(3442098559885003232235426211529029457464196300341264270418824492764285244538 : F), 1521, 8, 52⟩], residual := [((2124338250684215562669463738909416516637465792976779071560742119494102154647 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1932 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1170 rho) = ((1 : F) * rho 1932)

def relationRow1933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1933) * ((1 : F) + (1 : F) * rho 1931) = ((1 : F) * rho 1932)

def relationLc1171 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), runs := [⟨(5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), 773, 5, 149⟩, ⟨(5002363189543367192013398727252517073911703034812799557516408963153123994503 : F), 1521, 8, 52⟩, ⟨(5086874344187862762437797623239267043045031504096818170823528996638414299132 : F), 772, 5, 149⟩, ⟨(5086874344187862762437797623239267043045031504096818170823528996638414299132 : F), 1520, 8, 52⟩], residual := [((6320123498744154861579361199872130014738433542177284756374491336423307084394 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1934 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1171 rho) = ((1 : F) * rho 1934)

def relationRow1935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * ((1 : F) + (-1 : F) * rho 1931) = ((6799685965125510894046453527071308945795064131398509927530528952043280184447 : F) * rho 1930 + (1 : F) * rho 1934)

def relationLc1172 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 52⟩], residual := [((1 : F), 1933), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 719) * (relationLc1172 rho) = ((1 : F) * rho 1936)

def relationLc1173 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 52⟩], residual := [((1 : F), 1935), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 719) * (relationLc1173 rho) = ((1 : F) * rho 1937)

def relationLc1174 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 53⟩, ⟨(1 : F), 1521, 8, 53⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1938 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1174 rho) = ((1 : F) * rho 1938)

def relationLc1175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4634094232405047917389638427388196843876424390529208030164184382239773207702 : F), 772, 5, 149⟩, ⟨(4634094232405047917389638427388196843876424390529208030164184382239773207702 : F), 1520, 8, 53⟩], residual := [((6738134345351785891826393668637195759734714576430081917563349080497569352953 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), runs := [⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 773, 5, 149⟩, ⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 1521, 8, 53⟩], residual := [((7914361061998835072296676203602698436586194749795357566391867891878379072504 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1939 (rho : Nat -> F) : Prop :=
    (relationLc1175 rho) * (relationLc1176 rho) = ((1 : F) * rho 1939)

def relationLc1177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), runs := [⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 773, 5, 149⟩, ⟨(6700955755614116460422023174888383745142951107591358562322706606517359625990 : F), 1521, 8, 53⟩, ⟨(6838724771047401226623639668549172794634004037794561182111799145169223029428 : F), 772, 5, 149⟩, ⟨(6838724771047401226623639668549172794634004037794561182111799145169223029428 : F), 1520, 8, 53⟩], residual := [((7427422077621273656092863568508976673186311377046092062263730683766810370922 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1940 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1177 rho) = ((1 : F) * rho 1940)

def relationRow1941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * ((1 : F) + (1 : F) * rho 1939) = ((1 : F) * rho 1940)

def relationLc1178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1743505993814253963826801763893162786232948227562705265612526849400049613051 : F), runs := [⟨(1605736978380969197625185270232373736741895297359502645823434310748186209613 : F), 772, 5, 149⟩, ⟨(1605736978380969197625185270232373736741895297359502645823434310748186209613 : F), 1520, 8, 53⟩, ⟨(1743505993814253963826801763893162786232948227562705265612526849400049613051 : F), 773, 5, 149⟩, ⟨(1743505993814253963826801763893162786232948227562705265612526849400049613051 : F), 1521, 8, 53⟩], residual := [((1017039671807096768155961370272569858189587958107971765671502772150598868119 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1942 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1178 rho) = ((1 : F) * rho 1942)

def relationRow1943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1943) * ((1 : F) + (-1 : F) * rho 1939) = ((5095218777233147262796837904656010008401055810231855916499272295769173416377 : F) * rho 1938 + (1 : F) * rho 1942)

def relationLc1179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 53⟩], residual := [((1 : F), 1941), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 720) * (relationLc1179 rho) = ((1 : F) * rho 1944)

def relationLc1180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 53⟩], residual := [((1 : F), 1943), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 720) * (relationLc1180 rho) = ((1 : F) * rho 1945)

def relationLc1181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 54⟩, ⟨(1 : F), 1521, 8, 54⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1946 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1181 rho) = ((1 : F) * rho 1946)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
