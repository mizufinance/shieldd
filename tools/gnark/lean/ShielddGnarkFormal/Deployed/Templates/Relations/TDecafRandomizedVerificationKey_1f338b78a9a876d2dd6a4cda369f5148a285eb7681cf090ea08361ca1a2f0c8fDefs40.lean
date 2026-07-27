import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs39

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc1040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1700188433367011160183211948601139000081441429269474327958400721320219062964 : F), runs := [⟨(1700188433367011160183211948601139000081441429269474327958400721320219062964 : F), 257, 5, 149⟩, ⟨(1700188433367011160183211948601139000081441429269474327958400721320219062964 : F), 1005, 8, 27⟩, ⟨(5559764805202060045730291878588703957227038418198058308779729144146344652976 : F), 256, 5, 149⟩, ⟨(5559764805202060045730291878588703957227038418198058308779729144146344652976 : F), 1004, 8, 27⟩], residual := [((8048074992485087993805488848560274075056948519687045171026483959419686646090 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1217 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1040 rho) = ((1 : F) * rho 1218)

def relationRow1218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1219) * ((1 : F) + (-1 : F) * rho 1215) = ((1184508510859299218335321111591703574067419487686531191197103590450845523101 : F) * rho 1214 + (1 : F) * rho 1218)

def relationLc1041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 27⟩], residual := [((1 : F), 1217), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 178) * (relationLc1041 rho) = ((1 : F) * rho 1220)

def relationLc1042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 27⟩], residual := [((1 : F), 1219), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 178) * (relationLc1042 rho) = ((1 : F) * rho 1221)

def relationLc1043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 28⟩, ⟨(1 : F), 1005, 8, 28⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1221 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1043 rho) = ((1 : F) * rho 1222)

def relationLc1044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7478308139881087885260569335756343006702543444976098609857214758479369089981 : F), 256, 5, 149⟩, ⟨(7478308139881087885260569335756343006702543444976098609857214758479369089981 : F), 1004, 8, 28⟩], residual := [((6009052586955181728039866063746186622919640724674161715721640281959638724821 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), runs := [⟨(1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), 257, 5, 149⟩, ⟨(1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), 1005, 8, 28⟩], residual := [((3199699012557669150509061822340357724213213904444938571111818980989777439425 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1222 (rho : Nat -> F) : Prop :=
    (relationLc1044 rho) * (relationLc1045 rho) = ((1 : F) * rho 1223)

def relationLc1046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), runs := [⟨(1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), 257, 5, 149⟩, ⟨(1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), 1005, 8, 28⟩, ⟨(7040924526051147903390864536639420890106328060034064487703003990982626889439 : F), 256, 5, 149⟩, ⟨(7040924526051147903390864536639420890106328060034064487703003990982626889439 : F), 1004, 8, 28⟩], residual := [((5834817192150016095682988653984172030462474683802701658708876761776324656208 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1223 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1046 rho) = ((1 : F) * rho 1224)

def relationRow1224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1225) * ((1 : F) + (1 : F) * rho 1223) = ((1 : F) * rho 1224)

def relationLc1047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7389400380650616899576680658508110129253456297892051594376035926914882157951 : F), runs := [⟨(1403537223377222520857960402142125641269571275119999340232229464934782349602 : F), 256, 5, 149⟩, ⟨(1403537223377222520857960402142125641269571275119999340232229464934782349602 : F), 1004, 8, 28⟩, ⟨(7389400380650616899576680658508110129253456297892051594376035926914882157951 : F), 257, 5, 149⟩, ⟨(7389400380650616899576680658508110129253456297892051594376035926914882157951 : F), 1005, 8, 28⟩], residual := [((2609644557278354328565836284797374500913424651351362169226356694141084582833 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1225 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1047 rho) = ((1 : F) * rho 1226)

def relationRow1226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1227) * ((1 : F) + (-1 : F) * rho 1223) = ((8095985894828901428063008816912857292228771097296076721262201519985153970529 : F) * rho 1222 + (1 : F) * rho 1226)

def relationLc1048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 28⟩], residual := [((1 : F), 1225), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 179) * (relationLc1048 rho) = ((1 : F) * rho 1228)

def relationLc1049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 28⟩], residual := [((1 : F), 1227), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 179) * (relationLc1049 rho) = ((1 : F) * rho 1229)

def relationLc1050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 29⟩, ⟨(1 : F), 1005, 8, 29⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1229 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1050 rho) = ((1 : F) * rho 1230)

def relationLc1051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2060143958823073355734724205187868322756779499498343359721048205222341509940 : F), 256, 5, 149⟩, ⟨(2060143958823073355734724205187868322756779499498343359721048205222341509940 : F), 1004, 8, 29⟩], residual := [((6848937982180812692729044196031415334310571292722222488585731250665080063305 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (714737645503320255440318207074993637899517394382989883705174528398297173222 : F), runs := [⟨(714737645503320255440318207074993637899517394382989883705174528398297173222 : F), 257, 5, 149⟩, ⟨(714737645503320255440318207074993637899517394382989883705174528398297173222 : F), 1005, 8, 29⟩], residual := [((7035268714477096427834258837756375834408889943773983329074787985288032695718 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1230 (rho : Nat -> F) : Prop :=
    (relationLc1051 rho) * (relationLc1052 rho) = ((1 : F) * rho 1231)

def relationLc1053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (714737645503320255440318207074993637899517394382989883705174528398297173222 : F), runs := [⟨(5398317041411786283541944945710809076600337105488909498544408093870155439291 : F), 256, 5, 149⟩, ⟨(5398317041411786283541944945710809076600337105488909498544408093870155439291 : F), 1004, 8, 29⟩, ⟨(714737645503320255440318207074993637899517394382989883705174528398297173222 : F), 257, 5, 149⟩, ⟨(714737645503320255440318207074993637899517394382989883705174528398297173222 : F), 1005, 8, 29⟩], residual := [((7674853691918953186993961297285744925599891472972211986889358974761662085511 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1231 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1053 rho) = ((1 : F) * rho 1232)

def relationRow1232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1233) * ((1 : F) + (1 : F) * rho 1231) = ((1 : F) * rho 1232)

def relationLc1054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7729724103925050168808506731706552893476381940771073944230058927519112065819 : F), runs := [⟨(3046144708016584140706879993070737454775562229665154329390825362047253799750 : F), 256, 5, 149⟩, ⟨(3046144708016584140706879993070737454775562229665154329390825362047253799750 : F), 1004, 8, 29⟩, ⟨(7729724103925050168808506731706552893476381940771073944230058927519112065819 : F), 257, 5, 149⟩, ⟨(7729724103925050168808506731706552893476381940771073944230058927519112065819 : F), 1005, 8, 29⟩], residual := [((769608057509417237254863641495801605776007862181851841045874481155747153530 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1233 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1054 rho) = ((1 : F) * rho 1234)

def relationRow1234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1235) * ((1 : F) + (-1 : F) * rho 1231) = ((6113054686915106538982263152785802714499854499871899382249582622268452612513 : F) * rho 1230 + (1 : F) * rho 1234)

def relationLc1055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 29⟩], residual := [((1 : F), 1233), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 180) * (relationLc1055 rho) = ((1 : F) * rho 1236)

def relationLc1056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 29⟩], residual := [((1 : F), 1235), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 180) * (relationLc1056 rho) = ((1 : F) * rho 1237)

def relationLc1057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 30⟩, ⟨(1 : F), 1005, 8, 30⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1237 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1057 rho) = ((1 : F) * rho 1238)

def relationLc1058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(438298078731784562962066912655914842098740409231165003929213736243689094366 : F), 256, 5, 149⟩, ⟨(438298078731784562962066912655914842098740409231165003929213736243689094366 : F), 1004, 8, 30⟩], residual := [((6992757197777699674250708748459163947449886003420107028852380212440058161259 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2245671786120690006839060813489520491514943197220454776091941164780785366760 : F), runs := [⟨(2245671786120690006839060813489520491514943197220454776091941164780785366760 : F), 257, 5, 149⟩, ⟨(2245671786120690006839060813489520491514943197220454776091941164780785366760 : F), 1005, 8, 30⟩], residual := [((3883357724003683768614049969558244330787644143085875441049408729026234626242 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1238 (rho : Nat -> F) : Prop :=
    (relationLc1058 rho) * (relationLc1059 rho) = ((1 : F) * rho 1239)

def relationLc1060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2245671786120690006839060813489520491514943197220454776091941164780785366760 : F), runs := [⟨(2245671786120690006839060813489520491514943197220454776091941164780785366760 : F), 257, 5, 149⟩, ⟨(2245671786120690006839060813489520491514943197220454776091941164780785366760 : F), 1005, 8, 30⟩, ⟨(7005051122855421406067698564547901861128799230157337013508647551891847481672 : F), 256, 5, 149⟩, ⟨(7005051122855421406067698564547901861128799230157337013508647551891847481672 : F), 1004, 8, 30⟩], residual := [((1300062669047224006033476530424026728147704719380450438132745847029821687496 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1239 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1060 rho) = ((1 : F) * rho 1240)

def relationRow1240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1241) * ((1 : F) + (1 : F) * rho 1239) = ((1 : F) * rho 1240)

def relationLc1061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6198789963307680417409764125292026039860956137933609051843292291136623872281 : F), runs := [⟨(1439410626572949018181126374233644670247100104996726814426585904025561757369 : F), 256, 5, 149⟩, ⟨(1439410626572949018181126374233644670247100104996726814426585904025561757369 : F), 1004, 8, 30⟩, ⟨(6198789963307680417409764125292026039860956137933609051843292291136623872281 : F), 257, 5, 149⟩, ⟨(6198789963307680417409764125292026039860956137933609051843292291136623872281 : F), 1005, 8, 30⟩], residual := [((7144399080381146418215348408357519803228194615773613389802487608887587551545 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1241 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1061 rho) = ((1 : F) * rho 1242)

def relationRow1242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1243) * ((1 : F) + (-1 : F) * rho 1239) = ((806261159547740988657934439255875821267843092223727961665355260755223609391 : F) * rho 1238 + (1 : F) * rho 1242)

def relationLc1062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩, ⟨(-1 : F), 1004, 8, 30⟩], residual := [((1 : F), 1241), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 181) * (relationLc1062 rho) = ((1 : F) * rho 1244)

def relationLc1063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩, ⟨(-1 : F), 1005, 8, 30⟩], residual := [((1 : F), 1243), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 181) * (relationLc1063 rho) = ((1 : F) * rho 1245)

def relationLc1064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 1004, 8, 31⟩, ⟨(1 : F), 1005, 8, 31⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1245 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1064 rho) = ((1 : F) * rho 1246)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
