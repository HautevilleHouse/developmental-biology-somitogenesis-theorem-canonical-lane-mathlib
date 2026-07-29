import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure SegmentBoundaryModelPackage where
  anteriorPosteriorAxis : Type u
  morphogenGradient : anteriorPosteriorAxis → ℝ
  mesp2ExpressionDomain : Set anteriorPosteriorAxis
  segmentBorderDefined : Prop
  her7OscillatoryDomain : Set anteriorPosteriorAxis

structure SegmentBoundaryModelEvidence (B : SegmentBoundaryModelPackage) where
  segmentBorderDefinedClosed : B.segmentBorderDefined
  her7OscillatoryDomainClosed : Set.Nonempty B.her7OscillatoryDomain

def SegmentBoundaryModelClosed (B : SegmentBoundaryModelPackage) : Prop :=
  B.segmentBorderDefined ∧ Set.Nonempty B.her7OscillatoryDomain

theorem segment_boundary_model_closed_from_evidence
    (B : SegmentBoundaryModelPackage) (E : SegmentBoundaryModelEvidence B) :
    SegmentBoundaryModelClosed B := by
  exact And.intro E.segmentBorderDefinedClosed E.her7OscillatoryDomainClosed

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse