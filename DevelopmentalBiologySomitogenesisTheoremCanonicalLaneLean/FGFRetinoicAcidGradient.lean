import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

struct FGFRetinoicAcidGradient (A : AdmissibleClass) where
  fgfSignaling : Type
  retinoicAcid : Type
  anteroposteriorGradient : Prop
  gradientFormation : Prop
  gradientMaintenance : Prop
  gradientInterpretation : Prop

struct FGFRetinoicAcidGradientEvidence (A : AdmissibleClass) (F : FGFRetinoicAcidGradient A) where
  anteroposteriorGradientClosed : F.anteroposteriorGradient
  gradientFormationClosed : F.gradientFormation
  gradientMaintenanceClosed : F.gradientMaintenance
  gradientInterpretationClosed : F.gradientInterpretation

def FGFRetinoicAcidGradientClosed (A : AdmissibleClass) (F : FGFRetinoicAcidGradient A) : Prop :=
  F.anteroposteriorGradient ∧ F.gradientFormation ∧ F.gradientMaintenance ∧ F.gradientInterpretation

theorem fgf_retinoic_acid_gradient_closed_from_evidence (A : AdmissibleClass) (F : FGFRetinoicAcidGradient A)
    (E : FGFRetinoicAcidGradientEvidence A F) : FGFRetinoicAcidGradientClosed A F := by
  exact And.intro E.anteroposteriorGradientClosed (And.intro E.gradientFormationClosed
    (And.intro E.gradientMaintenanceClosed E.gradientInterpretationClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse