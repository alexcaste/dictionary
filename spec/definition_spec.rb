require("rspec")
require("word")
require('pry')
require('definition')

describe(Definition) do

    describe('#w_class') do
        it('returns the class category of a definition') do
            test_def = Definition.new(:class => "Noun", :definition => "testing")
            expect(test_def.w_class()).to(eq("Noun"))
        end
    end


end
