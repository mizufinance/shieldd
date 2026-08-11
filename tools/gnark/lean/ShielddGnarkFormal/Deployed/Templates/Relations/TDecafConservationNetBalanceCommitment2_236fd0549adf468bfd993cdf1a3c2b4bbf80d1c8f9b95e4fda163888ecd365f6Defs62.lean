import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs61

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc1255 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924761063501098106524635092626213651103045499303908135303882202641180782458 : F), runs := [⟨(301745779074273652125896658860658735814569196720344755979056837050755914831 : F), 772, 5, 149⟩, ⟨(301745779074273652125896658860658735814569196720344755979056837050755914831 : F), 1520, 8, 64⟩, ⟨(4924761063501098106524635092626213651103045499303908135303882202641180782458 : F), 773, 5, 149⟩, ⟨(4924761063501098106524635092626213651103045499303908135303882202641180782458 : F), 1521, 8, 64⟩], residual := [((3216804975787749362455261165048703417163958440942791590626023416823506125270 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2030 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1255 rho) = ((1 : F) * rho 2030)

def relationRow2031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2031) * ((1 : F) + (-1 : F) * rho 2027) = ((3217954906852998665598293187294674144458284639129810936652294416225472541752 : F) * rho 2026 + (1 : F) * rho 2030)

def relationLc1256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 64⟩], residual := [((1 : F), 2029), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 731) * (relationLc1256 rho) = ((1 : F) * rho 2032)

def relationLc1257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 64⟩], residual := [((1 : F), 2031), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 731) * (relationLc1257 rho) = ((1 : F) * rho 2033)

def relationLc1258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 65⟩, ⟨(1 : F), 1521, 8, 65⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2034 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1258 rho) = ((1 : F) * rho 2034)

def relationLc1259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(934262429588865376316763202666333572876159624379441072857832507528287283612 : F), 772, 5, 149⟩, ⟨(934262429588865376316763202666333572876159624379441072857832507528287283612 : F), 1520, 8, 65⟩], residual := [((620727456495781485108528089440261790333141839184177284132127399822216471535 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), runs := [⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 773, 5, 149⟩, ⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 1521, 8, 65⟩], residual := [((3734213338409769056441767094129838517498634193117154240157192061073862909754 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2035 (rho : Nat -> F) : Prop :=
    (relationLc1259 rho) * (relationLc1260 rho) = ((1 : F) * rho 2035)

def relationLc1261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), runs := [⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 773, 5, 149⟩, ⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 1521, 8, 65⟩, ⟨(7284740675749725981783765161756827737285160485612667916806380741022276320498 : F), 772, 5, 149⟩, ⟨(7284740675749725981783765161756827737285160485612667916806380741022276320498 : F), 1520, 8, 65⟩], residual := [((7767970052041557968615273520727392938738540145605237087225935524923132604692 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2036 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1261 rho) = ((1 : F) * rho 2036)

def relationRow2037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2037) * ((1 : F) + (1 : F) * rho 2035) = ((1 : F) * rho 2036)

def relationLc1262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3708711254414723333389893771996926375518911105430141097693201984180694900253 : F), runs := [⟨(1159721073678644442465059777024718794090738849541395911128852714895132918543 : F), 772, 5, 149⟩, ⟨(1159721073678644442465059777024718794090738849541395911128852714895132918543 : F), 1520, 8, 65⟩, ⟨(3708711254414723333389893771996926375518911105430141097693201984180694900253 : F), 773, 5, 149⟩, ⟨(3708711254414723333389893771996926375518911105430141097693201984180694900253 : F), 1521, 8, 65⟩], residual := [((676491697386812455633551418054153592637359189548826740709297930994276634349 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2038 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1262 rho) = ((1 : F) * rho 2038)

def relationRow2039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2039) * ((1 : F) + (-1 : F) * rho 2035) = ((3576029421335002648393871389759901361766249380182526819113178756841581420245 : F) * rho 2034 + (1 : F) * rho 2038)

def relationLc1263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 65⟩], residual := [((1 : F), 2037), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 732) * (relationLc1263 rho) = ((1 : F) * rho 2040)

def relationLc1264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 65⟩], residual := [((1 : F), 2039), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 732) * (relationLc1264 rho) = ((1 : F) * rho 2041)

def relationLc1265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 66⟩, ⟨(1 : F), 1521, 8, 66⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2042 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1265 rho) = ((1 : F) * rho 2042)

def relationLc1266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7939859446417171453261363811848930007939766996255547357685806689064639035948 : F), 772, 5, 149⟩, ⟨(7939859446417171453261363811848930007939766996255547357685806689064639035948 : F), 1520, 8, 66⟩], residual := [((7127738503717230360852932479875059658704579220516546870335272875140449102586 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), runs := [⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 773, 5, 149⟩, ⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 1521, 8, 66⟩], residual := [((7512757180602627786528431155446133589129180852821377444625292664139428669253 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2043 (rho : Nat -> F) : Prop :=
    (relationLc1266 rho) * (relationLc1267 rho) = ((1 : F) * rho 2043)

def relationLc1268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), runs := [⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 773, 5, 149⟩, ⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 1521, 8, 66⟩, ⟨(7952330047938001541879152429561922298987420548220593536579109485375099806312 : F), 772, 5, 149⟩, ⟨(7952330047938001541879152429561922298987420548220593536579109485375099806312 : F), 1520, 8, 66⟩], residual := [((4524195004705693286831181982319228680518287867255560910689389147106496714049 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2044 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1268 rho) = ((1 : F) * rho 2044)

def relationRow2045 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2045) * ((1 : F) + (1 : F) * rho 2043) = ((1 : F) * rho 2044)

def relationLc1269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5396723634773533885120575924012075067746154281424027796521197092986646538977 : F), runs := [⟨(492131701490368882369672509219624232388478786933470291356123970542309432729 : F), 772, 5, 149⟩, ⟨(492131701490368882369672509219624232388478786933470291356123970542309432729 : F), 1520, 8, 66⟩, ⟨(5396723634773533885120575924012075067746154281424027796521197092986646538977 : F), 773, 5, 149⟩, ⟨(5396723634773533885120575924012075067746154281424027796521197092986646538977 : F), 1521, 8, 66⟩], residual := [((3920266744722677137417642956462317850857611467898502917245844308810912524992 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2046 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1269 rho) = ((1 : F) * rho 2046)

def relationRow2047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2047) * ((1 : F) + (-1 : F) * rho 2043) = ((2555606413164467656758576505549847231241266266796565740057912392388453267335 : F) * rho 2042 + (1 : F) * rho 2046)

def relationLc1270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 66⟩], residual := [((1 : F), 2045), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 733) * (relationLc1270 rho) = ((1 : F) * rho 2048)

def relationLc1271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 66⟩], residual := [((1 : F), 2047), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 733) * (relationLc1271 rho) = ((1 : F) * rho 2049)

def relationLc1272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 67⟩, ⟨(1 : F), 1521, 8, 67⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2050 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1272 rho) = ((1 : F) * rho 2050)

def relationLc1273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(51342695164295900523335136679681816694770074347372122226540147389114240940 : F), 772, 5, 149⟩, ⟨(51342695164295900523335136679681816694770074347372122226540147389114240940 : F), 1520, 8, 67⟩], residual := [((3052786237553737179346172201258712579459016790553216720140345524598387402017 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (123700968181371724315822978796307772502168331021831444823168513337451326588 : F), runs := [⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 773, 5, 149⟩, ⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 1521, 8, 67⟩], residual := [((787620717315931140572433265074708873411572253914448706453206476703224907592 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2051 (rho : Nat -> F) : Prop :=
    (relationLc1273 rho) * (relationLc1274 rho) = ((1 : F) * rho 2051)

def relationLc1275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (123700968181371724315822978796307772502168331021831444823168513337451326588 : F), runs := [⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 773, 5, 149⟩, ⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 1521, 8, 67⟩, ⟨(7206181308414929907187684219568191539127362878550653399715080565873045393078 : F), 772, 5, 149⟩, ⟨(7206181308414929907187684219568191539127362878550653399715080565873045393078 : F), 1520, 8, 67⟩], residual := [((509105858426396779352460963956901544527715611503044149659633818620754686969 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2052 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1275 rho) = ((1 : F) * rho 2052)

def relationRow2053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2053) * ((1 : F) + (1 : F) * rho 2051) = ((1 : F) * rho 2052)

def relationLc1276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8320760781246998699933001959985238758873731004132232383112064942579957912453 : F), runs := [⟨(1238280441013440517061140719213354992248536456603410428220152890044363845963 : F), 772, 5, 149⟩, ⟨(1238280441013440517061140719213354992248536456603410428220152890044363845963 : F), 1520, 8, 67⟩, ⟨(8320760781246998699933001959985238758873731004132232383112064942579957912453 : F), 773, 5, 149⟩, ⟨(8320760781246998699933001959985238758873731004132232383112064942579957912453 : F), 1521, 8, 67⟩], residual := [((7935355891001973644896363974824644986848183723651019678275599637296654552072 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2054 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1276 rho) = ((1 : F) * rho 2054)

def relationRow2055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2055) * ((1 : F) + (-1 : F) * rho 2051) = ((7329882276596301631503507198364499311629531209572484844538249079210496719666 : F) * rho 2050 + (1 : F) * rho 2054)

def relationLc1277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 149⟩, ⟨(-1 : F), 1520, 8, 67⟩], residual := [((1 : F), 2053), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 734) * (relationLc1277 rho) = ((1 : F) * rho 2056)

def relationLc1278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 149⟩, ⟨(-1 : F), 1521, 8, 67⟩], residual := [((1 : F), 2055), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 734) * (relationLc1278 rho) = ((1 : F) * rho 2057)

def relationLc1279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 772, 5, 149⟩, ⟨(1 : F), 773, 5, 149⟩, ⟨(1 : F), 1520, 8, 68⟩, ⟨(1 : F), 1521, 8, 68⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2058 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1279 rho) = ((1 : F) * rho 2058)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
