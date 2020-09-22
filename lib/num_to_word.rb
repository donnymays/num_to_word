class Number
  def initialize(number)
    @number = number
    @ones = {"1"=>"one", "2"=>"two", "3"=>"three", "4"=>"four", "5"=>"five", "6"=>"six", "7"=>"seven", "8"=>"eight", "9"=>"nine"}
  end

  def number
    @number
  end

  def ones
    @ones
  end

  def number_to_word()
    as_words = []
    number_array = @number.split("")
    number_array.each do |element|
      word = @ones.fetch(element)
      as_words.push(word)
    end
    as_words.join(" ")
  end
end

