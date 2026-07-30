import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  synapticWeight : Type u
  preSynapticActivity : Type v
  postSynapticActivity : Type w
  hebbianRule : Prop
  spikeTimingDependence : Prop
  homeostaticScaling : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  hebbianRuleClosed : H.hebbianRule
  spikeTimingDependenceClosed : H.spikeTimingDependence
  homeostaticScalingClosed : H.homeostaticScaling

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianRule ∧ H.spikeTimingDependence ∧ H.homeostaticScaling

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H :=
  And.intro E.hebbianRuleClosed (And.intro E.spikeTimingDependenceClosed E.homeostaticScalingClosed)

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse