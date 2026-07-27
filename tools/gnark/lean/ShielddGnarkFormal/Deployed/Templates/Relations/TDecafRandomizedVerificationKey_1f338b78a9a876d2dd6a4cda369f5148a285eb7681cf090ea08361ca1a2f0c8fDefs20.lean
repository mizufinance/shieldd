import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs19

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (683880372059817743273198104218967469992458893275318447673309183256736533325 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 256, 5, 89⟩, ⟨(683880372059817743273198104218967469992458893275318447673309183256736533325 : F), 257, 5, 89⟩], residual := [((4716674405789172745841800507991441449338750937613045759663632659674869388009 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 700) * ((1 : F) + (-1 : F) * rho 698) = (relationLc490 rho)

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 89⟩], residual := [((1 : F), 699), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91) * (relationLc491 rho) = ((1 : F) * rho 701)

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 89⟩], residual := [((1 : F), 700), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 91) * (relationLc492 rho) = ((1 : F) * rho 702)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(416901722813894028244973649619309201824033459802693192096545298596434456705 : F), 256, 5, 90⟩], residual := [((5389722288278426713369559430097372389797259323563071839234918205001124245927 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 257, 5, 90⟩], residual := [((2844526279434391185474169943104742618961444464907013672005077469127649057606 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow702 (rho : Nat -> F) : Prop :=
    (relationLc493 rho) * (relationLc494 rho) = ((1 : F) * rho 703)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 257, 5, 90⟩, ⟨(28090539297284871986340027486737760514923213111997130576447825176355685815 : F), 256, 5, 90⟩], residual := [((5116056455807815618179703014842813839043214580586809401936439430203431059045 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 704) * ((1 : F) + (1 : F) * rho 703) = (relationLc495 rho)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (28090539297284871986340027486737760514923213111997130576447825176355685815 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 256, 5, 90⟩, ⟨(28090539297284871986340027486737760514923213111997130576447825176355685815 : F), 257, 5, 90⟩], residual := [((4458287442263740785262441721229653695101228679984538103063021122821012133541 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 705) * ((1 : F) + (-1 : F) * rho 703) = (relationLc496 rho)

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 90⟩], residual := [((1 : F), 704), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92) * (relationLc497 rho) = ((1 : F) * rho 706)

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 90⟩], residual := [((1 : F), 705), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 92) * (relationLc498 rho) = ((1 : F) * rho 707)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8339597046261833337760335063215216078969421923029246720831548189814301480772 : F), 256, 5, 91⟩], residual := [((6326468848790444497198581113203078955764617576924413867089125979139173942337 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), runs := [⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 257, 5, 91⟩], residual := [((3270113702474803028094885201150201488877397205225361062087494797364316023631 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow707 (rho : Nat -> F) : Prop :=
    (relationLc499 rho) * (relationLc500 rho) = ((1 : F) * rho 708)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), runs := [⟨(4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), 256, 5, 91⟩, ⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 257, 5, 91⟩], residual := [((5589473271864048154278094223117465690620656114996841805955550957885557808837 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 709) * ((1 : F) + (1 : F) * rho 708) = (relationLc501 rho)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), runs := [⟨(4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), 257, 5, 91⟩, ⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 256, 5, 91⟩], residual := [((5866324979306886411374123066060365086744916503349938728262095692376973547345 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 710) * ((1 : F) + (-1 : F) * rho 708) = (relationLc502 rho)

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 91⟩], residual := [((1 : F), 709), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93) * (relationLc503 rho) = ((1 : F) * rho 711)

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 91⟩], residual := [((1 : F), 710), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 93) * (relationLc504 rho) = ((1 : F) * rho 712)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(906651443227238370999930576736507201843788420062155760822097063588325148631 : F), 256, 5, 92⟩], residual := [((171856542169036465662660088707309910549636242610598401756383291275222624429 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), runs := [⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 257, 5, 92⟩], residual := [((239656307825519749788656889954205843971214536386488825615388180129073822859 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow712 (rho : Nat -> F) : Prop :=
    (relationLc505 rho) * (relationLc506 rho) = ((1 : F) * rho 713)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), runs := [⟨(1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), 256, 5, 92⟩, ⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 257, 5, 92⟩], residual := [((7613592736668356630170670411501517018972926579544062799959943704790245883506 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 714) * ((1 : F) + (1 : F) * rho 713) = (relationLc507 rho)

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), runs := [⟨(1048520293769899419882260603316721766457400211553404863037581808352405425286 : F), 257, 5, 92⟩, ⟨(7808822311738477151074558236427627895815556469789956034561255418958260727017 : F), 256, 5, 92⟩], residual := [((282282767984487211898132991613997864338075755356622244673057499008739425679 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 715) * ((1 : F) + (-1 : F) * rho 713) = (relationLc508 rho)

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 92⟩], residual := [((1 : F), 714), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94) * (relationLc509 rho) = ((1 : F) * rho 716)

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 92⟩], residual := [((1 : F), 715), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 94) * (relationLc510 rho) = ((1 : F) * rho 717)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8179997532971249348010168698851349345970456620578852397081600124288614754658 : F), 256, 5, 93⟩], residual := [((67165515290697416187595235537827856610906086241323537994573544540646218256 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), runs := [⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 257, 5, 93⟩], residual := [((7300898220308033915871176265277384593103237625616658863561297474360981627294 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow717 (rho : Nat -> F) : Prop :=
    (relationLc511 rho) * (relationLc512 rho) = ((1 : F) * rho 718)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 256, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 257, 5, 93⟩], residual := [((4863459133917352581038740730228734891844325571936386657529675825895096089318 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 719) * ((1 : F) + (1 : F) * rho 718) = (relationLc513 rho)

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 257, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 256, 5, 93⟩], residual := [((3999197093751402518624046588967473794431069856960421232165216655853348727802 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 720) * ((1 : F) + (-1 : F) * rho 718) = (relationLc514 rho)

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 93⟩], residual := [((1 : F), 719), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95) * (relationLc515 rho) = ((1 : F) * rho 721)

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 93⟩], residual := [((1 : F), 720), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95) * (relationLc516 rho) = ((1 : F) * rho 722)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1431114787603952086392307633768073599645790269787901765432457889890133132379 : F), 256, 5, 94⟩], residual := [((3657714537796633005479171841637416164237211678381198199859328213321907096082 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 257, 5, 94⟩], residual := [((3486160377226881502651479614353021425755810132699530527842901563735863159498 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow722 (rho : Nat -> F) : Prop :=
    (relationLc517 rho) * (relationLc518 rho) = ((1 : F) * rho 723)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 257, 5, 94⟩, ⟨(3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), 256, 5, 94⟩], residual := [((529992612792118418954102052820668293007890806345800527261763639820835993722 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 724) * ((1 : F) + (1 : F) * rho 723) = (relationLc519 rho)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 256, 5, 94⟩, ⟨(3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), 257, 5, 94⟩], residual := [((1313059727422419163286129086112246131100286747774995266260829771678302990122 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 725) * ((1 : F) + (-1 : F) * rho 723) = (relationLc520 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
