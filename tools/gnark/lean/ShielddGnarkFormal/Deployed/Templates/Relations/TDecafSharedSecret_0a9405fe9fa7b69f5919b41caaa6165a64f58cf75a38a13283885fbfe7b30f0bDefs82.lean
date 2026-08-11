import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs81

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationRow3441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3447) * ((2 : F) + (1 : F) * rho 3444 + (-1 : F) * rho 3445) = ((1 : F) * rho 3444 + (1 : F) * rho 3445)

def relationRow3442 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3448)

def relationRow3443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104) * ((1 : F) * rho 1818 + (1 : F) * rho 3448) = ((1 : F) * rho 3449)

def relationRow3444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 3450)

def relationRow3445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 3451)

def relationRow3446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 3451) = ((1 : F) * rho 3452)

def relationRow3447 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 3453)

def relationRow3448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3446 + (1 : F) * rho 3447) * ((1 : F) + (1 : F) * rho 3449 + (1 : F) * rho 3450 + (1 : F) * rho 3452 + (1 : F) * rho 3453) = ((1 : F) * rho 3454)

def relationRow3449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3446) * ((1 : F) + (1 : F) * rho 3452 + (1 : F) * rho 3453) = ((1 : F) * rho 3455)

def relationRow3450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3447) * ((1 : F) * rho 3449 + (1 : F) * rho 3450) = ((1 : F) * rho 3456)

def relationRow3451 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3455) * ((1 : F) * rho 3456) = ((1 : F) * rho 3457)

def relationRow3452 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3458) * ((1 : F) + (1 : F) * rho 3457) = ((1 : F) * rho 3455 + (1 : F) * rho 3456)

def relationRow3453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3459) * ((1 : F) + (-1 : F) * rho 3457) = ((1 : F) * rho 3454 + (-1 : F) * rho 3455 + (-1 : F) * rho 3456)

def relationRow3454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3458) * ((1 : F) * rho 3459) = ((1 : F) * rho 3460)

def relationRow3455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3458) * ((1 : F) * rho 3458) = ((1 : F) * rho 3461)

def relationRow3456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3459) * ((1 : F) * rho 3459) = ((1 : F) * rho 3462)

def relationRow3457 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3463) * ((-1 : F) * rho 3461 + (1 : F) * rho 3462) = ((2 : F) * rho 3460)

def relationRow3458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3464) * ((2 : F) + (1 : F) * rho 3461 + (-1 : F) * rho 3462) = ((1 : F) * rho 3461 + (1 : F) * rho 3462)

def relationRow3459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3463) * ((1 : F) * rho 3464) = ((1 : F) * rho 3465)

def relationRow3460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3463) * ((1 : F) * rho 3463) = ((1 : F) * rho 3466)

def relationRow3461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3464) * ((1 : F) * rho 3464) = ((1 : F) * rho 3467)

def relationRow3462 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3468) * ((-1 : F) * rho 3466 + (1 : F) * rho 3467) = ((2 : F) * rho 3465)

def relationRow3463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3469) * ((2 : F) + (1 : F) * rho 3466 + (-1 : F) * rho 3467) = ((1 : F) * rho 3466 + (1 : F) * rho 3467)

def relationRow3464 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3470)

def relationRow3465 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102) * ((1 : F) * rho 1818 + (1 : F) * rho 3470) = ((1 : F) * rho 3471)

def relationRow3466 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 3472)

def relationRow3467 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 3473)

def relationRow3468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 3473) = ((1 : F) * rho 3474)

def relationRow3469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 101) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 3475)

def relationRow3470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3468 + (1 : F) * rho 3469) * ((1 : F) + (1 : F) * rho 3471 + (1 : F) * rho 3472 + (1 : F) * rho 3474 + (1 : F) * rho 3475) = ((1 : F) * rho 3476)

def relationRow3471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3468) * ((1 : F) + (1 : F) * rho 3474 + (1 : F) * rho 3475) = ((1 : F) * rho 3477)

def relationRow3472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3469) * ((1 : F) * rho 3471 + (1 : F) * rho 3472) = ((1 : F) * rho 3478)

def relationRow3473 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3477) * ((1 : F) * rho 3478) = ((1 : F) * rho 3479)

def relationRow3474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * ((1 : F) + (1 : F) * rho 3479) = ((1 : F) * rho 3477 + (1 : F) * rho 3478)

def relationRow3475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3481) * ((1 : F) + (-1 : F) * rho 3479) = ((1 : F) * rho 3476 + (-1 : F) * rho 3477 + (-1 : F) * rho 3478)

def relationRow3476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * ((1 : F) * rho 3481) = ((1 : F) * rho 3482)

def relationRow3477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3480) * ((1 : F) * rho 3480) = ((1 : F) * rho 3483)

def relationRow3478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3481) * ((1 : F) * rho 3481) = ((1 : F) * rho 3484)

def relationRow3479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3485) * ((-1 : F) * rho 3483 + (1 : F) * rho 3484) = ((2 : F) * rho 3482)

def relationRow3480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3486) * ((2 : F) + (1 : F) * rho 3483 + (-1 : F) * rho 3484) = ((1 : F) * rho 3483 + (1 : F) * rho 3484)

def relationRow3481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3485) * ((1 : F) * rho 3486) = ((1 : F) * rho 3487)

def relationRow3482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3485) * ((1 : F) * rho 3485) = ((1 : F) * rho 3488)

def relationRow3483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3486) * ((1 : F) * rho 3486) = ((1 : F) * rho 3489)

def relationRow3484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3490) * ((-1 : F) * rho 3488 + (1 : F) * rho 3489) = ((2 : F) * rho 3487)

def relationRow3485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3491) * ((2 : F) + (1 : F) * rho 3488 + (-1 : F) * rho 3489) = ((1 : F) * rho 3488 + (1 : F) * rho 3489)

def relationRow3486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3492)

def relationRow3487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100) * ((1 : F) * rho 1818 + (1 : F) * rho 3492) = ((1 : F) * rho 3493)

def relationRow3488 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 3494)

def relationRow3489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 3495)

def relationRow3490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 100) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 3495) = ((1 : F) * rho 3496)

def relationRow3491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 99) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 3497)

def relationRow3492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3490 + (1 : F) * rho 3491) * ((1 : F) + (1 : F) * rho 3493 + (1 : F) * rho 3494 + (1 : F) * rho 3496 + (1 : F) * rho 3497) = ((1 : F) * rho 3498)

def relationRow3493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3490) * ((1 : F) + (1 : F) * rho 3496 + (1 : F) * rho 3497) = ((1 : F) * rho 3499)

def relationRow3494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3491) * ((1 : F) * rho 3493 + (1 : F) * rho 3494) = ((1 : F) * rho 3500)

def relationRow3495 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3499) * ((1 : F) * rho 3500) = ((1 : F) * rho 3501)

def relationRow3496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3502) * ((1 : F) + (1 : F) * rho 3501) = ((1 : F) * rho 3499 + (1 : F) * rho 3500)

def relationRow3497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3503) * ((1 : F) + (-1 : F) * rho 3501) = ((1 : F) * rho 3498 + (-1 : F) * rho 3499 + (-1 : F) * rho 3500)

def relationRow3498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3502) * ((1 : F) * rho 3503) = ((1 : F) * rho 3504)

def relationRow3499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3502) * ((1 : F) * rho 3502) = ((1 : F) * rho 3505)

def relationRow3500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3503) * ((1 : F) * rho 3503) = ((1 : F) * rho 3506)

def relationRow3501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3507) * ((-1 : F) * rho 3505 + (1 : F) * rho 3506) = ((2 : F) * rho 3504)

def relationRow3502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3508) * ((2 : F) + (1 : F) * rho 3505 + (-1 : F) * rho 3506) = ((1 : F) * rho 3505 + (1 : F) * rho 3506)

def relationRow3503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3507) * ((1 : F) * rho 3508) = ((1 : F) * rho 3509)

def relationRow3504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3507) * ((1 : F) * rho 3507) = ((1 : F) * rho 3510)

def relationRow3505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3508) * ((1 : F) * rho 3508) = ((1 : F) * rho 3511)

def relationRow3506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3512) * ((-1 : F) * rho 3510 + (1 : F) * rho 3511) = ((2 : F) * rho 3509)

def relationRow3507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513) * ((2 : F) + (1 : F) * rho 3510 + (-1 : F) * rho 3511) = ((1 : F) * rho 3510 + (1 : F) * rho 3511)

def relationRow3508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3514)

def relationRow3509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98) * ((1 : F) * rho 1818 + (1 : F) * rho 3514) = ((1 : F) * rho 3515)

def relationRow3510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 3516)

def relationRow3511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 3517)

def relationRow3512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 98) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 3517) = ((1 : F) * rho 3518)

def relationRow3513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 97) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 3519)

def relationRow3514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3512 + (1 : F) * rho 3513) * ((1 : F) + (1 : F) * rho 3515 + (1 : F) * rho 3516 + (1 : F) * rho 3518 + (1 : F) * rho 3519) = ((1 : F) * rho 3520)

def relationRow3515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3512) * ((1 : F) + (1 : F) * rho 3518 + (1 : F) * rho 3519) = ((1 : F) * rho 3521)

def relationRow3516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3513) * ((1 : F) * rho 3515 + (1 : F) * rho 3516) = ((1 : F) * rho 3522)

def relationRow3517 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3521) * ((1 : F) * rho 3522) = ((1 : F) * rho 3523)

def relationRow3518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3524) * ((1 : F) + (1 : F) * rho 3523) = ((1 : F) * rho 3521 + (1 : F) * rho 3522)

def relationRow3519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3525) * ((1 : F) + (-1 : F) * rho 3523) = ((1 : F) * rho 3520 + (-1 : F) * rho 3521 + (-1 : F) * rho 3522)

def relationRow3520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3524) * ((1 : F) * rho 3525) = ((1 : F) * rho 3526)

def relationRow3521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3524) * ((1 : F) * rho 3524) = ((1 : F) * rho 3527)

def relationRow3522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3525) * ((1 : F) * rho 3525) = ((1 : F) * rho 3528)

def relationRow3523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3529) * ((-1 : F) * rho 3527 + (1 : F) * rho 3528) = ((2 : F) * rho 3526)

def relationRow3524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3530) * ((2 : F) + (1 : F) * rho 3527 + (-1 : F) * rho 3528) = ((1 : F) * rho 3527 + (1 : F) * rho 3528)

def relationRow3525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3529) * ((1 : F) * rho 3530) = ((1 : F) * rho 3531)

def relationRow3526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3529) * ((1 : F) * rho 3529) = ((1 : F) * rho 3532)

def relationRow3527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3530) * ((1 : F) * rho 3530) = ((1 : F) * rho 3533)

def relationRow3528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3534) * ((-1 : F) * rho 3532 + (1 : F) * rho 3533) = ((2 : F) * rho 3531)

def relationRow3529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3535) * ((2 : F) + (1 : F) * rho 3532 + (-1 : F) * rho 3533) = ((1 : F) * rho 3532 + (1 : F) * rho 3533)

def relationRow3530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 3536)

def relationRow3531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96) * ((1 : F) * rho 1818 + (1 : F) * rho 3536) = ((1 : F) * rho 3537)

def relationRow3532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 3538)

def relationRow3533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 3539)

def relationRow3534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 96) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 3539) = ((1 : F) * rho 3540)

def relationRow3535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 95) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 3541)

def relationRow3536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3534 + (1 : F) * rho 3535) * ((1 : F) + (1 : F) * rho 3537 + (1 : F) * rho 3538 + (1 : F) * rho 3540 + (1 : F) * rho 3541) = ((1 : F) * rho 3542)

def relationRow3537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3534) * ((1 : F) + (1 : F) * rho 3540 + (1 : F) * rho 3541) = ((1 : F) * rho 3543)

def relationRow3538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3535) * ((1 : F) * rho 3537 + (1 : F) * rho 3538) = ((1 : F) * rho 3544)

def relationRow3539 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3543) * ((1 : F) * rho 3544) = ((1 : F) * rho 3545)

def relationRow3540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546) * ((1 : F) + (1 : F) * rho 3545) = ((1 : F) * rho 3543 + (1 : F) * rho 3544)

def relationRow3541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3547) * ((1 : F) + (-1 : F) * rho 3545) = ((1 : F) * rho 3542 + (-1 : F) * rho 3543 + (-1 : F) * rho 3544)

def relationRow3542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546) * ((1 : F) * rho 3547) = ((1 : F) * rho 3548)

def relationRow3543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3546) * ((1 : F) * rho 3546) = ((1 : F) * rho 3549)

def relationRow3544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3547) * ((1 : F) * rho 3547) = ((1 : F) * rho 3550)

def relationRow3545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3551) * ((-1 : F) * rho 3549 + (1 : F) * rho 3550) = ((2 : F) * rho 3548)

def relationRow3546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * ((2 : F) + (1 : F) * rho 3549 + (-1 : F) * rho 3550) = ((1 : F) * rho 3549 + (1 : F) * rho 3550)

def relationRow3547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3551) * ((1 : F) * rho 3552) = ((1 : F) * rho 3553)

def relationRow3548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3551) * ((1 : F) * rho 3551) = ((1 : F) * rho 3554)

def relationRow3549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3552) * ((1 : F) * rho 3552) = ((1 : F) * rho 3555)

def relationRow3550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3556) * ((-1 : F) * rho 3554 + (1 : F) * rho 3555) = ((2 : F) * rho 3553)

def relationRow3551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3557) * ((2 : F) + (1 : F) * rho 3554 + (-1 : F) * rho 3555) = ((1 : F) * rho 3554 + (1 : F) * rho 3555)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
