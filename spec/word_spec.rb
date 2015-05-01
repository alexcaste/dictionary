require("rspec")
require("word")
require('pry')

describe(Word) do
    before() do
        Word.clear()
    end

    describe('#name') do
        it('returns the name of word') do
        test_word = Word.new(:name => "hello")
        expect(test_word.name()).to(eq("hello"))
        end
    end

    describe('#save') do
        it("saves a word into an array as an object") do
            test_word = Word.new(:name => "hello")
            test_word.save()
            expect(Word.all()).to(eq([test_word]))
        end
    end

    describe('.clear') do
        it("clears the all_words array") do
            test_word = Word.new(:name => "hello")
            test_word.save()
            Word.clear()
            expect(Word.all()).to(eq([]))
        end
    end

end
