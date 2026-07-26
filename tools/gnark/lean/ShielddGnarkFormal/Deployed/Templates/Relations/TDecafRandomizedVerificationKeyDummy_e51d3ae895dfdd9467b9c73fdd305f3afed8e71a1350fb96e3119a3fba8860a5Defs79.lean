import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs78

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), runs := [⟨(7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), 2062, 5, 30⟩], residual := [((3705126959081868329560129378476674408048362276472695522288315318682167365101 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2207 (rho : Nat -> F) : Prop :=
    (relationLc1591 rho) * (relationLc1592 rho) = ((1 : F) * rho 2208)

def relationLc1593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), runs := [⟨(2917515087207657242782997913936898453769403476043285566617773795384885965012 : F), 2061, 5, 30⟩, ⟨(7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), 2062, 5, 30⟩], residual := [((4036483349559716702726202916369721979329262896544758086694624634891391150373 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2209) * ((1 : F) + (1 : F) * rho 2208) = (relationLc1593 rho)

def relationLc1594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2917515087207657242782997913936898453769403476043285566617773795384885965012 : F), runs := [⟨(2917515087207657242782997913936898453769403476043285566617773795384885965012 : F), 2062, 5, 30⟩, ⟨(7014478899807931017630156883840563490129767664606627483381858286107267060760 : F), 2061, 5, 30⟩], residual := [((4721939043766132390365156950830445930758152113648870963101837212571466540881 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2210) * ((1 : F) + (-1 : F) * rho 2208) = (relationLc1594 rho)

def relationLc1595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 30⟩], residual := [((1 : F), 2209), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1837) * (relationLc1595 rho) = ((1 : F) * rho 2211)

def relationLc1596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 30⟩], residual := [((1 : F), 2210), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1837) * (relationLc1596 rho) = ((1 : F) * rho 2212)

def relationLc1597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(136614437469717025728540285685024726697946417222084284029518632750850413301 : F), 2061, 5, 31⟩], residual := [((7203414340787563976155236541638779635986213038456604732762385849135341147546 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), runs := [⟨(4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), 2062, 5, 31⟩], residual := [((2540880036486131943961124182899818153723310999553178717815323475067300526429 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2212 (rho : Nat -> F) : Prop :=
    (relationLc1597 rho) * (relationLc1598 rho) = ((1 : F) * rho 2213)

def relationLc1599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), runs := [⟨(4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), 2062, 5, 31⟩, ⟨(5199217301679655314838974818410910815321373952268712613122662610605472371741 : F), 2061, 5, 31⟩], residual := [((3365069102581043717779498816644741510181603160285966327926452578638586080029 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2214) * ((1 : F) + (1 : F) * rho 2213) = (relationLc1599 rho)

def relationLc1600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5199217301679655314838974818410910815321373952268712613122662610605472371741 : F), runs := [⟨(4648071162727660542848380498583304381460872648196428650654098166653683272040 : F), 2061, 5, 31⟩, ⟨(5199217301679655314838974818410910815321373952268712613122662610605472371741 : F), 2062, 5, 31⟩], residual := [((2917606646628830688575648961145231231134156944394659783256745266509429338581 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2215) * ((1 : F) + (-1 : F) * rho 2213) = (relationLc1600 rho)

def relationLc1601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 31⟩], residual := [((1 : F), 2214), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1838) * (relationLc1601 rho) = ((1 : F) * rho 2216)

def relationLc1602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 31⟩], residual := [((1 : F), 2215), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1838) * (relationLc1602 rho) = ((1 : F) * rho 2217)

def relationLc1603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1543965350493936645240803205024551544750903601537073662569060821766604821295 : F), 2061, 5, 32⟩], residual := [((3360975926604625167541495984214134574008106726344771564779072438371774310356 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), runs := [⟨(6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), 2062, 5, 32⟩], residual := [((7137487175674098003771138708922956629581657025759195104399955519750233128346 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2217 (rho : Nat -> F) : Prop :=
    (relationLc1603 rho) * (relationLc1604 rho) = ((1 : F) * rho 2218)

def relationLc1605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), runs := [⟨(5305902802305707051264319939428136335020260788389258596187898762049986541053 : F), 2061, 5, 32⟩, ⟨(6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), 2062, 5, 32⟩], residual := [((4449565551369732653569275718150486047453352804080325646965690206226838254580 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2219) * ((1 : F) + (1 : F) * rho 2218) = (relationLc1605 rho)

def relationLc1606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5305902802305707051264319939428136335020260788389258596187898762049986541053 : F), runs := [⟨(5305902802305707051264319939428136335020260788389258596187898762049986541053 : F), 2062, 5, 32⟩, ⟨(6040898278084703606807003137529967990516096655680683589984074628992017998216 : F), 2061, 5, 32⟩], residual := [((2814877368443726696118547384849669017277674374461576406649511044998605996800 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2220) * ((1 : F) + (-1 : F) * rho 2218) = (relationLc1606 rho)

def relationLc1607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 32⟩], residual := [((1 : F), 2219), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1839) * (relationLc1607 rho) = ((1 : F) * rho 2221)

def relationLc1608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 32⟩], residual := [((1 : F), 2220), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1839) * (relationLc1608 rho) = ((1 : F) * rho 2222)

def relationLc1609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2390951901919080636374557696001749605335611760845118841000002691622039366119 : F), 2061, 5, 33⟩], residual := [((7435118643412649766237088463347060288844193205328919495557364512525268642612 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), runs := [⟨(4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), 2062, 5, 33⟩], residual := [((5952647242997322099106275843266454433107326250844550093282472843230506741173 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2222 (rho : Nat -> F) : Prop :=
    (relationLc1609 rho) * (relationLc1610 rho) = ((1 : F) * rho 2223)

def relationLc1611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), runs := [⟨(4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), 2062, 5, 33⟩, ⟨(5518622457885972293314649118454410659563509069630906029521731494429853650193 : F), 2061, 5, 33⟩], residual := [((932037297588725938030836807673242895009462327618292635717409236553558997408 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2224) * ((1 : F) + (1 : F) * rho 2223) = (relationLc1611 rho)

def relationLc1612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5518622457885972293314649118454410659563509069630906029521731494429853650193 : F), runs := [⟨(4339327889298312009382154954915201834845694584936220011692515152447487397113 : F), 2061, 5, 33⟩, ⟨(5518622457885972293314649118454410659563509069630906029521731494429853650193 : F), 2062, 5, 33⟩], residual := [((6253181600698670761975383693459860083874249503681351330263538576416174709777 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2225) * ((1 : F) + (-1 : F) * rho 2223) = (relationLc1612 rho)

def relationLc1613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 33⟩], residual := [((1 : F), 2224), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1840) * (relationLc1613 rho) = ((1 : F) * rho 2226)

def relationLc1614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 33⟩], residual := [((1 : F), 2225), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1840) * (relationLc1614 rho) = ((1 : F) * rho 2227)

def relationLc1615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2511669022247206812161869629466276987337945639304938005698123059390861064989 : F), 2061, 5, 34⟩], residual := [((3651366216281786421926547364596016781057486484064302133377103200620687596976 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), runs := [⟨(2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), 2062, 5, 34⟩], residual := [((348095528643503982719379745132160814341763278282712383821836934807805599487 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2227 (rho : Nat -> F) : Prop :=
    (relationLc1615 rho) * (relationLc1616 rho) = ((1 : F) * rho 2228)

def relationLc1617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), runs := [⟨(2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), 2062, 5, 34⟩, ⟨(615787240614527871614334113260975343889452432761734187405312639311890398429 : F), 2061, 5, 34⟩], residual := [((7563854264655058385701221424827548968682131921287248312995691503799349437144 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2229) * ((1 : F) + (1 : F) * rho 2228) = (relationLc1617 rho)

def relationLc1618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (615787240614527871614334113260975343889452432761734187405312639311890398429 : F), runs := [⟨(2259012951295629764024579298461801285536326622251485130033474515142356155111 : F), 2061, 5, 34⟩, ⟨(615787240614527871614334113260975343889452432761734187405312639311890398429 : F), 2062, 5, 34⟩], residual := [((6825036008606936403574758059084895642046160173684766887406037028034446940920 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2230) * ((1 : F) + (-1 : F) * rho 2228) = (relationLc1618 rho)

def relationLc1619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 34⟩], residual := [((1 : F), 2229), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1841) * (relationLc1619 rho) = ((1 : F) * rho 2231)

def relationLc1620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 34⟩], residual := [((1 : F), 2230), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1841) * (relationLc1620 rho) = ((1 : F) * rho 2232)

def relationLc1621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7315983903096487915754023566782326847467569909030484887817389720623755155896 : F), 2061, 5, 35⟩], residual := [((2833339980642050130105468187124395222836116796601658345597697387732210172573 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), runs := [⟨(6295691546556716754436912436379714908434430701210537280485031833028397410397 : F), 2062, 5, 35⟩], residual := [((2549556922254275764026477534121736154314477242231135576491077161890810328114 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2232 (rho : Nat -> F) : Prop :=
    (relationLc1621 rho) * (relationLc1622 rho) = ((1 : F) * rho 2233)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
