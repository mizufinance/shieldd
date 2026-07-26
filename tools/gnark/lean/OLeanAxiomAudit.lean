import Lean

open Lean

namespace OLeanAxiomAudit

private def ownedString (value : String) : String :=
  String.fromUTF8! value.toUTF8

private def ownedName (name : Name) : String :=
  ownedString name.toString

private def nameKey : Name → String
  | .anonymous => "a"
  | .str parent value =>
      let value := ownedString value
      nameKey parent ++ "s" ++ toString value.utf8ByteSize ++ ":" ++ value
  | .num parent value =>
      nameKey parent ++ "n" ++ toString value ++ ";"

private def axiomSeed (name : Name) : Nat :=
  if name == ``propext then 1
  else if name == ``Quot.sound then 2
  else 4

private structure DeclSummary where
  name : String
  display : String
  seed : Nat := 0
  deps : Array String := #[]
  deriving ToJson

private structure ModuleSummary where
  module : String
  declarations : Array DeclSummary
  deriving ToJson

private def usedConstants (exprs : Array Expr) : Array String := Id.run do
  let mut names : Std.HashSet String := {}
  for expr in exprs do
    for name in expr.getUsedConstants do
      names := names.insert (nameKey name)
  return names.toArray

private def summarize : ConstantInfo → DeclSummary
  | .axiomInfo info =>
      { name := nameKey info.name, display := ownedName info.name, seed := axiomSeed info.name }
  | .defnInfo info =>
      { name := nameKey info.name, display := ownedName info.name,
        deps := usedConstants #[info.type, info.value] }
  | .thmInfo info =>
      { name := nameKey info.name, display := ownedName info.name,
        deps := usedConstants #[info.type, info.value] }
  | .opaqueInfo info =>
      { name := nameKey info.name, display := ownedName info.name,
        deps := usedConstants #[info.type, info.value] }
  | .quotInfo info =>
      { name := nameKey info.name, display := ownedName info.name }
  | .ctorInfo info =>
      { name := nameKey info.name, display := ownedName info.name,
        deps := usedConstants #[info.type] }
  | .recInfo info =>
      { name := nameKey info.name, display := ownedName info.name,
        deps := usedConstants #[info.type] }
  | .inductInfo info =>
      { name := nameKey info.name, display := ownedName info.name,
        deps := usedConstants #[info.type] ++ info.ctors.map nameKey }

private unsafe def readImports (path : System.FilePath) : IO (Array String) := do
  let (data, _region) ← readModuleData path
  return data.imports.map (ownedName ·.module)

private unsafe def readSummaries (path : System.FilePath) : IO (Array DeclSummary) := do
  let (data, _region) ← readModuleData path
  return data.constants.map summarize

private unsafe def visitModule
    (moduleName : String)
    (seen : IO.Ref (Std.HashSet String))
    (order : IO.Ref (Array String)) : IO Unit := do
  if (← seen.get).contains moduleName then
    return
  seen.modify (·.insert moduleName)
  let path ← findOLean moduleName.toName
  for imported in ← readImports path do
    visitModule imported seen order
  order.modify (·.push moduleName)

private unsafe def printOrder (roots : List String) : IO UInt32 := do
  let seen ← IO.mkRef ({} : Std.HashSet String)
  let order ← IO.mkRef (#[] : Array String)
  for root in roots do
    visitModule root seen order
  for moduleName in ← order.get do
    let path ← findOLean moduleName.toName
    let size := (← path.metadata).byteSize
    IO.println s!"{moduleName}\t{size}"
  return 0

private unsafe def printSummaries (modules : List String) : IO UInt32 := do
  for moduleName in modules do
    let path ← findOLean moduleName.toName
    let summary : ModuleSummary := {
      module := moduleName
      declarations := ← readSummaries path
    }
    IO.println (toJson summary).compress
  return 0

private unsafe def run (args : List String) : IO UInt32 := do
  initSearchPath (← findSysroot)
  match args with
  | "order" :: roots =>
      if roots.isEmpty then
        IO.eprintln "usage: oleanAxiomAudit order <root-module>..."
        return 2
      printOrder roots
  | "summaries" :: modules =>
      if modules.isEmpty then
        IO.eprintln "usage: oleanAxiomAudit summaries <module>..."
        return 2
      printSummaries modules
  | _ =>
      IO.eprintln "usage: oleanAxiomAudit (order|summaries) <module>..."
      return 2

end OLeanAxiomAudit

unsafe def main (args : List String) : IO UInt32 :=
  OLeanAxiomAudit.run args
