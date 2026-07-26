import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Block1Range0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Block1Range1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Block1Range2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Block1Range3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7Block1Range4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7RelationBlocks

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Block1

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.Order
abbrev F := Shieldd.GnarkFormal.Extracted.Deployed.StatementHash470_5c3d95.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

theorem sound_lane1_from_relation (rho : Nat → F) (h :
    Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.RelationBlocks.block1 rho)
    (hChain : Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.hash0 rho = (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.rawState0_38 rho)[1]) :
    (Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.state1_38 rho)[1] = Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Trace.flatState1_38Lane1 rho := by
  have hParts := Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.RelationBlocks.block1_to_parts rho h
  rcases hParts with ⟨p94, p95, p96, p97, p98, p99, p100, p101, p102, p103, p104, p105, p106, p107, p108, p109, p110, p111, p112, p113, p114, p115, p116, p117, p118, p119, p120, p121, p122, p123, p124, p125, p126, p127, p128, p129, p130, p131, p132, p133, p134, p135, p136, p137, p138, p139, p140, p141, p142, p143, p144, p145, p146, p147, p148, p149, p150, p151, p152, p153, p154, p155, p156, p157, p158, p159, p160, p161, p162, p163, p164, p165, p166, p167, p168, p169, p170, p171, p172, p173, p174, p175, p176, p177, p178, p179, p180, p181, p182, p183, p184, p185⟩
  have h0 := Block1Range0.sound rho p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 hChain
  have h1 := Block1Range1.sound rho p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 h0.1 h0.2.1 h0.2.2.1 h0.2.2.2.1 h0.2.2.2.2.1 h0.2.2.2.2.2.1 h0.2.2.2.2.2.2.1 h0.2.2.2.2.2.2.2
  have h2 := Block1Range2.sound rho p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 h1.1 h1.2.1 h1.2.2.1 h1.2.2.2.1 h1.2.2.2.2.1 h1.2.2.2.2.2.1 h1.2.2.2.2.2.2.1 h1.2.2.2.2.2.2.2
  have h3 := Block1Range3.sound rho p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 h2.1 h2.2.1 h2.2.2.1 h2.2.2.2.1 h2.2.2.2.2.1 h2.2.2.2.2.2.1 h2.2.2.2.2.2.2.1 h2.2.2.2.2.2.2.2
  have h4 := Block1Range4.sound rho p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 h3.1 h3.2.1 h3.2.2.1 h3.2.2.2.1 h3.2.2.2.2.1 h3.2.2.2.2.2.1 h3.2.2.2.2.2.2.1 h3.2.2.2.2.2.2.2
  exact h4.2.1

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TStatementHash_4cafd325b545493415e47321733b6b69a04b20d1ef002f440729f6bf4a70a0b7.Block1
