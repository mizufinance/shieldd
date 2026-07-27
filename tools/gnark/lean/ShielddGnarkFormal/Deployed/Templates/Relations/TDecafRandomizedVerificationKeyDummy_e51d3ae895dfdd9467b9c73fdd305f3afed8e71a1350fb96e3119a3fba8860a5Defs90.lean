import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs89

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow2489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2490) * ((1 : F) + (-1 : F) * rho 2488) = (relationLc1930 rho)

def relationLc1931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 86⟩], residual := [((1 : F), 2489), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1893) * (relationLc1931 rho) = ((1 : F) * rho 2491)

def relationLc1932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 86⟩], residual := [((1 : F), 2490), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1893) * (relationLc1932 rho) = ((1 : F) * rho 2492)

def relationLc1933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(26200193764347171125407596709908285096460117738061776850047079451019047352 : F), 2061, 5, 87⟩], residual := [((529502284087046459666488542980438945459686277092178839399050484959576701564 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), runs := [⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 2062, 5, 87⟩], residual := [((1570170090437106096843875560441493473645609531430524209506513015550493859267 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2492 (rho : Nat -> F) : Prop :=
    (relationLc1933 rho) * (relationLc1934 rho) = ((1 : F) * rho 2493)

def relationLc1935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), runs := [⟨(1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), 2061, 5, 87⟩, ⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 2062, 5, 87⟩], residual := [((7904390489804459432761619287625195850025367088443500314419004926041658676337 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2494) * ((1 : F) + (1 : F) * rho 2493) = (relationLc1935 rho)

def relationLc1936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), runs := [⟨(1447950144454703815601462007906504803554390041617856049204667652182942404790 : F), 2062, 5, 87⟩, ⟨(7936452357988611095616823186838963009242803597836007912202524795707885778990 : F), 2061, 5, 87⟩], residual := [((1144087987983058011604391365965542383344283330920575228737270886315331523144 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2495) * ((1 : F) + (-1 : F) * rho 2493) = (relationLc1936 rho)

def relationLc1937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 87⟩], residual := [((1 : F), 2494), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1894) * (relationLc1937 rho) = ((1 : F) * rho 2496)

def relationLc1938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 87⟩], residual := [((1 : F), 2495), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1894) * (relationLc1938 rho) = ((1 : F) * rho 2497)

def relationLc1939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7087097300354708100130994740412149671502360901401685447105460186367585798810 : F), 2061, 5, 88⟩], residual := [((7582837550068422223735267140763712102417066333942182552409190141783131332570 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), runs := [⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 2062, 5, 88⟩], residual := [((7824856292175594371432062421309296506730692337607393469994065188588716269062 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2497 (rho : Nat -> F) : Prop :=
    (relationLc1939 rho) * (relationLc1940 rho) = ((1 : F) * rho 2498)

def relationLc1941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), runs := [⟨(2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), 2061, 5, 88⟩, ⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 2062, 5, 88⟩], residual := [((8419960141374165358576877434272703185563564805461284139995613908481557675884 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2499) * ((1 : F) + (1 : F) * rho 2498) = (relationLc1941 rho)

def relationLc1942 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), runs := [⟨(2934567187173358253272806473195052784205501742296595379328422825370317735039 : F), 2062, 5, 88⟩, ⟨(7317303818992294454761804521879536957884097368722720344564353606843686818560 : F), 2061, 5, 88⟩], residual := [((8183137533133929953836593527067042140091951128981924624733209100941525274475 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2500) * ((1 : F) + (-1 : F) * rho 2498) = (relationLc1942 rho)

def relationLc1943 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 88⟩], residual := [((1 : F), 2499), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1895) * (relationLc1943 rho) = ((1 : F) * rho 2501)

def relationLc1944 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 88⟩], residual := [((1 : F), 2500), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1895) * (relationLc1944 rho) = ((1 : F) * rho 2502)

def relationLc1945 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5553937132187018911618187782803373191498878807145456404870079374753212848821 : F), 2061, 5, 89⟩], residual := [((8106250636419396786282151843311679883550901458438273481039369926572772228425 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1946 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 2062, 5, 89⟩], residual := [((1113765216506362856953168545775460761137336684574255069943489410559258707144 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2502 (rho : Nat -> F) : Prop :=
    (relationLc1945 rho) * (relationLc1946 rho) = ((1 : F) * rho 2503)

def relationLc1947 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 2062, 5, 89⟩, ⟨(683880372059817743273198104218967469992458893275318447673309183256736533325 : F), 2061, 5, 89⟩], residual := [((6301644328001247508978276924882736661695378448284690910493273399520982279024 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2504) * ((1 : F) + (1 : F) * rho 2503) = (relationLc1947 rho)

def relationLc1948 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (683880372059817743273198104218967469992458893275318447673309183256736533325 : F), runs := [⟨(3816215092977295608751587065614119319182446763153944430884870878015873366014 : F), 2061, 5, 89⟩, ⟨(683880372059817743273198104218967469992458893275318447673309183256736533325 : F), 2062, 5, 89⟩], residual := [((4716674405789172745841800507991441449338750937613045759663632659674869388009 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2505) * ((1 : F) + (-1 : F) * rho 2503) = (relationLc1948 rho)

def relationLc1949 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 89⟩], residual := [((1 : F), 2504), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1896) * (relationLc1949 rho) = ((1 : F) * rho 2506)

def relationLc1950 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 89⟩], residual := [((1 : F), 2505), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1896) * (relationLc1950 rho) = ((1 : F) * rho 2507)

def relationLc1951 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(416901722813894028244973649619309201824033459802693192096545298596434456705 : F), 2061, 5, 90⟩], residual := [((5389722288278426713369559430097372389797259323563071839234918205001124245927 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1952 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 2062, 5, 90⟩], residual := [((2844526279434391185474169943104742618961444464907013672005077469127649057606 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2507 (rho : Nat -> F) : Prop :=
    (relationLc1951 rho) * (relationLc1952 rho) = ((1 : F) * rho 2508)

def relationLc1953 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 2062, 5, 90⟩, ⟨(28090539297284871986340027486737760514923213111997130576447825176355685815 : F), 2061, 5, 90⟩], residual := [((5116056455807815618179703014842813839043214580586809401936439430203431059045 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2509) * ((1 : F) + (1 : F) * rho 2508) = (relationLc1953 rho)

def relationLc1954 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (28090539297284871986340027486737760514923213111997130576447825176355685815 : F), runs := [⟨(1449991609318362953712346164545945825366334479912445709966929472464401371389 : F), 2061, 5, 90⟩, ⟨(28090539297284871986340027486737760514923213111997130576447825176355685815 : F), 2062, 5, 90⟩], residual := [((4458287442263740785262441721229653695101228679984538103063021122821012133541 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2510) * ((1 : F) + (-1 : F) * rho 2508) = (relationLc1954 rho)

def relationLc1955 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 90⟩], residual := [((1 : F), 2509), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1897) * (relationLc1955 rho) = ((1 : F) * rho 2511)

def relationLc1956 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 90⟩], residual := [((1 : F), 2510), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1897) * (relationLc1956 rho) = ((1 : F) * rho 2512)

def relationLc1957 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8339597046261833337760335063215216078969421923029246720831548189814301480772 : F), 2061, 5, 91⟩], residual := [((6326468848790444497198581113203078955764617576924413867089125979139173942337 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1958 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), runs := [⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 2062, 5, 91⟩], residual := [((3270113702474803028094885201150201488877397205225361062087494797364316023631 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2512 (rho : Nat -> F) : Prop :=
    (relationLc1957 rho) * (relationLc1958 rho) = ((1 : F) * rho 2513)

def relationLc1959 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), runs := [⟨(4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), 2061, 5, 91⟩, ⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 2062, 5, 91⟩], residual := [((5589473271864048154278094223117465690620656114996841805955550957885557808837 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2514) * ((1 : F) + (1 : F) * rho 2513) = (relationLc1959 rho)

def relationLc1960 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), runs := [⟨(4589772038350949255057955001523910319121754462400148291414283233813400484193 : F), 2062, 5, 91⟩, ⟨(7505485781713047266390917837680540679918032585767223269060010742956126290425 : F), 2061, 5, 91⟩], residual := [((5866324979306886411374123066060365086744916503349938728262095692376973547345 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2515) * ((1 : F) + (-1 : F) * rho 2513) = (relationLc1960 rho)

def relationLc1961 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 91⟩], residual := [((1 : F), 2514), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1898) * (relationLc1961 rho) = ((1 : F) * rho 2516)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
