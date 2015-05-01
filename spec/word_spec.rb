require("rspec")
require("word")
require('pry')

describe(Word) do
    # before() do
    #     Word.clear()
    # end

    describe('#name') do
        it('returns the name of word') do
        test_word = Word.new(:name => "hello")
        expect(test_word.name()).to(eq("hello"))
        end
    end
end
