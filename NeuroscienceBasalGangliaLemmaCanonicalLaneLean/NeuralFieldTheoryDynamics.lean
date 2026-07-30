import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure NeuralFieldPackage where
  neuralField : Type u
  timeDomain : Type v
  connectivityKernel : Type w
  firingRateFunction : Type x
  integralEquation : Prop
  stationarySolution : Prop

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  integralEquationClosed : N.integralEquation
  stationarySolutionClosed : N.stationarySolution

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.integralEquation ∧ N.stationarySolution

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N :=
  And.intro E.integralEquationClosed E.stationarySolutionClosed

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse