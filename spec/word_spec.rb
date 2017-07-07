require('rspec')
  require('word')


  describe('Word') do
    before() do
      Word.clear()
    end

    describe("#word") do
      it("returns the word entered") do
        test_word = Word.new("Machine Language")
        expect(test_word.make()).to(eq("Machine Language"))
      end
    end


  end
