import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs121

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow3240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2010) * (relationLc2688 rho) = ((1 : F) * rho 3241)

def relationLc2689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 54⟩], residual := [((1 : F), 3240), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2010) * (relationLc2689 rho) = ((1 : F) * rho 3242)

def relationLc2690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 55⟩, ⟨(1 : F), 2810, 8, 55⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3242 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2690 rho) = ((1 : F) * rho 3243)

def relationLc2691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4583072808772894578282428172385816829329163950970175532288694571516542345186 : F), 2061, 5, 149⟩, ⟨(4583072808772894578282428172385816829329163950970175532288694571516542345186 : F), 2809, 8, 55⟩], residual := [((712592056375093217253407910869342574126920118676731509118637384739350028946 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7407179741270863900722282752204500392426669272486536784706558560924426719167 : F), runs := [⟨(7407179741270863900722282752204500392426669272486536784706558560924426719167 : F), 2062, 5, 149⟩, ⟨(7407179741270863900722282752204500392426669272486536784706558560924426719167 : F), 2810, 8, 55⟩], residual := [((395971560032455769750022647094956774664051301223518352824675903196206007919 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3243 (rho : Nat -> F) : Prop :=
    (relationLc2691 rho) * (relationLc2692 rho) = ((1 : F) * rho 3244)

def relationLc2693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7407179741270863900722282752204500392426669272486536784706558560924426719167 : F), runs := [⟨(2561969558187739226478055634589964395752947022493244833472678762062847866702 : F), 2061, 5, 149⟩, ⟨(2561969558187739226478055634589964395752947022493244833472678762062847866702 : F), 2809, 8, 55⟩, ⟨(7407179741270863900722282752204500392426669272486536784706558560924426719167 : F), 2062, 5, 149⟩, ⟨(7407179741270863900722282752204500392426669272486536784706558560924426719167 : F), 2810, 8, 55⟩], residual := [((2962250433925742477024989446734920051187454978744242393060909915085289434423 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3244 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2693 rho) = ((1 : F) * rho 3245)

def relationRow3245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3246) * ((1 : F) + (1 : F) * rho 3244) = ((1 : F) * rho 3245)

def relationLc2694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1037282008157506523526542186577046138949230062667527043228674894992982519874 : F), runs := [⟨(1037282008157506523526542186577046138949230062667527043228674894992982519874 : F), 2062, 5, 149⟩, ⟨(1037282008157506523526542186577046138949230062667527043228674894992982519874 : F), 2810, 8, 55⟩, ⟨(5882492191240631197770769304191582135622952312660818994462554693854561372339 : F), 2061, 5, 149⟩, ⟨(5882492191240631197770769304191582135622952312660818994462554693854561372339 : F), 2809, 8, 55⟩], residual := [((5482211315502627947223835492046626480188444356409821434874323540832119804618 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3246 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2694 rho) = ((1 : F) * rho 3247)

def relationRow3247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3248) * ((1 : F) + (-1 : F) * rho 3244) = ((1524687550030232702951513448012918256803716959825717790244003867069865346828 : F) * rho 3243 + (1 : F) * rho 3247)

def relationLc2695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 55⟩], residual := [((1 : F), 3246), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2011) * (relationLc2695 rho) = ((1 : F) * rho 3249)

def relationLc2696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 55⟩], residual := [((1 : F), 3248), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2011) * (relationLc2696 rho) = ((1 : F) * rho 3250)

def relationLc2697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 56⟩, ⟨(1 : F), 2810, 8, 56⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3250 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2697 rho) = ((1 : F) * rho 3251)

def relationLc2698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5784921358780517147321313440632775274927563998220086564825994498022190454221 : F), 2061, 5, 149⟩, ⟨(5784921358780517147321313440632775274927563998220086564825994498022190454221 : F), 2809, 8, 56⟩], residual := [((6305079995656463654750648117447703086047002182022449475921073467854836326934 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), runs := [⟨(1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), 2062, 5, 149⟩, ⟨(1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), 2810, 8, 56⟩], residual := [((1610538767991596816650409780213098391033170561624469385315731459758725783327 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3251 (rho : Nat -> F) : Prop :=
    (relationLc2698 rho) * (relationLc2699 rho) = ((1 : F) * rho 3252)

def relationLc2700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), runs := [⟨(1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), 2062, 5, 149⟩, ⟨(1957125926108579253371118424697298480298997708708714571039011901926067811585 : F), 2810, 8, 56⟩, ⟨(888010359459640497065276007624754394479009484687871009606188348236954955058 : F), 2061, 5, 149⟩, ⟨(888010359459640497065276007624754394479009484687871009606188348236954955058 : F), 2809, 8, 56⟩], residual := [((2993481232146933279157417449155677566665656915066419064387537616889164379955 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3252 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2700 rho) = ((1 : F) * rho 3253)

def relationRow3253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3254) * ((1 : F) + (1 : F) * rho 3252) = ((1 : F) * rho 3253)

def relationLc2701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6487335823319791170877706514084248051076901626445349256896221553991341427456 : F), runs := [⟨(6487335823319791170877706514084248051076901626445349256896221553991341427456 : F), 2062, 5, 149⟩, ⟨(6487335823319791170877706514084248051076901626445349256896221553991341427456 : F), 2810, 8, 56⟩, ⟨(7556451389968729927183548931156792136896889850466192818329045107680454283983 : F), 2061, 5, 149⟩, ⟨(7556451389968729927183548931156792136896889850466192818329045107680454283983 : F), 2809, 8, 56⟩], residual := [((5450980517281437145091407489625868964710242420087644763547695839028244859086 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3254 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2701 rho) = ((1 : F) * rho 3255)

def relationRow3255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3256) * ((1 : F) + (-1 : F) * rho 3252) = ((2845136285568219750436394432322052874778007193396585580645200250163022766643 : F) * rho 3251 + (1 : F) * rho 3255)

def relationLc2702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 56⟩], residual := [((1 : F), 3254), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2012) * (relationLc2702 rho) = ((1 : F) * rho 3257)

def relationLc2703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 56⟩], residual := [((1 : F), 3256), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2012) * (relationLc2703 rho) = ((1 : F) * rho 3258)

def relationLc2704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 57⟩, ⟨(1 : F), 2810, 8, 57⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3258 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2704 rho) = ((1 : F) * rho 3259)

def relationLc2705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5905365879735766667841684091558409867820953894323093881227478821587200358292 : F), 2061, 5, 149⟩, ⟨(5905365879735766667841684091558409867820953894323093881227478821587200358292 : F), 2809, 8, 57⟩], residual := [((7212764438683679537947725008823269311972987213902295979621436722051371346111 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), runs := [⟨(4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), 2062, 5, 149⟩, ⟨(4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), 2810, 8, 57⟩], residual := [((5884707577782438660459430595081945110501492710070465762925982429225625531051 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3259 (rho : Nat -> F) : Prop :=
    (relationLc2705 rho) * (relationLc2706 rho) = ((1 : F) * rho 3260)

def relationLc2707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), runs := [⟨(1564501649722010868527949296547647441544835710773070100528640509989877181391 : F), 2061, 5, 149⟩, ⟨(1564501649722010868527949296547647441544835710773070100528640509989877181391 : F), 2809, 8, 57⟩, ⟨(4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), 2062, 5, 149⟩, ⟨(4565390105889309255164458630479635602181689632094937719216497752358944931276 : F), 2810, 8, 57⟩], residual := [((5487373825472086693849157757863494966617089989874130499299661029863117040539 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3260 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2707 rho) = ((1 : F) * rho 3261)

def relationRow3261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3262) * ((1 : F) + (1 : F) * rho 3260) = ((1 : F) * rho 3261)

def relationLc2708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3879071643539061169084366308301910929194209703059126108718735703558464307765 : F), runs := [⟨(3879071643539061169084366308301910929194209703059126108718735703558464307765 : F), 2062, 5, 149⟩, ⟨(3879071643539061169084366308301910929194209703059126108718735703558464307765 : F), 2810, 8, 57⟩, ⟨(6879960099706359555720875642233899089831063624380993727406592945927532057650 : F), 2061, 5, 149⟩, ⟨(6879960099706359555720875642233899089831063624380993727406592945927532057650 : F), 2809, 8, 57⟩], residual := [((2957087923956283730399667180918051564758809345279933328635572426054292198502 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3262 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2708 rho) = ((1 : F) * rho 3263)

def relationRow3263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3264) * ((1 : F) + (-1 : F) * rho 3260) = ((6129891755611320123692407927027283043726525342868007819745138262348822112667 : F) * rho 3259 + (1 : F) * rho 3263)

def relationLc2709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩, ⟨(-1 : F), 2809, 8, 57⟩], residual := [((1 : F), 3262), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2013) * (relationLc2709 rho) = ((1 : F) * rho 3265)

def relationLc2710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩, ⟨(-1 : F), 2810, 8, 57⟩], residual := [((1 : F), 3264), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2013) * (relationLc2710 rho) = ((1 : F) * rho 3266)

def relationLc2711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩, ⟨(1 : F), 2809, 8, 58⟩, ⟨(1 : F), 2810, 8, 58⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3266 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2711 rho) = ((1 : F) * rho 3267)

def relationLc2712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2333521382420236697040097662358587024796079362568935009425247624130129932194 : F), 2061, 5, 149⟩, ⟨(2333521382420236697040097662358587024796079362568935009425247624130129932194 : F), 2809, 8, 58⟩], residual := [((1417945779725424908112552563237869929744463813114412655051183172264746978897 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1261263590223925496177047919081127638801730006445271238456705421125076545401 : F), runs := [⟨(1261263590223925496177047919081127638801730006445271238456705421125076545401 : F), 2062, 5, 149⟩, ⟨(1261263590223925496177047919081127638801730006445271238456705421125076545401 : F), 2810, 8, 58⟩], residual := [((1064426900402051743754219644245711463532616799178717825153585914082016330015 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow3267 (rho : Nat -> F) : Prop :=
    (relationLc2712 rho) * (relationLc2713 rho) = ((1 : F) * rho 3268)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
