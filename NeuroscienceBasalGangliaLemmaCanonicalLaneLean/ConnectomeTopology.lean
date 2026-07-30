import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure ConnectomePackage where
  neuronGraph : Type u
  edgeWeight : Type v
  graphLaplacian : Type w
  smallWorldProperty : Prop
  modularStructure : Prop
  hubIdentification : Prop

structure ConnectomeEvidence (C : ConnectomePackage) where
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  hubIdentificationClosed : C.hubIdentification

def ConnectomeClosed (C : ConnectomePackage) : Prop :=
  C.smallWorldProperty ∧ C.modularStructure ∧ C.hubIdentification

theorem connectome_closed_from_evidence (C : ConnectomePackage) (E : ConnectomeEvidence C) :
    ConnectomeClosed C :=
  And.intro E.smallWorldPropertyClosed (And.intro E.modularStructureClosed E.hubIdentificationClosed)

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse