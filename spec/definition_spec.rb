require('rspec')
require('definition.rb')

describe(Definition) do

  describe('#definition') do
    it('returns the definition of a word') do
      test_definition = Definition.new({:definition => 'definition'})
      expect(test_definition.definition()).to(eq('definition'))
    end
  end
end
