# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./clase.rb"
require "test/unit"

class Test_Racional < Test::Unit::TestCase

    def test_pruebas
      
      assert_equal("(2/1)",( Racional.new(2,3).suma(6,3)).to_s)
      assert_equal("(-5/2)",( Racional.new(3,4).resta(1,3)).to_s)
      assert_equal("(2/9)",( Racional.new(2,3).producto(2,6)).to_s)
      assert_equal("(12/7)",( Racional.new(2,3).division(8,7)).to_s)

    end
end
