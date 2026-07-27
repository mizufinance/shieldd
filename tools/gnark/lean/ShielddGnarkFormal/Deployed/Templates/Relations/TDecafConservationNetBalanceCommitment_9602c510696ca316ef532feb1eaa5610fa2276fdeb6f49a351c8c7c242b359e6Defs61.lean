import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs60

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc1261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3708711254414723333389893771996926375518911105430141097693201984180694900253 : F), runs := [⟨(1159721073678644442465059777024718794090738849541395911128852714895132918543 : F), 643, 5, 149⟩, ⟨(1159721073678644442465059777024718794090738849541395911128852714895132918543 : F), 1391, 8, 65⟩, ⟨(3708711254414723333389893771996926375518911105430141097693201984180694900253 : F), 644, 5, 149⟩, ⟨(3708711254414723333389893771996926375518911105430141097693201984180694900253 : F), 1392, 8, 65⟩], residual := [((676491697386812455633551418054153592637359189548826740709297930994276634349 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1909 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1261 rho) = ((1 : F) * rho 1909)

def relationRow1910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1910) * ((1 : F) + (-1 : F) * rho 1906) = ((3576029421335002648393871389759901361766249380182526819113178756841581420245 : F) * rho 1905 + (1 : F) * rho 1909)

def relationLc1262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 65⟩], residual := [((1 : F), 1908), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 603) * (relationLc1262 rho) = ((1 : F) * rho 1911)

def relationLc1263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 65⟩], residual := [((1 : F), 1910), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 603) * (relationLc1263 rho) = ((1 : F) * rho 1912)

def relationLc1264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 66⟩, ⟨(1 : F), 1392, 8, 66⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1913 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1264 rho) = ((1 : F) * rho 1913)

def relationLc1265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7939859446417171453261363811848930007939766996255547357685806689064639035948 : F), 643, 5, 149⟩, ⟨(7939859446417171453261363811848930007939766996255547357685806689064639035948 : F), 1391, 8, 66⟩], residual := [((7127738503717230360852932479875059658704579220516546870335272875140449102586 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), runs := [⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 644, 5, 149⟩, ⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 1392, 8, 66⟩], residual := [((7512757180602627786528431155446133589129180852821377444625292664139428669253 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1914 (rho : Nat -> F) : Prop :=
    (relationLc1265 rho) * (relationLc1266 rho) = ((1 : F) * rho 1914)

def relationLc1267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), runs := [⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 644, 5, 149⟩, ⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 1392, 8, 66⟩, ⟨(7952330047938001541879152429561922298987420548220593536579109485375099806312 : F), 643, 5, 149⟩, ⟨(7952330047938001541879152429561922298987420548220593536579109485375099806312 : F), 1391, 8, 66⟩], residual := [((4524195004705693286831181982319228680518287867255560910689389147106496714049 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1915 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1267 rho) = ((1 : F) * rho 1915)

def relationRow1916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1916) * ((1 : F) + (1 : F) * rho 1914) = ((1 : F) * rho 1915)

def relationLc1268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5396723634773533885120575924012075067746154281424027796521197092986646538977 : F), runs := [⟨(492131701490368882369672509219624232388478786933470291356123970542309432729 : F), 643, 5, 149⟩, ⟨(492131701490368882369672509219624232388478786933470291356123970542309432729 : F), 1391, 8, 66⟩, ⟨(5396723634773533885120575924012075067746154281424027796521197092986646538977 : F), 644, 5, 149⟩, ⟨(5396723634773533885120575924012075067746154281424027796521197092986646538977 : F), 1392, 8, 66⟩], residual := [((3920266744722677137417642956462317850857611467898502917245844308810912524992 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1917 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1268 rho) = ((1 : F) * rho 1917)

def relationRow1918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1918) * ((1 : F) + (-1 : F) * rho 1914) = ((2555606413164467656758576505549847231241266266796565740057912392388453267335 : F) * rho 1913 + (1 : F) * rho 1917)

def relationLc1269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 66⟩], residual := [((1 : F), 1916), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 604) * (relationLc1269 rho) = ((1 : F) * rho 1919)

def relationLc1270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 66⟩], residual := [((1 : F), 1918), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 604) * (relationLc1270 rho) = ((1 : F) * rho 1920)

def relationLc1271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 67⟩, ⟨(1 : F), 1392, 8, 67⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1921 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1271 rho) = ((1 : F) * rho 1921)

def relationLc1272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(51342695164295900523335136679681816694770074347372122226540147389114240940 : F), 643, 5, 149⟩, ⟨(51342695164295900523335136679681816694770074347372122226540147389114240940 : F), 1391, 8, 67⟩], residual := [((3052786237553737179346172201258712579459016790553216720140345524598387402017 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (123700968181371724315822978796307772502168331021831444823168513337451326588 : F), runs := [⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 644, 5, 149⟩, ⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 1392, 8, 67⟩], residual := [((787620717315931140572433265074708873411572253914448706453206476703224907592 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1922 (rho : Nat -> F) : Prop :=
    (relationLc1272 rho) * (relationLc1273 rho) = ((1 : F) * rho 1922)

def relationLc1274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (123700968181371724315822978796307772502168331021831444823168513337451326588 : F), runs := [⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 644, 5, 149⟩, ⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 1392, 8, 67⟩, ⟨(7206181308414929907187684219568191539127362878550653399715080565873045393078 : F), 643, 5, 149⟩, ⟨(7206181308414929907187684219568191539127362878550653399715080565873045393078 : F), 1391, 8, 67⟩], residual := [((509105858426396779352460963956901544527715611503044149659633818620754686969 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1923 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1274 rho) = ((1 : F) * rho 1923)

def relationRow1924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1924) * ((1 : F) + (1 : F) * rho 1922) = ((1 : F) * rho 1923)

def relationLc1275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8320760781246998699933001959985238758873731004132232383112064942579957912453 : F), runs := [⟨(1238280441013440517061140719213354992248536456603410428220152890044363845963 : F), 643, 5, 149⟩, ⟨(1238280441013440517061140719213354992248536456603410428220152890044363845963 : F), 1391, 8, 67⟩, ⟨(8320760781246998699933001959985238758873731004132232383112064942579957912453 : F), 644, 5, 149⟩, ⟨(8320760781246998699933001959985238758873731004132232383112064942579957912453 : F), 1392, 8, 67⟩], residual := [((7935355891001973644896363974824644986848183723651019678275599637296654552072 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1925 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1275 rho) = ((1 : F) * rho 1925)

def relationRow1926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1926) * ((1 : F) + (-1 : F) * rho 1922) = ((7329882276596301631503507198364499311629531209572484844538249079210496719666 : F) * rho 1921 + (1 : F) * rho 1925)

def relationLc1276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 67⟩], residual := [((1 : F), 1924), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 605) * (relationLc1276 rho) = ((1 : F) * rho 1927)

def relationLc1277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 67⟩], residual := [((1 : F), 1926), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 605) * (relationLc1277 rho) = ((1 : F) * rho 1928)

def relationLc1278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 68⟩, ⟨(1 : F), 1392, 8, 68⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1929 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1278 rho) = ((1 : F) * rho 1929)

def relationLc1279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(997513795128485064103021042873973320450514824176857200320006560728416580401 : F), 643, 5, 149⟩, ⟨(997513795128485064103021042873973320450514824176857200320006560728416580401 : F), 1391, 8, 68⟩], residual := [((4207962523957544499197113572769958299790779559157759929722328148460317065066 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7071659467922580335893637713246431152080471891869532067682393264275824468096 : F), runs := [⟨(7071659467922580335893637713246431152080471891869532067682393264275824468096 : F), 644, 5, 149⟩, ⟨(7071659467922580335893637713246431152080471891869532067682393264275824468096 : F), 1392, 8, 68⟩], residual := [((5694952463819340159490726989598648212507084910767974062043659083270491817450 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1930 (rho : Nat -> F) : Prop :=
    (relationLc1279 rho) * (relationLc1280 rho) = ((1 : F) * rho 1930)

def relationLc1281 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7071659467922580335893637713246431152080471891869532067682393264275824468096 : F), runs := [⟨(5233045319008618973604072593989384005314840804446403291325745460456179580293 : F), 643, 5, 149⟩, ⟨(5233045319008618973604072593989384005314840804446403291325745460456179580293 : F), 1391, 8, 68⟩, ⟨(7071659467922580335893637713246431152080471891869532067682393264275824468096 : F), 644, 5, 149⟩, ⟨(7071659467922580335893637713246431152080471891869532067682393264275824468096 : F), 1392, 8, 68⟩], residual := [((1615274810180987536218933776408218560898669733751828603964970398235418274936 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1931 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1281 rho) = ((1 : F) * rho 1931)

def relationRow1932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1932) * ((1 : F) + (1 : F) * rho 1930) = ((1 : F) * rho 1931)

def relationLc1282 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1372802281505790088355187225535115379295427443284531760252840191641584770945 : F), runs := [⟨(1372802281505790088355187225535115379295427443284531760252840191641584770945 : F), 644, 5, 149⟩, ⟨(1372802281505790088355187225535115379295427443284531760252840191641584770945 : F), 1392, 8, 68⟩, ⟨(3211416430419751450644752344792162526061058530707660536609487995461229658748 : F), 643, 5, 149⟩, ⟨(3211416430419751450644752344792162526061058530707660536609487995461229658748 : F), 1391, 8, 68⟩], residual := [((6829186939247382888029891162373327970477229601402235223970263057681990964105 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1933 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1282 rho) = ((1 : F) * rho 1933)

def relationRow1934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * ((1 : F) + (-1 : F) * rho 1930) = ((3860243037502828885248885368454268626019413361161871531072905268814594809348 : F) * rho 1929 + (1 : F) * rho 1933)

def relationLc1283 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 68⟩], residual := [((1 : F), 1932), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 606) * (relationLc1283 rho) = ((1 : F) * rho 1935)

def relationLc1284 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 68⟩], residual := [((1 : F), 1934), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 606) * (relationLc1284 rho) = ((1 : F) * rho 1936)

def relationLc1285 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 69⟩, ⟨(1 : F), 1392, 8, 69⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1937 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1285 rho) = ((1 : F) * rho 1937)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
