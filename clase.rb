require './gcd.rb'

#definicion de la clase
class Racional
	#metodo inicializar la clase
	def initialize(num,den)

 	 #atributos
	  @num = num
	  @den = den
	
	end
	
	#redefinido
	def to_s
	"(#{@num}/#{@den})"
	end
	
 attr_reader :num, :den
 
    def reducir
           com_div = gcd(@num, @den)
           @num = @num/com_div
           @den = @den/com_div
	   Racional.new(@num,@den)
    end
    
if :den == 0 || @den == 0
 puts "ERROR el denominador no puede ser cero"
  else
    
    def suma(num,den)
      if den == @den
	result= den + @den
	r=Racional.new(result,den)
	
      else
	result = num*@den + @num*den
	result1 =  (num*@den+@num)+(@num*den+num)
	r=Racional.new(result,result1)
      end
      r.reducir
    end
    
    def resta(num,den)
      if den == @den
	result= den - @den
	r=Racional.new(result,den)
	
      else
	result = num*@den - @num*den
	result1 =  (den*@den+@num)-(@den*den+num)
	r=Racional.new(result,result1)
      end
      r.reducir
    end
    
    
    def producto(num,den)
	
      result=num*@num
      result1=den*@den
      r=Racional.new(result,result1)
      r.reducir
      
    end
    
    def division(num,den)
      
      result=num*@den
      result1=den*@num
      r=Racional.new(result,result1)
      r.reducir
    end
  end
 
end

# t1 = Racional.new(2,3).suma(6,3) 
# puts t1.to_s
# t2 = Racional.new(3,4).resta(1,3)
# puts t2.to_s
# t3=Racional.new(2,3).producto(2,6)
# puts t3.to_s
# t4=Racional.new(2,3).division(8,7)
# puts t4.to_s