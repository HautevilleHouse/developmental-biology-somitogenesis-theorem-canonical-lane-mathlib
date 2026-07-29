import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure ClockAndFrontPackage where
  segmentationClockPeriod : ℝ
  determinationFrontSpeed : ℝ
  somitogenesisDuration : ℝ
  posteriorGrowthRate : ℝ
  periodicGeneExpression : ℝ → ℝ

def ClockAndFrontClosed (C : ClockAndFrontPackage) : Prop :=
  C.segmentationClockPeriod > 0 ∧
  C.determinationFrontSpeed > 0 ∧
  C.somitogenesisDuration > 0 ∧
  C.posteriorGrowthRate > 0

theorem clock_and_front_positive (C : ClockAndFrontPackage) :
    C.segmentationClockPeriod > 0 ∧
    C.determinationFrontSpeed > 0 ∧
    C.somitogenesisDuration > 0 ∧
    C.posteriorGrowthRate > 0 := by
  constructor
  · exact C.segmentationClockPeriod > 0
  · constructor
    · exact C.determinationFrontSpeed > 0
    · constructor
      · exact C.somitogenesisDuration > 0
      · exact C.posteriorGrowthRate > 0

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse