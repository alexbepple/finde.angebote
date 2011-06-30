
require 'offer'

describe 'Offer filter' do
    it 'returns list as-is when there are no duplicates' do
        names = %w(foo bar)
        filter(names).should == %w(foo bar)
    end
    it 'removes duplicates' do
        names = %w(foo.pdf foo.doc)
        filter(names).should == ['foo.pdf']
    end
    it 'prefers PDFs' do
        names = %w(baz.doc baz.pdf)
        filter(names).should == ['baz.pdf']
    end
end

describe 'Filename prefix' do
    it 'is the full name without the extension' do
        prefix('foo.pdf').should == 'foo'
    end
end
