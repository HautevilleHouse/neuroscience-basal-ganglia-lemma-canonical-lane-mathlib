import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : Type u
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakChannel : Prop
  gateDynamics : Prop
  actionPotentialGeneration : Prop
  channelKinetics : Prop
  channelKineticsTerm : channelKinetics

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  sodiumChannelClosed : H.sodiumChannel
  potassiumChannelClosed : H.potassiumChannel
  leakChannelClosed : H.leakChannel
  gateDynamicsClosed : H.gateDynamics
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  channelKineticsClosed : H.channelKinetics

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.sodiumChannel ∧ H.potassiumChannel ∧ H.leakChannel ∧ H.gateDynamics ∧ H.actionPotentialGeneration ∧ H.channelKinetics

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumChannelClosed
    (And.intro E.potassiumChannelClosed
      (And.intro E.leakChannelClosed
        (And.intro E.gateDynamicsClosed
          (And.intro E.actionPotentialGenerationClosed E.channelKineticsClosed))))

end HautevilleHouse
end NeuroscienceBasalGangliaLemmaCanonicalLaneLean