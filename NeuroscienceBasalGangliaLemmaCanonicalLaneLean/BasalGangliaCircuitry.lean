import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure BasalGangliaCircuitPackage where
  cortexInput : Prop
  striatalIntegration : Prop
  directPathway : Prop
  indirectPathway : Prop
  subthalamicNucleusModulation : Prop
  globusPallidusOutput : Prop
  thalamicRelay : Prop
  motorSelection : Prop

structure BasalGangliaCircuitEvidence (B : BasalGangliaCircuitPackage) where
  cortexInputClosed : B.cortexInput
  striatalIntegrationClosed : B.striatalIntegration
  directPathwayClosed : B.directPathway
  indirectPathwayClosed : B.indirectPathway
  subthalamicNucleusModulationClosed : B.subthalamicNucleusModulation
  globusPallidusOutputClosed : B.globusPallidusOutput
  thalamicRelayClosed : B.thalamicRelay
  motorSelectionClosed : B.motorSelection

def BasalGangliaCircuitClosed (B : BasalGangliaCircuitPackage) : Prop :=
  B.cortexInput ∧ B.striatalIntegration ∧ B.directPathway ∧ B.indirectPathway ∧
  B.subthalamicNucleusModulation ∧ B.globusPallidusOutput ∧ B.thalamicRelay ∧
  B.motorSelection

theorem basal_ganglia_circuit_closed_from_evidence
    (B : BasalGangliaCircuitPackage) (E : BasalGangliaCircuitEvidence B) :
    BasalGangliaCircuitClosed B := by
  exact And.intro E.cortexInputClosed
    (And.intro E.striatalIntegrationClosed
      (And.intro E.directPathwayClosed
        (And.intro E.indirectPathwayClosed
          (And.intro E.subthalamicNucleusModulationClosed
            (And.intro E.globusPallidusOutputClosed
              (And.intro E.thalamicRelayClosed E.motorSelectionClosed))))))

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse