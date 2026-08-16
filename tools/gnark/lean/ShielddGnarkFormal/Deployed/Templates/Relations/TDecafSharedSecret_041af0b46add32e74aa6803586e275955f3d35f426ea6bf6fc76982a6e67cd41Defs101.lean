import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs100

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationRow5465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5470) * ((1 : F) * rho 5470) = ((1 : F) * rho 5473)

def relationRow5466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5474) * ((-1 : F) * rho 5472 + (1 : F) * rho 5473) = ((2 : F) * rho 5471)

def relationRow5467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5475) * ((2 : F) + (1 : F) * rho 5472 + (-1 : F) * rho 5473) = ((1 : F) * rho 5472 + (1 : F) * rho 5473)

def relationRow5468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5474) * ((1 : F) * rho 5475) = ((1 : F) * rho 5476)

def relationRow5469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5474) * ((1 : F) * rho 5474) = ((1 : F) * rho 5477)

def relationRow5470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5475) * ((1 : F) * rho 5475) = ((1 : F) * rho 5478)

def relationRow5471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5479) * ((-1 : F) * rho 5477 + (1 : F) * rho 5478) = ((2 : F) * rho 5476)

def relationRow5472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5480) * ((2 : F) + (1 : F) * rho 5477 + (-1 : F) * rho 5478) = ((1 : F) * rho 5477 + (1 : F) * rho 5478)

def relationRow5473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 168) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5481)

def relationRow5474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 169) * ((1 : F) * rho 4577 + (1 : F) * rho 5481) = ((1 : F) * rho 5482)

def relationRow5475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 168) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5483)

def relationRow5476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 168) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5484)

def relationRow5477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 169) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5484) = ((1 : F) * rho 5485)

def relationRow5478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 168) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5486)

def relationRow5479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5479 + (1 : F) * rho 5480) * ((1 : F) + (1 : F) * rho 5482 + (1 : F) * rho 5483 + (1 : F) * rho 5485 + (1 : F) * rho 5486) = ((1 : F) * rho 5487)

def relationRow5480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5479) * ((1 : F) + (1 : F) * rho 5485 + (1 : F) * rho 5486) = ((1 : F) * rho 5488)

def relationRow5481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5480) * ((1 : F) * rho 5482 + (1 : F) * rho 5483) = ((1 : F) * rho 5489)

def relationRow5482 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5488) * ((1 : F) * rho 5489) = ((1 : F) * rho 5490)

def relationRow5483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5491) * ((1 : F) + (1 : F) * rho 5490) = ((1 : F) * rho 5488 + (1 : F) * rho 5489)

def relationRow5484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5492) * ((1 : F) + (-1 : F) * rho 5490) = ((1 : F) * rho 5487 + (-1 : F) * rho 5488 + (-1 : F) * rho 5489)

def relationRow5485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5491) * ((1 : F) * rho 5492) = ((1 : F) * rho 5493)

def relationRow5486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5491) * ((1 : F) * rho 5491) = ((1 : F) * rho 5494)

def relationRow5487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5492) * ((1 : F) * rho 5492) = ((1 : F) * rho 5495)

def relationRow5488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5496) * ((-1 : F) * rho 5494 + (1 : F) * rho 5495) = ((2 : F) * rho 5493)

def relationRow5489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5497) * ((2 : F) + (1 : F) * rho 5494 + (-1 : F) * rho 5495) = ((1 : F) * rho 5494 + (1 : F) * rho 5495)

def relationRow5490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5496) * ((1 : F) * rho 5497) = ((1 : F) * rho 5498)

def relationRow5491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5496) * ((1 : F) * rho 5496) = ((1 : F) * rho 5499)

def relationRow5492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5497) * ((1 : F) * rho 5497) = ((1 : F) * rho 5500)

def relationRow5493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5501) * ((-1 : F) * rho 5499 + (1 : F) * rho 5500) = ((2 : F) * rho 5498)

def relationRow5494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5502) * ((2 : F) + (1 : F) * rho 5499 + (-1 : F) * rho 5500) = ((1 : F) * rho 5499 + (1 : F) * rho 5500)

def relationRow5495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 166) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5503)

def relationRow5496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 167) * ((1 : F) * rho 4577 + (1 : F) * rho 5503) = ((1 : F) * rho 5504)

def relationRow5497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 166) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5505)

def relationRow5498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 166) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5506)

def relationRow5499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 167) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5506) = ((1 : F) * rho 5507)

def relationRow5500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 166) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5508)

def relationRow5501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5501 + (1 : F) * rho 5502) * ((1 : F) + (1 : F) * rho 5504 + (1 : F) * rho 5505 + (1 : F) * rho 5507 + (1 : F) * rho 5508) = ((1 : F) * rho 5509)

def relationRow5502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5501) * ((1 : F) + (1 : F) * rho 5507 + (1 : F) * rho 5508) = ((1 : F) * rho 5510)

def relationRow5503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5502) * ((1 : F) * rho 5504 + (1 : F) * rho 5505) = ((1 : F) * rho 5511)

def relationRow5504 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5510) * ((1 : F) * rho 5511) = ((1 : F) * rho 5512)

def relationRow5505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5513) * ((1 : F) + (1 : F) * rho 5512) = ((1 : F) * rho 5510 + (1 : F) * rho 5511)

def relationRow5506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5514) * ((1 : F) + (-1 : F) * rho 5512) = ((1 : F) * rho 5509 + (-1 : F) * rho 5510 + (-1 : F) * rho 5511)

def relationRow5507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5513) * ((1 : F) * rho 5514) = ((1 : F) * rho 5515)

def relationRow5508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5513) * ((1 : F) * rho 5513) = ((1 : F) * rho 5516)

def relationRow5509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5514) * ((1 : F) * rho 5514) = ((1 : F) * rho 5517)

def relationRow5510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5518) * ((-1 : F) * rho 5516 + (1 : F) * rho 5517) = ((2 : F) * rho 5515)

def relationRow5511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5519) * ((2 : F) + (1 : F) * rho 5516 + (-1 : F) * rho 5517) = ((1 : F) * rho 5516 + (1 : F) * rho 5517)

def relationRow5512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5518) * ((1 : F) * rho 5519) = ((1 : F) * rho 5520)

def relationRow5513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5518) * ((1 : F) * rho 5518) = ((1 : F) * rho 5521)

def relationRow5514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5519) * ((1 : F) * rho 5519) = ((1 : F) * rho 5522)

def relationRow5515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5523) * ((-1 : F) * rho 5521 + (1 : F) * rho 5522) = ((2 : F) * rho 5520)

def relationRow5516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5524) * ((2 : F) + (1 : F) * rho 5521 + (-1 : F) * rho 5522) = ((1 : F) * rho 5521 + (1 : F) * rho 5522)

def relationRow5517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 164) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5525)

def relationRow5518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 165) * ((1 : F) * rho 4577 + (1 : F) * rho 5525) = ((1 : F) * rho 5526)

def relationRow5519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 164) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5527)

def relationRow5520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 164) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5528)

def relationRow5521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 165) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5528) = ((1 : F) * rho 5529)

def relationRow5522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 164) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5530)

def relationRow5523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5523 + (1 : F) * rho 5524) * ((1 : F) + (1 : F) * rho 5526 + (1 : F) * rho 5527 + (1 : F) * rho 5529 + (1 : F) * rho 5530) = ((1 : F) * rho 5531)

def relationRow5524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5523) * ((1 : F) + (1 : F) * rho 5529 + (1 : F) * rho 5530) = ((1 : F) * rho 5532)

def relationRow5525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5524) * ((1 : F) * rho 5526 + (1 : F) * rho 5527) = ((1 : F) * rho 5533)

def relationRow5526 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5532) * ((1 : F) * rho 5533) = ((1 : F) * rho 5534)

def relationRow5527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5535) * ((1 : F) + (1 : F) * rho 5534) = ((1 : F) * rho 5532 + (1 : F) * rho 5533)

def relationRow5528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5536) * ((1 : F) + (-1 : F) * rho 5534) = ((1 : F) * rho 5531 + (-1 : F) * rho 5532 + (-1 : F) * rho 5533)

def relationRow5529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5535) * ((1 : F) * rho 5536) = ((1 : F) * rho 5537)

def relationRow5530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5535) * ((1 : F) * rho 5535) = ((1 : F) * rho 5538)

def relationRow5531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5536) * ((1 : F) * rho 5536) = ((1 : F) * rho 5539)

def relationRow5532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5540) * ((-1 : F) * rho 5538 + (1 : F) * rho 5539) = ((2 : F) * rho 5537)

def relationRow5533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5541) * ((2 : F) + (1 : F) * rho 5538 + (-1 : F) * rho 5539) = ((1 : F) * rho 5538 + (1 : F) * rho 5539)

def relationRow5534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5540) * ((1 : F) * rho 5541) = ((1 : F) * rho 5542)

def relationRow5535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5540) * ((1 : F) * rho 5540) = ((1 : F) * rho 5543)

def relationRow5536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5541) * ((1 : F) * rho 5541) = ((1 : F) * rho 5544)

def relationRow5537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5545) * ((-1 : F) * rho 5543 + (1 : F) * rho 5544) = ((2 : F) * rho 5542)

def relationRow5538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5546) * ((2 : F) + (1 : F) * rho 5543 + (-1 : F) * rho 5544) = ((1 : F) * rho 5543 + (1 : F) * rho 5544)

def relationRow5539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 162) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5547)

def relationRow5540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 163) * ((1 : F) * rho 4577 + (1 : F) * rho 5547) = ((1 : F) * rho 5548)

def relationRow5541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 162) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5549)

def relationRow5542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 162) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5550)

def relationRow5543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 163) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5550) = ((1 : F) * rho 5551)

def relationRow5544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 162) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5552)

def relationRow5545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5545 + (1 : F) * rho 5546) * ((1 : F) + (1 : F) * rho 5548 + (1 : F) * rho 5549 + (1 : F) * rho 5551 + (1 : F) * rho 5552) = ((1 : F) * rho 5553)

def relationRow5546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5545) * ((1 : F) + (1 : F) * rho 5551 + (1 : F) * rho 5552) = ((1 : F) * rho 5554)

def relationRow5547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5546) * ((1 : F) * rho 5548 + (1 : F) * rho 5549) = ((1 : F) * rho 5555)

def relationRow5548 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5554) * ((1 : F) * rho 5555) = ((1 : F) * rho 5556)

def relationRow5549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5557) * ((1 : F) + (1 : F) * rho 5556) = ((1 : F) * rho 5554 + (1 : F) * rho 5555)

def relationRow5550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5558) * ((1 : F) + (-1 : F) * rho 5556) = ((1 : F) * rho 5553 + (-1 : F) * rho 5554 + (-1 : F) * rho 5555)

def relationRow5551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5557) * ((1 : F) * rho 5558) = ((1 : F) * rho 5559)

def relationRow5552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5557) * ((1 : F) * rho 5557) = ((1 : F) * rho 5560)

def relationRow5553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5558) * ((1 : F) * rho 5558) = ((1 : F) * rho 5561)

def relationRow5554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5562) * ((-1 : F) * rho 5560 + (1 : F) * rho 5561) = ((2 : F) * rho 5559)

def relationRow5555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5563) * ((2 : F) + (1 : F) * rho 5560 + (-1 : F) * rho 5561) = ((1 : F) * rho 5560 + (1 : F) * rho 5561)

def relationRow5556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5562) * ((1 : F) * rho 5563) = ((1 : F) * rho 5564)

def relationRow5557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5562) * ((1 : F) * rho 5562) = ((1 : F) * rho 5565)

def relationRow5558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5563) * ((1 : F) * rho 5563) = ((1 : F) * rho 5566)

def relationRow5559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5567) * ((-1 : F) * rho 5565 + (1 : F) * rho 5566) = ((2 : F) * rho 5564)

def relationRow5560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5568) * ((2 : F) + (1 : F) * rho 5565 + (-1 : F) * rho 5566) = ((1 : F) * rho 5565 + (1 : F) * rho 5566)

def relationRow5561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 160) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5569)

def relationRow5562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 161) * ((1 : F) * rho 4577 + (1 : F) * rho 5569) = ((1 : F) * rho 5570)

def relationRow5563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 160) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5571)

def relationRow5564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 160) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5572)

def relationRow5565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 161) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5572) = ((1 : F) * rho 5573)

def relationRow5566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 160) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5574)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
