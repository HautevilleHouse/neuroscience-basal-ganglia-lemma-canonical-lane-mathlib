import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure NeuralFieldDynamicsPackage where
  populationActivity : Type u
  firingRate : Type u
  synapticKernel : Type u
  fieldEquation : Prop
  stationaryStates : Prop
  bifurcationAnalysis : Prop
  fieldEquationTerm : fieldEquation
  stationaryStatesTerm : stationaryStates
  bifurcationAnalysisTerm : bifurcationAnalysis

structure NeuralFieldDynamicsEvidence (N : NeuralFieldDynamicsPackage) where
  fieldEquationClosed : N.fieldEquation
  stationaryStatesClosed : N.stationaryStates
  bifurcationAnalysisClosed : N.bifurcationAnalysis

def NeuralFieldDynamicsClosed (N : NeuralFieldDynamicsPackage) : Prop :=
  N.fieldEquation ∧ N.stationaryStates ∧ N.bifurcationAnalysis

theorem neural_field_dynamics_closed_from_evidence (N : NeuralFieldDynamicsPackage) (E : NeuralFieldDynamicsEvidence N) :
    NeuralFieldDynamicsClosed N := by
  exact And.intro E.fieldEquationClosed
    (And.intro E.stationaryStatesClosed E.bifurcationAnalysisClosed)

end HautevilleHouse
end NeuroscienceBasalGangliaLemmaCanonicalLaneLean