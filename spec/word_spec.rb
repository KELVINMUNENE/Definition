require('rspec')
  require('word')


  describe('Word') do
    before() do
      Words.clear()
    end

    describe("#word") do
      it("returns the word entered") do
        test_word = Word.new("Machine Language")
        expect(test_word.word()).to(eq("Machine Language"))
      end
    end

    describe("#description") do
      it("returns the description entered") do
        test_word = Word.new("A language for the machine in computers")
        expect(test_word.description()).to(eq("Machine Language"))
      end
    end



    describe("#id") do
      it("returns the id entered") do
        test_word = Word.new("300")
        expect(test_word.id()).to(eq("300"))
      end
    end

    describe(".all") do
          it("is empty at first") do
            expect(Word.all()).to(eq([]))
          end
        end


  end
