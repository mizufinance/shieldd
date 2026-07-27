import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg108Defs2

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108

def relationLc465 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 106813, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 106814, 5, 93⟩], residual := [((4863459133917352581038740730228734891844325571936386657529675825895096089318 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107276) * ((1 : F) + (1 : F) * rho 107275) = (relationLc465 rho)

def relationLc466 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), runs := [⟨(5375185527949122543778302449863284933019016543789039897281893512875719686260 : F), 106814, 5, 93⟩, ⟨(7705538143980860949729484521763178905391750505479346044595006067774729862042 : F), 106813, 5, 93⟩], residual := [((3999197093751402518624046588967473794431069856960421232165216655853348727802 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107277) * ((1 : F) + (-1 : F) * rho 107275) = (relationLc466 rho)

def relationLc467 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 93⟩], residual := [((1 : F), 107276), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106653) * (relationLc467 rho) = ((1 : F) * rho 107278)

def relationLc468 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 93⟩], residual := [((1 : F), 107277), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106653) * (relationLc468 rho) = ((1 : F) * rho 107279)

def relationLc469 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1431114787603952086392307633768073599645790269787901765432457889890133132379 : F), 106813, 5, 94⟩], residual := [((3657714537796633005479171841637416164237211678381198199859328213321907096082 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc470 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 106814, 5, 94⟩], residual := [((3486160377226881502651479614353021425755810132699530527842901563735863159498 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow722 (rho : Nat -> F) : Prop :=
    (relationLc469 rho) * (relationLc470 rho) = ((1 : F) * rho 107280)

def relationLc471 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 106814, 5, 94⟩, ⟨(3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), 106813, 5, 94⟩], residual := [((529992612792118418954102052820668293007890806345800527261763639820835993722 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107281) * ((1 : F) + (1 : F) * rho 107280) = (relationLc471 rho)

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 106813, 5, 94⟩, ⟨(3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), 106814, 5, 94⟩], residual := [((1313059727422419163286129086112246131100286747774995266260829771678302990122 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107282) * ((1 : F) + (-1 : F) * rho 107280) = (relationLc472 rho)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 94⟩], residual := [((1 : F), 107281), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106654) * (relationLc473 rho) = ((1 : F) * rho 107283)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 94⟩], residual := [((1 : F), 107282), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106654) * (relationLc474 rho) = ((1 : F) * rho 107284)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4952436348997321659786425300399468127622333560955486928171929060103938040593 : F), 106813, 5, 95⟩], residual := [((4505918629229567963271693135892301758844544991052967519848637676869612517925 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), runs := [⟨(8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), 106814, 5, 95⟩], residual := [((44225839855303871186047897097373652214192502872374967535753773639635171164 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow727 (rho : Nat -> F) : Prop :=
    (relationLc475 rho) * (relationLc476 rho) = ((1 : F) * rho 107285)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), runs := [⟨(3344762889329800843780662380696169850927903984907386900079017259959392713649 : F), 106813, 5, 95⟩, ⟨(8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), 106814, 5, 95⟩], residual := [((803231153567425007543116169704355251605689776893495214106524016681835606880 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107286) * ((1 : F) + (1 : F) * rho 107285) = (relationLc477 rho)

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3344762889329800843780662380696169850927903984907386900079017259959392713649 : F), runs := [⟨(3344762889329800843780662380696169850927903984907386900079017259959392713649 : F), 106814, 5, 95⟩, ⟨(8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), 106813, 5, 95⟩], residual := [((7533067527415250847591342602806768426570296117971204426577192619325307001694 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107287) * ((1 : F) + (-1 : F) * rho 107285) = (relationLc478 rho)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 95⟩], residual := [((1 : F), 107286), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106655) * (relationLc479 rho) = ((1 : F) * rho 107288)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 95⟩], residual := [((1 : F), 107287), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106655) * (relationLc480 rho) = ((1 : F) * rho 107289)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1313680653438832956044863578229212917132366813282912157302259158748316782495 : F), 106813, 5, 96⟩], residual := [((6904476889112867866868551260992636603494931668028457971296293017135984609338 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (622192490317937799212022705405542800287596127361715414949933002491330820432 : F), runs := [⟨(622192490317937799212022705405542800287596127361715414949933002491330820432 : F), 106814, 5, 96⟩], residual := [((8287385886539225868272247925295480985868053107575376610560771126184903401054 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow732 (rho : Nat -> F) : Prop :=
    (relationLc481 rho) * (relationLc482 rho) = ((1 : F) * rho 107290)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (622192490317937799212022705405542800287596127361715414949933002491330820432 : F), runs := [⟨(622192490317937799212022705405542800287596127361715414949933002491330820432 : F), 106814, 5, 96⟩, ⟨(7975293959540741361581576436253552289616872946046947041792957070139396516308 : F), 106813, 5, 96⟩], residual := [((2240742143118543733148915050001778881500641247394851729501337526188830044988 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107291) * ((1 : F) + (1 : F) * rho 107290) = (relationLc483 rho)

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7975293959540741361581576436253552289616872946046947041792957070139396516308 : F), runs := [⟨(622192490317937799212022705405542800287596127361715414949933002491330820432 : F), 106813, 5, 96⟩, ⟨(7975293959540741361581576436253552289616872946046947041792957070139396516308 : F), 106814, 5, 96⟩], residual := [((4585508775355717324810305694678792540096093119719576907514717865292569636336 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107292) * ((1 : F) + (-1 : F) * rho 107290) = (relationLc484 rho)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 96⟩], residual := [((1 : F), 107291), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106656) * (relationLc485 rho) = ((1 : F) * rho 107293)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 96⟩], residual := [((1 : F), 107292), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106656) * (relationLc486 rho) = ((1 : F) * rho 107294)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(926703710579707228865824304912950811249908438520396538221574221148333812108 : F), 106813, 5, 97⟩], residual := [((2043310958269952088101219604455223461164948471131630801005615574797184382063 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), runs := [⟨(4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), 106814, 5, 97⟩], residual := [((5299849100471461308167828109136819050294565181767251255316058889648273585615 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow737 (rho : Nat -> F) : Prop :=
    (relationLc487 rho) * (relationLc488 rho) = ((1 : F) * rho 107295)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), runs := [⟨(4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), 106814, 5, 97⟩, ⟨(506247692935158806361437649197078077785596719000796408273584518286064020549 : F), 106813, 5, 97⟩], residual := [((4501082880882502688754699107850136797890612099548472498616796674217097863012 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107296) * ((1 : F) + (1 : F) * rho 107295) = (relationLc489 rho)

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (506247692935158806361437649197078077785596719000796408273584518286064020549 : F), runs := [⟨(4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), 106813, 5, 97⟩, ⟨(506247692935158806361437649197078077785596719000796408273584518286064020549 : F), 106814, 5, 97⟩], residual := [((8009172866906155394067222367701899166975213429311644532871245873517816277565 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107297) * ((1 : F) + (-1 : F) * rho 107295) = (relationLc490 rho)

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 97⟩], residual := [((1 : F), 107296), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106657) * (relationLc491 rho) = ((1 : F) * rho 107298)

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 97⟩], residual := [((1 : F), 107297), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106657) * (relationLc492 rho) = ((1 : F) * rho 107299)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4504433567208256174361875541452814826170309619331428831509159035417010671283 : F), 106813, 5, 98⟩], residual := [((3145267284228186583907498244091499234687362298660748907774300413058490871568 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), runs := [⟨(1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), 106814, 5, 98⟩], residual := [((541743037391823123499014009910894028304821752418566791495963198628705495845 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow742 (rho : Nat -> F) : Prop :=
    (relationLc493 rho) * (relationLc494 rho) = ((1 : F) * rho 107300)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), runs := [⟨(1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), 106814, 5, 98⟩, ⟨(7769501368827755599192931605566160418907578471371226351096829835494835248582 : F), 106813, 5, 98⟩], residual := [((6208763637648537799611650768982157291573155189908122610142931922745768395020 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107301) * ((1 : F) + (1 : F) * rho 107300) = (relationLc495 rho)

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7769501368827755599192931605566160418907578471371226351096829835494835248582 : F), runs := [⟨(1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), 106813, 5, 98⟩, ⟨(7769501368827755599192931605566160418907578471371226351096829835494835248582 : F), 106814, 5, 98⟩], residual := [((5429822735258159657611012395482246677205948276429884023146116194473219133688 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107302) * ((1 : F) + (-1 : F) * rho 107300) = (relationLc496 rho)

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 98⟩], residual := [((1 : F), 107301), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106658) * (relationLc497 rho) = ((1 : F) * rho 107303)

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 98⟩], residual := [((1 : F), 107302), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106658) * (relationLc498 rho) = ((1 : F) * rho 107304)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6684118451110970419290924974182417975624703710825488459903719182056707260230 : F), 106813, 5, 99⟩], residual := [((7149025083245982877647105497978783864457366615031117417226442875835582438302 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), runs := [⟨(8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), 106814, 5, 99⟩], residual := [((1495666039841775673238320805849590006324700676455078833136047015772515435385 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow747 (rho : Nat -> F) : Prop :=
    (relationLc499 rho) * (relationLc500 rho) = ((1 : F) * rho 107305)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), runs := [⟨(4060921078656439863101153504165835147809808188796599194512367658779918875322 : F), 106813, 5, 99⟩, ⟨(8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), 106814, 5, 99⟩], residual := [((3815297888686318892232006002720785259014233253567872620218316124621031768256 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107306) * ((1 : F) + (1 : F) * rho 107305) = (relationLc501 rho)

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4060921078656439863101153504165835147809808188796599194512367658779918875322 : F), runs := [⟨(4060921078656439863101153504165835147809808188796599194512367658779918875322 : F), 106814, 5, 99⟩, ⟨(8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), 106813, 5, 99⟩], residual := [((138932227217050329235698880910945792762860556806639135837756187935196649593 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107307) * ((1 : F) + (-1 : F) * rho 107305) = (relationLc502 rho)

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 99⟩], residual := [((1 : F), 107306), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106659) * (relationLc503 rho) = ((1 : F) * rho 107308)

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 99⟩], residual := [((1 : F), 107307), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106659) * (relationLc504 rho) = ((1 : F) * rho 107309)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3924064994534324793975474756801986090331673654531897950005235266878248442401 : F), 106813, 5, 100⟩], residual := [((5035170457329007498215706764068854229628709390625754048523837162638594296483 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 106814, 5, 100⟩], residual := [((8155230957829955237422040779833784152504074606101570959547316848164455429470 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow752 (rho : Nat -> F) : Prop :=
    (relationLc505 rho) * (relationLc506 rho) = ((1 : F) * rho 107310)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 106814, 5, 100⟩, ⟨(831489309690420503408102112404806787788471955046437886410714853252018799218 : F), 106813, 5, 100⟩], residual := [((1912300677205774330347012906125109509384534584471795111298793940730872627179 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107311) * ((1 : F) + (1 : F) * rho 107310) = (relationLc507 rho)

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (831489309690420503408102112404806787788471955046437886410714853252018799218 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 106813, 5, 100⟩, ⟨(831489309690420503408102112404806787788471955046437886410714853252018799218 : F), 106814, 5, 100⟩], residual := [((262055187765897102645017672611434223937468532503246140749754098589294437485 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107312) * ((1 : F) + (-1 : F) * rho 107310) = (relationLc508 rho)

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 100⟩], residual := [((1 : F), 107311), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106660) * (relationLc509 rho) = ((1 : F) * rho 107313)

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 100⟩], residual := [((1 : F), 107312), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106660) * (relationLc510 rho) = ((1 : F) * rho 107314)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1196062191799215498120628398783088685347096038747678159521022542856874490815 : F), 106813, 5, 101⟩], residual := [((232394475062317995667702307533282018411905725724657218403247192666026112748 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 106814, 5, 101⟩], residual := [((4433698353190224045945534049411289318335858580384154444661941282941348013884 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow757 (rho : Nat -> F) : Prop :=
    (relationLc511 rho) * (relationLc512 rho) = ((1 : F) * rho 107315)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 106814, 5, 101⟩, ⟨(7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), 106813, 5, 101⟩], residual := [((5140974492574679535958980064578209064928547900979885264154168132176624598985 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107316) * ((1 : F) + (1 : F) * rho 107315) = (relationLc513 rho)

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 106813, 5, 101⟩, ⟨(7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), 106814, 5, 101⟩], residual := [((133351693975587787306538269865475091956848856903036364800291141558716137471 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107317) * ((1 : F) + (-1 : F) * rho 107315) = (relationLc514 rho)

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 101⟩], residual := [((1 : F), 107316), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106661) * (relationLc515 rho) = ((1 : F) * rho 107318)

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 101⟩], residual := [((1 : F), 107317), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106661) * (relationLc516 rho) = ((1 : F) * rho 107319)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6957933836512070640691601954586154943368265695190068047948916244564022113965 : F), 106813, 5, 102⟩], residual := [((2388117029334704014295999076648404180615248067725950633314437733657386231537 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), runs := [⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 106814, 5, 102⟩], residual := [((6332646434650531287581198517323463195769672261257243905099669120949071975567 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow762 (rho : Nat -> F) : Prop :=
    (relationLc517 rho) * (relationLc518 rho) = ((1 : F) * rho 107320)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), runs := [⟨(8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), 106813, 5, 102⟩, ⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 106814, 5, 102⟩], residual := [((4896676483582392362043429560204275339779405127791019854478882772518786982970 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107321) * ((1 : F) + (1 : F) * rho 107320) = (relationLc519 rho)

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), runs := [⟨(8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), 106814, 5, 102⟩, ⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 106813, 5, 102⟩], residual := [((4768414250969583693261357891166172345692760929377044798652568803671131166891 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107322) * ((1 : F) + (-1 : F) * rho 107320) = (relationLc520 rho)

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 102⟩], residual := [((1 : F), 107321), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106662) * (relationLc521 rho) = ((1 : F) * rho 107323)

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 102⟩], residual := [((1 : F), 107322), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106662) * (relationLc522 rho) = ((1 : F) * rho 107324)

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6782707603869949925200121812141714622311528380453455977187924778481262425243 : F), 106813, 5, 103⟩], residual := [((6051673965157560092114760277064480394647900116693339783892646729960468842230 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 106814, 5, 103⟩], residual := [((2675555371787428154002211846582178465521211181571418107241108938057384245176 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow767 (rho : Nat -> F) : Prop :=
    (relationLc523 rho) * (relationLc524 rho) = ((1 : F) * rho 107325)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 106814, 5, 103⟩, ⟨(737396937339798534095544879414660196085459468231040133308227184271684836906 : F), 106813, 5, 103⟩], residual := [((477693828313422869728226256862214003489372427301456209590948036674716055079 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107326) * ((1 : F) + (1 : F) * rho 107325) = (relationLc525 rho)

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (737396937339798534095544879414660196085459468231040133308227184271684836906 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 106813, 5, 103⟩, ⟨(737396937339798534095544879414660196085459468231040133308227184271684836906 : F), 106814, 5, 103⟩], residual := [((3067103044818000616202305504759861198041621034645928761154638115016820716409 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107327) * ((1 : F) + (-1 : F) * rho 107325) = (relationLc526 rho)

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 103⟩], residual := [((1 : F), 107326), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106663) * (relationLc527 rho) = ((1 : F) * rho 107328)

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 103⟩], residual := [((1 : F), 107327), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106663) * (relationLc528 rho) = ((1 : F) * rho 107329)

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6679935628338152398468277509230599074206436943528958451241257955450738290339 : F), 106813, 5, 104⟩], residual := [((448133618054658546229980299568494592297006321682566444874660444562964050464 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 106814, 5, 104⟩], residual := [((1243508143831080745464502130485139434226495716753233102066310961361171472701 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow772 (rho : Nat -> F) : Prop :=
    (relationLc529 rho) * (relationLc530 rho) = ((1 : F) * rho 107330)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 106814, 5, 104⟩, ⟨(8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), 106813, 5, 104⟩], residual := [((7345695542910917652012471286943161470832217416509275439976767530282809120128 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107331) * ((1 : F) + (1 : F) * rho 107330) = (relationLc531 rho)

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 106813, 5, 104⟩, ⟨(8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), 106814, 5, 104⟩], residual := [((3796930954529644023654080320640847780983417184699651433626814643213042677538 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107332) * ((1 : F) + (-1 : F) * rho 107330) = (relationLc532 rho)

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 104⟩], residual := [((1 : F), 107331), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106664) * (relationLc533 rho) = ((1 : F) * rho 107333)

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 104⟩], residual := [((1 : F), 107332), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106664) * (relationLc534 rho) = ((1 : F) * rho 107334)

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8420431283516515239166733457192509618731498049875930476294212808737930130122 : F), 106813, 5, 105⟩], residual := [((6171900443306265436139038268085329064215901428278366185893286814715436360930 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), runs := [⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 106814, 5, 105⟩], residual := [((7097193599401662905777697165846591568654430638302399028548073549995408685798 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow777 (rho : Nat -> F) : Prop :=
    (relationLc535 rho) * (relationLc536 rho) = ((1 : F) * rho 107335)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), runs := [⟨(2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), 106813, 5, 105⟩, ⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 106814, 5, 105⟩], residual := [((4231306193089116798580360075836071405752260225710611169800752716179934854982 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107336) * ((1 : F) + (1 : F) * rho 107335) = (relationLc537 rho)

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), runs := [⟨(2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), 106814, 5, 105⟩, ⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 106813, 5, 105⟩], residual := [((1655897341974058602991122781470433356950214897226624602461013101212155498886 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107337) * ((1 : F) + (-1 : F) * rho 107335) = (relationLc538 rho)

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 105⟩], residual := [((1 : F), 107336), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106665) * (relationLc539 rho) = ((1 : F) * rho 107338)

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 105⟩], residual := [((1 : F), 107337), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106665) * (relationLc540 rho) = ((1 : F) * rho 107339)

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4192118223431191948576229703026611961899211540869084381246995287642068887532 : F), 106813, 5, 106⟩], residual := [((7513835879182803745630240013231637882820161472951662458538143120260969668224 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 106814, 5, 106⟩], residual := [((2214913009684229514296527901173036753304215905453315312871645431738308265406 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow782 (rho : Nat -> F) : Prop :=
    (relationLc541 rho) * (relationLc542 rho) = ((1 : F) * rho 107340)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 106814, 5, 106⟩, ⟨(7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), 106813, 5, 106⟩], residual := [((6119574525103358251799669196953331554920758650686027913419849353479772769666 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107341) * ((1 : F) + (1 : F) * rho 107340) = (relationLc543 rho)

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 106813, 5, 106⟩, ⟨(7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), 106814, 5, 106⟩], residual := [((5781387667770032033402740426547068681911852292873038357115912333087689425709 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107342) * ((1 : F) + (-1 : F) * rho 107340) = (relationLc544 rho)

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 106⟩], residual := [((1 : F), 107341), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106666) * (relationLc545 rho) = ((1 : F) * rho 107343)

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 106⟩], residual := [((1 : F), 107342), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106666) * (relationLc546 rho) = ((1 : F) * rho 107344)

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8078264009197303589973580787041376885392487990718089434226936659876814776586 : F), 106813, 5, 107⟩], residual := [((2237627806897634859307700086481705695837285251959374786449150540179810463872 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), runs := [⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 106814, 5, 107⟩], residual := [((18814393029343576151900933502353303155794589744080597726630900043602610997 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow787 (rho : Nat -> F) : Prop :=
    (relationLc547 rho) * (relationLc548 rho) = ((1 : F) * rho 107345)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), runs := [⟨(5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), 106813, 5, 107⟩, ⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 106814, 5, 107⟩], residual := [((869312241302472422173400596354412836831435332259404920294906345637469615013 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107346) * ((1 : F) + (1 : F) * rho 107345) = (relationLc549 rho)

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), runs := [⟨(5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), 106814, 5, 107⟩, ⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 106813, 5, 107⟩], residual := [((4952435177904146458220233564938569113666684850685530035021249355113584218572 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107347) * ((1 : F) + (-1 : F) * rho 107345) = (relationLc550 rho)

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 107⟩], residual := [((1 : F), 107346), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106667) * (relationLc551 rho) = ((1 : F) * rho 107348)

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 107⟩], residual := [((1 : F), 107347), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106667) * (relationLc552 rho) = ((1 : F) * rho 107349)

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3734468812329077059924950204727031629122473060052984382313629408831163347172 : F), 106813, 5, 108⟩], residual := [((6557751697947992234906904655494192058588742758853648003926269888731369902088 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), runs := [⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 106814, 5, 108⟩], residual := [((2218295594801486147569305803986860457559073079568149607218132593548481807376 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow792 (rho : Nat -> F) : Prop :=
    (relationLc553 rho) * (relationLc554 rho) = ((1 : F) * rho 107350)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), runs := [⟨(2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), 106813, 5, 108⟩, ⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 106814, 5, 108⟩], residual := [((5393079387353339316638264165513689158376760761845116205268584841928154384739 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107351) * ((1 : F) + (1 : F) * rho 107350) = (relationLc555 rho)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), runs := [⟨(2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), 106814, 5, 108⟩, ⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 106813, 5, 108⟩], residual := [((4610710194873497428010206747833905789852935740684970065079125792390369064319 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107352) * ((1 : F) + (-1 : F) * rho 107350) = (relationLc556 rho)

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 108⟩], residual := [((1 : F), 107351), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106668) * (relationLc557 rho) = ((1 : F) * rho 107353)

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 108⟩], residual := [((1 : F), 107352), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106668) * (relationLc558 rho) = ((1 : F) * rho 107354)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(568596184901683623662901086713254788204948897441843689512915291178609917092 : F), 106813, 5, 109⟩], residual := [((7763900067584871699239273873026970932379347276428893124063049670480466451269 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), runs := [⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 106814, 5, 109⟩], residual := [((2671857680381596165133534350268632670833089194821162061937485372477153821385 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow797 (rho : Nat -> F) : Prop :=
    (relationLc559 rho) * (relationLc560 rho) = ((1 : F) * rho 107355)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), runs := [⟨(5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), 106813, 5, 109⟩, ⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 106814, 5, 109⟩], residual := [((1701679332571768943703758843872422402052409412842616772630170512169713255766 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107356) * ((1 : F) + (1 : F) * rho 107355) = (relationLc561 rho)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), runs := [⟨(5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), 106814, 5, 109⟩, ⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 106813, 5, 109⟩], residual := [((7327999024681437242838383046063829421577254374760206324494471040672979390485 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107357) * ((1 : F) + (-1 : F) * rho 107355) = (relationLc562 rho)

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 109⟩], residual := [((1 : F), 107356), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106669) * (relationLc563 rho) = ((1 : F) * rho 107358)

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 109⟩], residual := [((1 : F), 107357), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106669) * (relationLc564 rho) = ((1 : F) * rho 107359)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4844898403553568028259035569409623674492133411001005402900268525269019383147 : F), 106813, 5, 110⟩], residual := [((1584370194938709372334615152442198386778091293051099268892628669364464823643 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 106814, 5, 110⟩], residual := [((5822744375078125061629763314676319349385425802373362430870652483474328191553 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow802 (rho : Nat -> F) : Prop :=
    (relationLc565 rho) * (relationLc566 rho) = ((1 : F) * rho 107360)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 106814, 5, 110⟩, ⟨(6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), 106813, 5, 110⟩], residual := [((5848426111569284956760704737914146597703585744547952855802896683994891299125 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107361) * ((1 : F) + (1 : F) * rho 107360) = (relationLc567 rho)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 106813, 5, 110⟩, ⟨(6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), 106814, 5, 110⟩], residual := [((2975589111667990585410595177746922024926505695906607372137355479945806617660 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107362) * ((1 : F) + (-1 : F) * rho 107360) = (relationLc568 rho)

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 110⟩], residual := [((1 : F), 107361), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106670) * (relationLc569 rho) = ((1 : F) * rho 107363)

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 110⟩], residual := [((1 : F), 107362), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106670) * (relationLc570 rho) = ((1 : F) * rho 107364)

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5473513454910718385916379960564670405200796488660792199065102502565012311891 : F), 106813, 5, 111⟩], residual := [((1290682852539617687465308244549146097528654648960453990058143318687428377628 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), runs := [⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 106814, 5, 111⟩], residual := [((4560315553206082171239657153972697214142086945910781475321943315739135166866 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow807 (rho : Nat -> F) : Prop :=
    (relationLc571 rho) * (relationLc572 rho) = ((1 : F) * rho 107365)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), runs := [⟨(2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), 106813, 5, 111⟩, ⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 106814, 5, 111⟩], residual := [((8096738855383979623858733239971772192059346566440027154344825958921594655699 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107366) * ((1 : F) + (1 : F) * rho 107365) = (relationLc573 rho)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), runs := [⟨(2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), 106814, 5, 111⟩, ⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 106813, 5, 111⟩], residual := [((1278272657742027434275494546315655160302569862150581501574320349530171965278 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107367) * ((1 : F) + (-1 : F) * rho 107365) = (relationLc574 rho)

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 111⟩], residual := [((1 : F), 107366), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106671) * (relationLc575 rho) = ((1 : F) * rho 107368)

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 111⟩], residual := [((1 : F), 107367), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106671) * (relationLc576 rho) = ((1 : F) * rho 107369)

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6494117757873971508758146756812052405656400213213392704742067070974595246434 : F), 106813, 5, 112⟩], residual := [((2505911588988824428755289285606906412415086920291455482382843872981685118529 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 106814, 5, 112⟩], residual := [((8174319716053133462684811146498463582214521739980076836226226865024436960466 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow812 (rho : Nat -> F) : Prop :=
    (relationLc577 rho) * (relationLc578 rho) = ((1 : F) * rho 107370)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 106814, 5, 112⟩, ⟨(5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), 106813, 5, 112⟩], residual := [((630759189698223515442565790495223866302195616623397982828407515918807747936 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107371) * ((1 : F) + (1 : F) * rho 107370) = (relationLc579 rho)

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 106813, 5, 112⟩, ⟨(5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), 106814, 5, 112⟩], residual := [((701540351068285311102719158292584549968653608918762726070947020463010759916 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107372) * ((1 : F) + (-1 : F) * rho 107370) = (relationLc580 rho)

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 112⟩], residual := [((1 : F), 107371), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106672) * (relationLc581 rho) = ((1 : F) * rho 107373)

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 112⟩], residual := [((1 : F), 107372), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106672) * (relationLc582 rho) = ((1 : F) * rho 107374)

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7232751867622564713554023932001496092539510221064441963614171743180987607316 : F), 106813, 5, 113⟩], residual := [((6205455160059383968858176403410616736538441215431948543782337451811884962308 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 106814, 5, 113⟩], residual := [((6679184061030008664832695535977507076813478068613182374938323825246753435358 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow817 (rho : Nat -> F) : Prop :=
    (relationLc583 rho) * (relationLc584 rho) = ((1 : F) * rho 107375)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 106814, 5, 113⟩, ⟨(6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), 106813, 5, 113⟩], residual := [((4400311061237393344667788891276305040114969158891141946255315496025702771970 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107376) * ((1 : F) + (1 : F) * rho 107375) = (relationLc585 rho)

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 106813, 5, 113⟩, ⟨(6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), 106814, 5, 113⟩], residual := [((2087357790150026556797310710018782693490980500605381290006250342379967365568 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107377) * ((1 : F) + (-1 : F) * rho 107375) = (relationLc586 rho)

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 113⟩], residual := [((1 : F), 107376), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106673) * (relationLc587 rho) = ((1 : F) * rho 107378)

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 113⟩], residual := [((1 : F), 107377), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106673) * (relationLc588 rho) = ((1 : F) * rho 107379)

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(947717101564819091542378284888608902327013081715595233096761950147907007800 : F), 106813, 5, 114⟩], residual := [((8069732616500346997440461803908541944572596023366705295276766397849410487234 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), runs := [⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 106814, 5, 114⟩], residual := [((6309456410749148524989712616328028351341432761943017574693998999570185170928 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow822 (rho : Nat -> F) : Prop :=
    (relationLc589 rho) * (relationLc590 rho) = ((1 : F) * rho 107380)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), runs := [⟨(4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), 106813, 5, 114⟩, ⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 106814, 5, 114⟩], residual := [((3477740263346345723536264080703870906498470388615359840092525991327085681388 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107381) * ((1 : F) + (1 : F) * rho 107380) = (relationLc591 rho)

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), runs := [⟨(4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), 106814, 5, 114⟩, ⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 106813, 5, 114⟩], residual := [((7299614783841155772686659764745278288658731154961458264984903098491417870829 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107382) * ((1 : F) + (-1 : F) * rho 107380) = (relationLc592 rho)

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 114⟩], residual := [((1 : F), 107381), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106674) * (relationLc593 rho) = ((1 : F) * rho 107383)

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 114⟩], residual := [((1 : F), 107382), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106674) * (relationLc594 rho) = ((1 : F) * rho 107384)

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1854067315940902596236180059194743311052989737966486961600317653694884857500 : F), 106813, 5, 115⟩], residual := [((4354532474989950694177441537286028288137849845366388990794655904030294839452 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 106814, 5, 115⟩], residual := [((3780104624363262583803818749820133136665135515081578486963505739174187955054 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow827 (rho : Nat -> F) : Prop :=
    (relationLc595 rho) * (relationLc596 rho) = ((1 : F) * rho 107385)

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 106814, 5, 115⟩, ⟨(3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), 106813, 5, 115⟩], residual := [((2604744192706740240899291157072782901173207090634542908489510827212188949825 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107386) * ((1 : F) + (1 : F) * rho 107385) = (relationLc597 rho)

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 106813, 5, 115⟩, ⟨(3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), 106814, 5, 115⟩], residual := [((7841490394353810698294471924772146887196817649440922315850551546178009358557 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107387) * ((1 : F) + (-1 : F) * rho 107385) = (relationLc598 rho)

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 115⟩], residual := [((1 : F), 107386), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106675) * (relationLc599 rho) = ((1 : F) * rho 107388)

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 115⟩], residual := [((1 : F), 107387), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106675) * (relationLc600 rho) = ((1 : F) * rho 107389)

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5058688986614166632160103004447210200422193522182557622358194344375224847289 : F), 106813, 5, 116⟩], residual := [((7963949792456045923152496392139227737431459647154118764599999983306311745035 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 106814, 5, 116⟩], residual := [((7165195893732640723561096527477694394750848606553482293832288734522661702959 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow832 (rho : Nat -> F) : Prop :=
    (relationLc601 rho) * (relationLc602 rho) = ((1 : F) * rho 107390)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 106814, 5, 116⟩, ⟨(2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), 106813, 5, 116⟩], residual := [((1219531990061301360145556317833539548332284447149081861167086220716325870806 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107391) * ((1 : F) + (1 : F) * rho 107390) = (relationLc603 rho)

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 106813, 5, 116⟩, ⟨(2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), 106814, 5, 116⟩], residual := [((7015591765500128281549976814712607452749588499518551798977318918702616301457 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107392) * ((1 : F) + (-1 : F) * rho 107390) = (relationLc604 rho)

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 116⟩], residual := [((1 : F), 107391), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106676) * (relationLc605 rho) = ((1 : F) * rho 107393)

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 116⟩], residual := [((1 : F), 107392), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106676) * (relationLc606 rho) = ((1 : F) * rho 107394)

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2126598159510820021254829562976983677454766925005966503301667636085195673024 : F), 106813, 5, 117⟩], residual := [((1872614935516469004704786918895811090880792337026629918254087619510321198958 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 106814, 5, 117⟩], residual := [((3238821507913782672875285228055567261226513652148746145790112441631656539344 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow837 (rho : Nat -> F) : Prop :=
    (relationLc607 rho) * (relationLc608 rho) = ((1 : F) * rho 107395)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 106814, 5, 117⟩, ⟨(4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), 106813, 5, 117⟩], residual := [((2990663785052608062231974856445947324052871067411346261391574973919925622073 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107396) * ((1 : F) + (1 : F) * rho 107395) = (relationLc609 rho)

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 106813, 5, 117⟩, ⟨(4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), 106814, 5, 117⟩], residual := [((7172988848799631013344220002171542030874312246551264557875723659804867424013 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107397) * ((1 : F) + (-1 : F) * rho 107395) = (relationLc610 rho)

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 117⟩], residual := [((1 : F), 107396), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106677) * (relationLc611 rho) = ((1 : F) * rho 107398)

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 117⟩], residual := [((1 : F), 107397), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106677) * (relationLc612 rho) = ((1 : F) * rho 107399)

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3367912820253366001216961945321133635042119018370843707781355082706130612868 : F), 106813, 5, 118⟩], residual := [((1691399493890240984781845757328749935483621953555455768353456418081471202157 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 106814, 5, 118⟩], residual := [((7148355880814354094015135364292496029766550086632406855091613901944786716636 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow842 (rho : Nat -> F) : Prop :=
    (relationLc613 rho) * (relationLc614 rho) = ((1 : F) * rho 107400)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 106814, 5, 118⟩, ⟨(5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), 106813, 5, 118⟩], residual := [((2581471041664381557690144267234661444419732512422481387008920088455556254739 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107401) * ((1 : F) + (1 : F) * rho 107400) = (relationLc615 rho)

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 106813, 5, 118⟩, ⟨(5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), 106814, 5, 118⟩], residual := [((6619964280680378555219129946295155890115709779695071405095337864393796333509 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107402) * ((1 : F) + (-1 : F) * rho 107400) = (relationLc616 rho)

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 118⟩], residual := [((1 : F), 107401), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106678) * (relationLc617 rho) = ((1 : F) * rho 107403)

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 118⟩], residual := [((1 : F), 107402), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106678) * (relationLc618 rho) = ((1 : F) * rho 107404)

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2017692046407117271774974818426083152699470227008509506383363299947661421324 : F), 106813, 5, 119⟩], residual := [((7127797571030210124345768641519536854686265690026118826828166574414757839431 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), runs := [⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 106814, 5, 119⟩], residual := [((2430083545376283142446969529024895585487534495302192570610260792855878618882 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow847 (rho : Nat -> F) : Prop :=
    (relationLc619 rho) * (relationLc620 rho) = ((1 : F) * rho 107405)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), runs := [⟨(5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), 106813, 5, 119⟩, ⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 106814, 5, 119⟩], residual := [((2024335906235100794940851464668528072503027697141826069434585215898074252427 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107406) * ((1 : F) + (1 : F) * rho 107405) = (relationLc621 rho)

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), runs := [⟨(5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), 106814, 5, 119⟩, ⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 106813, 5, 119⟩], residual := [((768630642295931472468064850845617638711953339610270448700590788007616351667 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107407) * ((1 : F) + (-1 : F) * rho 107405) = (relationLc622 rho)

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 119⟩], residual := [((1 : F), 107406), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106679) * (relationLc623 rho) = ((1 : F) * rho 107408)

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 119⟩], residual := [((1 : F), 107407), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106679) * (relationLc624 rho) = ((1 : F) * rho 107409)

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3986668860635778338789526978466339028865773963962702698271938929340967177465 : F), 106813, 5, 120⟩], residual := [((3946958459661543686929747477451679320619934793290430451765914523801407412779 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 106814, 5, 120⟩], residual := [((2271613138381064962232656709377804353171427636280369025590495735246060493453 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow852 (rho : Nat -> F) : Prop :=
    (relationLc625 rho) * (relationLc626 rho) = ((1 : F) * rho 107410)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 106814, 5, 120⟩, ⟨(518441606257823338902622357051655891206026862286482790753488953417431869050 : F), 106813, 5, 120⟩], residual := [((531476524202245620749674852580898755777662210590964413094009628489110957369 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107411) * ((1 : F) + (1 : F) * rho 107410) = (relationLc627 rho)

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (518441606257823338902622357051655891206026862286482790753488953417431869050 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 106813, 5, 120⟩, ⟨(518441606257823338902622357051655891206026862286482790753488953417431869050 : F), 106814, 5, 120⟩], residual := [((6521749992220261155171628057732085595952514169941349494307767142773096886607 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107412) * ((1 : F) + (-1 : F) * rho 107410) = (relationLc628 rho)

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 120⟩], residual := [((1 : F), 107411), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106680) * (relationLc629 rho) = ((1 : F) * rho 107413)

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 120⟩], residual := [((1 : F), 107412), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106680) * (relationLc630 rho) = ((1 : F) * rho 107414)

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5855145417203940550976487192596039675670168246738064866068981280365576908554 : F), 106813, 5, 121⟩], residual := [((925682298642025695569127838357638138953071366428001762630642884454986281998 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 106814, 5, 121⟩], residual := [((4431042670275116120931628545963771550361798060725958195462347720202910125040 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow857 (rho : Nat -> F) : Prop :=
    (relationLc631 rho) * (relationLc632 rho) = ((1 : F) * rho 107415)

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 106814, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 106813, 5, 121⟩], residual := [((4067966091285693370366657306571767773155603475421886598021450763438657157548 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107416) * ((1 : F) + (1 : F) * rho 107415) = (relationLc633 rho)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 106813, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 106814, 5, 121⟩], residual := [((6678015243706744213506802687278324384968843272394413227264100865185272284296 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107417) * ((1 : F) + (-1 : F) * rho 107415) = (relationLc634 rho)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 121⟩], residual := [((1 : F), 107416), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106681) * (relationLc635 rho) = ((1 : F) * rho 107418)

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 121⟩], residual := [((1 : F), 107417), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106681) * (relationLc636 rho) = ((1 : F) * rho 107419)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4605714326718740686632657117795621638911193650541587203844342302667521971341 : F), 106813, 5, 122⟩], residual := [((5800326694329768429758990205268420212840756619354697203033693061349602045852 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 106814, 5, 122⟩], residual := [((1914634463071955144491109301380262226852858209694089168223890368315123462833 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow862 (rho : Nat -> F) : Prop :=
    (relationLc637 rho) * (relationLc638 rho) = ((1 : F) * rho 107420)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 106814, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 106813, 5, 122⟩], residual := [((3470715581700390670579194589750936934452275881645434479556238430066672333721 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107421) * ((1 : F) + (1 : F) * rho 107420) = (relationLc639 rho)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 106813, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 106814, 5, 122⟩], residual := [((6149125308177821096193566087895360010904466580282475588586340879964222902869 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107422) * ((1 : F) + (-1 : F) * rho 107420) = (relationLc640 rho)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 122⟩], residual := [((1 : F), 107421), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106682) * (relationLc641 rho) = ((1 : F) * rho 107423)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 122⟩], residual := [((1 : F), 107422), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106682) * (relationLc642 rho) = ((1 : F) * rho 107424)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2462219390816186265215831286673879522624662491951844612399314437338650625929 : F), 106813, 5, 123⟩], residual := [((6076628209815230809031554704004686574711116934705931390450359393626223046622 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 106814, 5, 123⟩], residual := [((6455242912317044762230268225216983487772561477201860534153268897702230187998 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow867 (rho : Nat -> F) : Prop :=
    (relationLc643 rho) * (relationLc644 rho) = ((1 : F) * rho 107425)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 106813, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 106814, 5, 123⟩], residual := [((2692047497464280865952831734705649991847826195004635097265381077203347691493 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107426) * ((1 : F) + (1 : F) * rho 107425) = (relationLc645 rho)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 106814, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 106813, 5, 123⟩], residual := [((4260741226520128065720441172132567930766211831973469596976018488234910145224 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107427) * ((1 : F) + (-1 : F) * rho 107425) = (relationLc646 rho)

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 123⟩], residual := [((1 : F), 107426), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106683) * (relationLc647 rho) = ((1 : F) * rho 107428)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 123⟩], residual := [((1 : F), 107427), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106683) * (relationLc648 rho) = ((1 : F) * rho 107429)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(675150215867084420868198222910915221167546600958782523865631274068456193699 : F), 106813, 5, 124⟩], residual := [((632767730836458282723837747081184692850391276120378771202560323022367560874 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 106814, 5, 124⟩], residual := [((6937508972884827012117303727642640631932551818643813059565600955408050267583 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow872 (rho : Nat -> F) : Prop :=
    (relationLc649 rho) * (relationLc650 rho) = ((1 : F) * rho 107430)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 106814, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 106813, 5, 124⟩], residual := [((606468557550691774566537541415192201322303025910336001802575064203181165012 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107431) * ((1 : F) + (1 : F) * rho 107430) = (relationLc651 rho)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 106813, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 106814, 5, 124⟩], residual := [((4709527915986490099127502690641102829893842187429096977916810943086408037942 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107432) * ((1 : F) + (-1 : F) * rho 107430) = (relationLc652 rho)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 124⟩], residual := [((1 : F), 107431), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106684) * (relationLc653 rho) = ((1 : F) * rho 107433)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 124⟩], residual := [((1 : F), 107432), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106684) * (relationLc654 rho) = ((1 : F) * rho 107434)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7162205350687989139896174159214506576215373902099509992231534261371144592675 : F), 106813, 5, 125⟩], residual := [((6625488961952055722052971184060402004083105963192283512447859675251721723441 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 106814, 5, 125⟩], residual := [((1896739124773425039683958892973582931283960987480377914539375397426739081550 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow877 (rho : Nat -> F) : Prop :=
    (relationLc655 rho) * (relationLc656 rho) = ((1 : F) * rho 107435)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 106813, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 106814, 5, 125⟩], residual := [((5401385288625030533661393722327220205636190372753874855921465890620967978684 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107436) * ((1 : F) + (1 : F) * rho 107435) = (relationLc657 rho)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 106814, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 106813, 5, 125⟩], residual := [((5295799265031769676934984260143085052791333859535372983832220458023281012382 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107437) * ((1 : F) + (-1 : F) * rho 107435) = (relationLc658 rho)

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 125⟩], residual := [((1 : F), 107436), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106685) * (relationLc659 rho) = ((1 : F) * rho 107438)

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 125⟩], residual := [((1 : F), 107437), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106685) * (relationLc660 rho) = ((1 : F) * rho 107439)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6597939320542329487400565091411727244209447665886985587245580121252031929444 : F), 106813, 5, 126⟩], residual := [((334919001789655310560687819351358127988687736081256952747606665059184566897 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 106814, 5, 126⟩], residual := [((2576346892624037738027985730475149611626561668089352371540795449013921429872 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow882 (rho : Nat -> F) : Prop :=
    (relationLc661 rho) * (relationLc662 rho) = ((1 : F) * rho 107440)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 106814, 5, 126⟩, ⟨(3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), 106813, 5, 126⟩], residual := [((860171919056599874678691515118473606285014662446017736188433404899975687335 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow883 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107441) * ((1 : F) + (1 : F) * rho 107440) = (relationLc663 rho)

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 106813, 5, 126⟩, ⟨(3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), 106814, 5, 126⟩], residual := [((369835453671308253501701535082988302428925497488405681490395052401809343463 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107442) * ((1 : F) + (-1 : F) * rho 107440) = (relationLc664 rho)

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 126⟩], residual := [((1 : F), 107441), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106686) * (relationLc665 rho) = ((1 : F) * rho 107443)

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 126⟩], residual := [((1 : F), 107442), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106686) * (relationLc666 rho) = ((1 : F) * rho 107444)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3662549041251064738439678582694000555264902823767717478987881813558759373397 : F), 106813, 5, 127⟩], residual := [((3627157378103929501736907787229659891786383051031026833110981404511932764334 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 106814, 5, 127⟩], residual := [((5077128519854369438435180807649926164157042074234900107924177009357349807768 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow887 (rho : Nat -> F) : Prop :=
    (relationLc667 rho) * (relationLc668 rho) = ((1 : F) * rho 107445)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 106814, 5, 127⟩, ⟨(5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), 106813, 5, 127⟩], residual := [((1791110691337434751439192320321270400831563346962424757106989467896124606726 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107446) * ((1 : F) + (1 : F) * rho 107445) = (relationLc669 rho)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 106813, 5, 127⟩, ⟨(5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), 106814, 5, 127⟩], residual := [((3935246727056329354590544589123741495402236291810130050885612457341162195522 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107447) * ((1 : F) + (-1 : F) * rho 107445) = (relationLc670 rho)

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 127⟩], residual := [((1 : F), 107446), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106687) * (relationLc671 rho) = ((1 : F) * rho 107448)

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 127⟩], residual := [((1 : F), 107447), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106687) * (relationLc672 rho) = ((1 : F) * rho 107449)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8248720859594048260171359378554269093421481617324763432726109518875895345970 : F), 106813, 5, 128⟩], residual := [((4473001459817228232150010665768690072105958119767506549923947413300614717103 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), runs := [⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 106814, 5, 128⟩], residual := [((628858195515421657429651630870506053729338922447461237621201443220761506096 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow892 (rho : Nat -> F) : Prop :=
    (relationLc673 rho) * (relationLc674 rho) = ((1 : F) * rho 107450)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), runs := [⟨(192807719238902097685895880574544665086720501955577988656842762171883390798 : F), 106813, 5, 128⟩, ⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 106814, 5, 128⟩], residual := [((3260672663463754592699527260813969799540933504539398201751283743595333736700 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107451) * ((1 : F) + (1 : F) * rho 107450) = (relationLc675 rho)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (192807719238902097685895880574544665086720501955577988656842762171883390798 : F), runs := [⟨(192807719238902097685895880574544665086720501955577988656842762171883390798 : F), 106814, 5, 128⟩, ⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 106813, 5, 128⟩], residual := [((183627881588738771781489470048673345598670070548584390770980837587120717671 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107452) * ((1 : F) + (-1 : F) * rho 107450) = (relationLc676 rho)

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 128⟩], residual := [((1 : F), 107451), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106688) * (relationLc677 rho) = ((1 : F) * rho 107453)

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 128⟩], residual := [((1 : F), 107452), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106688) * (relationLc678 rho) = ((1 : F) * rho 107454)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(618054908213477814381438129861473047761143154008145337991771976121154319619 : F), 106813, 5, 129⟩], residual := [((6410948368104357234255387490833527163067313919974901621602509328920866406335 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 106814, 5, 129⟩], residual := [((6525623607059190063533361869152232303808632387596362439826165650534616212741 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow897 (rho : Nat -> F) : Prop :=
    (relationLc679 rho) * (relationLc680 rho) = ((1 : F) * rho 107455)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 106814, 5, 129⟩, ⟨(8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), 106813, 5, 129⟩], residual := [((464840228660636242625898808997865902156444918536716779061545042604811587427 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107456) * ((1 : F) + (1 : F) * rho 107455) = (relationLc681 rho)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 106813, 5, 129⟩, ⟨(8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), 106814, 5, 129⟩], residual := [((3017483325411212357099490681509349029967373800989764072253376653537103478324 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107457) * ((1 : F) + (-1 : F) * rho 107455) = (relationLc682 rho)

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 129⟩], residual := [((1 : F), 107456), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106689) * (relationLc683 rho) = ((1 : F) * rho 107458)

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 129⟩], residual := [((1 : F), 107457), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106689) * (relationLc684 rho) = ((1 : F) * rho 107459)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6371667047184326709503565647805713250184644331668065658039380068871320237271 : F), 106813, 5, 130⟩], residual := [((1866814805241085772673212667356012663695540847735184269804539503998595498710 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), runs := [⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 106814, 5, 130⟩], residual := [((8035055261435057508313430386696100386377823167575762190338896894009796030450 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow902 (rho : Nat -> F) : Prop :=
    (relationLc685 rho) * (relationLc686 rho) = ((1 : F) * rho 107460)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), runs := [⟨(155848084497101853705127089467325644646097023424409657793603846456249198406 : F), 106813, 5, 130⟩, ⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 106814, 5, 130⟩], residual := [((6923162192429016348737674308255948282166001785734126235605888494158379187802 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107461) * ((1 : F) + (1 : F) * rho 107460) = (relationLc687 rho)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (155848084497101853705127089467325644646097023424409657793603846456249198406 : F), runs := [⟨(155848084497101853705127089467325644646097023424409657793603846456249198406 : F), 106814, 5, 130⟩, ⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 106813, 5, 130⟩], residual := [((2967446225558022814703410539096345214748111516817570520702980260485598143356 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107462) * ((1 : F) + (-1 : F) * rho 107460) = (relationLc688 rho)

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 130⟩], residual := [((1 : F), 107461), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106690) * (relationLc689 rho) = ((1 : F) * rho 107463)

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 130⟩], residual := [((1 : F), 107462), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106690) * (relationLc690 rho) = ((1 : F) * rho 107464)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7685641275510751267434062841131440909524057548538908820526924562368135360637 : F), 106813, 5, 131⟩], residual := [((1533107064713739853198800681749478654974420030752112990442623442158134514998 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (708319964070499435326649883584500753584183235012429328809859440041531789954 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 106814, 5, 131⟩], residual := [((404578301454555449838109131566136413595117364922563879558071765960199684880 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow907 (rho : Nat -> F) : Prop :=
    (relationLc691 rho) * (relationLc692 rho) = ((1 : F) * rho 107465)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (708319964070499435326649883584500753584183235012429328809859440041531789954 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 106814, 5, 131⟩, ⟨(7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), 106813, 5, 131⟩], residual := [((8343606595212015146865537674042581838210320453922329978308983926916042244758 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107466) * ((1 : F) + (1 : F) * rho 107465) = (relationLc693 rho)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 106813, 5, 131⟩, ⟨(7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), 106814, 5, 131⟩], residual := [((2357664860580816865395151332838189685037838907976348089818391478630425954683 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107467) * ((1 : F) + (-1 : F) * rho 107465) = (relationLc694 rho)

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 131⟩], residual := [((1 : F), 107466), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106691) * (relationLc695 rho) = ((1 : F) * rho 107468)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 131⟩], residual := [((1 : F), 107467), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106691) * (relationLc696 rho) = ((1 : F) * rho 107469)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3994026013218413113555076699488428925687662647002644743993134519597452118002 : F), 106813, 5, 132⟩], residual := [((191995865608900380973939639003477078910801454989591405516300774439642051799 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), runs := [⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 106814, 5, 132⟩], residual := [((5369222675224696627787843547543016413626997945559590293458623514399306051644 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow912 (rho : Nat -> F) : Prop :=
    (relationLc697 rho) * (relationLc698 rho) = ((1 : F) * rho 107470)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), runs := [⟨(1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), 106813, 5, 132⟩, ⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 106814, 5, 132⟩], residual := [((6657898233765606149787076330203491894607865338793954085608129944042591487344 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107471) * ((1 : F) + (1 : F) * rho 107470) = (relationLc699 rho)

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), runs := [⟨(1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), 106814, 5, 132⟩, ⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 106813, 5, 132⟩], residual := [((3112293859876606234205874932513227378808768907034857639058815376386098008592 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107472) * ((1 : F) + (-1 : F) * rho 107470) = (relationLc700 rho)

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 132⟩], residual := [((1 : F), 107471), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106692) * (relationLc701 rho) = ((1 : F) * rho 107473)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 132⟩], residual := [((1 : F), 107472), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106692) * (relationLc702 rho) = ((1 : F) * rho 107474)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8350735386965930517301024222238984186980631401436540132621059471273859939706 : F), 106813, 5, 133⟩], residual := [((8334226194666000076422094566176775911994127709825910102492242190812320025554 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), runs := [⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 106814, 5, 133⟩], residual := [((380793711990470464493962683016616774893169390026769268098521793754562433091 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow917 (rho : Nat -> F) : Prop :=
    (relationLc703 rho) * (relationLc704 rho) = ((1 : F) * rho 107475)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), runs := [⟨(2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), 106813, 5, 133⟩, ⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 106814, 5, 133⟩], residual := [((36941004034677040948635904518525085393461548302413755168539434819459346161 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107476) * ((1 : F) + (1 : F) * rho 107475) = (relationLc705 rho)

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), runs := [⟨(2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), 106814, 5, 133⟩, ⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 106813, 5, 133⟩], residual := [((6036862831985683245651487661710623165633320395046026221911072481686485751233 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107477) * ((1 : F) + (-1 : F) * rho 107475) = (relationLc706 rho)

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 106813, 5, 133⟩], residual := [((1 : F), 107476), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106693) * (relationLc707 rho) = ((1 : F) * rho 107478)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 106814, 5, 133⟩], residual := [((1 : F), 107477), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106693) * (relationLc708 rho) = ((1 : F) * rho 107479)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182996801743943238222365565355394233708584573345921108487852703254453477350 : F), 106813, 5, 134⟩], residual := [((4659002157157882760089661487130649427326522575034374982504730073283696606459 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 106814, 5, 134⟩], residual := [((7378894693786544031947238095630110179035204260913025452629774386744340172769 : F), 106559)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg108
