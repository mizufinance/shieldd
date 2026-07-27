import ShielddGnarkFormal.Protocol.NoteReshape.CircuitFacts

/-! Family-independent handwritten NoteReshape refinement theorem. -/

namespace Shieldd.GnarkFormal.Protocol.NoteReshape

theorem valid_of_circuitFacts [Zero F]
    (primitives : Primitives F Path)
    (action : Action F Path)
    (facts : CircuitFacts primitives action)
    (signatures : ExternalSignatureFacts primitives action)
    (state : StatePreconditions primitives action) :
    Valid primitives action := by
  exact {
    shape := facts.shape
    padding := facts.padding
    canonicalAddress := facts.canonicalAddress
    inputsBound := facts.inputsBound
    membership := facts.membership
    authorizationKeys := facts.authorizationKeys
    outputsBound := facts.outputsBound
    valueConserved := facts.valueConserved
    statementBound := facts.statementBound
    signatures
    state
  }

end Shieldd.GnarkFormal.Protocol.NoteReshape
