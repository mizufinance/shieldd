# SnarkPack Implementation-to-Goal Dependency Graph

This file is generated from `verification-manifest.json`. Edges point from a prerequisite, explicit assumption, or checked contract field to the claim that consumes it.

```mermaid
flowchart LR
  n0["GOAL-ORDER<br/>proved"]
  n1["V1-ABSTRACT-ACCEPTS<br/>proved"]
  n2["V1-ORDERED-PROJECTION<br/>proved"]
  n3["V1-GOAL-PPE<br/>proved"]
  n4["REAL-PREFIX-GOAL<br/>proved"]
  n5["S1-QUANTITATIVE-SOUNDNESS<br/>proved"]
  n6["DEPLOYED-SRS-SOUNDNESS<br/>open"]
  n7["PUBLIC-TRAPDOOR-KZG-COUNTEREXAMPLE<br/>proved"]
  n8["KZG-LEAF-REDUCTION<br/>proved"]
  n9["GIPA-FORK-KNOWLEDGE-REDUCTION<br/>proved"]
  n10["APP-STATE-MACHINE<br/>proved"]
  n11["APP-SHIPPING-BINDING<br/>proved"]
  n12["SCALAR-MOD-REDUCTION<br/>proved"]
  n13["SCALAR-CACHE-AWARE-REPLACEMENT<br/>proved"]
  n14["SHIPPING-HASH-MOD-REDUCTION<br/>proved"]
  n15["SHIPPING-FIXED-INPUT-COMPUTATIONAL-BOUND<br/>proved"]
  n16["SHIPPING-TO-V1<br/>proved"]
  n17["SHIPPING-TO-GOAL<br/>open"]
  n18["STATEMENT-PROJECTION-CONSTRUCTION<br/>open"]
  n19["CANONICAL-STATEMENT-BINDING<br/>open"]
  n20["V1-COMPLETENESS<br/>proved"]
  n21["SHIPPING-PROVER-REFINEMENT<br/>open"]
  n22["RUST-CALL-CONSTRUCTION<br/>open"]
  n23["DEPLOYED-HASH-TRACE-CONSTRUCTION<br/>open"]
  n24["ADAPTIVE-SHARED-ORACLE-SKELETON<br/>proved"]
  n25["ADAPTIVE-SHA256-COUPLING<br/>open"]
  n26["ADAPTIVE-ADVERSARY-COUPLING<br/>open"]
  n27["EXTRACTED-BUNDLE-COMPOSITION<br/>proved"]
  n28["BUNDLE-LEVEL-COMPOSITION<br/>open"]
  n29["FULL-ADAPTIVE-END-TO-END-FV<br/>open"]
  n30["DECODER-LAYOUT-CONFORMANCE<br/>proved"]
  n31["BOUNDED-CHALLENGE-SAMPLER<br/>tested"]
  n32["V1-BYTE-LOCK<br/>tested"]
  a0["SHA256-SECURITY<br/>assumed"]
  a1["ADVERSARY-QUERY-BOUND<br/>assumed"]
  a2["ADAPTIVE-SHA-QUERY-BOUND<br/>assumed"]
  a3["KZG-FALSE-OPENING-SECURITY<br/>assumed"]
  a4["GIPA-FORK-KNOWLEDGE-SOUNDNESS<br/>assumed"]
  a5["AENEAS-TRANSLATOR<br/>assumed"]
  a6["HAX-FSTAR-TRANSLATOR<br/>assumed"]
  a7["FSTAR-CHECKER<br/>assumed"]
  a8["ARKWORKS-VK-SERIALIZATION<br/>assumed"]
  a9["ARKWORKS-FIELD-SERIALIZATION<br/>assumed"]
  a10["ARKWORKS-AGGREGATE-PROOF-DECODE<br/>assumed"]
  a11["ARKWORKS-CHALLENGE-SERIALIZATION<br/>assumed"]
  a12["BLAKE2B-ROM-SECURITY<br/>assumed"]
  a13["BLS12-377-PAIRING-BILINEARITY<br/>assumed"]
  a14["ARKWORKS-TIPP-PRIMITIVE-SEMANTICS<br/>assumed"]
  a15["ARKWORKS-PREPARED-VK-ROUTE-DECODE<br/>assumed"]
  a16["ARKWORKS-VERIFIER-SRS-ID-LOAD<br/>assumed"]
  a17["ARKWORKS-PREPARED-VK-AIC-PROJECTION<br/>assumed"]
  a18["ARKWORKS-KZG-VERIFIER-EQUATIONS<br/>assumed"]
  a19["ARKWORKS-FR-DIGEST-REDUCTION<br/>assumed"]
  a20["DEPLOYED-BLAKE2B-EXECUTION<br/>assumed"]
  a21["ARKWORKS-PROVER-CURVE-OPERATIONS<br/>assumed"]
  a22["WELL-FORMED-PROVING-SRS<br/>assumed"]
  e0["contract:familyRegistered<br/>stale"]
  e1["contract:canonicalStatementExact<br/>stale"]
  e2["contract:canonicalStatementInjective<br/>stale"]
  e3["contract:vkDigestPreimageInjective<br/>stale"]
  e4["contract:vkDigestExact<br/>stale"]
  e5["contract:statementDigestExact<br/>stale"]
  e6["contract:challengeContextExact<br/>stale"]
  e7["contract:wrapperExact<br/>stale"]
  e8["contract:proofDecodeExact<br/>assumed"]
  e9["contract:validCounts<br/>stale"]
  e10["contract:realPrefixExact<br/>stale"]
  e11["contract:repeatFinalPadding<br/>stale"]
  n0 --> n2
  n2 --> n3
  n3 --> n4
  n3 --> n5
  n4 --> n5
  a1 -.-> n5
  a3 -.-> n5
  a4 -.-> n5
  n5 --> n8
  n6 --> n8
  a18 -.-> n8
  a13 -.-> n8
  n5 --> n9
  a4 -.-> n9
  a5 -.-> n10
  n10 --> n11
  n19 --> n11
  a5 -.-> n11
  a19 -.-> n12
  n12 --> n13
  n1 --> n14
  n13 --> n14
  n5 --> n15
  n14 --> n15
  a1 -.-> n15
  a3 -.-> n15
  a4 -.-> n15
  a0 -.-> n15
  a12 -.-> n15
  n1 --> n16
  n11 --> n16
  n19 --> n16
  a5 -.-> n16
  a13 -.-> n16
  a14 -.-> n16
  a17 -.-> n16
  a18 -.-> n16
  a10 -.-> n16
  a11 -.-> n16
  n16 --> n17
  n19 --> n17
  n18 --> n17
  n5 --> n17
  n15 --> n17
  n14 --> n17
  n4 --> n17
  n8 --> n17
  n9 --> n17
  a1 -.-> n17
  a3 -.-> n17
  a4 -.-> n17
  a0 -.-> n17
  a12 -.-> n17
  n2 --> n18
  a5 -.-> n18
  a6 -.-> n18
  a7 -.-> n18
  a8 -.-> n18
  a9 -.-> n18
  a15 -.-> n18
  a16 -.-> n18
  a17 -.-> n18
  n2 --> n19
  n18 --> n19
  a0 -.-> n19
  a6 -.-> n19
  a7 -.-> n19
  a8 -.-> n19
  a9 -.-> n19
  a10 -.-> n19
  a15 -.-> n19
  a16 -.-> n19
  n3 --> n20
  n20 --> n21
  a5 -.-> n21
  a21 -.-> n21
  a11 -.-> n21
  a22 -.-> n21
  n10 --> n22
  n11 --> n22
  n19 --> n22
  n30 --> n22
  a5 -.-> n22
  a6 -.-> n22
  a7 -.-> n22
  a8 -.-> n22
  a9 -.-> n22
  a10 -.-> n22
  a15 -.-> n22
  a16 -.-> n22
  a17 -.-> n22
  n31 --> n23
  n14 --> n23
  a5 -.-> n23
  a11 -.-> n23
  a19 -.-> n23
  a20 -.-> n23
  n19 --> n25
  n18 --> n25
  a0 -.-> n25
  a2 -.-> n25
  n24 --> n26
  n25 --> n26
  n13 --> n26
  n17 --> n26
  n22 --> n26
  n23 --> n26
  a1 -.-> n26
  a2 -.-> n26
  a0 -.-> n26
  a12 -.-> n26
  n10 --> n27
  n16 --> n27
  a5 -.-> n27
  n27 --> n28
  n22 --> n28
  n17 --> n28
  a5 -.-> n28
  n21 --> n29
  n26 --> n29
  n28 --> n29
  n8 --> n29
  n9 --> n29
  n25 --> n29
  a1 -.-> n29
  a2 -.-> n29
  a3 -.-> n29
  a4 -.-> n29
  a0 -.-> n29
  a12 -.-> n29
  a10 -.-> n30
  n1 --> n31
  n19 --> n32
  e0 --> n19
  e1 --> n19
  e2 --> n19
  e3 --> n19
  e4 --> n19
  e5 --> n19
  e6 --> n19
  e7 --> n19
  e8 --> n19
  e9 --> n19
  e10 --> n19
  e11 --> n19
  classDef proved fill:#d8f3dc,stroke:#2d6a4f,color:#081c15
  classDef tested fill:#dbeafe,stroke:#1d4ed8,color:#172554
  classDef open fill:#fee2e2,stroke:#b91c1c,color:#450a0a
  classDef assumed fill:#fef3c7,stroke:#b45309,color:#451a03
  classDef evidencePass fill:#e0f2fe,stroke:#0369a1,color:#082f49
  classDef evidenceStale fill:#fee2e2,stroke:#b91c1c,color:#450a0a
  class n0,n1,n2,n3,n4,n5,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n20,n24,n27,n30 proved
  class n31,n32 tested
  class n6,n17,n18,n19,n21,n22,n23,n25,n26,n28,n29 open
  class a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22 assumed
  class e8 evidencePass
  class e0,e1,e2,e3,e4,e5,e6,e7,e9,e10,e11 evidenceStale
```

Open graph claims: `DEPLOYED-SRS-SOUNDNESS`, `SHIPPING-TO-GOAL`, `STATEMENT-PROJECTION-CONSTRUCTION`, `CANONICAL-STATEMENT-BINDING`, `SHIPPING-PROVER-REFINEMENT`, `RUST-CALL-CONSTRUCTION`, `DEPLOYED-HASH-TRACE-CONSTRUCTION`, `ADAPTIVE-SHA256-COUPLING`, `ADAPTIVE-ADVERSARY-COUPLING`, `BUNDLE-LEVEL-COMPOSITION`, `FULL-ADAPTIVE-END-TO-END-FV`. The manifest dependencies keep the explicit modular-reduction budget and the distinct SHA-256 and Blake2b security advantages separate. `SHIPPING-TO-GOAL` is `open` and `FULL-ADAPTIVE-END-TO-END-FV` is `open`. Every F* statement-contract row must carry a source-digest-pinned `pass` result.
