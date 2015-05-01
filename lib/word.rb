class Word

    @@all_words = []

    attr_reader(:name)

    define_method(:initialize) do |attributes|
        @name = attributes.fetch(:name)
    end

    define_singleton_method(:all) do
        @@all_words
    end

    define_method(:save) do
        @@all_words.push(self)
    end

    define_singleton_method(:clear) do
        @@all_words = []
    end


end
