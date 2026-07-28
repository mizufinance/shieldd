import ShielddGnarkFormal.Protocol.NoteReshape.CircuitFacts

/-! Family-independent handwritten NoteReshape refinement theorem. -/

namespace Shieldd.GnarkFormal.Protocol.NoteReshape

theorem valid_of_circuitFacts [Zero F]
    (primitives : CircuitPrimitives F Path)
    (authorizationChecks : ExternalAuthorization F Path)
    (stateChecks : StateChecks F Path)
    (action : Action F Path)
    (facts : CircuitFacts primitives action)
    (signatures : ExternalSignatureFacts authorizationChecks action)
    (state : StatePreconditions stateChecks action) :
    Valid primitives authorizationChecks stateChecks action := by
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
