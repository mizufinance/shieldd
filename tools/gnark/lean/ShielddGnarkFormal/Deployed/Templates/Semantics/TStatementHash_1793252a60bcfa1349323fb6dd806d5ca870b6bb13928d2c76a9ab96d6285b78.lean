import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78Block0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78Block1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def relation (rho : Nat → F) : Prop := Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relation rho

def spec (rho : Nat → F) : Prop :=
  (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Trace.rawState1_38 rho)[1] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Trace.hash1 rho

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  unfold relation Shieldd.GnarkFormal.Deployed.Templates.Relations.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.relation at h
  rcases h with ⟨p0, h⟩
  rcases h with ⟨p1, h⟩
  rcases h with ⟨p2, h⟩
  rcases h with ⟨p3, h⟩
  rcases h with ⟨p4, h⟩
  rcases h with ⟨p5, h⟩
  rcases h with ⟨p6, h⟩
  rcases h with ⟨p7, h⟩
  rcases h with ⟨p8, h⟩
  rcases h with ⟨p9, h⟩
  rcases h with ⟨p10, h⟩
  rcases h with ⟨p11, h⟩
  rcases h with ⟨p12, h⟩
  rcases h with ⟨p13, h⟩
  rcases h with ⟨p14, h⟩
  rcases h with ⟨p15, h⟩
  rcases h with ⟨p16, h⟩
  rcases h with ⟨p17, h⟩
  rcases h with ⟨p18, h⟩
  rcases h with ⟨p19, h⟩
  rcases h with ⟨p20, h⟩
  rcases h with ⟨p21, h⟩
  rcases h with ⟨p22, h⟩
  rcases h with ⟨p23, h⟩
  rcases h with ⟨p24, h⟩
  rcases h with ⟨p25, h⟩
  rcases h with ⟨p26, h⟩
  rcases h with ⟨p27, h⟩
  rcases h with ⟨p28, h⟩
  rcases h with ⟨p29, h⟩
  rcases h with ⟨p30, h⟩
  rcases h with ⟨p31, h⟩
  rcases h with ⟨p32, h⟩
  rcases h with ⟨p33, h⟩
  rcases h with ⟨p34, h⟩
  rcases h with ⟨p35, h⟩
  rcases h with ⟨p36, h⟩
  rcases h with ⟨p37, h⟩
  rcases h with ⟨p38, h⟩
  rcases h with ⟨p39, h⟩
  rcases h with ⟨p40, h⟩
  rcases h with ⟨p41, h⟩
  rcases h with ⟨p42, h⟩
  rcases h with ⟨p43, h⟩
  rcases h with ⟨p44, h⟩
  rcases h with ⟨p45, h⟩
  rcases h with ⟨p46, h⟩
  rcases h with ⟨p47, h⟩
  rcases h with ⟨p48, h⟩
  rcases h with ⟨p49, h⟩
  rcases h with ⟨p50, h⟩
  rcases h with ⟨p51, h⟩
  rcases h with ⟨p52, h⟩
  rcases h with ⟨p53, h⟩
  rcases h with ⟨p54, h⟩
  rcases h with ⟨p55, h⟩
  rcases h with ⟨p56, h⟩
  rcases h with ⟨p57, h⟩
  rcases h with ⟨p58, h⟩
  rcases h with ⟨p59, h⟩
  rcases h with ⟨p60, h⟩
  rcases h with ⟨p61, h⟩
  rcases h with ⟨p62, h⟩
  rcases h with ⟨p63, h⟩
  rcases h with ⟨p64, h⟩
  rcases h with ⟨p65, h⟩
  rcases h with ⟨p66, h⟩
  rcases h with ⟨p67, h⟩
  rcases h with ⟨p68, h⟩
  rcases h with ⟨p69, h⟩
  rcases h with ⟨p70, h⟩
  rcases h with ⟨p71, h⟩
  rcases h with ⟨p72, h⟩
  rcases h with ⟨p73, h⟩
  rcases h with ⟨p74, h⟩
  rcases h with ⟨p75, h⟩
  rcases h with ⟨p76, h⟩
  rcases h with ⟨p77, h⟩
  rcases h with ⟨p78, h⟩
  rcases h with ⟨p79, h⟩
  rcases h with ⟨p80, h⟩
  rcases h with ⟨p81, h⟩
  rcases h with ⟨p82, h⟩
  rcases h with ⟨p83, h⟩
  rcases h with ⟨p84, h⟩
  rcases h with ⟨p85, h⟩
  rcases h with ⟨p86, h⟩
  rcases h with ⟨p87, h⟩
  rcases h with ⟨p88, h⟩
  rcases h with ⟨p89, h⟩
  rcases h with ⟨p90, h⟩
  rcases h with ⟨p91, h⟩
  rcases h with ⟨p92, h⟩
  rcases h with ⟨p93, h⟩
  rcases h with ⟨p94, h⟩
  rcases h with ⟨p95, h⟩
  rcases h with ⟨p96, h⟩
  rcases h with ⟨p97, h⟩
  rcases h with ⟨p98, h⟩
  rcases h with ⟨p99, h⟩
  rcases h with ⟨p100, h⟩
  rcases h with ⟨p101, h⟩
  rcases h with ⟨p102, h⟩
  rcases h with ⟨p103, h⟩
  rcases h with ⟨p104, h⟩
  rcases h with ⟨p105, h⟩
  rcases h with ⟨p106, h⟩
  rcases h with ⟨p107, h⟩
  rcases h with ⟨p108, h⟩
  rcases h with ⟨p109, h⟩
  rcases h with ⟨p110, h⟩
  rcases h with ⟨p111, h⟩
  rcases h with ⟨p112, h⟩
  rcases h with ⟨p113, h⟩
  rcases h with ⟨p114, h⟩
  rcases h with ⟨p115, h⟩
  rcases h with ⟨p116, h⟩
  rcases h with ⟨p117, h⟩
  rcases h with ⟨p118, h⟩
  rcases h with ⟨p119, h⟩
  rcases h with ⟨p120, h⟩
  rcases h with ⟨p121, h⟩
  rcases h with ⟨p122, h⟩
  rcases h with ⟨p123, h⟩
  rcases h with ⟨p124, h⟩
  rcases h with ⟨p125, h⟩
  rcases h with ⟨p126, h⟩
  rcases h with ⟨p127, h⟩
  rcases h with ⟨p128, h⟩
  rcases h with ⟨p129, h⟩
  rcases h with ⟨p130, h⟩
  rcases h with ⟨p131, h⟩
  rcases h with ⟨p132, h⟩
  rcases h with ⟨p133, h⟩
  rcases h with ⟨p134, h⟩
  rcases h with ⟨p135, h⟩
  rcases h with ⟨p136, h⟩
  rcases h with ⟨p137, h⟩
  rcases h with ⟨p138, h⟩
  rcases h with ⟨p139, h⟩
  rcases h with ⟨p140, h⟩
  rcases h with ⟨p141, h⟩
  rcases h with ⟨p142, h⟩
  rcases h with ⟨p143, h⟩
  rcases h with ⟨p144, h⟩
  rcases h with ⟨p145, h⟩
  rcases h with ⟨p146, h⟩
  rcases h with ⟨p147, h⟩
  rcases h with ⟨p148, h⟩
  rcases h with ⟨p149, h⟩
  rcases h with ⟨p150, h⟩
  rcases h with ⟨p151, h⟩
  rcases h with ⟨p152, h⟩
  rcases h with ⟨p153, h⟩
  rcases h with ⟨p154, h⟩
  rcases h with ⟨p155, h⟩
  rcases h with ⟨p156, h⟩
  rcases h with ⟨p157, h⟩
  rcases h with ⟨p158, h⟩
  rcases h with ⟨p159, h⟩
  rcases h with ⟨p160, h⟩
  rcases h with ⟨p161, h⟩
  rcases h with ⟨p162, h⟩
  rcases h with ⟨p163, h⟩
  rcases h with ⟨p164, h⟩
  rcases h with ⟨p165, h⟩
  rcases h with ⟨p166, h⟩
  rcases h with ⟨p167, h⟩
  rcases h with ⟨p168, h⟩
  rcases h with ⟨p169, h⟩
  rcases h with ⟨p170, h⟩
  rcases h with ⟨p171, h⟩
  rcases h with ⟨p172, h⟩
  rcases h with ⟨p173, h⟩
  rcases h with ⟨p174, h⟩
  rcases h with ⟨p175, h⟩
  rcases h with ⟨p176, h⟩
  rcases h with ⟨p177, h⟩
  rcases h with ⟨p178, h⟩
  rcases h with ⟨p179, h⟩
  rcases h with ⟨p180, h⟩
  rcases h with ⟨p181, h⟩
  rcases h with ⟨p182, h⟩
  rcases h with ⟨p183, h⟩
  rcases h with ⟨p184, h⟩
  rcases h with ⟨p185, h⟩
  rcases h with ⟨p186, h⟩
  have p187 := h
  have hBlock0 := Block0.sound rho p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93
  have hChain1 : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Trace.hash0 rho = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Trace.rawState0_38 rho)[1] := by
    rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Trace.state0_output_eq_hash]
    exact hBlock0.2.1
  have hBlock1 := Block1.sound rho p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 hChain1
  unfold spec
  rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78.Trace.state1_output_eq_hash]
  exact hBlock1.2.1

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_1793252a60bcfa1349323fb6dd806d5ca870b6bb13928d2c76a9ab96d6285b78
