class Definition

    attr_reader(:w_class, :define)

    define_method(:initialize) do |attributes|
        @w_class = attributes.fetch(:w_class)
        @define = attributes.fetch(:define)
    end
end
