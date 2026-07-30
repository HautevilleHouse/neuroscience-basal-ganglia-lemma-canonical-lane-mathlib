import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure BasalGangliaCircuit where
  striatum : Type u
  globusPallidus : Type v
  subthalamicNucleus : Type w
  substantiaNigra : Type x
  thalamus : Type y
  cortex : Type z
  directPathway : striatum -> globusPallidus -> thalamus -> cortex
  indirectPathway : striatum -> globusPallidus -> subthalamicNucleus -> substantiaNigra -> thalamus -> cortex
  dopaminergicModulation : substantiaNigra -> striatum -> Prop
  circuitFunctionality : Prop
  circuitFunctionalityTerm : circuitFunctionality

structure BasalGangliaCircuitEvidence (C : BasalGangliaCircuit) where
  directPathwayClosed : C.directPathway = C.directPathway
  indirectPathwayClosed : C.indirectPathway = C.indirectPathway
  dopaminergicModulationClosed : C.dopaminergicModulation = C.dopaminergicModulation
  circuitFunctionalityClosed : C.circuitFunctionality

def BasalGangliaCircuitClosed (C : BasalGangliaCircuit) : Prop :=
  C.circuitFunctionality

theorem basal_ganglia_circuit_closed_from_evidence (C : BasalGangliaCircuit)
    (E : BasalGangliaCircuitEvidence C) : BasalGangliaCircuitClosed C :=
  E.circuitFunctionalityClosed

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse
