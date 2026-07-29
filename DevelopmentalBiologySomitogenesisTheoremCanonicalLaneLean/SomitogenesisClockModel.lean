import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure SomitogenesisClockModel where
  wavefront : Type u
  cellStates : Type v
  NotchDeltaOscillation : Prop
  segmentationClock : Prop
  fibronectinGradient : Prop

structure SomitogenesisClockEvidence (M : SomitogenesisClockModel) where
  NotchDeltaOscillationClosed : M.NotchDeltaOscillation
  segmentationClockClosed : M.segmentationClock
  fibronectinGradientClosed : M.fibronectinGradient

def SomitogenesisClockClosed (M : SomitogenesisClockModel) : Prop :=
  M.NotchDeltaOscillation ∧ M.segmentationClock ∧ M.fibronectinGradient

theorem somitogenesis_clock_closed_from_evidence (M : SomitogenesisClockModel)
    (E : SomitogenesisClockEvidence M) : SomitogenesisClockClosed M := by
  exact And.intro E.NotchDeltaOscillationClosed
    (And.intro E.segmentationClockClosed E.fibronectinGradientClosed)

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse