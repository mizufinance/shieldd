import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs113

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1982) * (relationLc2492 rho) = ((1 : F) * rho 3017)

def relationLc2493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 26⟩], residual := [((1 : F), 3016), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1982) * (relationLc2493 rho) = ((1 : F) * rho 3018)

def relationLc2494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 27⟩, ⟨(1 : F), 2810, 8, 27⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3018 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2494 rho) = ((1 : F) * rho 3019)

def relationLc2495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8429404847033746103949862958802942655156615580252866767552832809537189051094 : F), 2061, 5, 149⟩, ⟨(8429404847033746103949862958802942655156615580252866767552832809537189051094 : F), 2809, 8, 27⟩], residual := [((4829230689170401974567318880568148208714935176888340488441060551668416755756 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6744273316061359264065612990180407531294457905884589499976832734597190176077 : F), runs := [⟨(6744273316061359264065612990180407531294457905884589499976832734597190176077 : F), 2062, 5, 149⟩, ⟨(6744273316061359264065612990180407531294457905884589499976832734597190176077 : F), 2810, 8, 27⟩], residual := [((3005555258524522938312861139523290434503782011712304083854485010325988667929 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3019 (rho : Nat -> F) : Prop :=
    (relationLc2495 rho) * (relationLc2496 rho) = ((1 : F) * rho 3020)

def relationLc2497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6744273316061359264065612990180407531294457905884589499976832734597190176077 : F), runs := [⟨(2884696944226310378518533060192842574148860916956005519155504311771064586065 : F), 2061, 5, 149⟩, ⟨(2884696944226310378518533060192842574148860916956005519155504311771064586065 : F), 2809, 8, 27⟩, ⟨(6744273316061359264065612990180407531294457905884589499976832734597190176077 : F), 2062, 5, 149⟩, ⟨(6744273316061359264065612990180407531294457905884589499976832734597190176077 : F), 2810, 8, 27⟩], residual := [((396386756943282430443336090221272456318950815467018656908749496497722592951 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3020 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2497 rho) = ((1 : F) * rho 3021)

def relationRow3021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3022) * ((1 : F) + (1 : F) * rho 3020) = ((1 : F) * rho 3021)

def relationLc2498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1700188433367011160183211948601139000081441429269474327958400721320219062964 : F), runs := [⟨(1700188433367011160183211948601139000081441429269474327958400721320219062964 : F), 2062, 5, 149⟩, ⟨(1700188433367011160183211948601139000081441429269474327958400721320219062964 : F), 2810, 8, 27⟩, ⟨(5559764805202060045730291878588703957227038418198058308779729144146344652976 : F), 2061, 5, 149⟩, ⟨(5559764805202060045730291878588703957227038418198058308779729144146344652976 : F), 2809, 8, 27⟩], residual := [((8048074992485087993805488848560274075056948519687045171026483959419686646090 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3022 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2498 rho) = ((1 : F) * rho 3023)

def relationRow3023 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3024) * ((1 : F) + (-1 : F) * rho 3020) = ((1184508510859299218335321111591703574067419487686531191197103590450845523101 : F) * rho 3019 + (1 : F) * rho 3023)

def relationLc2499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 27⟩], residual := [((1 : F), 3022), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1983) * (relationLc2499 rho) = ((1 : F) * rho 3025)

def relationLc2500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 27⟩], residual := [((1 : F), 3024), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1983) * (relationLc2500 rho) = ((1 : F) * rho 3026)

def relationLc2501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 28⟩, ⟨(1 : F), 2810, 8, 28⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3026 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2501 rho) = ((1 : F) * rho 3027)

def relationLc2502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7478308139881087885260569335756343006702543444976098609857214758479369089981 : F), 2061, 5, 149⟩, ⟨(7478308139881087885260569335756343006702543444976098609857214758479369089981 : F), 2809, 8, 28⟩], residual := [((6009052586955181728039866063746186622919640724674161715721640281959638724821 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), runs := [⟨(1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), 2062, 5, 149⟩, ⟨(1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), 2810, 8, 28⟩], residual := [((3199699012557669150509061822340357724213213904444938571111818980989777439425 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3027 (rho : Nat -> F) : Prop :=
    (relationLc2502 rho) * (relationLc2503 rho) = ((1 : F) * rho 3028)

def relationLc2504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), runs := [⟨(1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), 2062, 5, 149⟩, ⟨(1055061368777753524672144280273436402122443037262012233559197529002527081090 : F), 2810, 8, 28⟩, ⟨(7040924526051147903390864536639420890106328060034064487703003990982626889439 : F), 2061, 5, 149⟩, ⟨(7040924526051147903390864536639420890106328060034064487703003990982626889439 : F), 2809, 8, 28⟩], residual := [((5834817192150016095682988653984172030462474683802701658708876761776324656208 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3028 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2504 rho) = ((1 : F) * rho 3029)

def relationRow3029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3030) * ((1 : F) + (1 : F) * rho 3028) = ((1 : F) * rho 3029)

def relationLc2505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7389400380650616899576680658508110129253456297892051594376035926914882157951 : F), runs := [⟨(1403537223377222520857960402142125641269571275119999340232229464934782349602 : F), 2061, 5, 149⟩, ⟨(1403537223377222520857960402142125641269571275119999340232229464934782349602 : F), 2809, 8, 28⟩, ⟨(7389400380650616899576680658508110129253456297892051594376035926914882157951 : F), 2062, 5, 149⟩, ⟨(7389400380650616899576680658508110129253456297892051594376035926914882157951 : F), 2810, 8, 28⟩], residual := [((2609644557278354328565836284797374500913424651351362169226356694141084582833 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3030 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2505 rho) = ((1 : F) * rho 3031)

def relationRow3031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3032) * ((1 : F) + (-1 : F) * rho 3028) = ((8095985894828901428063008816912857292228771097296076721262201519985153970529 : F) * rho 3027 + (1 : F) * rho 3031)

def relationLc2506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 28⟩], residual := [((1 : F), 3030), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1984) * (relationLc2506 rho) = ((1 : F) * rho 3033)

def relationLc2507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 28⟩], residual := [((1 : F), 3032), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1984) * (relationLc2507 rho) = ((1 : F) * rho 3034)

def relationLc2508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 29⟩, ⟨(1 : F), 2810, 8, 29⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3034 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2508 rho) = ((1 : F) * rho 3035)

def relationLc2509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2060143958823073355734724205187868322756779499498343359721048205222341509940 : F), 2061, 5, 149⟩, ⟨(2060143958823073355734724205187868322756779499498343359721048205222341509940 : F), 2809, 8, 29⟩], residual := [((6848937982180812692729044196031415334310571292722222488585731250665080063305 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (714737645503320255440318207074993637899517394382989883705174528398297173222 : F), runs := [⟨(714737645503320255440318207074993637899517394382989883705174528398297173222 : F), 2062, 5, 149⟩, ⟨(714737645503320255440318207074993637899517394382989883705174528398297173222 : F), 2810, 8, 29⟩], residual := [((7035268714477096427834258837756375834408889943773983329074787985288032695718 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3035 (rho : Nat -> F) : Prop :=
    (relationLc2509 rho) * (relationLc2510 rho) = ((1 : F) * rho 3036)

def relationLc2511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (714737645503320255440318207074993637899517394382989883705174528398297173222 : F), runs := [⟨(5398317041411786283541944945710809076600337105488909498544408093870155439291 : F), 2061, 5, 149⟩, ⟨(5398317041411786283541944945710809076600337105488909498544408093870155439291 : F), 2809, 8, 29⟩, ⟨(714737645503320255440318207074993637899517394382989883705174528398297173222 : F), 2062, 5, 149⟩, ⟨(714737645503320255440318207074993637899517394382989883705174528398297173222 : F), 2810, 8, 29⟩], residual := [((7674853691918953186993961297285744925599891472972211986889358974761662085511 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3036 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2511 rho) = ((1 : F) * rho 3037)

def relationRow3037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3038) * ((1 : F) + (1 : F) * rho 3036) = ((1 : F) * rho 3037)

def relationLc2512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7729724103925050168808506731706552893476381940771073944230058927519112065819 : F), runs := [⟨(3046144708016584140706879993070737454775562229665154329390825362047253799750 : F), 2061, 5, 149⟩, ⟨(3046144708016584140706879993070737454775562229665154329390825362047253799750 : F), 2809, 8, 29⟩, ⟨(7729724103925050168808506731706552893476381940771073944230058927519112065819 : F), 2062, 5, 149⟩, ⟨(7729724103925050168808506731706552893476381940771073944230058927519112065819 : F), 2810, 8, 29⟩], residual := [((769608057509417237254863641495801605776007862181851841045874481155747153530 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3038 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2512 rho) = ((1 : F) * rho 3039)

def relationRow3039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3040) * ((1 : F) + (-1 : F) * rho 3036) = ((6113054686915106538982263152785802714499854499871899382249582622268452612513 : F) * rho 3035 + (1 : F) * rho 3039)

def relationLc2513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 29⟩], residual := [((1 : F), 3038), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1985) * (relationLc2513 rho) = ((1 : F) * rho 3041)

def relationLc2514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 29⟩], residual := [((1 : F), 3040), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1985) * (relationLc2514 rho) = ((1 : F) * rho 3042)

def relationLc2515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 30⟩, ⟨(1 : F), 2810, 8, 30⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3042 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2515 rho) = ((1 : F) * rho 3043)

def relationLc2516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(438298078731784562962066912655914842098740409231165003929213736243689094366 : F), 2061, 5, 149⟩, ⟨(438298078731784562962066912655914842098740409231165003929213736243689094366 : F), 2809, 8, 30⟩], residual := [((6992757197777699674250708748459163947449886003420107028852380212440058161259 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2245671786120690006839060813489520491514943197220454776091941164780785366760 : F), runs := [⟨(2245671786120690006839060813489520491514943197220454776091941164780785366760 : F), 2062, 5, 149⟩, ⟨(2245671786120690006839060813489520491514943197220454776091941164780785366760 : F), 2810, 8, 30⟩], residual := [((3883357724003683768614049969558244330787644143085875441049408729026234626242 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3043 (rho : Nat -> F) : Prop :=
    (relationLc2516 rho) * (relationLc2517 rho) = ((1 : F) * rho 3044)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
