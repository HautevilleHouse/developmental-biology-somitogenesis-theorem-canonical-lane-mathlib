import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure SomiteClockWavefrontPackage where
  somiteFormation : Prop
  clockOscillation : Prop
  wavefrontProgression : Prop
  segmentationCycle : Prop
  retinoicAcidGradient : Prop
  fgfWntSignaling : Prop
  hesHerGeneExpression : Prop
  clockWavefrontCoupling : Prop

structure SomiteClockWavefrontEvidence (P : SomiteClockWavefrontPackage) where
  somiteFormationClosed : P.somiteFormation
  clockOscillationClosed : P.clockOscillation
  wavefrontProgressionClosed : P.wavefrontProgression
  segmentationCycleClosed : P.segmentationCycle
  retinoicAcidGradientClosed : P.retinoicAcidGradient
  fgfWntSignalingClosed : P.fgfWntSignaling
  hesHerGeneExpressionClosed : P.hesHerGeneExpression
  clockWavefrontCouplingClosed : P.clockWavefrontCoupling

def SomiteClockWavefrontClosed (P : SomiteClockWavefrontPackage) : Prop :=
  P.somiteFormation ∧ P.clockOscillation ∧ P.wavefrontProgression ∧
  P.segmentationCycle ∧ P.retinoicAcidGradient ∧ P.fgfWntSignaling ∧
  P.hesHerGeneExpression ∧ P.clockWavefrontCoupling

theorem somite_clock_wavefront_closed_from_evidence
    (P : SomiteClockWavefrontPackage) (E : SomiteClockWavefrontEvidence P) :
    SomiteClockWavefrontClosed P := by
  exact And.intro E.somiteFormationClosed
    (And.intro E.clockOscillationClosed
      (And.intro E.wavefrontProgressionClosed
        (And.intro E.segmentationCycleClosed
          (And.intro E.retinoicAcidGradientClosed
            (And.intro E.fgfWntSignalingClosed
              (And.intro E.hesHerGeneExpressionClosed
                E.clockWavefrontCouplingClosed))))))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse
