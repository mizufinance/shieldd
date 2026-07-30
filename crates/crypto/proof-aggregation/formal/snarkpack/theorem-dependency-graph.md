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
  n6["KZG-LEAF-REDUCTION<br/>open"]
  n7["GIPA-FORK-KNOWLEDGE-REDUCTION<br/>open"]
  n8["APP-STATE-MACHINE<br/>proved"]
  n9["APP-SHIPPING-BINDING<br/>proved"]
  n10["SCALAR-MOD-REDUCTION<br/>proved"]
  n11["SCALAR-CACHE-AWARE-REPLACEMENT<br/>proved"]
  n12["SHIPPING-HASH-MOD-REDUCTION<br/>proved"]
  n13["SHIPPING-FIXED-INPUT-COMPUTATIONAL-BOUND<br/>proved"]
  n14["SHIPPING-TO-V1<br/>proved"]
  n15["SHIPPING-TO-GOAL<br/>open"]
  n16["STATEMENT-PROJECTION-CONSTRUCTION<br/>open"]
  n17["CANONICAL-STATEMENT-BINDING<br/>open"]
  n18["V1-COMPLETENESS<br/>proved"]
  n19["SHIPPING-PROVER-REFINEMENT<br/>open"]
  n20["RUST-CALL-CONSTRUCTION<br/>open"]
  n21["DEPLOYED-HASH-TRACE-CONSTRUCTION<br/>open"]
  n22["ADAPTIVE-SHARED-ORACLE-SKELETON<br/>open"]
  n23["ADAPTIVE-SHA256-COUPLING<br/>open"]
  n24["ADAPTIVE-ADVERSARY-COUPLING<br/>open"]
  n25["EXTRACTED-BUNDLE-COMPOSITION<br/>proved"]
  n26["BUNDLE-LEVEL-COMPOSITION<br/>open"]
  n27["FULL-ADAPTIVE-END-TO-END-FV<br/>open"]
  n28["DECODER-LAYOUT-CONFORMANCE<br/>proved"]
  n29["BOUNDED-CHALLENGE-SAMPLER<br/>tested"]
  n30["V1-BYTE-LOCK<br/>tested"]
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
  a15["ARKWORKS-PREPARED-VK-AIC-PROJECTION<br/>assumed"]
  a16["ARKWORKS-KZG-VERIFIER-EQUATIONS<br/>assumed"]
  a17["ARKWORKS-FR-DIGEST-REDUCTION<br/>assumed"]
  a18["DEPLOYED-BLAKE2B-EXECUTION<br/>assumed"]
  a19["ARKWORKS-PROVER-CURVE-OPERATIONS<br/>assumed"]
  a20["WELL-FORMED-PROVING-SRS<br/>assumed"]
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
  n5 --> n6
  a16 -.-> n6
  a13 -.-> n6
  n5 --> n7
  a13 -.-> n7
  a5 -.-> n8
  n8 --> n9
  n17 --> n9
  a5 -.-> n9
  a17 -.-> n10
  n10 --> n11
  n1 --> n12
  n11 --> n12
  n5 --> n13
  n12 --> n13
  a1 -.-> n13
  a3 -.-> n13
  a4 -.-> n13
  a0 -.-> n13
  a12 -.-> n13
  n1 --> n14
  n9 --> n14
  n17 --> n14
  a5 -.-> n14
  a13 -.-> n14
  a14 -.-> n14
  a15 -.-> n14
  a16 -.-> n14
  a10 -.-> n14
  a11 -.-> n14
  n14 --> n15
  n17 --> n15
  n16 --> n15
  n5 --> n15
  n13 --> n15
  n12 --> n15
  n4 --> n15
  n6 --> n15
  n7 --> n15
  a1 -.-> n15
  a3 -.-> n15
  a4 -.-> n15
  a0 -.-> n15
  a12 -.-> n15
  n2 --> n16
  a5 -.-> n16
  a6 -.-> n16
  a7 -.-> n16
  a8 -.-> n16
  a9 -.-> n16
  a15 -.-> n16
  n2 --> n17
  n16 --> n17
  a0 -.-> n17
  a6 -.-> n17
  a7 -.-> n17
  a8 -.-> n17
  a9 -.-> n17
  a10 -.-> n17
  a11 -.-> n17
  n3 --> n18
  n18 --> n19
  a5 -.-> n19
  a19 -.-> n19
  a11 -.-> n19
  a20 -.-> n19
  n8 --> n20
  n9 --> n20
  n17 --> n20
  n28 --> n20
  a5 -.-> n20
  a6 -.-> n20
  a7 -.-> n20
  a8 -.-> n20
  a9 -.-> n20
  a10 -.-> n20
  a15 -.-> n20
  n29 --> n21
  n12 --> n21
  a5 -.-> n21
  a11 -.-> n21
  a17 -.-> n21
  a18 -.-> n21
  n17 --> n23
  n16 --> n23
  a0 -.-> n23
  a2 -.-> n23
  n22 --> n24
  n23 --> n24
  n15 --> n24
  n20 --> n24
  n21 --> n24
  a1 -.-> n24
  a2 -.-> n24
  a0 -.-> n24
  a12 -.-> n24
  n8 --> n25
  n14 --> n25
  a5 -.-> n25
  n25 --> n26
  n20 --> n26
  n15 --> n26
  a5 -.-> n26
  n19 --> n27
  n24 --> n27
  n26 --> n27
  n6 --> n27
  n7 --> n27
  n23 --> n27
  a1 -.-> n27
  a2 -.-> n27
  a3 -.-> n27
  a4 -.-> n27
  a0 -.-> n27
  a12 -.-> n27
  a10 -.-> n28
  n1 --> n29
  n17 --> n30
  e0 --> n17
  e1 --> n17
  e2 --> n17
  e3 --> n17
  e4 --> n17
  e5 --> n17
  e6 --> n17
  e7 --> n17
  e8 --> n17
  e9 --> n17
  e10 --> n17
  e11 --> n17
  classDef proved fill:#d8f3dc,stroke:#2d6a4f,color:#081c15
  classDef tested fill:#dbeafe,stroke:#1d4ed8,color:#172554
  classDef open fill:#fee2e2,stroke:#b91c1c,color:#450a0a
  classDef assumed fill:#fef3c7,stroke:#b45309,color:#451a03
  classDef evidencePass fill:#e0f2fe,stroke:#0369a1,color:#082f49
  classDef evidenceStale fill:#fee2e2,stroke:#b91c1c,color:#450a0a
  class n0,n1,n2,n3,n4,n5,n8,n9,n10,n11,n12,n13,n14,n18,n25,n28 proved
  class n29,n30 tested
  class n6,n7,n15,n16,n17,n19,n20,n21,n22,n23,n24,n26,n27 open
  class a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20 assumed
  class e8 evidencePass
  class e0,e1,e2,e3,e4,e5,e6,e7,e9,e10,e11 evidenceStale
```

Open graph claims: `KZG-LEAF-REDUCTION`, `GIPA-FORK-KNOWLEDGE-REDUCTION`, `SHIPPING-TO-GOAL`, `STATEMENT-PROJECTION-CONSTRUCTION`, `CANONICAL-STATEMENT-BINDING`, `SHIPPING-PROVER-REFINEMENT`, `RUST-CALL-CONSTRUCTION`, `DEPLOYED-HASH-TRACE-CONSTRUCTION`, `ADAPTIVE-SHARED-ORACLE-SKELETON`, `ADAPTIVE-SHA256-COUPLING`, `ADAPTIVE-ADVERSARY-COUPLING`, `BUNDLE-LEVEL-COMPOSITION`, `FULL-ADAPTIVE-END-TO-END-FV`. The manifest dependencies keep the explicit modular-reduction budget and the distinct SHA-256 and Blake2b security advantages separate. `SHIPPING-TO-GOAL` is `open` and `FULL-ADAPTIVE-END-TO-END-FV` is `open`. Every F* statement-contract row must carry a source-digest-pinned `pass` result.
