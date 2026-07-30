import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure Connectomics where
  neuronPopulations : Type u
  synapticConnections : Type v
  adjacencyMatrix : Type w
  graphProperties : Type x
  smallWorldProperty : Prop
  modularStructure : Prop
  topologicalMotifs : Prop
  smallWorldPropertyTerm : smallWorldProperty
  modularStructureTerm : modularStructure
  topologicalMotifsTerm : topologicalMotifs

structure ConnectomicsEvidence (C : Connectomics) where
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  topologicalMotifsClosed : C.topologicalMotifs

def ConnectomicsClosed (C : Connectomics) : Prop :=
  C.smallWorldProperty ∧ C.modularStructure ∧ C.topologicalMotifs

theorem connectomics_closed_from_evidence (C : Connectomics)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C :=
  And.intro E.smallWorldPropertyClosed
    (And.intro E.modularStructureClosed E.topologicalMotifsClosed)

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse
