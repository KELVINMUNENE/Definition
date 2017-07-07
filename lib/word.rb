class Words
    @@words = []

    define_method(:initialize) do |word, definition, id|
      @word = word
      @definition = definition
      @id = id
    end

end
