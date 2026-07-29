import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure FgfWntGradientPackage where
  morphogenDiffusion : Prop
  gradientFormation : Prop
  thresholdResponse : Prop
  gradientDynamics : Prop

structure FgfWntGradientEvidence (F : FgfWntGradientPackage) where
  morphogenDiffusionClosed : F.morphogenDiffusion
  gradientFormationClosed : F.gradientFormation
  thresholdResponseClosed : F.thresholdResponse
  gradientDynamicsClosed : F.gradientDynamics

def FgfWntGradientClosed (F : FgfWntGradientPackage) : Prop :=
  F.morphogenDiffusion ∧ F.gradientFormation ∧ F.thresholdResponse ∧ F.gradientDynamics

theorem fgf_wnt_gradient_closed_from_evidence (F : FgfWntGradientPackage) (E : FgfWntGradientEvidence F) : FgfWntGradientClosed F := by
  exact And.intro E.morphogenDiffusionClosed
    (And.intro E.gradientFormationClosed
      (And.intro E.thresholdResponseClosed E.gradientDynamicsClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse