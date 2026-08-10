import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs109

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationRow6390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6398) * ((-1 : F) * rho 6396 + (1 : F) * rho 6397) = ((2 : F) * rho 6395)

def relationRow6391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6399) * ((2 : F) + (1 : F) * rho 6396 + (-1 : F) * rho 6397) = ((1 : F) * rho 6396 + (1 : F) * rho 6397)

def relationRow6392 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6398) * ((1 : F) * rho 6399) = ((1 : F) * rho 6400)

def relationRow6393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6398) * ((1 : F) * rho 6398) = ((1 : F) * rho 6401)

def relationRow6394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6399) * ((1 : F) * rho 6399) = ((1 : F) * rho 6402)

def relationRow6395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6403) * ((-1 : F) * rho 6401 + (1 : F) * rho 6402) = ((2 : F) * rho 6400)

def relationRow6396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6404) * ((2 : F) + (1 : F) * rho 6401 + (-1 : F) * rho 6402) = ((1 : F) * rho 6401 + (1 : F) * rho 6402)

def relationRow6397 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6405)

def relationRow6398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 85) * ((1 : F) * rho 4577 + (1 : F) * rho 6405) = ((1 : F) * rho 6406)

def relationRow6399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6407)

def relationRow6400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6408)

def relationRow6401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 85) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6408) = ((1 : F) * rho 6409)

def relationRow6402 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6410)

def relationRow6403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6403 + (1 : F) * rho 6404) * ((1 : F) + (1 : F) * rho 6406 + (1 : F) * rho 6407 + (1 : F) * rho 6409 + (1 : F) * rho 6410) = ((1 : F) * rho 6411)

def relationRow6404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6403) * ((1 : F) + (1 : F) * rho 6409 + (1 : F) * rho 6410) = ((1 : F) * rho 6412)

def relationRow6405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6404) * ((1 : F) * rho 6406 + (1 : F) * rho 6407) = ((1 : F) * rho 6413)

def relationRow6406 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6412) * ((1 : F) * rho 6413) = ((1 : F) * rho 6414)

def relationRow6407 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6415) * ((1 : F) + (1 : F) * rho 6414) = ((1 : F) * rho 6412 + (1 : F) * rho 6413)

def relationRow6408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6416) * ((1 : F) + (-1 : F) * rho 6414) = ((1 : F) * rho 6411 + (-1 : F) * rho 6412 + (-1 : F) * rho 6413)

def relationRow6409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6415) * ((1 : F) * rho 6416) = ((1 : F) * rho 6417)

def relationRow6410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6415) * ((1 : F) * rho 6415) = ((1 : F) * rho 6418)

def relationRow6411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6416) * ((1 : F) * rho 6416) = ((1 : F) * rho 6419)

def relationRow6412 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6420) * ((-1 : F) * rho 6418 + (1 : F) * rho 6419) = ((2 : F) * rho 6417)

def relationRow6413 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6421) * ((2 : F) + (1 : F) * rho 6418 + (-1 : F) * rho 6419) = ((1 : F) * rho 6418 + (1 : F) * rho 6419)

def relationRow6414 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6420) * ((1 : F) * rho 6421) = ((1 : F) * rho 6422)

def relationRow6415 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6420) * ((1 : F) * rho 6420) = ((1 : F) * rho 6423)

def relationRow6416 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6421) * ((1 : F) * rho 6421) = ((1 : F) * rho 6424)

def relationRow6417 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6425) * ((-1 : F) * rho 6423 + (1 : F) * rho 6424) = ((2 : F) * rho 6422)

def relationRow6418 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6426) * ((2 : F) + (1 : F) * rho 6423 + (-1 : F) * rho 6424) = ((1 : F) * rho 6423 + (1 : F) * rho 6424)

def relationRow6419 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 82) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6427)

def relationRow6420 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 83) * ((1 : F) * rho 4577 + (1 : F) * rho 6427) = ((1 : F) * rho 6428)

def relationRow6421 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 82) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6429)

def relationRow6422 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 82) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6430)

def relationRow6423 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 83) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6430) = ((1 : F) * rho 6431)

def relationRow6424 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 82) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6432)

def relationRow6425 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6425 + (1 : F) * rho 6426) * ((1 : F) + (1 : F) * rho 6428 + (1 : F) * rho 6429 + (1 : F) * rho 6431 + (1 : F) * rho 6432) = ((1 : F) * rho 6433)

def relationRow6426 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6425) * ((1 : F) + (1 : F) * rho 6431 + (1 : F) * rho 6432) = ((1 : F) * rho 6434)

def relationRow6427 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6426) * ((1 : F) * rho 6428 + (1 : F) * rho 6429) = ((1 : F) * rho 6435)

def relationRow6428 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6434) * ((1 : F) * rho 6435) = ((1 : F) * rho 6436)

def relationRow6429 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6437) * ((1 : F) + (1 : F) * rho 6436) = ((1 : F) * rho 6434 + (1 : F) * rho 6435)

def relationRow6430 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6438) * ((1 : F) + (-1 : F) * rho 6436) = ((1 : F) * rho 6433 + (-1 : F) * rho 6434 + (-1 : F) * rho 6435)

def relationRow6431 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6437) * ((1 : F) * rho 6438) = ((1 : F) * rho 6439)

def relationRow6432 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6437) * ((1 : F) * rho 6437) = ((1 : F) * rho 6440)

def relationRow6433 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6438) * ((1 : F) * rho 6438) = ((1 : F) * rho 6441)

def relationRow6434 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6442) * ((-1 : F) * rho 6440 + (1 : F) * rho 6441) = ((2 : F) * rho 6439)

def relationRow6435 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6443) * ((2 : F) + (1 : F) * rho 6440 + (-1 : F) * rho 6441) = ((1 : F) * rho 6440 + (1 : F) * rho 6441)

def relationRow6436 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6442) * ((1 : F) * rho 6443) = ((1 : F) * rho 6444)

def relationRow6437 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6442) * ((1 : F) * rho 6442) = ((1 : F) * rho 6445)

def relationRow6438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6443) * ((1 : F) * rho 6443) = ((1 : F) * rho 6446)

def relationRow6439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6447) * ((-1 : F) * rho 6445 + (1 : F) * rho 6446) = ((2 : F) * rho 6444)

def relationRow6440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6448) * ((2 : F) + (1 : F) * rho 6445 + (-1 : F) * rho 6446) = ((1 : F) * rho 6445 + (1 : F) * rho 6446)

def relationRow6441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6449)

def relationRow6442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81) * ((1 : F) * rho 4577 + (1 : F) * rho 6449) = ((1 : F) * rho 6450)

def relationRow6443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6451)

def relationRow6444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6452)

def relationRow6445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6452) = ((1 : F) * rho 6453)

def relationRow6446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 80) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6454)

def relationRow6447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6447 + (1 : F) * rho 6448) * ((1 : F) + (1 : F) * rho 6450 + (1 : F) * rho 6451 + (1 : F) * rho 6453 + (1 : F) * rho 6454) = ((1 : F) * rho 6455)

def relationRow6448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6447) * ((1 : F) + (1 : F) * rho 6453 + (1 : F) * rho 6454) = ((1 : F) * rho 6456)

def relationRow6449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6448) * ((1 : F) * rho 6450 + (1 : F) * rho 6451) = ((1 : F) * rho 6457)

def relationRow6450 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6456) * ((1 : F) * rho 6457) = ((1 : F) * rho 6458)

def relationRow6451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6459) * ((1 : F) + (1 : F) * rho 6458) = ((1 : F) * rho 6456 + (1 : F) * rho 6457)

def relationRow6452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6460) * ((1 : F) + (-1 : F) * rho 6458) = ((1 : F) * rho 6455 + (-1 : F) * rho 6456 + (-1 : F) * rho 6457)

def relationRow6453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6459) * ((1 : F) * rho 6460) = ((1 : F) * rho 6461)

def relationRow6454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6459) * ((1 : F) * rho 6459) = ((1 : F) * rho 6462)

def relationRow6455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6460) * ((1 : F) * rho 6460) = ((1 : F) * rho 6463)

def relationRow6456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6464) * ((-1 : F) * rho 6462 + (1 : F) * rho 6463) = ((2 : F) * rho 6461)

def relationRow6457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6465) * ((2 : F) + (1 : F) * rho 6462 + (-1 : F) * rho 6463) = ((1 : F) * rho 6462 + (1 : F) * rho 6463)

def relationRow6458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6464) * ((1 : F) * rho 6465) = ((1 : F) * rho 6466)

def relationRow6459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6464) * ((1 : F) * rho 6464) = ((1 : F) * rho 6467)

def relationRow6460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6465) * ((1 : F) * rho 6465) = ((1 : F) * rho 6468)

def relationRow6461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6469) * ((-1 : F) * rho 6467 + (1 : F) * rho 6468) = ((2 : F) * rho 6466)

def relationRow6462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6470) * ((2 : F) + (1 : F) * rho 6467 + (-1 : F) * rho 6468) = ((1 : F) * rho 6467 + (1 : F) * rho 6468)

def relationRow6463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6471)

def relationRow6464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79) * ((1 : F) * rho 4577 + (1 : F) * rho 6471) = ((1 : F) * rho 6472)

def relationRow6465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6473)

def relationRow6466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6474)

def relationRow6467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 79) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6474) = ((1 : F) * rho 6475)

def relationRow6468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 78) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6476)

def relationRow6469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6469 + (1 : F) * rho 6470) * ((1 : F) + (1 : F) * rho 6472 + (1 : F) * rho 6473 + (1 : F) * rho 6475 + (1 : F) * rho 6476) = ((1 : F) * rho 6477)

def relationRow6470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6469) * ((1 : F) + (1 : F) * rho 6475 + (1 : F) * rho 6476) = ((1 : F) * rho 6478)

def relationRow6471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6470) * ((1 : F) * rho 6472 + (1 : F) * rho 6473) = ((1 : F) * rho 6479)

def relationRow6472 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 6478) * ((1 : F) * rho 6479) = ((1 : F) * rho 6480)

def relationRow6473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6481) * ((1 : F) + (1 : F) * rho 6480) = ((1 : F) * rho 6478 + (1 : F) * rho 6479)

def relationRow6474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6482) * ((1 : F) + (-1 : F) * rho 6480) = ((1 : F) * rho 6477 + (-1 : F) * rho 6478 + (-1 : F) * rho 6479)

def relationRow6475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6481) * ((1 : F) * rho 6482) = ((1 : F) * rho 6483)

def relationRow6476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6481) * ((1 : F) * rho 6481) = ((1 : F) * rho 6484)

def relationRow6477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6482) * ((1 : F) * rho 6482) = ((1 : F) * rho 6485)

def relationRow6478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6486) * ((-1 : F) * rho 6484 + (1 : F) * rho 6485) = ((2 : F) * rho 6483)

def relationRow6479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6487) * ((2 : F) + (1 : F) * rho 6484 + (-1 : F) * rho 6485) = ((1 : F) * rho 6484 + (1 : F) * rho 6485)

def relationRow6480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6486) * ((1 : F) * rho 6487) = ((1 : F) * rho 6488)

def relationRow6481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6486) * ((1 : F) * rho 6486) = ((1 : F) * rho 6489)

def relationRow6482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6487) * ((1 : F) * rho 6487) = ((1 : F) * rho 6490)

def relationRow6483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6491) * ((-1 : F) * rho 6489 + (1 : F) * rho 6490) = ((2 : F) * rho 6488)

def relationRow6484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6492) * ((2 : F) + (1 : F) * rho 6489 + (-1 : F) * rho 6490) = ((1 : F) * rho 6489 + (1 : F) * rho 6490)

def relationRow6485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 76) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 6493)

def relationRow6486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77) * ((1 : F) * rho 4577 + (1 : F) * rho 6493) = ((1 : F) * rho 6494)

def relationRow6487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 76) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 6495)

def relationRow6488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 76) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 6496)

def relationRow6489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 77) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 6496) = ((1 : F) * rho 6497)

def relationRow6490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 76) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 6498)

def relationRow6491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 6491 + (1 : F) * rho 6492) * ((1 : F) + (1 : F) * rho 6494 + (1 : F) * rho 6495 + (1 : F) * rho 6497 + (1 : F) * rho 6498) = ((1 : F) * rho 6499)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
