import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure HodgkinHuxleyDynamics where
  membranePotential : Type u
  sodiumCurrent : Type v
  potassiumCurrent : Type w
  leakageCurrent : Type x
  gatingVariables : Type y
  differentialEquations : Prop
  actionPotentialGeneration : Prop
  numericalSolvability : Prop
  differentialEquationsTerm : differentialEquations
  actionPotentialGenerationTerm : actionPotentialGeneration
  numericalSolvabilityTerm : numericalSolvability

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamics) where
  differentialEquationsClosed : H.differentialEquations
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  numericalSolvabilityClosed : H.numericalSolvability

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamics) : Prop :=
  H.differentialEquations ∧ H.actionPotentialGeneration ∧ H.numericalSolvability

theorem hodgkin_huxley_dynamics_closed_from_evidence (H : HodgkinHuxleyDynamics)
    (E : HodgkinHuxleyDynamicsEvidence H) : HodgkinHuxleyDynamicsClosed H :=
  And.intro E.differentialEquationsClosed
    (And.intro E.actionPotentialGenerationClosed E.numericalSolvabilityClosed)

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse
