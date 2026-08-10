import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs33

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow2511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2330 + (1 : F) * rho 2331) * ((1 : F) + (1 : F) * rho 2333 + (1 : F) * rho 2334 + (1 : F) * rho 2336 + (1 : F) * rho 2337) = ((1 : F) * rho 2338)

def relationRow2512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2330) * ((1 : F) + (1 : F) * rho 2336 + (1 : F) * rho 2337) = ((1 : F) * rho 2339)

def relationRow2513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2331) * ((1 : F) * rho 2333 + (1 : F) * rho 2334) = ((1 : F) * rho 2340)

def relationRow2514 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2339) * ((1 : F) * rho 2340) = ((1 : F) * rho 2341)

def relationRow2515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2342) * ((1 : F) + (1 : F) * rho 2341) = ((1 : F) * rho 2339 + (1 : F) * rho 2340)

def relationRow2516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2343) * ((1 : F) + (-1 : F) * rho 2341) = ((1 : F) * rho 2338 + (-1 : F) * rho 2339 + (-1 : F) * rho 2340)

def relationRow2517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2342) * ((1 : F) * rho 2343) = ((1 : F) * rho 2344)

def relationRow2518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2342) * ((1 : F) * rho 2342) = ((1 : F) * rho 2345)

def relationRow2519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2343) * ((1 : F) * rho 2343) = ((1 : F) * rho 2346)

def relationRow2520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2347) * ((-1 : F) * rho 2345 + (1 : F) * rho 2346) = ((2 : F) * rho 2344)

def relationRow2521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2348) * ((2 : F) + (1 : F) * rho 2345 + (-1 : F) * rho 2346) = ((1 : F) * rho 2345 + (1 : F) * rho 2346)

def relationRow2522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2347) * ((1 : F) * rho 2348) = ((1 : F) * rho 2349)

def relationRow2523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2347) * ((1 : F) * rho 2347) = ((1 : F) * rho 2350)

def relationRow2524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2348) * ((1 : F) * rho 2348) = ((1 : F) * rho 2351)

def relationRow2525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2352) * ((-1 : F) * rho 2350 + (1 : F) * rho 2351) = ((2 : F) * rho 2349)

def relationRow2526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2353) * ((2 : F) + (1 : F) * rho 2350 + (-1 : F) * rho 2351) = ((1 : F) * rho 2350 + (1 : F) * rho 2351)

def relationRow2527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1147) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2354)

def relationRow2528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1148) * ((1 : F) * rho 1252 + (1 : F) * rho 2354) = ((1 : F) * rho 2355)

def relationRow2529 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1147) = ((1 : F) * rho 2356)

def relationRow2530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1147) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2357)

def relationRow2531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1148) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2357) = ((1 : F) * rho 2358)

def relationRow2532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1147) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2359)

def relationRow2533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2352 + (1 : F) * rho 2353) * ((1 : F) + (1 : F) * rho 2355 + (1 : F) * rho 2356 + (1 : F) * rho 2358 + (1 : F) * rho 2359) = ((1 : F) * rho 2360)

def relationRow2534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2352) * ((1 : F) + (1 : F) * rho 2358 + (1 : F) * rho 2359) = ((1 : F) * rho 2361)

def relationRow2535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2353) * ((1 : F) * rho 2355 + (1 : F) * rho 2356) = ((1 : F) * rho 2362)

def relationRow2536 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2361) * ((1 : F) * rho 2362) = ((1 : F) * rho 2363)

def relationRow2537 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2364) * ((1 : F) + (1 : F) * rho 2363) = ((1 : F) * rho 2361 + (1 : F) * rho 2362)

def relationRow2538 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2365) * ((1 : F) + (-1 : F) * rho 2363) = ((1 : F) * rho 2360 + (-1 : F) * rho 2361 + (-1 : F) * rho 2362)

def relationRow2539 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2364) * ((1 : F) * rho 2365) = ((1 : F) * rho 2366)

def relationRow2540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2364) * ((1 : F) * rho 2364) = ((1 : F) * rho 2367)

def relationRow2541 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2365) * ((1 : F) * rho 2365) = ((1 : F) * rho 2368)

def relationRow2542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2369) * ((-1 : F) * rho 2367 + (1 : F) * rho 2368) = ((2 : F) * rho 2366)

def relationRow2543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2370) * ((2 : F) + (1 : F) * rho 2367 + (-1 : F) * rho 2368) = ((1 : F) * rho 2367 + (1 : F) * rho 2368)

def relationRow2544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2369) * ((1 : F) * rho 2370) = ((1 : F) * rho 2371)

def relationRow2545 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2369) * ((1 : F) * rho 2369) = ((1 : F) * rho 2372)

def relationRow2546 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2370) * ((1 : F) * rho 2370) = ((1 : F) * rho 2373)

def relationRow2547 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2374) * ((-1 : F) * rho 2372 + (1 : F) * rho 2373) = ((2 : F) * rho 2371)

def relationRow2548 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2375) * ((2 : F) + (1 : F) * rho 2372 + (-1 : F) * rho 2373) = ((1 : F) * rho 2372 + (1 : F) * rho 2373)

def relationRow2549 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1145) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2376)

def relationRow2550 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1146) * ((1 : F) * rho 1252 + (1 : F) * rho 2376) = ((1 : F) * rho 2377)

def relationRow2551 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1145) = ((1 : F) * rho 2378)

def relationRow2552 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1145) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2379)

def relationRow2553 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1146) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2379) = ((1 : F) * rho 2380)

def relationRow2554 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1145) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2381)

def relationRow2555 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2374 + (1 : F) * rho 2375) * ((1 : F) + (1 : F) * rho 2377 + (1 : F) * rho 2378 + (1 : F) * rho 2380 + (1 : F) * rho 2381) = ((1 : F) * rho 2382)

def relationRow2556 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2374) * ((1 : F) + (1 : F) * rho 2380 + (1 : F) * rho 2381) = ((1 : F) * rho 2383)

def relationRow2557 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2375) * ((1 : F) * rho 2377 + (1 : F) * rho 2378) = ((1 : F) * rho 2384)

def relationRow2558 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2383) * ((1 : F) * rho 2384) = ((1 : F) * rho 2385)

def relationRow2559 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2386) * ((1 : F) + (1 : F) * rho 2385) = ((1 : F) * rho 2383 + (1 : F) * rho 2384)

def relationRow2560 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2387) * ((1 : F) + (-1 : F) * rho 2385) = ((1 : F) * rho 2382 + (-1 : F) * rho 2383 + (-1 : F) * rho 2384)

def relationRow2561 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2386) * ((1 : F) * rho 2387) = ((1 : F) * rho 2388)

def relationRow2562 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2386) * ((1 : F) * rho 2386) = ((1 : F) * rho 2389)

def relationRow2563 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2387) * ((1 : F) * rho 2387) = ((1 : F) * rho 2390)

def relationRow2564 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2391) * ((-1 : F) * rho 2389 + (1 : F) * rho 2390) = ((2 : F) * rho 2388)

def relationRow2565 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2392) * ((2 : F) + (1 : F) * rho 2389 + (-1 : F) * rho 2390) = ((1 : F) * rho 2389 + (1 : F) * rho 2390)

def relationRow2566 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2391) * ((1 : F) * rho 2392) = ((1 : F) * rho 2393)

def relationRow2567 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2391) * ((1 : F) * rho 2391) = ((1 : F) * rho 2394)

def relationRow2568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2392) * ((1 : F) * rho 2392) = ((1 : F) * rho 2395)

def relationRow2569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2396) * ((-1 : F) * rho 2394 + (1 : F) * rho 2395) = ((2 : F) * rho 2393)

def relationRow2570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2397) * ((2 : F) + (1 : F) * rho 2394 + (-1 : F) * rho 2395) = ((1 : F) * rho 2394 + (1 : F) * rho 2395)

def relationRow2571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1143) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2398)

def relationRow2572 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1144) * ((1 : F) * rho 1252 + (1 : F) * rho 2398) = ((1 : F) * rho 2399)

def relationRow2573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1143) = ((1 : F) * rho 2400)

def relationRow2574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1143) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2401)

def relationRow2575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1144) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2401) = ((1 : F) * rho 2402)

def relationRow2576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1143) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2403)

def relationRow2577 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2396 + (1 : F) * rho 2397) * ((1 : F) + (1 : F) * rho 2399 + (1 : F) * rho 2400 + (1 : F) * rho 2402 + (1 : F) * rho 2403) = ((1 : F) * rho 2404)

def relationRow2578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2396) * ((1 : F) + (1 : F) * rho 2402 + (1 : F) * rho 2403) = ((1 : F) * rho 2405)

def relationRow2579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2397) * ((1 : F) * rho 2399 + (1 : F) * rho 2400) = ((1 : F) * rho 2406)

def relationRow2580 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2405) * ((1 : F) * rho 2406) = ((1 : F) * rho 2407)

def relationRow2581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2408) * ((1 : F) + (1 : F) * rho 2407) = ((1 : F) * rho 2405 + (1 : F) * rho 2406)

def relationRow2582 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2409) * ((1 : F) + (-1 : F) * rho 2407) = ((1 : F) * rho 2404 + (-1 : F) * rho 2405 + (-1 : F) * rho 2406)

def relationRow2583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2408) * ((1 : F) * rho 2409) = ((1 : F) * rho 2410)

def relationRow2584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2408) * ((1 : F) * rho 2408) = ((1 : F) * rho 2411)

def relationRow2585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2409) * ((1 : F) * rho 2409) = ((1 : F) * rho 2412)

def relationRow2586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2413) * ((-1 : F) * rho 2411 + (1 : F) * rho 2412) = ((2 : F) * rho 2410)

def relationRow2587 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2414) * ((2 : F) + (1 : F) * rho 2411 + (-1 : F) * rho 2412) = ((1 : F) * rho 2411 + (1 : F) * rho 2412)

def relationRow2588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2413) * ((1 : F) * rho 2414) = ((1 : F) * rho 2415)

def relationRow2589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2413) * ((1 : F) * rho 2413) = ((1 : F) * rho 2416)

def relationRow2590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2414) * ((1 : F) * rho 2414) = ((1 : F) * rho 2417)

def relationRow2591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2418) * ((-1 : F) * rho 2416 + (1 : F) * rho 2417) = ((2 : F) * rho 2415)

def relationRow2592 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2419) * ((2 : F) + (1 : F) * rho 2416 + (-1 : F) * rho 2417) = ((1 : F) * rho 2416 + (1 : F) * rho 2417)

def relationRow2593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1141) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2420)

def relationRow2594 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1142) * ((1 : F) * rho 1252 + (1 : F) * rho 2420) = ((1 : F) * rho 2421)

def relationRow2595 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1141) = ((1 : F) * rho 2422)

def relationRow2596 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1141) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2423)

def relationRow2597 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1142) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2423) = ((1 : F) * rho 2424)

def relationRow2598 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1141) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2425)

def relationRow2599 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2418 + (1 : F) * rho 2419) * ((1 : F) + (1 : F) * rho 2421 + (1 : F) * rho 2422 + (1 : F) * rho 2424 + (1 : F) * rho 2425) = ((1 : F) * rho 2426)

def relationRow2600 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2418) * ((1 : F) + (1 : F) * rho 2424 + (1 : F) * rho 2425) = ((1 : F) * rho 2427)

def relationRow2601 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2419) * ((1 : F) * rho 2421 + (1 : F) * rho 2422) = ((1 : F) * rho 2428)

def relationRow2602 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2427) * ((1 : F) * rho 2428) = ((1 : F) * rho 2429)

def relationRow2603 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2430) * ((1 : F) + (1 : F) * rho 2429) = ((1 : F) * rho 2427 + (1 : F) * rho 2428)

def relationRow2604 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2431) * ((1 : F) + (-1 : F) * rho 2429) = ((1 : F) * rho 2426 + (-1 : F) * rho 2427 + (-1 : F) * rho 2428)

def relationRow2605 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2430) * ((1 : F) * rho 2431) = ((1 : F) * rho 2432)

def relationRow2606 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2430) * ((1 : F) * rho 2430) = ((1 : F) * rho 2433)

def relationRow2607 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2431) * ((1 : F) * rho 2431) = ((1 : F) * rho 2434)

def relationRow2608 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2435) * ((-1 : F) * rho 2433 + (1 : F) * rho 2434) = ((2 : F) * rho 2432)

def relationRow2609 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2436) * ((2 : F) + (1 : F) * rho 2433 + (-1 : F) * rho 2434) = ((1 : F) * rho 2433 + (1 : F) * rho 2434)

def relationRow2610 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2435) * ((1 : F) * rho 2436) = ((1 : F) * rho 2437)

def relationRow2611 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2435) * ((1 : F) * rho 2435) = ((1 : F) * rho 2438)

def relationRow2612 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2436) * ((1 : F) * rho 2436) = ((1 : F) * rho 2439)

def relationRow2613 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2440) * ((-1 : F) * rho 2438 + (1 : F) * rho 2439) = ((2 : F) * rho 2437)

def relationRow2614 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2441) * ((2 : F) + (1 : F) * rho 2438 + (-1 : F) * rho 2439) = ((1 : F) * rho 2438 + (1 : F) * rho 2439)

def relationRow2615 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1139) * ((-1 : F) * rho 598 + (-1 : F) * rho 1252 + (1 : F) * rho 1258) = ((1 : F) * rho 2442)

def relationRow2616 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1140) * ((1 : F) * rho 1252 + (1 : F) * rho 2442) = ((1 : F) * rho 2443)

def relationRow2617 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 1139) = ((1 : F) * rho 2444)

def relationRow2618 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1139) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 1253 + (1 : F) * rho 1259) = ((1 : F) * rho 2445)

def relationRow2619 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1140) * ((-1 : F) + (1 : F) * rho 1253 + (1 : F) * rho 2445) = ((1 : F) * rho 2446)

def relationRow2620 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1139) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 2447)

def relationRow2621 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2440 + (1 : F) * rho 2441) * ((1 : F) + (1 : F) * rho 2443 + (1 : F) * rho 2444 + (1 : F) * rho 2446 + (1 : F) * rho 2447) = ((1 : F) * rho 2448)

def relationRow2622 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2440) * ((1 : F) + (1 : F) * rho 2446 + (1 : F) * rho 2447) = ((1 : F) * rho 2449)

def relationRow2623 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2441) * ((1 : F) * rho 2443 + (1 : F) * rho 2444) = ((1 : F) * rho 2450)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
