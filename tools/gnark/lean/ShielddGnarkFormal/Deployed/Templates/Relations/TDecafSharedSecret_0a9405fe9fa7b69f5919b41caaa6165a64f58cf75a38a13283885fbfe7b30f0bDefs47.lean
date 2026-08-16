import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs46

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationLc1013 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6198789963307680417409764125292026039860956137933609051843292291136623872281 : F), runs := [⟨(1439410626572949018181126374233644670247100104996726814426585904025561757369 : F), 257, 5, 149⟩, ⟨(1439410626572949018181126374233644670247100104996726814426585904025561757369 : F), 1005, 8, 30⟩, ⟨(6198789963307680417409764125292026039860956137933609051843292291136623872281 : F), 258, 5, 149⟩, ⟨(6198789963307680417409764125292026039860956137933609051843292291136623872281 : F), 1006, 8, 30⟩], residual := [((7144399080381146418215348408357519803228194615773613389802487608887587551545 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1242 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1013 rho) = ((1 : F) * rho 1243)

def relationRow1243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1244) * ((1 : F) + (-1 : F) * rho 1240) = ((806261159547740988657934439255875821267843092223727961665355260755223609391 : F) * rho 1239 + (1 : F) * rho 1243)

def relationLc1014 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 30⟩], residual := [((1 : F), 1242), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 182) * (relationLc1014 rho) = ((1 : F) * rho 1245)

def relationLc1015 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩, ⟨(-1 : F), 1006, 8, 30⟩], residual := [((1 : F), 1244), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 182) * (relationLc1015 rho) = ((1 : F) * rho 1246)

def relationLc1016 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩, ⟨(1 : F), 1005, 8, 31⟩, ⟨(1 : F), 1006, 8, 31⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1246 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1016 rho) = ((1 : F) * rho 1247)

def relationLc1017 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3188036033033298877346478391701435462366254945646177246812371437562399669545 : F), 257, 5, 149⟩, ⟨(3188036033033298877346478391701435462366254945646177246812371437562399669545 : F), 1005, 8, 31⟩], residual := [((6428450126041257474157030038523500718991087062983819218404835930453042923738 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1018 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2601670001618979986581327060573004356823069937817005929232382071294362673458 : F), runs := [⟨(2601670001618979986581327060573004356823069937817005929232382071294362673458 : F), 258, 5, 149⟩, ⟨(2601670001618979986581327060573004356823069937817005929232382071294362673458 : F), 1006, 8, 31⟩], residual := [((4751679099407146620309977891574056995749303970160864977880780610492133761897 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1247 (rho : Nat -> F) : Prop :=
    (relationLc1017 rho) * (relationLc1018 rho) = ((1 : F) * rho 1248)

def relationLc1019 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2601670001618979986581327060573004356823069937817005929232382071294362673458 : F), runs := [⟨(2601670001618979986581327060573004356823069937817005929232382071294362673458 : F), 258, 5, 149⟩, ⟨(2601670001618979986581327060573004356823069937817005929232382071294362673458 : F), 1006, 8, 31⟩, ⟨(7858513741700159735663950142769489816338966993069751604625208082099106180276 : F), 257, 5, 149⟩, ⟨(7858513741700159735663950142769489816338966993069751604625208082099106180276 : F), 1005, 8, 31⟩], residual := [((3426061462580786244923008406012087084566066268361726778923206609952472608100 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1248 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1019 rho) = ((1 : F) * rho 1249)

def relationRow1249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1250) * ((1 : F) + (1 : F) * rho 1248) = ((1 : F) * rho 1249)

def relationLc1020 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5842791747809390437667497878208542174552829397337057898702851384623046565583 : F), runs := [⟨(5842791747809390437667497878208542174552829397337057898702851384623046565583 : F), 258, 5, 149⟩, ⟨(5842791747809390437667497878208542174552829397337057898702851384623046565583 : F), 1006, 8, 31⟩, ⟨(585948007728210688584874796012056715036932342084312223310025373818303058765 : F), 257, 5, 149⟩, ⟨(585948007728210688584874796012056715036932342084312223310025373818303058765 : F), 1005, 8, 31⟩], residual := [((5018400286847584179325816532769459446809833066792337049012026845964936630941 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1250 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1020 rho) = ((1 : F) * rho 1251)

def relationRow1251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1252) * ((1 : F) + (-1 : F) * rho 1248) = ((2015721993890769297996452264560947641786137595732693705922356697476059614693 : F) * rho 1247 + (1 : F) * rho 1251)

def relationLc1021 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 31⟩], residual := [((1 : F), 1250), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 183) * (relationLc1021 rho) = ((1 : F) * rho 1253)

def relationLc1022 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩, ⟨(-1 : F), 1006, 8, 31⟩], residual := [((1 : F), 1252), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 183) * (relationLc1022 rho) = ((1 : F) * rho 1254)

def relationLc1023 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩, ⟨(1 : F), 1005, 8, 32⟩, ⟨(1 : F), 1006, 8, 32⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1254 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1023 rho) = ((1 : F) * rho 1255)

def relationLc1024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7769110293037107941467182288707472071076028180052319464384558761333159830637 : F), 257, 5, 149⟩, ⟨(7769110293037107941467182288707472071076028180052319464384558761333159830637 : F), 1005, 8, 32⟩], residual := [((3790572865663907955225786599179157900189638421123613224937493625763778412517 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6327076429849916430866448681160993076458441274126141917530053275348287671011 : F), runs := [⟨(6327076429849916430866448681160993076458441274126141917530053275348287671011 : F), 258, 5, 149⟩, ⟨(6327076429849916430866448681160993076458441274126141917530053275348287671011 : F), 1006, 8, 32⟩], residual := [((6218817503968349421592769403300268152782718674147044423910527527555573304732 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1255 (rho : Nat -> F) : Prop :=
    (relationLc1024 rho) * (relationLc1025 rho) = ((1 : F) * rho 1256)

def relationLc1026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6327076429849916430866448681160993076458441274126141917530053275348287671011 : F), runs := [⟨(5819494872841269765244379966862994307800172970749969925652964376208362060998 : F), 257, 5, 149⟩, ⟨(5819494872841269765244379966862994307800172970749969925652964376208362060998 : F), 1005, 8, 32⟩, ⟨(6327076429849916430866448681160993076458441274126141917530053275348287671011 : F), 258, 5, 149⟩, ⟨(6327076429849916430866448681160993076458441274126141917530053275348287671011 : F), 1006, 8, 32⟩], residual := [((1389873667441848201749424912199528911366841675562106098373570917757652289621 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1256 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1026 rho) = ((1 : F) * rho 1257)

def relationRow1257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1258) * ((1 : F) + (1 : F) * rho 1256) = ((1 : F) * rho 1257)

def relationLc1027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2117385319578453993382376257620553454917458061027921910405180180569121568030 : F), runs := [⟨(2117385319578453993382376257620553454917458061027921910405180180569121568030 : F), 258, 5, 149⟩, ⟨(2117385319578453993382376257620553454917458061027921910405180180569121568030 : F), 1006, 8, 32⟩, ⟨(2624966876587100659004444971918552223575726364404093902282269079709047178043 : F), 257, 5, 149⟩, ⟨(2624966876587100659004444971918552223575726364404093902282269079709047178043 : F), 1005, 8, 32⟩], residual := [((7054588081986522222499400026582017620009057659591957729561662538159756949420 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1258 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1027 rho) = ((1 : F) * rho 1259)

def relationRow1259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1260) * ((1 : F) + (-1 : F) * rho 1256) = ((3702109553262815771862003709242440852882714909722048015247784195639240492968 : F) * rho 1255 + (1 : F) * rho 1259)

def relationLc1028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 32⟩], residual := [((1 : F), 1258), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 184) * (relationLc1028 rho) = ((1 : F) * rho 1261)

def relationLc1029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩, ⟨(-1 : F), 1006, 8, 32⟩], residual := [((1 : F), 1260), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 184) * (relationLc1029 rho) = ((1 : F) * rho 1262)

def relationLc1030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩, ⟨(1 : F), 1005, 8, 33⟩, ⟨(1 : F), 1006, 8, 33⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1262 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1030 rho) = ((1 : F) * rho 1263)

def relationLc1031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4232871751035212290672276397719026689929378508096219718924767432588013967238 : F), 257, 5, 149⟩, ⟨(4232871751035212290672276397719026689929378508096219718924767432588013967238 : F), 1005, 8, 33⟩], residual := [((6029055947668892632292560307808214906730993787835331228218588797495467717355 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3997700547697378319545011890765266486027405910922669682977566226271873404539 : F), runs := [⟨(3997700547697378319545011890765266486027405910922669682977566226271873404539 : F), 258, 5, 149⟩, ⟨(3997700547697378319545011890765266486027405910922669682977566226271873404539 : F), 1006, 8, 33⟩], residual := [((6759400635131567824879531417187974923682484167436657653839789258123339500419 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1263 (rho : Nat -> F) : Prop :=
    (relationLc1031 rho) * (relationLc1032 rho) = ((1 : F) * rho 1264)

def relationLc1033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3997700547697378319545011890765266486027405910922669682977566226271873404539 : F), runs := [⟨(3997700547697378319545011890765266486027405910922669682977566226271873404539 : F), 258, 5, 149⟩, ⟨(3997700547697378319545011890765266486027405910922669682977566226271873404539 : F), 1006, 8, 33⟩, ⟨(4700222797927880137521664018036907893390538285634583751896078188291874526579 : F), 257, 5, 149⟩, ⟨(4700222797927880137521664018036907893390538285634583751896078188291874526579 : F), 1005, 8, 33⟩], residual := [((606247468533221985235830670783090035505390707581836992507394196510416734232 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1264 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1033 rho) = ((1 : F) * rho 1265)

def relationRow1265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1266) * ((1 : F) + (1 : F) * rho 1264) = ((1 : F) * rho 1265)

def relationLc1034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4446761201730992104703813048016280045348493424231394144957667229645535834502 : F), runs := [⟨(3744238951500490286727160920744638637985361049519480076039155267625534712462 : F), 257, 5, 149⟩, ⟨(3744238951500490286727160920744638637985361049519480076039155267625534712462 : F), 1005, 8, 33⟩, ⟨(4446761201730992104703813048016280045348493424231394144957667229645535834502 : F), 258, 5, 149⟩, ⟨(4446761201730992104703813048016280045348493424231394144957667229645535834502 : F), 1006, 8, 33⟩], residual := [((7838214280895148439012994267998456495870508627572226835427839259406992504809 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1266 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1034 rho) = ((1 : F) * rho 1267)

def relationRow1267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1268) * ((1 : F) + (-1 : F) * rho 1264) = ((253461596196888032817850970020627848042044861403189606938410958646338692077 : F) * rho 1263 + (1 : F) * rho 1267)

def relationLc1035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 33⟩], residual := [((1 : F), 1266), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 185) * (relationLc1035 rho) = ((1 : F) * rho 1269)

def relationLc1036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩, ⟨(-1 : F), 1006, 8, 33⟩], residual := [((1 : F), 1268), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 185) * (relationLc1036 rho) = ((1 : F) * rho 1270)

def relationLc1037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩, ⟨(1 : F), 1005, 8, 34⟩, ⟨(1 : F), 1006, 8, 34⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1270 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1037 rho) = ((1 : F) * rho 1271)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
