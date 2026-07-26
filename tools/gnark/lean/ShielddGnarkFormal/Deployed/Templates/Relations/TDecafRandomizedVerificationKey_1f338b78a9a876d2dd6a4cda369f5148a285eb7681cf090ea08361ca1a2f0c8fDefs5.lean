import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs4

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc17 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 10⟩], residual := [((1 : F), 304), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 12) * (relationLc17 rho) = ((1 : F) * rho 306)

def relationLc18 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 10⟩], residual := [((1 : F), 305), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 12) * (relationLc18 rho) = ((1 : F) * rho 307)

def relationLc19 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1956145867708643475270858009794921954207452165111348566040018876064876731095 : F), 256, 5, 11⟩], residual := [((4328607763429889518549586819673284505749414943234360646809969879301408014412 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc20 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (494772453846730246931269190597991306768479400733920168680734403086759869202 : F), runs := [⟨(494772453846730246931269190597991306768479400733920168680734403086759869202 : F), 257, 5, 11⟩], residual := [((4082445054664856202533014286782356950822908277969521053589710610935807585161 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow307 (rho : Nat -> F) : Prop :=
    (relationLc19 rho) * (relationLc20 rho) = ((1 : F) * rho 308)

def relationLc21 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (494772453846730246931269190597991306768479400733920168680734403086759869202 : F), runs := [⟨(494772453846730246931269190597991306768479400733920168680734403086759869202 : F), 257, 5, 11⟩, ⟨(5845523225396369149480160147302882727262897372384064486189544248659174973706 : F), 256, 5, 11⟩], residual := [((3670180330682079329553776781280868833597524733891544527311125843773783368225 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 309) * ((1 : F) + (1 : F) * rho 308) = (relationLc21 rho)

def relationLc22 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5845523225396369149480160147302882727262897372384064486189544248659174973706 : F), runs := [⟨(494772453846730246931269190597991306768479400733920168680734403086759869202 : F), 256, 5, 11⟩, ⟨(5845523225396369149480160147302882727262897372384064486189544248659174973706 : F), 257, 5, 11⟩], residual := [((2082461988606531288774866924556877817331232692425085108297256770904380168490 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 310) * ((1 : F) + (-1 : F) * rho 308) = (relationLc22 rho)

def relationLc23 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 11⟩], residual := [((1 : F), 309), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 13) * (relationLc23 rho) = ((1 : F) * rho 311)

def relationLc24 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 11⟩], residual := [((1 : F), 310), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 13) * (relationLc24 rho) = ((1 : F) * rho 312)

def relationLc25 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1853516191212418601923176409711849924541567377271919075960283931253075558048 : F), 256, 5, 12⟩], residual := [((6365258573991241174697130941626496417579456953277881746179878783360931147021 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc26 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5238161505909734467545466330312054908335919150190674809026639727377038723562 : F), runs := [⟨(5238161505909734467545466330312054908335919150190674809026639727377038723562 : F), 257, 5, 12⟩], residual := [((6308081791843239106558827474230829281890992551262166724382057215427105827277 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow312 (rho : Nat -> F) : Prop :=
    (relationLc25 rho) * (relationLc26 rho) = ((1 : F) * rho 313)

def relationLc27 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5238161505909734467545466330312054908335919150190674809026639727377038723562 : F), runs := [⟨(5216557146846922088795177263216179304029119406413358166833202884036126685074 : F), 256, 5, 12⟩, ⟨(5238161505909734467545466330312054908335919150190674809026639727377038723562 : F), 257, 5, 12⟩], residual := [((157835167573840873325803124903931758176734034307245637477300857369887421457 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 314) * ((1 : F) + (1 : F) * rho 313) = (relationLc27 rho)

def relationLc28 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5216557146846922088795177263216179304029119406413358166833202884036126685074 : F), runs := [⟨(5216557146846922088795177263216179304029119406413358166833202884036126685074 : F), 257, 5, 12⟩, ⟨(5238161505909734467545466330312054908335919150190674809026639727377038723562 : F), 256, 5, 12⟩], residual := [((2109510694087870351614875689124547954491801048323887005509713422227348274902 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 315) * ((1 : F) + (-1 : F) * rho 313) = (relationLc28 rho)

def relationLc29 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 12⟩], residual := [((1 : F), 314), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 14) * (relationLc29 rho) = ((1 : F) * rho 316)

def relationLc30 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 12⟩], residual := [((1 : F), 315), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 14) * (relationLc30 rho) = ((1 : F) * rho 317)

def relationLc31 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3855803401469065688708113530808008529379689296709597100941472437302433750795 : F), 256, 5, 13⟩], residual := [((6392897488810401941497707224445347980247610074382856459069433032993945525945 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc32 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1133339956106993676287697933760165738395123288272105264851263043265143770306 : F), runs := [⟨(1133339956106993676287697933760165738395123288272105264851263043265143770306 : F), 257, 5, 13⟩], residual := [((6325190948235679932022903635625454392268619003506054476754941683181366095871 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow317 (rho : Nat -> F) : Prop :=
    (relationLc31 rho) * (relationLc32 rho) = ((1 : F) * rho 318)

def relationLc33 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1133339956106993676287697933760165738395123288272105264851263043265143770306 : F), runs := [⟨(1133339956106993676287697933760165738395123288272105264851263043265143770306 : F), 257, 5, 13⟩, ⟨(7855939529723664335593481029959269699336529897742346558622624125642245082905 : F), 256, 5, 13⟩], residual := [((5670422456469093818895801300839218679957103368389595640903994834751178334981 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 319) * ((1 : F) + (1 : F) * rho 318) = (relationLc33 rho)

def relationLc34 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7855939529723664335593481029959269699336529897742346558622624125642245082905 : F), runs := [⟨(1133339956106993676287697933760165738395123288272105264851263043265143770306 : F), 256, 5, 13⟩, ⟨(7855939529723664335593481029959269699336529897742346558622624125642245082905 : F), 257, 5, 13⟩], residual := [((1502253031822665056264899359881289147076629940416050932903827151708815196662 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 320) * ((1 : F) + (-1 : F) * rho 318) = (relationLc34 rho)

def relationLc35 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 13⟩], residual := [((1 : F), 319), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 15) * (relationLc35 rho) = ((1 : F) * rho 321)

def relationLc36 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 13⟩], residual := [((1 : F), 320), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 15) * (relationLc36 rho) = ((1 : F) * rho 322)

def relationLc37 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(205069286912058446724553664414720879157620857762407089747478771633946928445 : F), 256, 5, 14⟩], residual := [((1154270589750196804295977235212672773267637464955366047864403821541484639623 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc38 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5633009114402396467627853566573332566500787514248685719750612346780592270240 : F), runs := [⟨(5633009114402396467627853566573332566500787514248685719750612346780592270240 : F), 257, 5, 14⟩], residual := [((6541486584943148672220258704046195232837410062746476396592408480617432697871 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow322 (rho : Nat -> F) : Prop :=
    (relationLc37 rho) * (relationLc38 rho) = ((1 : F) * rho 323)

def relationLc39 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5633009114402396467627853566573332566500787514248685719750612346780592270240 : F), runs := [⟨(5633009114402396467627853566573332566500787514248685719750612346780592270240 : F), 257, 5, 14⟩, ⟨(6666748209756231552558812324613837536647029968619730101527732297628154578630 : F), 256, 5, 14⟩], residual := [((8065281991771421455411223804632476441832157753949362908433708261251835054679 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 324) * ((1 : F) + (1 : F) * rho 323) = (relationLc39 rho)

def relationLc40 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6666748209756231552558812324613837536647029968619730101527732297628154578630 : F), runs := [⟨(5633009114402396467627853566573332566500787514248685719750612346780592270240 : F), 256, 5, 14⟩, ⟨(6666748209756231552558812324613837536647029968619730101527732297628154578630 : F), 257, 5, 14⟩], residual := [((691803258808965640515239055672572434133645482820593363403832718027550731690 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 325) * ((1 : F) + (-1 : F) * rho 323) = (relationLc40 rho)

def relationLc41 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 14⟩], residual := [((1 : F), 324), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 16) * (relationLc41 rho) = ((1 : F) * rho 326)

def relationLc42 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 14⟩], residual := [((1 : F), 325), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 16) * (relationLc42 rho) = ((1 : F) * rho 327)

def relationLc43 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5204791339935273446264298158279131872547233604358525528326239196577831483873 : F), 256, 5, 15⟩], residual := [((2565281417372355034333129407812678403954687984916372104077808620259675622067 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc44 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8062172124520854321514530176867275534144014208257083085567902155914134552645 : F), runs := [⟨(8062172124520854321514530176867275534144014208257083085567902155914134552645 : F), 257, 5, 15⟩], residual := [((6999993505829475899445060808880833349600248300838318578913879398558778432397 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow327 (rho : Nat -> F) : Prop :=
    (relationLc43 rho) * (relationLc44 rho) = ((1 : F) * rho 328)

def relationLc45 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8062172124520854321514530176867275534144014208257083085567902155914134552645 : F), runs := [⟨(4809559417529537372775320487541389992002348258877639294795408071292460020733 : F), 256, 5, 15⟩, ⟨(8062172124520854321514530176867275534144014208257083085567902155914134552645 : F), 257, 5, 15⟩], residual := [((4974283645876415256430805611526047332770201187299166012495817019571733737699 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 329) * ((1 : F) + (1 : F) * rho 328) = (relationLc45 rho)

def relationLc46 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4809559417529537372775320487541389992002348258877639294795408071292460020733 : F), runs := [⟨(4809559417529537372775320487541389992002348258877639294795408071292460020733 : F), 257, 5, 15⟩, ⟨(8062172124520854321514530176867275534144014208257083085567902155914134552645 : F), 256, 5, 15⟩], residual := [((1104332342598121262041694088063331042238518395485732405549340757413365139397 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 330) * ((1 : F) + (-1 : F) * rho 328) = (relationLc46 rho)

def relationLc47 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 15⟩], residual := [((1 : F), 329), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * (relationLc47 rho) = ((1 : F) * rho 331)

def relationLc48 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 15⟩], residual := [((1 : F), 330), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * (relationLc48 rho) = ((1 : F) * rho 332)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
