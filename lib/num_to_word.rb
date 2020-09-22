require('pry')

class Number  
  def initialize(number)
    @number = number
    @ones = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
    @teens = {10=>"ten", 11=>"eleven", 12=>"twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    @tens = {2=>"twenty", 3=>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}
  end

  def number
    @number
  end
  
  def ones_number_to_word()
    as_words = (@ones.fetch(@number))
  end  

  def teens_number_to_word()
    as_words = (@teens.fetch(@number))
  end

  def twenty_to_ninety()
    number_array = @number.to_s.split("") #["3", "4"]
    as_words = []
    as_words.push(@tens.fetch(number_array[0].to_i))
    as_words.push(@ones.fetch(number_array[1].to_i))
    as_words.join(" ")
  end

  def number_to_word() 
    if @number < 10
      ones_number_to_word()
    elsif (@number >= 10 && @number < 20)
      teens_number_to_word()
    elsif (@number >= 20 && @number < 100)
      twenty_to_ninety()
    end
  end
end 

# array[-2] = tens.fetch
# array[-1] = ones.fetch