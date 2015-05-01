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
            expect(Word.unsorted()).to(eq([test_word]))
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

    describe('#w_id') do
        it("resturns a unique identifier for a word object") do
            test_word = Word.new(:name => "hello")
            test_word.save()
            expect(test_word.w_id()).to(eq(1))
        end
    end

    describe('.find') do
        it("returns the word based on the unique identifier") do
            test_word = Word.new(:name => "hello")
            test_word.save()
            test_word2 = Word.new(:name => "bye")
            test_word2.save()
            expect(Word.find(test_word2.w_id())).to(eq(test_word2))
        end
    end

    describe('.delete') do
        it("deletes a word from the all_words array") do
            test_word = Word.new(:name => "hello")
            test_word.save()
            test_word2 = Word.new(:name => "bye")
            test_word2.save()
            Word.delete(test_word)
            expect(Word.unsorted()).to(eq([test_word2]))
        end
    end

    describe('.all') do
        it("returns an array of sorted alphabetical words") do
            test_word = Word.new(:name => "zebra")
            test_word.save()
            test_word2 = Word.new(:name => "apple")
            test_word2.save()
            expect(Word.all()[0]).to(eq("apple"))
        end
    end

    describe('.sort_id') do
        it("returns to unique identifier for a word taken from a word object") do
        test_word = Word.new(:name => "hello")
        test_word.save()
        test_word2 = Word.new(:name => "bye")
        test_word2.save()
        search_word = test_word.name()
        expect(Word.sort_id(test_word.name())).to(eq(test_word.w_id()))
        end
    end
end
