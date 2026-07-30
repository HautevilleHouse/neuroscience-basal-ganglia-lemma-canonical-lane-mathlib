import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure NeuralFieldTheory where
  neuralField : Type u
  activationFunction : Type v
  connectivityKernel : Type w
  integroDifferentialEquation : Prop
  stationarySolutions : Prop
  travelingWaves : Prop
  integroDifferentialEquationTerm : integroDifferentialEquation
  stationarySolutionsTerm : stationarySolutions
  travelingWavesTerm : travelingWaves

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheory) where
  integroDifferentialEquationClosed : N.integroDifferentialEquation
  stationarySolutionsClosed : N.stationarySolutions
  travelingWavesClosed : N.travelingWaves

def NeuralFieldTheoryClosed (N : NeuralFieldTheory) : Prop :=
  N.integroDifferentialEquation ∧ N.stationarySolutions ∧ N.travelingWaves

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheory)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N :=
  And.intro E.integroDifferentialEquationClosed
    (And.intro E.stationarySolutionsClosed E.travelingWavesClosed)

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse
