import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure Dll4NotchRegulationPackage where
  dll4Expression : Prop
  notchActivation : Prop
  hes7Oscillation : Prop
  lfngModulation : Prop
  dll4ExpressionTerm : dll4Expression
  notchActivationTerm : notchActivation
  hes7OscillationTerm : hes7Oscillation
  lfngModulationTerm : lfngModulation

structure Dll4NotchRegulationEvidence (R : Dll4NotchRegulationPackage) where
  dll4ExpressionClosed : R.dll4Expression
  notchActivationClosed : R.notchActivation
  hes7OscillationClosed : R.hes7Oscillation
  lfngModulationClosed : R.lfngModulation

def Dll4NotchRegulationClosed (R : Dll4NotchRegulationPackage) : Prop :=
  R.dll4Expression ∧ R.notchActivation ∧ R.hes7Oscillation ∧ R.lfngModulation

theorem dll4_notch_regulation_closed_from_evidence (R : Dll4NotchRegulationPackage) (E : Dll4NotchRegulationEvidence R) : Dll4NotchRegulationClosed R := by
  exact And.intro E.dll4ExpressionClosed (And.intro E.notchActivationClosed (And.intro E.hes7OscillationClosed E.lfngModulationClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse