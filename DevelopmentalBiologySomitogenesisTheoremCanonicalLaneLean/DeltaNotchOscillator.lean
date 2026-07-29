import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure DeltaNotchOscillatorPackage where
  deltaNotchIntercellularSignaling : Prop
  lateralInhibition : Prop
  her1Her7GeneExpression : Prop
  oscillatorSynchronization : Prop
  segmentationClockPeriod : Prop
  somiteBoundaryEstablishment : Prop

structure DeltaNotchOscillatorEvidence (D : DeltaNotchOscillatorPackage) where
  deltaNotchIntercellularSignalingClosed : D.deltaNotchIntercellularSignaling
  lateralInhibitionClosed : D.lateralInhibition
  her1Her7GeneExpressionClosed : D.her1Her7GeneExpression
  oscillatorSynchronizationClosed : D.oscillatorSynchronization
  segmentationClockPeriodClosed : D.segmentationClockPeriod
  somiteBoundaryEstablishmentClosed : D.somiteBoundaryEstablishment

def DeltaNotchOscillatorClosed (D : DeltaNotchOscillatorPackage) : Prop :=
  D.deltaNotchIntercellularSignaling ∧ D.lateralInhibition ∧
  D.her1Her7GeneExpression ∧ D.oscillatorSynchronization ∧
  D.segmentationClockPeriod ∧ D.somiteBoundaryEstablishment

theorem delta_notch_oscillator_closed_from_evidence
    (D : DeltaNotchOscillatorPackage) (E : DeltaNotchOscillatorEvidence D) :
    DeltaNotchOscillatorClosed D := by
  exact And.intro E.deltaNotchIntercellularSignalingClosed
    (And.intro E.lateralInhibitionClosed
      (And.intro E.her1Her7GeneExpressionClosed
        (And.intro E.oscillatorSynchronizationClosed
          (And.intro E.segmentationClockPeriodClosed
            E.somiteBoundaryEstablishmentClosed))))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse
