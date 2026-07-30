import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure DopamineRewardPackage where
  rewardSignal : Type u
  predictionError : Type u
  phasicDopamine : Prop
  tonicDopamine : Prop
  rewardLearning : Prop
  dopamineReceptors : Prop
  rewardLearningTerm : rewardLearning

define DopamineRewardEvidence (D : DopamineRewardPackage) where
  phasicDopamineClosed : D.phasicDopamine
  tonicDopamineClosed : D.tonicDopamine
  rewardLearningClosed : D.rewardLearning
  dopamineReceptorsClosed : D.dopamineReceptors

def DopamineRewardClosed (D : DopamineRewardPackage) : Prop :=
  D.phasicDopamine ∧ D.tonicDopamine ∧ D.rewardLearning ∧ D.dopamineReceptors

theorem dopamine_reward_closed_from_evidence (D : DopamineRewardPackage) (E : DopamineRewardEvidence D) :
    DopamineRewardClosed D := by
  exact And.intro E.phasicDopamineClosed
    (And.intro E.tonicDopamineClosed
      (And.intro E.rewardLearningClosed E.dopamineReceptorsClosed))

end HautevilleHouse
end NeuroscienceBasalGangliaLemmaCanonicalLaneLean