class Words
    @@words = []

    define_method(:initialize) do |word, definition, id|
      @word = word
      @definition = definition
      @id = id
    end

end

  define_method(:word) do
    @word
  end

  define_method(:definition) do
    @definition
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
       @@words
     end

  define_method(:save) do
        @@words.push(self)
      end

  define_singleton_method(:clear) do
        @@words = []
      end

      define_singleton_method(:find) do |id|
        found_word = nil
        @@words.each() do |word|
          if word.id().eql?(id)
            found_word = word
          end
        end
        found_word
      end
