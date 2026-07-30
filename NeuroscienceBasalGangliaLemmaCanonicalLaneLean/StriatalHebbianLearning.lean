import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure StriatalHebbianPackage where
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  synapticWeightChange : Prop
  stdpRule : Prop
  eligibilityTrace : Prop
  dopamineModulation : Prop

structure StriatalHebbianEvidence (H : StriatalHebbianPackage) where
  preSynapticActivityClosed : H.preSynapticActivity
  postSynapticActivityClosed : H.postSynapticActivity
  synapticWeightChangeClosed : H.synapticWeightChange
  stdpRuleClosed : H.stdpRule
  eligibilityTraceClosed : H.eligibilityTrace
  dopamineModulationClosed : H.dopamineModulation

def StriatalHebbianClosed (H : StriatalHebbianPackage) : Prop :=
  H.preSynapticActivity ∧ H.postSynapticActivity ∧ H.synapticWeightChange ∧
  H.stdpRule ∧ H.eligibilityTrace ∧ H.dopamineModulation

theorem striatal_hebbian_closed_from_evidence (H : StriatalHebbianPackage)
    (E : StriatalHebbianEvidence H) : StriatalHebbianClosed H := by
  exact And.intro E.preSynapticActivityClosed
    (And.intro E.postSynapticActivityClosed
      (And.intro E.synapticWeightChangeClosed
        (And.intro E.stdpRuleClosed
          (And.intro E.eligibilityTraceClosed E.dopamineModulationClosed))))

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse