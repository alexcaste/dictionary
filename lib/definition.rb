class Definition

    attr_reader(:w_class, :definition)

    define_method(:initialize) do |attributes|
        @w_class = attributes.fetch(:class)
        @definition = attributes.fetch(:definition)
    end
end
