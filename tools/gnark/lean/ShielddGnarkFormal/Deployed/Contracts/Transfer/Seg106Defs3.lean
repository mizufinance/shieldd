import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg106Defs2

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106

def relationLc472 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 88756, 5, 94⟩], residual := [((3486160377226881502651479614353021425755810132699530527842901563735863159498 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow723 (rho : Nat -> F) : Prop :=
    (relationLc471 rho) * (relationLc472 rho) = ((1 : F) * rho 89222)

def relationLc473 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 88756, 5, 94⟩, ⟨(3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), 88755, 5, 94⟩], residual := [((529992612792118418954102052820668293007890806345800527261763639820835993722 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89223) * ((1 : F) + (1 : F) * rho 89222) = (relationLc473 rho)

def relationLc474 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), runs := [⟨(1584487778553096956420447196026146224324899522184429611594281856034868684180 : F), 88755, 5, 94⟩, ⟨(3195448823033509217809599209752093928819033012363748049352997119498010226202 : F), 88756, 5, 94⟩], residual := [((1313059727422419163286129086112246131100286747774995266260829771678302990122 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89224) * ((1 : F) + (-1 : F) * rho 89222) = (relationLc474 rho)

def relationLc475 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 94⟩], residual := [((1 : F), 89223), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88596) * (relationLc475 rho) = ((1 : F) * rho 89225)

def relationLc476 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 94⟩], residual := [((1 : F), 89224), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88596) * (relationLc476 rho) = ((1 : F) * rho 89226)

def relationLc477 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4952436348997321659786425300399468127622333560955486928171929060103938040593 : F), 88755, 5, 95⟩], residual := [((4505918629229567963271693135892301758844544991052967519848637676869612517925 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc478 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), runs := [⟨(8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), 88756, 5, 95⟩], residual := [((44225839855303871186047897097373652214192502872374967535753773639635171164 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow728 (rho : Nat -> F) : Prop :=
    (relationLc477 rho) * (relationLc478 rho) = ((1 : F) * rho 89227)

def relationLc479 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), runs := [⟨(3344762889329800843780662380696169850927903984907386900079017259959392713649 : F), 88755, 5, 95⟩, ⟨(8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), 88756, 5, 95⟩], residual := [((803231153567425007543116169704355251605689776893495214106524016681835606880 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89228) * ((1 : F) + (1 : F) * rho 89227) = (relationLc479 rho)

def relationLc480 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3344762889329800843780662380696169850927903984907386900079017259959392713649 : F), runs := [⟨(3344762889329800843780662380696169850927903984907386900079017259959392713649 : F), 88756, 5, 95⟩, ⟨(8367591097536771522803547933668946562203633433425267831944482993688769681122 : F), 88755, 5, 95⟩], residual := [((7533067527415250847591342602806768426570296117971204426577192619325307001694 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89229) * ((1 : F) + (-1 : F) * rho 89227) = (relationLc480 rho)

def relationLc481 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 95⟩], residual := [((1 : F), 89228), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88597) * (relationLc481 rho) = ((1 : F) * rho 89230)

def relationLc482 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 95⟩], residual := [((1 : F), 89229), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88597) * (relationLc482 rho) = ((1 : F) * rho 89231)

def relationLc483 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1313680653438832956044863578229212917132366813282912157302259158748316782495 : F), 88755, 5, 96⟩], residual := [((6904476889112867866868551260992636603494931668028457971296293017135984609338 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc484 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (622192490317937799212022705405542800287596127361715414949933002491330820432 : F), runs := [⟨(622192490317937799212022705405542800287596127361715414949933002491330820432 : F), 88756, 5, 96⟩], residual := [((8287385886539225868272247925295480985868053107575376610560771126184903401054 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow733 (rho : Nat -> F) : Prop :=
    (relationLc483 rho) * (relationLc484 rho) = ((1 : F) * rho 89232)

def relationLc485 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (622192490317937799212022705405542800287596127361715414949933002491330820432 : F), runs := [⟨(622192490317937799212022705405542800287596127361715414949933002491330820432 : F), 88756, 5, 96⟩, ⟨(7975293959540741361581576436253552289616872946046947041792957070139396516308 : F), 88755, 5, 96⟩], residual := [((2240742143118543733148915050001778881500641247394851729501337526188830044988 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89233) * ((1 : F) + (1 : F) * rho 89232) = (relationLc485 rho)

def relationLc486 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7975293959540741361581576436253552289616872946046947041792957070139396516308 : F), runs := [⟨(622192490317937799212022705405542800287596127361715414949933002491330820432 : F), 88755, 5, 96⟩, ⟨(7975293959540741361581576436253552289616872946046947041792957070139396516308 : F), 88756, 5, 96⟩], residual := [((4585508775355717324810305694678792540096093119719576907514717865292569636336 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89234) * ((1 : F) + (-1 : F) * rho 89232) = (relationLc486 rho)

def relationLc487 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 96⟩], residual := [((1 : F), 89233), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88598) * (relationLc487 rho) = ((1 : F) * rho 89235)

def relationLc488 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 96⟩], residual := [((1 : F), 89234), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88598) * (relationLc488 rho) = ((1 : F) * rho 89236)

def relationLc489 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(926703710579707228865824304912950811249908438520396538221574221148333812108 : F), 88755, 5, 97⟩], residual := [((2043310958269952088101219604455223461164948471131630801005615574797184382063 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc490 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), runs := [⟨(4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), 88756, 5, 97⟩], residual := [((5299849100471461308167828109136819050294565181767251255316058889648273585615 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow738 (rho : Nat -> F) : Prop :=
    (relationLc489 rho) * (relationLc490 rho) = ((1 : F) * rho 89237)

def relationLc491 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), runs := [⟨(4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), 88756, 5, 97⟩, ⟨(506247692935158806361437649197078077785596719000796408273584518286064020549 : F), 88755, 5, 97⟩], residual := [((4501082880882502688754699107850136797890612099548472498616796674217097863012 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89238) * ((1 : F) + (1 : F) * rho 89237) = (relationLc491 rho)

def relationLc492 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (506247692935158806361437649197078077785596719000796408273584518286064020549 : F), runs := [⟨(4736261520567388396505551058111050993560848256806285330687945998057644510929 : F), 88755, 5, 97⟩, ⟨(506247692935158806361437649197078077785596719000796408273584518286064020549 : F), 88756, 5, 97⟩], residual := [((8009172866906155394067222367701899166975213429311644532871245873517816277565 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89239) * ((1 : F) + (-1 : F) * rho 89237) = (relationLc492 rho)

def relationLc493 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 97⟩], residual := [((1 : F), 89238), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88599) * (relationLc493 rho) = ((1 : F) * rho 89240)

def relationLc494 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 97⟩], residual := [((1 : F), 89239), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88599) * (relationLc494 rho) = ((1 : F) * rho 89241)

def relationLc495 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4504433567208256174361875541452814826170309619331428831509159035417010671283 : F), 88755, 5, 98⟩], residual := [((3145267284228186583907498244091499234687362298660748907774300413058490871568 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc496 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), runs := [⟨(1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), 88756, 5, 98⟩], residual := [((541743037391823123499014009910894028304821752418566791495963198628705495845 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow743 (rho : Nat -> F) : Prop :=
    (relationLc495 rho) * (relationLc496 rho) = ((1 : F) * rho 89242)

def relationLc497 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), runs := [⟨(1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), 88756, 5, 98⟩, ⟨(7769501368827755599192931605566160418907578471371226351096829835494835248582 : F), 88755, 5, 98⟩], residual := [((6208763637648537799611650768982157291573155189908122610142931922745768395020 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89243) * ((1 : F) + (1 : F) * rho 89242) = (relationLc497 rho)

def relationLc498 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7769501368827755599192931605566160418907578471371226351096829835494835248582 : F), runs := [⟨(1319152065543215698221911102492755603226353495163345466324257288924155557325 : F), 88755, 5, 98⟩, ⟨(7769501368827755599192931605566160418907578471371226351096829835494835248582 : F), 88756, 5, 98⟩], residual := [((5429822735258159657611012395482246677205948276429884023146116194473219133688 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89244) * ((1 : F) + (-1 : F) * rho 89242) = (relationLc498 rho)

def relationLc499 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 98⟩], residual := [((1 : F), 89243), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88600) * (relationLc499 rho) = ((1 : F) * rho 89245)

def relationLc500 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 98⟩], residual := [((1 : F), 89244), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88600) * (relationLc500 rho) = ((1 : F) * rho 89246)

def relationLc501 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6684118451110970419290924974182417975624703710825488459903719182056707260230 : F), 88755, 5, 99⟩], residual := [((7149025083245982877647105497978783864457366615031117417226442875835582438302 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc502 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), runs := [⟨(8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), 88756, 5, 99⟩], residual := [((1495666039841775673238320805849590006324700676455078833136047015772515435385 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow748 (rho : Nat -> F) : Prop :=
    (relationLc501 rho) * (relationLc502 rho) = ((1 : F) * rho 89247)

def relationLc503 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), runs := [⟨(4060921078656439863101153504165835147809808188796599194512367658779918875322 : F), 88755, 5, 99⟩, ⟨(8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), 88756, 5, 99⟩], residual := [((3815297888686318892232006002720785259014233253567872620218316124621031768256 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89248) * ((1 : F) + (1 : F) * rho 89247) = (relationLc503 rho)

def relationLc504 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4060921078656439863101153504165835147809808188796599194512367658779918875322 : F), runs := [⟨(4060921078656439863101153504165835147809808188796599194512367658779918875322 : F), 88756, 5, 99⟩, ⟨(8439094283497540590506542871793239202425083326345208197600762658428382920754 : F), 88755, 5, 99⟩], residual := [((138932227217050329235698880910945792762860556806639135837756187935196649593 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow750 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89249) * ((1 : F) + (-1 : F) * rho 89247) = (relationLc504 rho)

def relationLc505 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 99⟩], residual := [((1 : F), 89248), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88601) * (relationLc505 rho) = ((1 : F) * rho 89250)

def relationLc506 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 99⟩], residual := [((1 : F), 89249), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88601) * (relationLc506 rho) = ((1 : F) * rho 89251)

def relationLc507 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3924064994534324793975474756801986090331673654531897950005235266878248442401 : F), 88755, 5, 100⟩], residual := [((5035170457329007498215706764068854229628709390625754048523837162638594296483 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc508 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 88756, 5, 100⟩], residual := [((8155230957829955237422040779833784152504074606101570959547316848164455429470 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow753 (rho : Nat -> F) : Prop :=
    (relationLc507 rho) * (relationLc508 rho) = ((1 : F) * rho 89252)

def relationLc509 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 88756, 5, 100⟩, ⟨(831489309690420503408102112404806787788471955046437886410714853252018799218 : F), 88755, 5, 100⟩], residual := [((1912300677205774330347012906125109509384534584471795111298793940730872627179 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89253) * ((1 : F) + (1 : F) * rho 89252) = (relationLc509 rho)

def relationLc510 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (831489309690420503408102112404806787788471955046437886410714853252018799218 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 88755, 5, 100⟩, ⟨(831489309690420503408102112404806787788471955046437886410714853252018799218 : F), 88756, 5, 100⟩], residual := [((262055187765897102645017672611434223937468532503246140749754098589294437485 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89254) * ((1 : F) + (-1 : F) * rho 89252) = (relationLc510 rho)

def relationLc511 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 100⟩], residual := [((1 : F), 89253), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88602) * (relationLc511 rho) = ((1 : F) * rho 89255)

def relationLc512 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 100⟩], residual := [((1 : F), 89254), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow757 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88602) * (relationLc512 rho) = ((1 : F) * rho 89256)

def relationLc513 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1196062191799215498120628398783088685347096038747678159521022542856874490815 : F), 88755, 5, 101⟩], residual := [((232394475062317995667702307533282018411905725724657218403247192666026112748 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc514 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 88756, 5, 101⟩], residual := [((4433698353190224045945534049411289318335858580384154444661941282941348013884 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow758 (rho : Nat -> F) : Prop :=
    (relationLc513 rho) * (relationLc514 rho) = ((1 : F) * rho 89257)

def relationLc515 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 88756, 5, 101⟩, ⟨(7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), 88755, 5, 101⟩], residual := [((5140974492574679535958980064578209064928547900979885264154168132176624598985 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89258) * ((1 : F) + (1 : F) * rho 89257) = (relationLc515 rho)

def relationLc516 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 88755, 5, 101⟩, ⟨(7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), 88756, 5, 101⟩], residual := [((133351693975587787306538269865475091956848856903036364800291141558716137471 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89259) * ((1 : F) + (-1 : F) * rho 89257) = (relationLc516 rho)

def relationLc517 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 101⟩], residual := [((1 : F), 89258), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88603) * (relationLc517 rho) = ((1 : F) * rho 89260)

def relationLc518 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 101⟩], residual := [((1 : F), 89259), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow762 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88603) * (relationLc518 rho) = ((1 : F) * rho 89261)

def relationLc519 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6957933836512070640691601954586154943368265695190068047948916244564022113965 : F), 88755, 5, 102⟩], residual := [((2388117029334704014295999076648404180615248067725950633314437733657386231537 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc520 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), runs := [⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 88756, 5, 102⟩], residual := [((6332646434650531287581198517323463195769672261257243905099669120949071975567 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow763 (rho : Nat -> F) : Prop :=
    (relationLc519 rho) * (relationLc520 rho) = ((1 : F) * rho 89262)

def relationLc521 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), runs := [⟨(8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), 88755, 5, 102⟩, ⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 88756, 5, 102⟩], residual := [((4896676483582392362043429560204275339779405127791019854478882772518786982970 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89263) * ((1 : F) + (1 : F) * rho 89262) = (relationLc521 rho)

def relationLc522 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), runs := [⟨(8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), 88756, 5, 102⟩, ⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 88755, 5, 102⟩], residual := [((4768414250969583693261357891166172345692760929377044798652568803671131166891 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89264) * ((1 : F) + (-1 : F) * rho 89262) = (relationLc522 rho)

def relationLc523 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 102⟩], residual := [((1 : F), 89263), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88604) * (relationLc523 rho) = ((1 : F) * rho 89265)

def relationLc524 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 102⟩], residual := [((1 : F), 89264), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow767 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88604) * (relationLc524 rho) = ((1 : F) * rho 89266)

def relationLc525 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6782707603869949925200121812141714622311528380453455977187924778481262425243 : F), 88755, 5, 103⟩], residual := [((6051673965157560092114760277064480394647900116693339783892646729960468842230 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc526 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 88756, 5, 103⟩], residual := [((2675555371787428154002211846582178465521211181571418107241108938057384245176 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow768 (rho : Nat -> F) : Prop :=
    (relationLc525 rho) * (relationLc526 rho) = ((1 : F) * rho 89267)

def relationLc527 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 88756, 5, 103⟩, ⟨(737396937339798534095544879414660196085459468231040133308227184271684836906 : F), 88755, 5, 103⟩], residual := [((477693828313422869728226256862214003489372427301456209590948036674716055079 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89268) * ((1 : F) + (1 : F) * rho 89267) = (relationLc527 rho)

def relationLc528 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (737396937339798534095544879414660196085459468231040133308227184271684836906 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 88755, 5, 103⟩, ⟨(737396937339798534095544879414660196085459468231040133308227184271684836906 : F), 88756, 5, 103⟩], residual := [((3067103044818000616202305504759861198041621034645928761154638115016820716409 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89269) * ((1 : F) + (-1 : F) * rho 89267) = (relationLc528 rho)

def relationLc529 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 103⟩], residual := [((1 : F), 89268), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88605) * (relationLc529 rho) = ((1 : F) * rho 89270)

def relationLc530 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 103⟩], residual := [((1 : F), 89269), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow772 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88605) * (relationLc530 rho) = ((1 : F) * rho 89271)

def relationLc531 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6679935628338152398468277509230599074206436943528958451241257955450738290339 : F), 88755, 5, 104⟩], residual := [((448133618054658546229980299568494592297006321682566444874660444562964050464 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc532 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 88756, 5, 104⟩], residual := [((1243508143831080745464502130485139434226495716753233102066310961361171472701 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow773 (rho : Nat -> F) : Prop :=
    (relationLc531 rho) * (relationLc532 rho) = ((1 : F) * rho 89272)

def relationLc533 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 88756, 5, 104⟩, ⟨(8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), 88755, 5, 104⟩], residual := [((7345695542910917652012471286943161470832217416509275439976767530282809120128 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89273) * ((1 : F) + (1 : F) * rho 89272) = (relationLc533 rho)

def relationLc534 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 88755, 5, 104⟩, ⟨(8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), 88756, 5, 104⟩], residual := [((3796930954529644023654080320640847780983417184699651433626814643213042677538 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89274) * ((1 : F) + (-1 : F) * rho 89272) = (relationLc534 rho)

def relationLc535 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 104⟩], residual := [((1 : F), 89273), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88606) * (relationLc535 rho) = ((1 : F) * rho 89275)

def relationLc536 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 104⟩], residual := [((1 : F), 89274), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88606) * (relationLc536 rho) = ((1 : F) * rho 89276)

def relationLc537 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8420431283516515239166733457192509618731498049875930476294212808737930130122 : F), 88755, 5, 105⟩], residual := [((6171900443306265436139038268085329064215901428278366185893286814715436360930 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc538 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), runs := [⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 88756, 5, 105⟩], residual := [((7097193599401662905777697165846591568654430638302399028548073549995408685798 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow778 (rho : Nat -> F) : Prop :=
    (relationLc537 rho) * (relationLc538 rho) = ((1 : F) * rho 89277)

def relationLc539 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), runs := [⟨(2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), 88755, 5, 105⟩, ⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 88756, 5, 105⟩], residual := [((4231306193089116798580360075836071405752260225710611169800752716179934854982 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89278) * ((1 : F) + (1 : F) * rho 89277) = (relationLc539 rho)

def relationLc540 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), runs := [⟨(2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), 88756, 5, 105⟩, ⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 88755, 5, 105⟩], residual := [((1655897341974058602991122781470433356950214897226624602461013101212155498886 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89279) * ((1 : F) + (-1 : F) * rho 89277) = (relationLc540 rho)

def relationLc541 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 105⟩], residual := [((1 : F), 89278), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88607) * (relationLc541 rho) = ((1 : F) * rho 89280)

def relationLc542 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 105⟩], residual := [((1 : F), 89279), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88607) * (relationLc542 rho) = ((1 : F) * rho 89281)

def relationLc543 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4192118223431191948576229703026611961899211540869084381246995287642068887532 : F), 88755, 5, 106⟩], residual := [((7513835879182803745630240013231637882820161472951662458538143120260969668224 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc544 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 88756, 5, 106⟩], residual := [((2214913009684229514296527901173036753304215905453315312871645431738308265406 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow783 (rho : Nat -> F) : Prop :=
    (relationLc543 rho) * (relationLc544 rho) = ((1 : F) * rho 89282)

def relationLc545 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 88756, 5, 106⟩, ⟨(7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), 88755, 5, 106⟩], residual := [((6119574525103358251799669196953331554920758650686027913419849353479772769666 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89283) * ((1 : F) + (1 : F) * rho 89282) = (relationLc545 rho)

def relationLc546 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 88755, 5, 106⟩, ⟨(7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), 88756, 5, 106⟩], residual := [((5781387667770032033402740426547068681911852292873038357115912333087689425709 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89284) * ((1 : F) + (-1 : F) * rho 89282) = (relationLc546 rho)

def relationLc547 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 106⟩], residual := [((1 : F), 89283), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88608) * (relationLc547 rho) = ((1 : F) * rho 89285)

def relationLc548 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 106⟩], residual := [((1 : F), 89284), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88608) * (relationLc548 rho) = ((1 : F) * rho 89286)

def relationLc549 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8078264009197303589973580787041376885392487990718089434226936659876814776586 : F), 88755, 5, 107⟩], residual := [((2237627806897634859307700086481705695837285251959374786449150540179810463872 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc550 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), runs := [⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 88756, 5, 107⟩], residual := [((18814393029343576151900933502353303155794589744080597726630900043602610997 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow788 (rho : Nat -> F) : Prop :=
    (relationLc549 rho) * (relationLc550 rho) = ((1 : F) * rho 89287)

def relationLc551 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), runs := [⟨(5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), 88755, 5, 107⟩, ⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 88756, 5, 107⟩], residual := [((869312241302472422173400596354412836831435332259404920294906345637469615013 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89288) * ((1 : F) + (1 : F) * rho 89287) = (relationLc551 rho)

def relationLc552 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), runs := [⟨(5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), 88756, 5, 107⟩, ⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 88755, 5, 107⟩], residual := [((4952435177904146458220233564938569113666684850685530035021249355113584218572 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89289) * ((1 : F) + (-1 : F) * rho 89287) = (relationLc552 rho)

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 107⟩], residual := [((1 : F), 89288), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88609) * (relationLc553 rho) = ((1 : F) * rho 89290)

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 107⟩], residual := [((1 : F), 89289), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88609) * (relationLc554 rho) = ((1 : F) * rho 89291)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3734468812329077059924950204727031629122473060052984382313629408831163347172 : F), 88755, 5, 108⟩], residual := [((6557751697947992234906904655494192058588742758853648003926269888731369902088 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), runs := [⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 88756, 5, 108⟩], residual := [((2218295594801486147569305803986860457559073079568149607218132593548481807376 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow793 (rho : Nat -> F) : Prop :=
    (relationLc555 rho) * (relationLc556 rho) = ((1 : F) * rho 89292)

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), runs := [⟨(2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), 88755, 5, 108⟩, ⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 88756, 5, 108⟩], residual := [((5393079387353339316638264165513689158376760761845116205268584841928154384739 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89293) * ((1 : F) + (1 : F) * rho 89292) = (relationLc557 rho)

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), runs := [⟨(2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), 88756, 5, 108⟩, ⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 88755, 5, 108⟩], residual := [((4610710194873497428010206747833905789852935740684970065079125792390369064319 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89294) * ((1 : F) + (-1 : F) * rho 89292) = (relationLc558 rho)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 108⟩], residual := [((1 : F), 89293), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88610) * (relationLc559 rho) = ((1 : F) * rho 89295)

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 108⟩], residual := [((1 : F), 89294), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88610) * (relationLc560 rho) = ((1 : F) * rho 89296)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(568596184901683623662901086713254788204948897441843689512915291178609917092 : F), 88755, 5, 109⟩], residual := [((7763900067584871699239273873026970932379347276428893124063049670480466451269 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), runs := [⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 88756, 5, 109⟩], residual := [((2671857680381596165133534350268632670833089194821162061937485372477153821385 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow798 (rho : Nat -> F) : Prop :=
    (relationLc561 rho) * (relationLc562 rho) = ((1 : F) * rho 89297)

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), runs := [⟨(5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), 88755, 5, 109⟩, ⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 88756, 5, 109⟩], residual := [((1701679332571768943703758843872422402052409412842616772630170512169713255766 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89298) * ((1 : F) + (1 : F) * rho 89297) = (relationLc563 rho)

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), runs := [⟨(5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), 88756, 5, 109⟩, ⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 88755, 5, 109⟩], residual := [((7327999024681437242838383046063829421577254374760206324494471040672979390485 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89299) * ((1 : F) + (-1 : F) * rho 89297) = (relationLc564 rho)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 109⟩], residual := [((1 : F), 89298), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88611) * (relationLc565 rho) = ((1 : F) * rho 89300)

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 109⟩], residual := [((1 : F), 89299), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88611) * (relationLc566 rho) = ((1 : F) * rho 89301)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4844898403553568028259035569409623674492133411001005402900268525269019383147 : F), 88755, 5, 110⟩], residual := [((1584370194938709372334615152442198386778091293051099268892628669364464823643 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 88756, 5, 110⟩], residual := [((5822744375078125061629763314676319349385425802373362430870652483474328191553 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow803 (rho : Nat -> F) : Prop :=
    (relationLc567 rho) * (relationLc568 rho) = ((1 : F) * rho 89302)

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 88756, 5, 110⟩, ⟨(6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), 88755, 5, 110⟩], residual := [((5848426111569284956760704737914146597703585744547952855802896683994891299125 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89303) * ((1 : F) + (1 : F) * rho 89302) = (relationLc569 rho)

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 88755, 5, 110⟩, ⟨(6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), 88756, 5, 110⟩], residual := [((2975589111667990585410595177746922024926505695906607372137355479945806617660 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89304) * ((1 : F) + (-1 : F) * rho 89302) = (relationLc570 rho)

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 110⟩], residual := [((1 : F), 89303), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88612) * (relationLc571 rho) = ((1 : F) * rho 89305)

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 110⟩], residual := [((1 : F), 89304), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88612) * (relationLc572 rho) = ((1 : F) * rho 89306)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5473513454910718385916379960564670405200796488660792199065102502565012311891 : F), 88755, 5, 111⟩], residual := [((1290682852539617687465308244549146097528654648960453990058143318687428377628 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), runs := [⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 88756, 5, 111⟩], residual := [((4560315553206082171239657153972697214142086945910781475321943315739135166866 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow808 (rho : Nat -> F) : Prop :=
    (relationLc573 rho) * (relationLc574 rho) = ((1 : F) * rho 89307)

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), runs := [⟨(2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), 88755, 5, 111⟩, ⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 88756, 5, 111⟩], residual := [((8096738855383979623858733239971772192059346566440027154344825958921594655699 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89308) * ((1 : F) + (1 : F) * rho 89307) = (relationLc575 rho)

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), runs := [⟨(2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), 88756, 5, 111⟩, ⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 88755, 5, 111⟩], residual := [((1278272657742027434275494546315655160302569862150581501574320349530171965278 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89309) * ((1 : F) + (-1 : F) * rho 89307) = (relationLc576 rho)

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 111⟩], residual := [((1 : F), 89308), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88613) * (relationLc577 rho) = ((1 : F) * rho 89310)

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 111⟩], residual := [((1 : F), 89309), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88613) * (relationLc578 rho) = ((1 : F) * rho 89311)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6494117757873971508758146756812052405656400213213392704742067070974595246434 : F), 88755, 5, 112⟩], residual := [((2505911588988824428755289285606906412415086920291455482382843872981685118529 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 88756, 5, 112⟩], residual := [((8174319716053133462684811146498463582214521739980076836226226865024436960466 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow813 (rho : Nat -> F) : Prop :=
    (relationLc579 rho) * (relationLc580 rho) = ((1 : F) * rho 89312)

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 88756, 5, 112⟩, ⟨(5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), 88755, 5, 112⟩], residual := [((630759189698223515442565790495223866302195616623397982828407515918807747936 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89313) * ((1 : F) + (1 : F) * rho 89312) = (relationLc581 rho)

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 88755, 5, 112⟩, ⟨(5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), 88756, 5, 112⟩], residual := [((701540351068285311102719158292584549968653608918762726070947020463010759916 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89314) * ((1 : F) + (-1 : F) * rho 89312) = (relationLc582 rho)

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 112⟩], residual := [((1 : F), 89313), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88614) * (relationLc583 rho) = ((1 : F) * rho 89315)

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 112⟩], residual := [((1 : F), 89314), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88614) * (relationLc584 rho) = ((1 : F) * rho 89316)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7232751867622564713554023932001496092539510221064441963614171743180987607316 : F), 88755, 5, 113⟩], residual := [((6205455160059383968858176403410616736538441215431948543782337451811884962308 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 88756, 5, 113⟩], residual := [((6679184061030008664832695535977507076813478068613182374938323825246753435358 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow818 (rho : Nat -> F) : Prop :=
    (relationLc585 rho) * (relationLc586 rho) = ((1 : F) * rho 89317)

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 88756, 5, 113⟩, ⟨(6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), 88755, 5, 113⟩], residual := [((4400311061237393344667788891276305040114969158891141946255315496025702771970 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89318) * ((1 : F) + (1 : F) * rho 89317) = (relationLc587 rho)

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 88755, 5, 113⟩, ⟨(6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), 88756, 5, 113⟩], residual := [((2087357790150026556797310710018782693490980500605381290006250342379967365568 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89319) * ((1 : F) + (-1 : F) * rho 89317) = (relationLc588 rho)

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 113⟩], residual := [((1 : F), 89318), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88615) * (relationLc589 rho) = ((1 : F) * rho 89320)

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 113⟩], residual := [((1 : F), 89319), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88615) * (relationLc590 rho) = ((1 : F) * rho 89321)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(947717101564819091542378284888608902327013081715595233096761950147907007800 : F), 88755, 5, 114⟩], residual := [((8069732616500346997440461803908541944572596023366705295276766397849410487234 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), runs := [⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 88756, 5, 114⟩], residual := [((6309456410749148524989712616328028351341432761943017574693998999570185170928 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow823 (rho : Nat -> F) : Prop :=
    (relationLc591 rho) * (relationLc592 rho) = ((1 : F) * rho 89322)

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), runs := [⟨(4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), 88755, 5, 114⟩, ⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 88756, 5, 114⟩], residual := [((3477740263346345723536264080703870906498470388615359840092525991327085681388 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89323) * ((1 : F) + (1 : F) * rho 89322) = (relationLc593 rho)

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), runs := [⟨(4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), 88756, 5, 114⟩, ⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 88755, 5, 114⟩], residual := [((7299614783841155772686659764745278288658731154961458264984903098491417870829 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89324) * ((1 : F) + (-1 : F) * rho 89322) = (relationLc594 rho)

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 114⟩], residual := [((1 : F), 89323), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88616) * (relationLc595 rho) = ((1 : F) * rho 89325)

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 114⟩], residual := [((1 : F), 89324), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88616) * (relationLc596 rho) = ((1 : F) * rho 89326)

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1854067315940902596236180059194743311052989737966486961600317653694884857500 : F), 88755, 5, 115⟩], residual := [((4354532474989950694177441537286028288137849845366388990794655904030294839452 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 88756, 5, 115⟩], residual := [((3780104624363262583803818749820133136665135515081578486963505739174187955054 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow828 (rho : Nat -> F) : Prop :=
    (relationLc597 rho) * (relationLc598 rho) = ((1 : F) * rho 89327)

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 88756, 5, 115⟩, ⟨(3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), 88755, 5, 115⟩], residual := [((2604744192706740240899291157072782901173207090634542908489510827212188949825 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89328) * ((1 : F) + (1 : F) * rho 89327) = (relationLc599 rho)

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 88755, 5, 115⟩, ⟨(3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), 88756, 5, 115⟩], residual := [((7841490394353810698294471924772146887196817649440922315850551546178009358557 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89329) * ((1 : F) + (-1 : F) * rho 89327) = (relationLc600 rho)

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 115⟩], residual := [((1 : F), 89328), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88617) * (relationLc601 rho) = ((1 : F) * rho 89330)

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 115⟩], residual := [((1 : F), 89329), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88617) * (relationLc602 rho) = ((1 : F) * rho 89331)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5058688986614166632160103004447210200422193522182557622358194344375224847289 : F), 88755, 5, 116⟩], residual := [((7963949792456045923152496392139227737431459647154118764599999983306311745035 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 88756, 5, 116⟩], residual := [((7165195893732640723561096527477694394750848606553482293832288734522661702959 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow833 (rho : Nat -> F) : Prop :=
    (relationLc603 rho) * (relationLc604 rho) = ((1 : F) * rho 89332)

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 88756, 5, 116⟩, ⟨(2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), 88755, 5, 116⟩], residual := [((1219531990061301360145556317833539548332284447149081861167086220716325870806 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89333) * ((1 : F) + (1 : F) * rho 89332) = (relationLc605 rho)

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 88755, 5, 116⟩, ⟨(2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), 88756, 5, 116⟩], residual := [((7015591765500128281549976814712607452749588499518551798977318918702616301457 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89334) * ((1 : F) + (-1 : F) * rho 89332) = (relationLc606 rho)

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 116⟩], residual := [((1 : F), 89333), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88618) * (relationLc607 rho) = ((1 : F) * rho 89335)

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 116⟩], residual := [((1 : F), 89334), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88618) * (relationLc608 rho) = ((1 : F) * rho 89336)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2126598159510820021254829562976983677454766925005966503301667636085195673024 : F), 88755, 5, 117⟩], residual := [((1872614935516469004704786918895811090880792337026629918254087619510321198958 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 88756, 5, 117⟩], residual := [((3238821507913782672875285228055567261226513652148746145790112441631656539344 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow838 (rho : Nat -> F) : Prop :=
    (relationLc609 rho) * (relationLc610 rho) = ((1 : F) * rho 89337)

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 88756, 5, 117⟩, ⟨(4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), 88755, 5, 117⟩], residual := [((2990663785052608062231974856445947324052871067411346261391574973919925622073 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89338) * ((1 : F) + (1 : F) * rho 89337) = (relationLc611 rho)

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 88755, 5, 117⟩, ⟨(4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), 88756, 5, 117⟩], residual := [((7172988848799631013344220002171542030874312246551264557875723659804867424013 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89339) * ((1 : F) + (-1 : F) * rho 89337) = (relationLc612 rho)

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 117⟩], residual := [((1 : F), 89338), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88619) * (relationLc613 rho) = ((1 : F) * rho 89340)

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 117⟩], residual := [((1 : F), 89339), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88619) * (relationLc614 rho) = ((1 : F) * rho 89341)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3367912820253366001216961945321133635042119018370843707781355082706130612868 : F), 88755, 5, 118⟩], residual := [((1691399493890240984781845757328749935483621953555455768353456418081471202157 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 88756, 5, 118⟩], residual := [((7148355880814354094015135364292496029766550086632406855091613901944786716636 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow843 (rho : Nat -> F) : Prop :=
    (relationLc615 rho) * (relationLc616 rho) = ((1 : F) * rho 89342)

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 88756, 5, 118⟩, ⟨(5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), 88755, 5, 118⟩], residual := [((2581471041664381557690144267234661444419732512422481387008920088455556254739 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89343) * ((1 : F) + (1 : F) * rho 89342) = (relationLc617 rho)

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 88755, 5, 118⟩, ⟨(5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), 88756, 5, 118⟩], residual := [((6619964280680378555219129946295155890115709779695071405095337864393796333509 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89344) * ((1 : F) + (-1 : F) * rho 89342) = (relationLc618 rho)

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 118⟩], residual := [((1 : F), 89343), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88620) * (relationLc619 rho) = ((1 : F) * rho 89345)

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 118⟩], residual := [((1 : F), 89344), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88620) * (relationLc620 rho) = ((1 : F) * rho 89346)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2017692046407117271774974818426083152699470227008509506383363299947661421324 : F), 88755, 5, 119⟩], residual := [((7127797571030210124345768641519536854686265690026118826828166574414757839431 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), runs := [⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 88756, 5, 119⟩], residual := [((2430083545376283142446969529024895585487534495302192570610260792855878618882 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow848 (rho : Nat -> F) : Prop :=
    (relationLc621 rho) * (relationLc622 rho) = ((1 : F) * rho 89347)

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), runs := [⟨(5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), 88755, 5, 119⟩, ⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 88756, 5, 119⟩], residual := [((2024335906235100794940851464668528072503027697141826069434585215898074252427 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89348) * ((1 : F) + (1 : F) * rho 89347) = (relationLc623 rho)

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), runs := [⟨(5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), 88756, 5, 119⟩, ⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 88755, 5, 119⟩], residual := [((768630642295931472468064850845617638711953339610270448700590788007616351667 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89349) * ((1 : F) + (-1 : F) * rho 89347) = (relationLc624 rho)

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 119⟩], residual := [((1 : F), 89348), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88621) * (relationLc625 rho) = ((1 : F) * rho 89350)

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 119⟩], residual := [((1 : F), 89349), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88621) * (relationLc626 rho) = ((1 : F) * rho 89351)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3986668860635778338789526978466339028865773963962702698271938929340967177465 : F), 88755, 5, 120⟩], residual := [((3946958459661543686929747477451679320619934793290430451765914523801407412779 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 88756, 5, 120⟩], residual := [((2271613138381064962232656709377804353171427636280369025590495735246060493453 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow853 (rho : Nat -> F) : Prop :=
    (relationLc627 rho) * (relationLc628 rho) = ((1 : F) * rho 89352)

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 88756, 5, 120⟩, ⟨(518441606257823338902622357051655891206026862286482790753488953417431869050 : F), 88755, 5, 120⟩], residual := [((531476524202245620749674852580898755777662210590964413094009628489110957369 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89353) * ((1 : F) + (1 : F) * rho 89352) = (relationLc629 rho)

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (518441606257823338902622357051655891206026862286482790753488953417431869050 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 88755, 5, 120⟩, ⟨(518441606257823338902622357051655891206026862286482790753488953417431869050 : F), 88756, 5, 120⟩], residual := [((6521749992220261155171628057732085595952514169941349494307767142773096886607 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89354) * ((1 : F) + (-1 : F) * rho 89352) = (relationLc630 rho)

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 120⟩], residual := [((1 : F), 89353), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88622) * (relationLc631 rho) = ((1 : F) * rho 89355)

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 120⟩], residual := [((1 : F), 89354), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88622) * (relationLc632 rho) = ((1 : F) * rho 89356)

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5855145417203940550976487192596039675670168246738064866068981280365576908554 : F), 88755, 5, 121⟩], residual := [((925682298642025695569127838357638138953071366428001762630642884454986281998 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 88756, 5, 121⟩], residual := [((4431042670275116120931628545963771550361798060725958195462347720202910125040 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow858 (rho : Nat -> F) : Prop :=
    (relationLc633 rho) * (relationLc634 rho) = ((1 : F) * rho 89357)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 88756, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 88755, 5, 121⟩], residual := [((4067966091285693370366657306571767773155603475421886598021450763438657157548 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89358) * ((1 : F) + (1 : F) * rho 89357) = (relationLc635 rho)

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), runs := [⟨(2369094817551258812723538222613453499210094384112562673974854815926291253522 : F), 88755, 5, 121⟩, ⟨(3540729467127944686411780489801401505593366013423297871907340131238598369260 : F), 88756, 5, 121⟩], residual := [((6678015243706744213506802687278324384968843272394413227264100865185272284296 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89359) * ((1 : F) + (-1 : F) * rho 89357) = (relationLc636 rho)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 121⟩], residual := [((1 : F), 89358), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88623) * (relationLc637 rho) = ((1 : F) * rho 89360)

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 121⟩], residual := [((1 : F), 89359), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88623) * (relationLc638 rho) = ((1 : F) * rho 89361)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4605714326718740686632657117795621638911193650541587203844342302667521971341 : F), 88755, 5, 122⟩], residual := [((5800326694329768429758990205268420212840756619354697203033693061349602045852 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 88756, 5, 122⟩], residual := [((1914634463071955144491109301380262226852858209694089168223890368315123462833 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow863 (rho : Nat -> F) : Prop :=
    (relationLc639 rho) * (relationLc640 rho) = ((1 : F) * rho 89362)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 88756, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 88755, 5, 122⟩], residual := [((3470715581700390670579194589750936934452275881645434479556238430066672333721 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89363) * ((1 : F) + (1 : F) * rho 89362) = (relationLc641 rho)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), runs := [⟨(5693046099821280996920724757629771309454586302160024449729771825415757278215 : F), 88755, 5, 122⟩, ⟨(6539623219543090752401401585212788135891141919422673578531729690729390179440 : F), 88756, 5, 122⟩], residual := [((6149125308177821096193566087895360010904466580282475588586340879964222902869 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89364) * ((1 : F) + (-1 : F) * rho 89362) = (relationLc642 rho)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 122⟩], residual := [((1 : F), 89363), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88624) * (relationLc643 rho) = ((1 : F) * rho 89365)

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 122⟩], residual := [((1 : F), 89364), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88624) * (relationLc644 rho) = ((1 : F) * rho 89366)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2462219390816186265215831286673879522624662491951844612399314437338650625929 : F), 88755, 5, 123⟩], residual := [((6076628209815230809031554704004686574711116934705931390450359393626223046622 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 88756, 5, 123⟩], residual := [((6455242912317044762230268225216983487772561477201860534153268897702230187998 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow868 (rho : Nat -> F) : Prop :=
    (relationLc645 rho) * (relationLc646 rho) = ((1 : F) * rho 89367)

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 88755, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 88756, 5, 123⟩], residual := [((2692047497464280865952831734705649991847826195004635097265381077203347691493 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89368) * ((1 : F) + (1 : F) * rho 89367) = (relationLc647 rho)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), runs := [⟨(2678668181179475356734720331889902501350789879367608405089160200333074048867 : F), 88756, 5, 123⟩, ⟨(4258793080796698069402972208671845358882371272781352762940455540151758633068 : F), 88755, 5, 123⟩], residual := [((4260741226520128065720441172132567930766211831973469596976018488234910145224 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89369) * ((1 : F) + (-1 : F) * rho 89367) = (relationLc648 rho)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 123⟩], residual := [((1 : F), 89368), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88625) * (relationLc649 rho) = ((1 : F) * rho 89370)

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 123⟩], residual := [((1 : F), 89369), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88625) * (relationLc650 rho) = ((1 : F) * rho 89371)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(675150215867084420868198222910915221167546600958782523865631274068456193699 : F), 88755, 5, 124⟩], residual := [((632767730836458282723837747081184692850391276120378771202560323022367560874 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 88756, 5, 124⟩], residual := [((6937508972884827012117303727642640631932551818643813059565600955408050267583 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow873 (rho : Nat -> F) : Prop :=
    (relationLc651 rho) * (relationLc652 rho) = ((1 : F) * rho 89372)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 88756, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 88755, 5, 124⟩], residual := [((606468557550691774566537541415192201322303025910336001802575064203181165012 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89373) * ((1 : F) + (1 : F) * rho 89372) = (relationLc653 rho)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), runs := [⟨(5218883308149451934436220477427164614349895341904656828577451196512437458438 : F), 88755, 5, 124⟩, ⟨(5400653839825050891780734187338251841721087408844293312841687079810163226091 : F), 88756, 5, 124⟩], residual := [((4709527915986490099127502690641102829893842187429096977916810943086408037942 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89374) * ((1 : F) + (-1 : F) * rho 89372) = (relationLc654 rho)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 124⟩], residual := [((1 : F), 89373), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88626) * (relationLc655 rho) = ((1 : F) * rho 89375)

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 124⟩], residual := [((1 : F), 89374), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88626) * (relationLc656 rho) = ((1 : F) * rho 89376)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7162205350687989139896174159214506576215373902099509992231534261371144592675 : F), 88755, 5, 125⟩], residual := [((6625488961952055722052971184060402004083105963192283512447859675251721723441 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 88756, 5, 125⟩], residual := [((1896739124773425039683958892973582931283960987480377914539375397426739081550 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow878 (rho : Nat -> F) : Prop :=
    (relationLc657 rho) * (relationLc658 rho) = ((1 : F) * rho 89377)

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 88755, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 88756, 5, 125⟩], residual := [((5401385288625030533661393722327220205636190372753874855921465890620967978684 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89378) * ((1 : F) + (1 : F) * rho 89377) = (relationLc659 rho)

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), runs := [⟨(4144936947369590518992603354330839611411882882687991427670389776872218350497 : F), 88756, 5, 125⟩, ⟨(4659131040069477752464202981172024515454414328233636904227116932229460753269 : F), 88755, 5, 125⟩], residual := [((5295799265031769676934984260143085052791333859535372983832220458023281012382 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89379) * ((1 : F) + (-1 : F) * rho 89377) = (relationLc660 rho)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 125⟩], residual := [((1 : F), 89378), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88627) * (relationLc661 rho) = ((1 : F) * rho 89380)

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 125⟩], residual := [((1 : F), 89379), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88627) * (relationLc662 rho) = ((1 : F) * rho 89381)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6597939320542329487400565091411727244209447665886985587245580121252031929444 : F), 88755, 5, 126⟩], residual := [((334919001789655310560687819351358127988687736081256952747606665059184566897 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 88756, 5, 126⟩], residual := [((2576346892624037738027985730475149611626561668089352371540795449013921429872 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow883 (rho : Nat -> F) : Prop :=
    (relationLc663 rho) * (relationLc664 rho) = ((1 : F) * rho 89382)

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 88756, 5, 126⟩, ⟨(3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), 88755, 5, 126⟩], residual := [((860171919056599874678691515118473606285014662446017736188433404899975687335 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89383) * ((1 : F) + (1 : F) * rho 89382) = (relationLc665 rho)

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 88755, 5, 126⟩, ⟨(3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), 88756, 5, 126⟩], residual := [((369835453671308253501701535082988302428925497488405681490395052401809343463 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89384) * ((1 : F) + (-1 : F) * rho 89382) = (relationLc666 rho)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 126⟩], residual := [((1 : F), 89383), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88628) * (relationLc667 rho) = ((1 : F) * rho 89385)

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 126⟩], residual := [((1 : F), 89384), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow887 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88628) * (relationLc668 rho) = ((1 : F) * rho 89386)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3662549041251064738439678582694000555264902823767717478987881813558759373397 : F), 88755, 5, 127⟩], residual := [((3627157378103929501736907787229659891786383051031026833110981404511932764334 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 88756, 5, 127⟩], residual := [((5077128519854369438435180807649926164157042074234900107924177009357349807768 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow888 (rho : Nat -> F) : Prop :=
    (relationLc669 rho) * (relationLc670 rho) = ((1 : F) * rho 89387)

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 88756, 5, 127⟩, ⟨(5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), 88755, 5, 127⟩], residual := [((1791110691337434751439192320321270400831563346962424757106989467896124606726 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89388) * ((1 : F) + (1 : F) * rho 89387) = (relationLc671 rho)

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 88755, 5, 127⟩, ⟨(5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), 88756, 5, 127⟩], residual := [((3935246727056329354590544589123741495402236291810130050885612457341162195522 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89389) * ((1 : F) + (-1 : F) * rho 89387) = (relationLc672 rho)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 127⟩], residual := [((1 : F), 89388), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88629) * (relationLc673 rho) = ((1 : F) * rho 89390)

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 127⟩], residual := [((1 : F), 89389), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow892 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88629) * (relationLc674 rho) = ((1 : F) * rho 89391)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8248720859594048260171359378554269093421481617324763432726109518875895345970 : F), 88755, 5, 128⟩], residual := [((4473001459817228232150010665768690072105958119767506549923947413300614717103 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), runs := [⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 88756, 5, 128⟩], residual := [((628858195515421657429651630870506053729338922447461237621201443220761506096 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow893 (rho : Nat -> F) : Prop :=
    (relationLc675 rho) * (relationLc676 rho) = ((1 : F) * rho 89392)

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), runs := [⟨(192807719238902097685895880574544665086720501955577988656842762171883390798 : F), 88755, 5, 128⟩, ⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 88756, 5, 128⟩], residual := [((3260672663463754592699527260813969799540933504539398201751283743595333736700 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89393) * ((1 : F) + (1 : F) * rho 89392) = (relationLc677 rho)

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (192807719238902097685895880574544665086720501955577988656842762171883390798 : F), runs := [⟨(192807719238902097685895880574544665086720501955577988656842762171883390798 : F), 88756, 5, 128⟩, ⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 88755, 5, 128⟩], residual := [((183627881588738771781489470048673345598670070548584390770980837587120717671 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89394) * ((1 : F) + (-1 : F) * rho 89392) = (relationLc678 rho)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 128⟩], residual := [((1 : F), 89393), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88630) * (relationLc679 rho) = ((1 : F) * rho 89395)

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 128⟩], residual := [((1 : F), 89394), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88630) * (relationLc680 rho) = ((1 : F) * rho 89396)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(618054908213477814381438129861473047761143154008145337991771976121154319619 : F), 88755, 5, 129⟩], residual := [((6410948368104357234255387490833527163067313919974901621602509328920866406335 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 88756, 5, 129⟩], residual := [((6525623607059190063533361869152232303808632387596362439826165650534616212741 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow898 (rho : Nat -> F) : Prop :=
    (relationLc681 rho) * (relationLc682 rho) = ((1 : F) * rho 89397)

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 88756, 5, 129⟩, ⟨(8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), 88755, 5, 129⟩], residual := [((464840228660636242625898808997865902156444918536716779061545042604811587427 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89398) * ((1 : F) + (1 : F) * rho 89397) = (relationLc683 rho)

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 88755, 5, 129⟩, ⟨(8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), 88756, 5, 129⟩], residual := [((3017483325411212357099490681509349029967373800989764072253376653537103478324 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89399) * ((1 : F) + (-1 : F) * rho 89397) = (relationLc684 rho)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 129⟩], residual := [((1 : F), 89398), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88631) * (relationLc685 rho) = ((1 : F) * rho 89400)

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 129⟩], residual := [((1 : F), 89399), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88631) * (relationLc686 rho) = ((1 : F) * rho 89401)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6371667047184326709503565647805713250184644331668065658039380068871320237271 : F), 88755, 5, 130⟩], residual := [((1866814805241085772673212667356012663695540847735184269804539503998595498710 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), runs := [⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 88756, 5, 130⟩], residual := [((8035055261435057508313430386696100386377823167575762190338896894009796030450 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow903 (rho : Nat -> F) : Prop :=
    (relationLc687 rho) * (relationLc688 rho) = ((1 : F) * rho 89402)

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), runs := [⟨(155848084497101853705127089467325644646097023424409657793603846456249198406 : F), 88755, 5, 130⟩, ⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 88756, 5, 130⟩], residual := [((6923162192429016348737674308255948282166001785734126235605888494158379187802 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89403) * ((1 : F) + (1 : F) * rho 89402) = (relationLc689 rho)

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (155848084497101853705127089467325644646097023424409657793603846456249198406 : F), runs := [⟨(155848084497101853705127089467325644646097023424409657793603846456249198406 : F), 88756, 5, 130⟩, ⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 88755, 5, 130⟩], residual := [((2967446225558022814703410539096345214748111516817570520702980260485598143356 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89404) * ((1 : F) + (-1 : F) * rho 89402) = (relationLc690 rho)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 130⟩], residual := [((1 : F), 89403), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88632) * (relationLc691 rho) = ((1 : F) * rho 89405)

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 130⟩], residual := [((1 : F), 89404), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88632) * (relationLc692 rho) = ((1 : F) * rho 89406)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7685641275510751267434062841131440909524057548538908820526924562368135360637 : F), 88755, 5, 131⟩], residual := [((1533107064713739853198800681749478654974420030752112990442623442158134514998 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (708319964070499435326649883584500753584183235012429328809859440041531789954 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 88756, 5, 131⟩], residual := [((404578301454555449838109131566136413595117364922563879558071765960199684880 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow908 (rho : Nat -> F) : Prop :=
    (relationLc693 rho) * (relationLc694 rho) = ((1 : F) * rho 89407)

def relationLc695 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (708319964070499435326649883584500753584183235012429328809859440041531789954 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 88756, 5, 131⟩, ⟨(7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), 88755, 5, 131⟩], residual := [((8343606595212015146865537674042581838210320453922329978308983926916042244758 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89408) * ((1 : F) + (1 : F) * rho 89407) = (relationLc695 rho)

def relationLc696 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 88755, 5, 131⟩, ⟨(7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), 88756, 5, 131⟩], residual := [((2357664860580816865395151332838189685037838907976348089818391478630425954683 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89409) * ((1 : F) + (-1 : F) * rho 89407) = (relationLc696 rho)

def relationLc697 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 131⟩], residual := [((1 : F), 89408), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88633) * (relationLc697 rho) = ((1 : F) * rho 89410)

def relationLc698 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 131⟩], residual := [((1 : F), 89409), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88633) * (relationLc698 rho) = ((1 : F) * rho 89411)

def relationLc699 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3994026013218413113555076699488428925687662647002644743993134519597452118002 : F), 88755, 5, 132⟩], residual := [((191995865608900380973939639003477078910801454989591405516300774439642051799 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc700 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), runs := [⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 88756, 5, 132⟩], residual := [((5369222675224696627787843547543016413626997945559590293458623514399306051644 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow913 (rho : Nat -> F) : Prop :=
    (relationLc699 rho) * (relationLc700 rho) = ((1 : F) * rho 89412)

def relationLc701 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), runs := [⟨(1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), 88755, 5, 132⟩, ⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 88756, 5, 132⟩], residual := [((6657898233765606149787076330203491894607865338793954085608129944042591487344 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89413) * ((1 : F) + (1 : F) * rho 89412) = (relationLc701 rho)

def relationLc702 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), runs := [⟨(1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), 88756, 5, 132⟩, ⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 88755, 5, 132⟩], residual := [((3112293859876606234205874932513227378808768907034857639058815376386098008592 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89414) * ((1 : F) + (-1 : F) * rho 89412) = (relationLc702 rho)

def relationLc703 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 132⟩], residual := [((1 : F), 89413), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88634) * (relationLc703 rho) = ((1 : F) * rho 89415)

def relationLc704 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 132⟩], residual := [((1 : F), 89414), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88634) * (relationLc704 rho) = ((1 : F) * rho 89416)

def relationLc705 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8350735386965930517301024222238984186980631401436540132621059471273859939706 : F), 88755, 5, 133⟩], residual := [((8334226194666000076422094566176775911994127709825910102492242190812320025554 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc706 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), runs := [⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 88756, 5, 133⟩], residual := [((380793711990470464493962683016616774893169390026769268098521793754562433091 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow918 (rho : Nat -> F) : Prop :=
    (relationLc705 rho) * (relationLc706 rho) = ((1 : F) * rho 89417)

def relationLc707 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), runs := [⟨(2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), 88755, 5, 133⟩, ⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 88756, 5, 133⟩], residual := [((36941004034677040948635904518525085393461548302413755168539434819459346161 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89418) * ((1 : F) + (1 : F) * rho 89417) = (relationLc707 rho)

def relationLc708 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), runs := [⟨(2409477756254482908240827307683929343827087043683907810653709720296644559667 : F), 88756, 5, 133⟩, ⟨(4776301977164444395672264858506678016854284792231206224229539531243060966607 : F), 88755, 5, 133⟩], residual := [((6036862831985683245651487661710623165633320395046026221911072481686485751233 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89419) * ((1 : F) + (-1 : F) * rho 89417) = (relationLc708 rho)

def relationLc709 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 133⟩], residual := [((1 : F), 89418), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88635) * (relationLc709 rho) = ((1 : F) * rho 89420)

def relationLc710 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 133⟩], residual := [((1 : F), 89419), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88635) * (relationLc710 rho) = ((1 : F) * rho 89421)

def relationLc711 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1182996801743943238222365565355394233708584573345921108487852703254453477350 : F), 88755, 5, 134⟩], residual := [((4659002157157882760089661487130649427326522575034374982504730073283696606459 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc712 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 88756, 5, 134⟩], residual := [((7378894693786544031947238095630110179035204260913025452629774386744340172769 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow923 (rho : Nat -> F) : Prop :=
    (relationLc711 rho) * (relationLc712 rho) = ((1 : F) * rho 89422)

def relationLc713 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 88756, 5, 134⟩, ⟨(3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), 88755, 5, 134⟩], residual := [((6402098066794563970468588950616402586663725199433751051837047812928448237298 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89423) * ((1 : F) + (1 : F) * rho 89422) = (relationLc713 rho)

def relationLc714 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), runs := [⟨(1148300579578564163727623149367671871394774284025648335239073682646191848622 : F), 88755, 5, 134⟩, ⟨(3318357859441648340556629449817626986751705096127513963875408793405236418477 : F), 88756, 5, 134⟩], residual := [((4369131667080006902416927500337444541983085711333428144390077593133915563395 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 89424) * ((1 : F) + (-1 : F) * rho 89422) = (relationLc714 rho)

def relationLc715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 88755, 5, 134⟩], residual := [((1 : F), 89423), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88636) * (relationLc715 rho) = ((1 : F) * rho 89425)

def relationLc716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 88756, 5, 134⟩], residual := [((1 : F), 89424), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 88636) * (relationLc716 rho) = ((1 : F) * rho 89426)

def relationLc717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8137632229673021427629908971617522457232664963056919591413255887339944990409 : F), 88755, 5, 135⟩], residual := [((4769292595969500774517643306856801806102352804507087964477536699275377005469 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), runs := [⟨(5459638828393090938740191583842805453476194653234771289309407188511644865526 : F), 88756, 5, 135⟩], residual := [((3829596561026703133464657413286632844617675577922328941474428319150653561380 : F), 88501)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow928 (rho : Nat -> F) : Prop :=
    (relationLc717 rho) * (relationLc718 rho) = ((1 : F) * rho 89427)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer.Seg106
