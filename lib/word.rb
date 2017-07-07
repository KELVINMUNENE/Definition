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
