require ('num_to_word')
require('rspec')

describe(Number) do
  describe("#number_to_word") do
    it('returns the english name of an imputted integer') do
      numblur = Number.new("3")
      expect(numblur.number_to_word()).to(eq("three"))
    end
  end
end