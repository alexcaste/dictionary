class Word

    @@all_words = []
    @@w_index = 0
    # @@sort_words={}

    attr_reader(:name, :definition, :w_id)

    define_method(:initialize) do |attributes|
        @name = attributes.fetch(:name)
        @definition = []
        @@w_index = @@w_index += 1
        @w_id = @@w_index
        @sort_words = {}    end

    define_singleton_method(:all) do
        @@all_words
    end

    define_method(:save) do
        @@all_words.push(self)
    end

    define_singleton_method(:clear) do
        @@all_words = []
        @@sort_words = []
        @@w_index = 0
    end

    define_singleton_method(:find) do |id|
        found_word = nil
        @@all_words.each() do |word|
            if word.w_id() == id.to_i
                found_word = word
            end
        end
        found_word
    end

    define_method(:add_definition) do |new_def|
        @definition.push(new_def)
    end

    define_singleton_method(:delete) do |target_word|
        to_delete = target_word.w_id()
        @@all_words.delete_if{|search_word| search_word.eql?(target_word)}
    end

    # define_singleton_method(:sorted) do
    #     @@all_words.each() do |object|
    #         word = object.name()
    #         id = object.w_id()
    #         @sort_words[word] = id
    #     end
    # end
end
