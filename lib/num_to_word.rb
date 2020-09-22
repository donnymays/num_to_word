require('pry')

class Number  
  def initialize(number)
    @number = number
    @ones = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
    @teens = {10=>"ten", 11=>"eleven", 12=>"twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    @tens = {2=>"twenty", 3=>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}
    @hundreds = {1=>"one hundred", 2=>"two hundred", 3=>"three hundred", 4=>"four hundred", 5=>"five hundred", 6=>"six hundred", 7=>"seven hundred", 8=>"eight hundred", 9=>"nine hundred"}
    @thousands = {1=>"one thousand", 2=>"two thousand", 3=>"three thousand", 4=>"four thousand", 5=>"five thousand", 6=>"six thousand", 7=>"seven thousand", 8=>"eight thousand", 9=>"nine thousand"}
    @millions = {1=>"one million", 2=>"two million", 3=>"three million", 4=>"four million", 5=>"five million", 6=>"six million", 7=>"seven million", 8=>"eight million", 9=>"nine million"}
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
    number_array = @number.to_s.split("")
    as_words = []
    as_words.push(@tens.fetch(number_array[0].to_i))
    as_words.push(@ones.fetch(number_array[1].to_i))
    as_words.join(" ")
  end
  def hundreds()
    number_array = @number.to_s.split("") #["3", "0", "0"]
    as_words = []
    as_words.push(@hundreds.fetch(number_array[0].to_i))
    if (number_array[1].to_i) != 0
      as_words.push(@tens.fetch(number_array[1].to_i))
    end
    if (number_array[2].to_i) != 0
      as_words.push(@ones.fetch(number_array[2].to_i))
    end
    as_words.join(" ")
  end

  def thousands()
    as_words = []
    number_array = @number.to_s.split("") 
    as_words.push(@thousands.fetch(number_array[0].to_i))
    as_words.push(@hundreds.fetch(number_array[1].to_i))
    as_words.push(@tens.fetch(number_array[2].to_i))
    as_words.push(@ones.fetch(number_array[3].to_i))
    as_words.join(" ")
  end

  def teen_thousands()
    number_array = @number.to_s.split("") 
    as_words = []
    teen_thousand = []
    teen_thousand.push(number_array[0].to_i)
    teen_thousand.push(number_array[1].to_i)
    teen_thous = teen_thousand.join("").to_i
    as_words.push(@teens.fetch(teen_thous.to_i))
    as_words.push("thousand")
    as_words.push(@hundreds.fetch(number_array[2].to_i))
    as_words.push(@tens.fetch(number_array[3].to_i))
    as_words.push(@ones.fetch(number_array[4].to_i))
    as_words.join(" ")
  end

  def ten_thousands()
    number_array = @number.to_s.split("") 
    as_words = []    
    as_words.push(@tens.fetch(number_array[0].to_i))
    as_words.push(@ones.fetch(number_array[1].to_i))
    as_words.push("thousand")
    as_words.push(@hundreds.fetch(number_array[2].to_i))
    as_words.push(@tens.fetch(number_array[3].to_i))
    as_words.push(@ones.fetch(number_array[4].to_i))
    as_words.join(" ")
  end


  def number_to_word() 
    if @number < 10
      ones_number_to_word()
    elsif (@number >= 10 && @number < 20)
      teens_number_to_word()
    elsif (@number >= 20 && @number < 100)
      twenty_to_ninety()
    elsif (@number >= 100 && @number < 1000)
      hundreds()
    elsif (@number >= 1000 && @number < 9999)
      thousands()
    elsif (@number >= 10000 && @number < 20000)
      teen_thousands()
    elsif (@number >= 20000 && @number < 99999)
      ten_thousands()
    end
  end
end 
