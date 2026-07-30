import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure HebbianPlasticity where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  learningRule : presynapticActivity -> postsynapticActivity -> synapticWeight -> synapticWeight
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop
  longTermPotentiationTerm : longTermPotentiation
  longTermDepressionTerm : longTermDepression
  spikeTimingDependenceTerm : spikeTimingDependence

structure HebbianPlasticityEvidence (H : HebbianPlasticity) where
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  spikeTimingDependenceClosed : H.spikeTimingDependence

def HebbianPlasticityClosed (H : HebbianPlasticity) : Prop :=
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.spikeTimingDependence

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticity)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H :=
  And.intro E.longTermPotentiationClosed
    (And.intro E.longTermDepressionClosed E.spikeTimingDependenceClosed)

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse
