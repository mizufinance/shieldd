import ShielddGnarkFormal.Protocol.NoteReshape.Semantics

/-!
The handwritten semantic facts required from every exact NoteReshape circuit.
Generated modules may establish row facts, but cannot change this interface.
-/

namespace Shieldd.GnarkFormal.Protocol.NoteReshape

structure CircuitFacts [Zero F]
    (primitives : CircuitPrimitives F Path) (action : Action F Path) : Prop where
  shape : canonicalShape action
  padding : realPrefix action
  canonicalAddress :
    primitives.canonicalTransmission action.authorization action.shared
  inputsBound : inputCommitments primitives action
  membership : membershipAndNullifiers primitives action
  authorizationKeys : randomizedKeys primitives action
  outputsBound : outputCommitments primitives action
  valueConserved : primitives.conservation action
  statementBound : primitives.statementBinding action

end Shieldd.GnarkFormal.Protocol.NoteReshape
