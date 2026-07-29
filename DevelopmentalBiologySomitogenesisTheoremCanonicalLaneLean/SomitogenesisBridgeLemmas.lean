import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean.SomitogenesisAdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse