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


        describe("#save") do
             it("adds a word to the array of saved words") do
               test_word = Word.new("Machine Language")
               test_word.save()
               expect(Word.all()).to(eq([test_word]))
             end
           end



           describe(".clear") do
                 it("empties out all of the saved words") do
                   Word.new("Machine Language").save()
                   Word.clear()
                   expect(Word.all()).to(eq([]))
                 end
               end




               describe(".find") do
                   it("returns a word by its id number") do
                     test_word = Word.new()
                     test_word.save()
                     test_word2 = Word.new()
                     test_word2.save()
                     expect(Word.find(test_word.id())).to(eq(test_word))
                   end
                 end










  end
