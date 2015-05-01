require("rspec")
require("word")
require('pry')
require('definition')

describe(Definition) do

    describe('#w_class') do
        it('returns the w_class category of a definition') do
            test_def = Definition.new(:w_class => "Noun", :define => "testing")
            expect(test_def.w_class()).to(eq("Noun"))
        end
    end

    describe('#define') do
        it('returns the define class of the definition') do
            test_def = Definition.new(:w_class => "Noun", :define => "testing")
            expect(test_def.define()).to(eq("testing"))
        end
    end
end
