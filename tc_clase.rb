# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./clase.rb"
require "test/unit"

class Test_Racional < Test::Unit::TestCase

    def test_pruebas
      
      assert_equal("(16/21)",( Racional.new(2,3).suma(8,4)).to_s)
      assert_equal("(8/-3)",( Racional.new(2,3).resta(8,4)).to_s)
      assert_equal("(4/3)",( Racional.new(2,3).producto(8,4)).to_s)
      assert_equal("(3/1)",( Racional.new(2,3).division(8,4)).to_s)

    end
end
