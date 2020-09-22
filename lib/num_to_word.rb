require('pry')

class Number  
  def initialize(number)
    @number = number
    @ones = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
    @teens = {10=>"ten", 11=>"eleven", 12=>"twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
  end

  def number
    @number
  end

  def ones
    @ones
  end
  
  def ones_number_to_word()
    as_words = (@ones.fetch(@number))
  end  

  def teens_number_to_word()
    as_words = (@teens.fetch(@number))
  end

  def number_to_word() 
    if @number < 10
      ones_number_to_word()
    elsif (@number >= 10 && @number < 20)
      teens_number_to_word
    end
  end
end 