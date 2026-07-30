import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure NeuralFieldModelPackage where
  neuralField : Type u
  populationDensity : Type v
  synapticKernel : Type w
  firingRateFunction : Type x
  connectivityKernel : Prop
  rateModel : Prop
  stabilityCondition : Prop
  patternFormation : Prop
  travelingWaves : Prop

structure NeuralFieldModelEvidence (N : NeuralFieldModelPackage) where
  connectivityKernelClosed : N.connectivityKernel
  rateModelClosed : N.rateModel
  stabilityConditionClosed : N.stabilityCondition
  patternFormationClosed : N.patternFormation
  travelingWavesClosed : N.travelingWaves

def NeuralFieldModelClosed (N : NeuralFieldModelPackage) : Prop :=
  N.connectivityKernel ∧ N.rateModel ∧ N.stabilityCondition ∧
  N.patternFormation ∧ N.travelingWaves

theorem neural_field_model_closed_from_evidence (N : NeuralFieldModelPackage)
    (E : NeuralFieldModelEvidence N) : NeuralFieldModelClosed N := by
  exact And.intro E.connectivityKernelClosed
    (And.intro E.rateModelClosed
      (And.intro E.stabilityConditionClosed
        (And.intro E.patternFormationClosed
          E.travelingWavesClosed)))

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse