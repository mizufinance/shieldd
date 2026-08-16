import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1Defs23

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1

variable {F : Type} [CommRing F]

def relationRow2468 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2471) * ((1 : F) + (-1 : F) * rho 2469) = ((1 : F) * rho 2466 + (-1 : F) * rho 2467 + (-1 : F) * rho 2468)

def relationRow2469 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2470) * ((1 : F) * rho 2471) = ((1 : F) * rho 2472)

def relationRow2470 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2470) * ((1 : F) * rho 2470) = ((1 : F) * rho 2473)

def relationRow2471 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2471) * ((1 : F) * rho 2471) = ((1 : F) * rho 2474)

def relationRow2472 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2475) * ((-1 : F) * rho 2473 + (1 : F) * rho 2474) = ((2 : F) * rho 2472)

def relationRow2473 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2476) * ((2 : F) + (1 : F) * rho 2473 + (-1 : F) * rho 2474) = ((1 : F) * rho 2473 + (1 : F) * rho 2474)

def relationRow2474 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2475) * ((1 : F) * rho 2476) = ((1 : F) * rho 2477)

def relationRow2475 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2475) * ((1 : F) * rho 2475) = ((1 : F) * rho 2478)

def relationRow2476 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2476) * ((1 : F) * rho 2476) = ((1 : F) * rho 2479)

def relationRow2477 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2480) * ((-1 : F) * rho 2478 + (1 : F) * rho 2479) = ((2 : F) * rho 2477)

def relationRow2478 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2481) * ((2 : F) + (1 : F) * rho 2478 + (-1 : F) * rho 2479) = ((1 : F) * rho 2478 + (1 : F) * rho 2479)

def relationRow2479 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2482)

def relationRow2480 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * ((1 : F) * rho 258 + (1 : F) * rho 2482) = ((1 : F) * rho 2483)

def relationRow2481 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2484)

def relationRow2482 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2485)

def relationRow2483 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2485) = ((1 : F) * rho 2486)

def relationRow2484 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 254) = ((1 : F) * rho 2487)

def relationRow2485 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2480 + (1 : F) * rho 2481) * ((1 : F) + (1 : F) * rho 2483 + (1 : F) * rho 2484 + (1 : F) * rho 2486 + (1 : F) * rho 2487) = ((1 : F) * rho 2488)

def relationRow2486 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2480) * ((1 : F) + (1 : F) * rho 2486 + (1 : F) * rho 2487) = ((1 : F) * rho 2489)

def relationRow2487 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2481) * ((1 : F) * rho 2483 + (1 : F) * rho 2484) = ((1 : F) * rho 2490)

def relationRow2488 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2489) * ((1 : F) * rho 2490) = ((1 : F) * rho 2491)

def relationRow2489 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2492) * ((1 : F) + (1 : F) * rho 2491) = ((1 : F) * rho 2489 + (1 : F) * rho 2490)

def relationRow2490 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2493) * ((1 : F) + (-1 : F) * rho 2491) = ((1 : F) * rho 2488 + (-1 : F) * rho 2489 + (-1 : F) * rho 2490)

def relationRow2491 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2492) * ((1 : F) * rho 2493) = ((1 : F) * rho 2494)

def relationRow2492 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2492) * ((1 : F) * rho 2492) = ((1 : F) * rho 2495)

def relationRow2493 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2493) * ((1 : F) * rho 2493) = ((1 : F) * rho 2496)

def relationRow2494 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2497) * ((-1 : F) * rho 2495 + (1 : F) * rho 2496) = ((2 : F) * rho 2494)

def relationRow2495 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2498) * ((2 : F) + (1 : F) * rho 2495 + (-1 : F) * rho 2496) = ((1 : F) * rho 2495 + (1 : F) * rho 2496)

def relationRow2496 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2497) * ((1 : F) * rho 2498) = ((1 : F) * rho 2499)

def relationRow2497 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2497) * ((1 : F) * rho 2497) = ((1 : F) * rho 2500)

def relationRow2498 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2498) * ((1 : F) * rho 2498) = ((1 : F) * rho 2501)

def relationRow2499 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2502) * ((-1 : F) * rho 2500 + (1 : F) * rho 2501) = ((2 : F) * rho 2499)

def relationRow2500 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2503) * ((2 : F) + (1 : F) * rho 2500 + (-1 : F) * rho 2501) = ((1 : F) * rho 2500 + (1 : F) * rho 2501)

def relationRow2501 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2504)

def relationRow2502 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * ((1 : F) * rho 258 + (1 : F) * rho 2504) = ((1 : F) * rho 2505)

def relationRow2503 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2506)

def relationRow2504 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2507)

def relationRow2505 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2507) = ((1 : F) * rho 2508)

def relationRow2506 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 254) = ((1 : F) * rho 2509)

def relationRow2507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2502 + (1 : F) * rho 2503) * ((1 : F) + (1 : F) * rho 2505 + (1 : F) * rho 2506 + (1 : F) * rho 2508 + (1 : F) * rho 2509) = ((1 : F) * rho 2510)

def relationRow2508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2502) * ((1 : F) + (1 : F) * rho 2508 + (1 : F) * rho 2509) = ((1 : F) * rho 2511)

def relationRow2509 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2503) * ((1 : F) * rho 2505 + (1 : F) * rho 2506) = ((1 : F) * rho 2512)

def relationRow2510 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2511) * ((1 : F) * rho 2512) = ((1 : F) * rho 2513)

def relationRow2511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2514) * ((1 : F) + (1 : F) * rho 2513) = ((1 : F) * rho 2511 + (1 : F) * rho 2512)

def relationRow2512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2515) * ((1 : F) + (-1 : F) * rho 2513) = ((1 : F) * rho 2510 + (-1 : F) * rho 2511 + (-1 : F) * rho 2512)

def relationRow2513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2514) * ((1 : F) * rho 2515) = ((1 : F) * rho 2516)

def relationRow2514 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2514) * ((1 : F) * rho 2514) = ((1 : F) * rho 2517)

def relationRow2515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2515) * ((1 : F) * rho 2515) = ((1 : F) * rho 2518)

def relationRow2516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2519) * ((-1 : F) * rho 2517 + (1 : F) * rho 2518) = ((2 : F) * rho 2516)

def relationRow2517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2520) * ((2 : F) + (1 : F) * rho 2517 + (-1 : F) * rho 2518) = ((1 : F) * rho 2517 + (1 : F) * rho 2518)

def relationRow2518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2519) * ((1 : F) * rho 2520) = ((1 : F) * rho 2521)

def relationRow2519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2519) * ((1 : F) * rho 2519) = ((1 : F) * rho 2522)

def relationRow2520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2520) * ((1 : F) * rho 2520) = ((1 : F) * rho 2523)

def relationRow2521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2524) * ((-1 : F) * rho 2522 + (1 : F) * rho 2523) = ((2 : F) * rho 2521)

def relationRow2522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2525) * ((2 : F) + (1 : F) * rho 2522 + (-1 : F) * rho 2523) = ((1 : F) * rho 2522 + (1 : F) * rho 2523)

def relationRow2523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2526)

def relationRow2524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * ((1 : F) * rho 258 + (1 : F) * rho 2526) = ((1 : F) * rho 2527)

def relationRow2525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2528)

def relationRow2526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2529)

def relationRow2527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2529) = ((1 : F) * rho 2530)

def relationRow2528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 254) = ((1 : F) * rho 2531)

def relationRow2529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2524 + (1 : F) * rho 2525) * ((1 : F) + (1 : F) * rho 2527 + (1 : F) * rho 2528 + (1 : F) * rho 2530 + (1 : F) * rho 2531) = ((1 : F) * rho 2532)

def relationRow2530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2524) * ((1 : F) + (1 : F) * rho 2530 + (1 : F) * rho 2531) = ((1 : F) * rho 2533)

def relationRow2531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2525) * ((1 : F) * rho 2527 + (1 : F) * rho 2528) = ((1 : F) * rho 2534)

def relationRow2532 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2533) * ((1 : F) * rho 2534) = ((1 : F) * rho 2535)

def relationRow2533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2536) * ((1 : F) + (1 : F) * rho 2535) = ((1 : F) * rho 2533 + (1 : F) * rho 2534)

def relationRow2534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2537) * ((1 : F) + (-1 : F) * rho 2535) = ((1 : F) * rho 2532 + (-1 : F) * rho 2533 + (-1 : F) * rho 2534)

def relationRow2535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2536) * ((1 : F) * rho 2537) = ((1 : F) * rho 2538)

def relationRow2536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2536) * ((1 : F) * rho 2536) = ((1 : F) * rho 2539)

def relationRow2537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2537) * ((1 : F) * rho 2537) = ((1 : F) * rho 2540)

def relationRow2538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2541) * ((-1 : F) * rho 2539 + (1 : F) * rho 2540) = ((2 : F) * rho 2538)

def relationRow2539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2542) * ((2 : F) + (1 : F) * rho 2539 + (-1 : F) * rho 2540) = ((1 : F) * rho 2539 + (1 : F) * rho 2540)

def relationRow2540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2541) * ((1 : F) * rho 2542) = ((1 : F) * rho 2543)

def relationRow2541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2541) * ((1 : F) * rho 2541) = ((1 : F) * rho 2544)

def relationRow2542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2542) * ((1 : F) * rho 2542) = ((1 : F) * rho 2545)

def relationRow2543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2546) * ((-1 : F) * rho 2544 + (1 : F) * rho 2545) = ((2 : F) * rho 2543)

def relationRow2544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2547) * ((2 : F) + (1 : F) * rho 2544 + (-1 : F) * rho 2545) = ((1 : F) * rho 2544 + (1 : F) * rho 2545)

def relationRow2545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 42) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2548)

def relationRow2546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 43) * ((1 : F) * rho 258 + (1 : F) * rho 2548) = ((1 : F) * rho 2549)

def relationRow2547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 42) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2550)

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 42) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2551)

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 43) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2551) = ((1 : F) * rho 2552)

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 42) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 254) = ((1 : F) * rho 2553)

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2546 + (1 : F) * rho 2547) * ((1 : F) + (1 : F) * rho 2549 + (1 : F) * rho 2550 + (1 : F) * rho 2552 + (1 : F) * rho 2553) = ((1 : F) * rho 2554)

def relationRow2552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2546) * ((1 : F) + (1 : F) * rho 2552 + (1 : F) * rho 2553) = ((1 : F) * rho 2555)

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2547) * ((1 : F) * rho 2549 + (1 : F) * rho 2550) = ((1 : F) * rho 2556)

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2555) * ((1 : F) * rho 2556) = ((1 : F) * rho 2557)

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2558) * ((1 : F) + (1 : F) * rho 2557) = ((1 : F) * rho 2555 + (1 : F) * rho 2556)

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2559) * ((1 : F) + (-1 : F) * rho 2557) = ((1 : F) * rho 2554 + (-1 : F) * rho 2555 + (-1 : F) * rho 2556)

def relationRow2557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2558) * ((1 : F) * rho 2559) = ((1 : F) * rho 2560)

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2558) * ((1 : F) * rho 2558) = ((1 : F) * rho 2561)

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2559) * ((1 : F) * rho 2559) = ((1 : F) * rho 2562)

def relationRow2560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2563) * ((-1 : F) * rho 2561 + (1 : F) * rho 2562) = ((2 : F) * rho 2560)

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2564) * ((2 : F) + (1 : F) * rho 2561 + (-1 : F) * rho 2562) = ((1 : F) * rho 2561 + (1 : F) * rho 2562)

def relationRow2562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2563) * ((1 : F) * rho 2564) = ((1 : F) * rho 2565)

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2563) * ((1 : F) * rho 2563) = ((1 : F) * rho 2566)

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2564) * ((1 : F) * rho 2564) = ((1 : F) * rho 2567)

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2568) * ((-1 : F) * rho 2566 + (1 : F) * rho 2567) = ((2 : F) * rho 2565)

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2569) * ((2 : F) + (1 : F) * rho 2566 + (-1 : F) * rho 2567) = ((1 : F) * rho 2566 + (1 : F) * rho 2567)

def relationRow2567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 40) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2570)

def relationRow2568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 41) * ((1 : F) * rho 258 + (1 : F) * rho 2570) = ((1 : F) * rho 2571)

def relationRow2569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 40) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2572)

def relationRow2570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 40) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2573)

def relationRow2571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 41) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2573) = ((1 : F) * rho 2574)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1
