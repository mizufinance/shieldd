import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs93

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow2592 (rho : Nat -> F) : Prop :=
    (relationLc2053 rho) * (relationLc2054 rho) = ((1 : F) * rho 2593)

def relationLc2055 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), runs := [⟨(5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), 2061, 5, 107⟩, ⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 2062, 5, 107⟩], residual := [((869312241302472422173400596354412836831435332259404920294906345637469615013 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2594) * ((1 : F) + (1 : F) * rho 2593) = (relationLc2055 rho)

def relationLc2056 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), runs := [⟨(5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), 2062, 5, 107⟩, ⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 2061, 5, 107⟩], residual := [((4952435177904146458220233564938569113666684850685530035021249355113584218572 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2595) * ((1 : F) + (-1 : F) * rho 2593) = (relationLc2056 rho)

def relationLc2057 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 107⟩], residual := [((1 : F), 2594), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1914) * (relationLc2057 rho) = ((1 : F) * rho 2596)

def relationLc2058 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 107⟩], residual := [((1 : F), 2595), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1914) * (relationLc2058 rho) = ((1 : F) * rho 2597)

def relationLc2059 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3734468812329077059924950204727031629122473060052984382313629408831163347172 : F), 2061, 5, 108⟩], residual := [((6557751697947992234906904655494192058588742758853648003926269888731369902088 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2060 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), runs := [⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 2062, 5, 108⟩], residual := [((2218295594801486147569305803986860457559073079568149607218132593548481807376 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2597 (rho : Nat -> F) : Prop :=
    (relationLc2059 rho) * (relationLc2060 rho) = ((1 : F) * rho 2598)

def relationLc2061 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), runs := [⟨(2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), 2061, 5, 108⟩, ⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 2062, 5, 108⟩], residual := [((5393079387353339316638264165513689158376760761845116205268584841928154384739 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2599) * ((1 : F) + (1 : F) * rho 2598) = (relationLc2061 rho)

def relationLc2062 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), runs := [⟨(2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), 2062, 5, 108⟩, ⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 2061, 5, 108⟩], residual := [((4610710194873497428010206747833905789852935740684970065079125792390369064319 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2600) * ((1 : F) + (-1 : F) * rho 2598) = (relationLc2062 rho)

def relationLc2063 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 108⟩], residual := [((1 : F), 2599), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1915) * (relationLc2063 rho) = ((1 : F) * rho 2601)

def relationLc2064 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 108⟩], residual := [((1 : F), 2600), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1915) * (relationLc2064 rho) = ((1 : F) * rho 2602)

def relationLc2065 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(568596184901683623662901086713254788204948897441843689512915291178609917092 : F), 2061, 5, 109⟩], residual := [((7763900067584871699239273873026970932379347276428893124063049670480466451269 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2066 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), runs := [⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 2062, 5, 109⟩], residual := [((2671857680381596165133534350268632670833089194821162061937485372477153821385 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2602 (rho : Nat -> F) : Prop :=
    (relationLc2065 rho) * (relationLc2066 rho) = ((1 : F) * rho 2603)

def relationLc2067 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), runs := [⟨(5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), 2061, 5, 109⟩, ⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 2062, 5, 109⟩], residual := [((1701679332571768943703758843872422402052409412842616772630170512169713255766 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2604) * ((1 : F) + (1 : F) * rho 2603) = (relationLc2067 rho)

def relationLc2068 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), runs := [⟨(5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), 2062, 5, 109⟩, ⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 2061, 5, 109⟩], residual := [((7327999024681437242838383046063829421577254374760206324494471040672979390485 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2605) * ((1 : F) + (-1 : F) * rho 2603) = (relationLc2068 rho)

def relationLc2069 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 109⟩], residual := [((1 : F), 2604), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1916) * (relationLc2069 rho) = ((1 : F) * rho 2606)

def relationLc2070 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 109⟩], residual := [((1 : F), 2605), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1916) * (relationLc2070 rho) = ((1 : F) * rho 2607)

def relationLc2071 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4844898403553568028259035569409623674492133411001005402900268525269019383147 : F), 2061, 5, 110⟩], residual := [((1584370194938709372334615152442198386778091293051099268892628669364464823643 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2072 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 2062, 5, 110⟩], residual := [((5822744375078125061629763314676319349385425802373362430870652483474328191553 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2607 (rho : Nat -> F) : Prop :=
    (relationLc2071 rho) * (relationLc2072 rho) = ((1 : F) * rho 2608)

def relationLc2073 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 2062, 5, 110⟩, ⟨(6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), 2061, 5, 110⟩], residual := [((5848426111569284956760704737914146597703585744547952855802896683994891299125 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2609) * ((1 : F) + (1 : F) * rho 2608) = (relationLc2073 rho)

def relationLc2074 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 2061, 5, 110⟩, ⟨(6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), 2062, 5, 110⟩], residual := [((2975589111667990585410595177746922024926505695906607372137355479945806617660 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2610) * ((1 : F) + (-1 : F) * rho 2608) = (relationLc2074 rho)

def relationLc2075 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 110⟩], residual := [((1 : F), 2609), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1917) * (relationLc2075 rho) = ((1 : F) * rho 2611)

def relationLc2076 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 110⟩], residual := [((1 : F), 2610), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1917) * (relationLc2076 rho) = ((1 : F) * rho 2612)

def relationLc2077 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5473513454910718385916379960564670405200796488660792199065102502565012311891 : F), 2061, 5, 111⟩], residual := [((1290682852539617687465308244549146097528654648960453990058143318687428377628 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2078 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), runs := [⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 2062, 5, 111⟩], residual := [((4560315553206082171239657153972697214142086945910781475321943315739135166866 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2612 (rho : Nat -> F) : Prop :=
    (relationLc2077 rho) * (relationLc2078 rho) = ((1 : F) * rho 2613)

def relationLc2079 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), runs := [⟨(2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), 2061, 5, 111⟩, ⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 2062, 5, 111⟩], residual := [((8096738855383979623858733239971772192059346566440027154344825958921594655699 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2614) * ((1 : F) + (1 : F) * rho 2613) = (relationLc2079 rho)

def relationLc2080 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), runs := [⟨(2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), 2062, 5, 111⟩, ⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 2061, 5, 111⟩], residual := [((1278272657742027434275494546315655160302569862150581501574320349530171965278 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2615) * ((1 : F) + (-1 : F) * rho 2613) = (relationLc2080 rho)

def relationLc2081 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 111⟩], residual := [((1 : F), 2614), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1918) * (relationLc2081 rho) = ((1 : F) * rho 2616)

def relationLc2082 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 111⟩], residual := [((1 : F), 2615), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1918) * (relationLc2082 rho) = ((1 : F) * rho 2617)

def relationLc2083 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6494117757873971508758146756812052405656400213213392704742067070974595246434 : F), 2061, 5, 112⟩], residual := [((2505911588988824428755289285606906412415086920291455482382843872981685118529 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2084 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 2062, 5, 112⟩], residual := [((8174319716053133462684811146498463582214521739980076836226226865024436960466 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2617 (rho : Nat -> F) : Prop :=
    (relationLc2083 rho) * (relationLc2084 rho) = ((1 : F) * rho 2618)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
