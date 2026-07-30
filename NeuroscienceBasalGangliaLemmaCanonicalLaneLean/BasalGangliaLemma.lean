import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure BasalGangliaLemmaPackage where
  directPathwayExcitation : Prop
  indirectPathwayInhibition : Prop
  disinhibitionMechanism : Prop
  dopamineTone : Prop
  motorOutputSelected : Prop
  actionGating : Prop
  habitFormation : Prop
  rewardPredictionError : Prop

structure BasalGangliaLemmaEvidence (B : BasalGangliaLemmaPackage) where
  directPathwayExcitationClosed : B.directPathwayExcitation
  indirectPathwayInhibitionClosed : B.indirectPathwayInhibition
  disinhibitionMechanismClosed : B.disinhibitionMechanism
  dopamineToneClosed : B.dopamineTone
  motorOutputSelectedClosed : B.motorOutputSelected
  actionGatingClosed : B.actionGating
  habitFormationClosed : B.habitFormation
  rewardPredictionErrorClosed : B.rewardPredictionError

def BasalGangliaLemmaClosed (B : BasalGangliaLemmaPackage) : Prop :=
  B.directPathwayExcitation ∧ B.indirectPathwayInhibition ∧
  B.disinhibitionMechanism ∧ B.dopamineTone ∧
  B.motorOutputSelected ∧ B.actionGating ∧
  B.habitFormation ∧ B.rewardPredictionError

theorem basal_ganglia_lemma_closed_from_evidence (B : BasalGangliaLemmaPackage)
    (E : BasalGangliaLemmaEvidence B) : BasalGangliaLemmaClosed B := by
  exact And.intro E.directPathwayExcitationClosed
    (And.intro E.indirectPathwayInhibitionClosed
      (And.intro E.disinhibitionMechanismClosed
        (And.intro E.dopamineToneClosed
          (And.intro E.motorOutputSelectedClosed
            (And.intro E.actionGatingClosed
              (And.intro E.habitFormationClosed
                E.rewardPredictionErrorClosed))))))

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse