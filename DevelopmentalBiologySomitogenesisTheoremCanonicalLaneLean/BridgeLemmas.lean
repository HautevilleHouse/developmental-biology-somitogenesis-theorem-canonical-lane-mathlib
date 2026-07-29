import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SomitogenesisBridgeClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact somite_bridge_from_admissible_class A

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse