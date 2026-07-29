import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure NotchOscillatorNetworkPackage where
  cellPopulation : Nat
  deltaNotchCoupling : Prop
  herParalogPair : Prop
  oscillatorPhaseLocking : Prop
  intercellularCouplingStrength : ℝ

structure NotchOscillatorNetworkEvidence (N : NotchOscillatorNetworkPackage) where
  deltaNotchCouplingClosed : N.deltaNotchCoupling
  herParalogPairClosed : N.herParalogPair
  oscillatorPhaseLockingClosed : N.oscillatorPhaseLocking

def NotchOscillatorNetworkClosed (N : NotchOscillatorNetworkPackage) : Prop :=
  N.deltaNotchCoupling ∧ N.herParalogPair ∧ N.oscillatorPhaseLocking

theorem notch_oscillator_network_closed_from_evidence
    (N : NotchOscillatorNetworkPackage) (E : NotchOscillatorNetworkEvidence N) :
    NotchOscillatorNetworkClosed N := by
  exact And.intro E.deltaNotchCouplingClosed
    (And.intro E.herParalogPairClosed E.oscillatorPhaseLockingClosed)

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse