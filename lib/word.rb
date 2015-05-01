class Word

    @@all_words = []
    # @@sort_words = []
    @@w_index = 0
    # @sorted = []
    # @@sorting_id = 0


    attr_reader(:name, :definition, :w_id)

    define_method(:initialize) do |attributes|
        @name = attributes.fetch(:name)
        @definition = []
        @@w_index = @@w_index += 1
        @w_id = @@w_index
    end

    define_singleton_method(:all) do
        # @@all_words.each do |word|
        #     @sorted.push(word.name())
        # end
        # @@sort_words = @sorted.sort()
        # @@all_words.sort_by {|name,id| id}
        @@all_words
    end

    # define_singleton_method(:unsorted) do
    #     @@all_words
    # end

    # define_singleton_method(:sort_id) do |search|
    #     found_id = nil
    #     @@all_words.each() do |word_object|
    #         word_id = word_object.w_id()
    #         if word_object.name().eql?(search)
    #             found_id = word_id.to_i()
    #         end
    #     end
    #     @@sorting_id = found_id
    # end


    define_method(:save) do
        @@all_words.push(self)
    end

    define_singleton_method(:clear) do
        @@all_words = []
        @@sort_words = []
        @@w_index = 0
        # @@sorting_id = 0
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

    define_singleton_method(:delete) do |target_word|
        to_delete = target_word.w_id()
        @@all_words.delete_if{|search_word| search_word.eql?(target_word)}
    end

    define_method(:add_definition) do |new_def|
        @definition.push(new_def)
    end

    define_singleton_method(:del_def) do |def|
      target_definition = def
      @definition.delete_if{|inside_def| inside_def.eql?(target_def}
    end


end
