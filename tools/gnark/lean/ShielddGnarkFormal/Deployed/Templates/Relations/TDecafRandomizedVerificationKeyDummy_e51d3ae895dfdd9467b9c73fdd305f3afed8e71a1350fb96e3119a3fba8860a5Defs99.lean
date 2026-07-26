import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs98

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow2718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2719) * ((1 : F) + (1 : F) * rho 2718) = (relationLc2205 rho)

def relationLc2206 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), runs := [⟨(1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), 2062, 5, 132⟩, ⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 2061, 5, 132⟩], residual := [((3112293859876606234205874932513227378808768907034857639058815376386098008592 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2720) * ((1 : F) + (-1 : F) * rho 2718) = (relationLc2206 rho)

def relationLc2207 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 132⟩], residual := [((1 : F), 2719), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1939) * (relationLc2207 rho) = ((1 : F) * rho 2721)

def relationLc2208 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 132⟩], residual := [((1 : F), 2720), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1939) * (relationLc2208 rho) = ((1 : F) * rho 2722)

def relationLc2209 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8350735386965930517301024222238984186980631401436540132621059471273859939706 : F), 2061, 5, 133⟩], residual := [((8334226194666000076422094566176775911994127709825910102492242190812320025554 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2210 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), runs := [⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 2062, 5, 133⟩], residual := [((380793711990470464493962683016616774893169390026769268098521793754562433091 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2722 (rho : Nat -> F) : Prop :=
    (relationLc2209 rho) * (relationLc2210 rho) = ((1 : F) * rho 2723)

def relationLc2211 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), runs := [⟨(2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), 2061, 5, 133⟩, ⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 2062, 5, 133⟩], residual := [((36941004034677040948635904518525085393461548302413755168539434819459346161 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2724) * ((1 : F) + (1 : F) * rho 2723) = (relationLc2211 rho)

def relationLc2212 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), runs := [⟨(2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), 2062, 5, 133⟩, ⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 2061, 5, 133⟩], residual := [((6036862831985683245651487661710623165633320395046026221911072481686485751233 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2725) * ((1 : F) + (-1 : F) * rho 2723) = (relationLc2212 rho)

def relationLc2213 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 133⟩], residual := [((1 : F), 2724), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1940) * (relationLc2213 rho) = ((1 : F) * rho 2726)

def relationLc2214 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 133⟩], residual := [((1 : F), 2725), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1940) * (relationLc2214 rho) = ((1 : F) * rho 2727)

def relationLc2215 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182996801743943238222365565355394233708584573345921108487852703254453477350 : F), 2061, 5, 134⟩], residual := [((4659002157157882760089661487130649427326522575034374982504730073283696606459 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2216 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 2062, 5, 134⟩], residual := [((7378894693786544031947238095630110179035204260913025452629774386744340172769 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2727 (rho : Nat -> F) : Prop :=
    (relationLc2215 rho) * (relationLc2216 rho) = ((1 : F) * rho 2728)

def relationLc2217 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 2062, 5, 134⟩, ⟨(3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), 2061, 5, 134⟩], residual := [((6402098066794563970468588950616402586663725199433751051837047812928448237298 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2729) * ((1 : F) + (1 : F) * rho 2728) = (relationLc2217 rho)

def relationLc2218 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 2061, 5, 134⟩, ⟨(3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), 2062, 5, 134⟩], residual := [((4369131667080006902416927500337444541983085711333428144390077593133915563395 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2730) * ((1 : F) + (-1 : F) * rho 2728) = (relationLc2218 rho)

def relationLc2219 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 134⟩], residual := [((1 : F), 2729), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * (relationLc2219 rho) = ((1 : F) * rho 2731)

def relationLc2220 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 134⟩], residual := [((1 : F), 2730), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1941) * (relationLc2220 rho) = ((1 : F) * rho 2732)

def relationLc2221 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8137632229673021427629908971617522457232664963056919591413255887339944990409 : F), 2061, 5, 135⟩], residual := [((4769292595969500774517643306856801806102352804507087964477536699275377005469 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2222 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 2062, 5, 135⟩], residual := [((3829596561026703133464657413286632844617675577922328941474428319150653561380 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2732 (rho : Nat -> F) : Prop :=
    (relationLc2221 rho) * (relationLc2222 rho) = ((1 : F) * rho 2733)

def relationLc2223 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 2062, 5, 135⟩, ⟨(8287825970716770261139075480807719775390730981251142702943212584980649099473 : F), 2061, 5, 135⟩], residual := [((2931103548540782651560121171320131295032459678182143087574836251588213840107 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2734) * ((1 : F) + (1 : F) * rho 2733) = (relationLc2223 rho)

def relationLc2224 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8287825970716770261139075480807719775390730981251142702943212584980649099473 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 2061, 5, 135⟩, ⟨(8287825970716770261139075480807719775390730981251142702943212584980649099473 : F), 2062, 5, 135⟩], residual := [((1955362291839259112086866644480913850363730902054284254394140156483786318216 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2735) * ((1 : F) + (-1 : F) * rho 2733) = (relationLc2224 rho)

def relationLc2225 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 135⟩], residual := [((1 : F), 2734), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1942) * (relationLc2225 rho) = ((1 : F) * rho 2736)

def relationLc2226 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 135⟩], residual := [((1 : F), 2735), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1942) * (relationLc2226 rho) = ((1 : F) * rho 2737)

def relationLc2227 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5111288782486129139466231775079191268673243399580435556710682586267248156842 : F), 2061, 5, 136⟩], residual := [((6476161284874086005951938699175597436841750270565852906553533635919583577062 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2228 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), runs := [⟨(7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), 2062, 5, 136⟩], residual := [((2725145222668639968132482018961228677834756799767864225079778248528929615320 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2737 (rho : Nat -> F) : Prop :=
    (relationLc2227 rho) * (relationLc2228 rho) = ((1 : F) * rho 2738)

def relationLc2229 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), runs := [⟨(24053949943036442414252509528411639695359297610331991453224942149489083770 : F), 2061, 5, 136⟩, ⟨(7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), 2062, 5, 136⟩], residual := [((2853075358388319132348684952077529634918092523154987272138248635537272216887 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2739) * ((1 : F) + (1 : F) * rho 2738) = (relationLc2229 rho)

def relationLc2230 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (24053949943036442414252509528411639695359297610331991453224942149489083770 : F), runs := [⟨(24053949943036442414252509528411639695359297610331991453224942149489083770 : F), 2062, 5, 136⟩, ⟨(7345501110400130993507053772883707881971492479226325888287407262581860246816 : F), 2061, 5, 136⟩], residual := [((6471862708434684048315744250881982886539723994818043094341387796529886078606 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2740) * ((1 : F) + (-1 : F) * rho 2738) = (relationLc2230 rho)

def relationLc2231 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 136⟩], residual := [((1 : F), 2739), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1943) * (relationLc2231 rho) = ((1 : F) * rho 2741)

def relationLc2232 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 136⟩], residual := [((1 : F), 2740), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1943) * (relationLc2232 rho) = ((1 : F) * rho 2742)

def relationLc2233 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4662752930448595384754707496749798730457005433492061601753208012070424433443 : F), 2061, 5, 137⟩], residual := [((7126231453609229208688124226293001670761804314979031296887827715456390188658 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2234 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), runs := [⟨(4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), 2062, 5, 137⟩], residual := [((7954648395084117914549174521325405444860329886984909639008384565435189389663 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2742 (rho : Nat -> F) : Prop :=
    (relationLc2233 rho) * (relationLc2234 rho) = ((1 : F) * rho 2743)

def relationLc2235 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), runs := [⟨(4006348523090618789946607227419394772771515300930797206678446529115938155598 : F), 2062, 5, 137⟩, ⟨(5891143217138704097741485883319916696570498809865311005316547533806703638230 : F), 2061, 5, 137⟩], residual := [((6190406887574974955622802711632044171719381003998352436771317463010711981889 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2744) * ((1 : F) + (1 : F) * rho 2743) = (relationLc2235 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
