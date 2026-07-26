import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs90

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1962 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 91⟩], residual := [((1 : F), 2515), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1898) * (relationLc1962 rho) = ((1 : F) * rho 2517)

def relationLc1963 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(906651443227238370999930576736507201843788420062155760822097063588325148631 : F), 2061, 5, 92⟩], residual := [((171856542169036465662660088707309910549636242610598401756383291275222624429 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1964 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), runs := [⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 2062, 5, 92⟩], residual := [((239656307825519749788656889954205843971214536386488825615388180129073822859 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2517 (rho : Nat -> F) : Prop :=
    (relationLc1963 rho) * (relationLc1964 rho) = ((1 : F) * rho 2518)

def relationLc1965 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), runs := [⟨(1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), 2061, 5, 92⟩, ⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 2062, 5, 92⟩], residual := [((7613592736668356630170670411501517018972926579544062799959943704790245883506 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2519) * ((1 : F) + (1 : F) * rho 2518) = (relationLc1965 rho)

def relationLc1966 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), runs := [⟨(1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), 2062, 5, 92⟩, ⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 2061, 5, 92⟩], residual := [((282282767984487211898132991613997864338075755356622244673057499008739425679 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2520) * ((1 : F) + (-1 : F) * rho 2518) = (relationLc1966 rho)

def relationLc1967 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 92⟩], residual := [((1 : F), 2519), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1899) * (relationLc1967 rho) = ((1 : F) * rho 2521)

def relationLc1968 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 92⟩], residual := [((1 : F), 2520), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1899) * (relationLc1968 rho) = ((1 : F) * rho 2522)

def relationLc1969 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8179997532971249348010168698851349345970456620578852397081600124288614754658 : F), 2061, 5, 93⟩], residual := [((67165515290697416187595235537827856610906086241323537994573544540646218256 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1970 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), runs := [⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 2062, 5, 93⟩], residual := [((7300898220308033915871176265277384593103237625616658863561297474360981627294 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2522 (rho : Nat -> F) : Prop :=
    (relationLc1969 rho) * (relationLc1970 rho) = ((1 : F) * rho 2523)

def relationLc1971 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 2061, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 2062, 5, 93⟩], residual := [((4863459133917352581038740730228734891844325571936386657529675825895096089318 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2524) * ((1 : F) + (1 : F) * rho 2523) = (relationLc1971 rho)

def relationLc1972 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 2062, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 2061, 5, 93⟩], residual := [((3999197093751402518624046588967473794431069856960421232165216655853348727802 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2525) * ((1 : F) + (-1 : F) * rho 2523) = (relationLc1972 rho)

def relationLc1973 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 93⟩], residual := [((1 : F), 2524), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1900) * (relationLc1973 rho) = ((1 : F) * rho 2526)

def relationLc1974 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 93⟩], residual := [((1 : F), 2525), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1900) * (relationLc1974 rho) = ((1 : F) * rho 2527)

def relationLc1975 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1431114787603952086392307633768073599645790269787901765432457889890133132379 : F), 2061, 5, 94⟩], residual := [((3657714537796633005479171841637416164237211678381198199859328213321907096082 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1976 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 2062, 5, 94⟩], residual := [((3486160377226881502651479614353021425755810132699530527842901563735863159498 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2527 (rho : Nat -> F) : Prop :=
    (relationLc1975 rho) * (relationLc1976 rho) = ((1 : F) * rho 2528)

def relationLc1977 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 2062, 5, 94⟩, ⟨(3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), 2061, 5, 94⟩], residual := [((529992612792118418954102052820668293007890806345800527261763639820835993722 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2529) * ((1 : F) + (1 : F) * rho 2528) = (relationLc1977 rho)

def relationLc1978 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 2061, 5, 94⟩, ⟨(3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), 2062, 5, 94⟩], residual := [((1313059727422419163286129086112246131100286747774995266260829771678302990122 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2530) * ((1 : F) + (-1 : F) * rho 2528) = (relationLc1978 rho)

def relationLc1979 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 94⟩], residual := [((1 : F), 2529), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1901) * (relationLc1979 rho) = ((1 : F) * rho 2531)

def relationLc1980 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 94⟩], residual := [((1 : F), 2530), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1901) * (relationLc1980 rho) = ((1 : F) * rho 2532)

def relationLc1981 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4952436348997321659786425300399468127622333560955486928171929060103938040593 : F), 2061, 5, 95⟩], residual := [((4505918629229567963271693135892301758844544991052967519848637676869612517925 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1982 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), runs := [⟨(8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), 2062, 5, 95⟩], residual := [((44225839855303871186047897097373652214192502872374967535753773639635171164 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2532 (rho : Nat -> F) : Prop :=
    (relationLc1981 rho) * (relationLc1982 rho) = ((1 : F) * rho 2533)

def relationLc1983 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), runs := [⟨(3344762889329800843780662380696169850927903984907386900079017259959392713649 : F), 2061, 5, 95⟩, ⟨(8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), 2062, 5, 95⟩], residual := [((803231153567425007543116169704355251605689776893495214106524016681835606880 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2534) * ((1 : F) + (1 : F) * rho 2533) = (relationLc1983 rho)

def relationLc1984 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3344762889329800843780662380696169850927903984907386900079017259959392713649 : F), runs := [⟨(3344762889329800843780662380696169850927903984907386900079017259959392713649 : F), 2062, 5, 95⟩, ⟨(8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), 2061, 5, 95⟩], residual := [((7533067527415250847591342602806768426570296117971204426577192619325307001694 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2535) * ((1 : F) + (-1 : F) * rho 2533) = (relationLc1984 rho)

def relationLc1985 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 95⟩], residual := [((1 : F), 2534), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1902) * (relationLc1985 rho) = ((1 : F) * rho 2536)

def relationLc1986 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 95⟩], residual := [((1 : F), 2535), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1902) * (relationLc1986 rho) = ((1 : F) * rho 2537)

def relationLc1987 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1313680653438832956044863578229212917132366813282912157302259158748316782495 : F), 2061, 5, 96⟩], residual := [((6904476889112867866868551260992636603494931668028457971296293017135984609338 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1988 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (622192490317937799212022705405542800287596127361715414949933002491330820432 : F), runs := [⟨(622192490317937799212022705405542800287596127361715414949933002491330820432 : F), 2062, 5, 96⟩], residual := [((8287385886539225868272247925295480985868053107575376610560771126184903401054 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2537 (rho : Nat -> F) : Prop :=
    (relationLc1987 rho) * (relationLc1988 rho) = ((1 : F) * rho 2538)

def relationLc1989 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (622192490317937799212022705405542800287596127361715414949933002491330820432 : F), runs := [⟨(622192490317937799212022705405542800287596127361715414949933002491330820432 : F), 2062, 5, 96⟩, ⟨(7975293959540741361581576436253552289616872946046947041792957070139396516308 : F), 2061, 5, 96⟩], residual := [((2240742143118543733148915050001778881500641247394851729501337526188830044988 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2539) * ((1 : F) + (1 : F) * rho 2538) = (relationLc1989 rho)

def relationLc1990 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7975293959540741361581576436253552289616872946046947041792957070139396516308 : F), runs := [⟨(622192490317937799212022705405542800287596127361715414949933002491330820432 : F), 2061, 5, 96⟩, ⟨(7975293959540741361581576436253552289616872946046947041792957070139396516308 : F), 2062, 5, 96⟩], residual := [((4585508775355717324810305694678792540096093119719576907514717865292569636336 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2540) * ((1 : F) + (-1 : F) * rho 2538) = (relationLc1990 rho)

def relationLc1991 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 96⟩], residual := [((1 : F), 2539), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1903) * (relationLc1991 rho) = ((1 : F) * rho 2541)

def relationLc1992 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 96⟩], residual := [((1 : F), 2540), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1903) * (relationLc1992 rho) = ((1 : F) * rho 2542)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
