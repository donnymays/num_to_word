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
end