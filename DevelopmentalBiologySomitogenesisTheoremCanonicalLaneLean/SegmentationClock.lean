import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure SegmentationClockPackage where
  oscillatorCellTypes : Type u
  clockPeriod : Prop
  phaseGradient : Prop
  synchronizationMechanism : Prop
  robustness : Prop

structure SegmentationClockEvidence (S : SegmentationClockPackage) where
  clockPeriodClosed : S.clockPeriod
  phaseGradientClosed : S.phaseGradient
  synchronizationMechanismClosed : S.synchronizationMechanism
  robustnessClosed : S.robustness

def SegmentationClockClosed (S : SegmentationClockPackage) : Prop :=
  S.clockPeriod ∧ S.phaseGradient ∧ S.synchronizationMechanism ∧ S.robustness

theorem segmentation_clock_closed_from_evidence (S : SegmentationClockPackage) (E : SegmentationClockEvidence S) : SegmentationClockClosed S := by
  exact And.intro E.clockPeriodClosed
    (And.intro E.phaseGradientClosed
      (And.intro E.synchronizationMechanismClosed E.robustnessClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse