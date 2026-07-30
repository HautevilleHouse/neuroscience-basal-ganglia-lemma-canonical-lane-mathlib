import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceBasalGangliaLemmaCanonicalLaneLean

structure ConnectomicsProjectionPackage where
  sourceBrainRegion : String
  targetBrainRegion : String
  projectionStrength : Float
  neurotransmitterType : String
  projectionExists : Prop
  functionalConnectivity : Prop
  structuralConnectivity : Prop

structure ConnectomicsProjectionEvidence (C : ConnectomicsProjectionPackage) where
  projectionExistsClosed : C.projectionExists
  functionalConnectivityClosed : C.functionalConnectivity
  structuralConnectivityClosed : C.structuralConnectivity

def ConnectomicsProjectionClosed (C : ConnectomicsProjectionPackage) : Prop :=
  C.projectionExists ∧ C.functionalConnectivity ∧ C.structuralConnectivity

theorem connectomics_projection_closed_from_evidence
    (C : ConnectomicsProjectionPackage) (E : ConnectomicsProjectionEvidence C) :
    ConnectomicsProjectionClosed C := by
  exact And.intro E.projectionExistsClosed
    (And.intro E.functionalConnectivityClosed E.structuralConnectivityClosed)

end NeuroscienceBasalGangliaLemmaCanonicalLaneLean
end HautevilleHouse