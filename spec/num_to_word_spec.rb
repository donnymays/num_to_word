require ('num_to_word')
require('rspec')

describe(Number) do
 
  describe("#ones_number_to_word") do
    it('returns the english name of a single digit') do
      numblur = Number.new(3)
      expect(numblur.number_to_word()).to(eq("three"))
    end
  end

  describe("#teens_number_to_word") do
    it('returns english name of an integer between 10 and 19') do
      numblur = Number.new(14)
      expect(numblur.number_to_word()).to(eq("fourteen"))
    end
  end

  describe("#twenty_to_ninety") do
    it('returns english name of a number between 20 and 99') do
      numblur = Number.new(34)
      expect(numblur.number_to_word()).to(eq("thirty four"))
    end
  end

  describe("#hundreds") do
    it('returns english name of numbers between 100 and 999') do
      numblur = Number.new(300)
      expect(numblur.number_to_word()).to(eq("three hundred"))
    end
  end

  describe("#thousands") do
    it('returns name of number between 1000 and 9999') do
      numblur = Number.new(2345)
      expect(numblur.number_to_word()).to(eq("two thousand three hundred forty five"))
    end
  end

  describe("#teen_thousands") do
    it('returns english name of an integer between 11,000 and 19,999') do
      numblur = Number.new(14234)
      expect(numblur.number_to_word()).to(eq("fourteen thousand two hundred thirty four"))
    end
  end

  describe("#ten_thousands") do
    it('returns english name of an integer between 20,000 and 99,999') do
      numblur = Number.new(67234)
      expect(numblur.number_to_word()).to(eq("sixty seven thousand two hundred thirty four"))
    end
  end

end