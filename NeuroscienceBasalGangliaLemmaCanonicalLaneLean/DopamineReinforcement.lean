import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure DopamineReinforcementPackage where
  phasicDopamineSignal : Prop
  tonicDopamineLevel : Prop
  rewardPredictionError : Prop
  policyUpdate : Prop
  actionSelectionBias : Prop
  synapticTagging : Prop

structure DopamineReinforcementEvidence (D : DopamineReinforcementPackage) where
  phasicDopamineSignalClosed : D.phasicDopamineSignal
  tonicDopamineLevelClosed : D.tonicDopamineLevel
  rewardPredictionErrorClosed : D.rewardPredictionError
  policyUpdateClosed : D.policyUpdate
  actionSelectionBiasClosed : D.actionSelectionBias
  synapticTaggingClosed : D.synapticTagging

def DopamineReinforcementClosed (D : DopamineReinforcementPackage) : Prop :=
  D.phasicDopamineSignal ∧ D.tonicDopamineLevel ∧ D.rewardPredictionError ∧
  D.policyUpdate ∧ D.actionSelectionBias ∧ D.synapticTagging

theorem dopamine_reinforcement_closed_from_evidence
    (D : DopamineReinforcementPackage) (E : DopamineReinforcementEvidence D) :
    DopamineReinforcementClosed D := by
  exact And.intro E.phasicDopamineSignalClosed
    (And.intro E.tonicDopamineLevelClosed
      (And.intro E.rewardPredictionErrorClosed
        (And.intro E.policyUpdateClosed
          (And.intro E.actionSelectionBiasClosed E.synapticTaggingClosed))))

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse