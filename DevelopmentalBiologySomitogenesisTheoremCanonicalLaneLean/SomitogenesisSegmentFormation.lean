import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure SomitogenesisSegmentFormationPackage where
  segmentationClock : Prop
  wavefrontPropagation : Prop
  segmentBoundaryDetermination : Prop
  segmentPolarity : Prop
  segmentationClockTerm : segmentationClock
  wavefrontPropagationTerm : wavefrontPropagation
  segmentBoundaryDeterminationTerm : segmentBoundaryDetermination
  segmentPolarityTerm : segmentPolarity

structure SomitogenesisSegmentFormationEvidence (F : SomitogenesisSegmentFormationPackage) where
  segmentationClockClosed : F.segmentationClock
  wavefrontPropagationClosed : F.wavefrontPropagation
  segmentBoundaryDeterminationClosed : F.segmentBoundaryDetermination
  segmentPolarityClosed : F.segmentPolarity

def SomitogenesisSegmentFormationClosed (F : SomitogenesisSegmentFormationPackage) : Prop :=
  F.segmentationClock ∧ F.wavefrontPropagation ∧ F.segmentBoundaryDetermination ∧ F.segmentPolarity

theorem somitogenesis_segment_formation_closed_from_evidence (F : SomitogenesisSegmentFormationPackage) (E : SomitogenesisSegmentFormationEvidence F) : SomitogenesisSegmentFormationClosed F := by
  exact And.intro E.segmentationClockClosed (And.intro E.wavefrontPropagationClosed (And.intro E.segmentBoundaryDeterminationClosed E.segmentPolarityClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse