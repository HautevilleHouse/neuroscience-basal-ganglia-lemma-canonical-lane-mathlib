import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure NeuromodulationPackage where
  dopamine : Type u
  serotonin : Type v
  acetylcholine : Type w
  noradrenaline : Type x
  receptor : Type y
  synapticModulation : Prop
  gainControl : Prop
  plasticityGate : Prop
  stateDependence : Prop

structure NeuromodulationEvidence (N : NeuromodulationPackage) where
  synapticModulationClosed : N.synapticModulation
  gainControlClosed : N.gainControl
  plasticityGateClosed : N.plasticityGate
  stateDependenceClosed : N.stateDependence

def NeuromodulationClosed (N : NeuromodulationPackage) : Prop :=
  N.synapticModulation ∧ N.gainControl ∧ N.plasticityGate ∧ N.stateDependence

theorem neuromodulation_closed_from_evidence (N : NeuromodulationPackage)
    (E : NeuromodulationEvidence N) : NeuromodulationClosed N := by
  exact And.intro E.synapticModulationClosed
    (And.intro E.gainControlClosed
      (And.intro E.plasticityGateClosed
        E.stateDependenceClosed))

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse