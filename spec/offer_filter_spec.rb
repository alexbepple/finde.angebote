
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

describe 'Offers' do
    it 'are sorted by date' do
        offer_sort_key('foo-2010-01-02').should < offer_sort_key('bar-2010-01-03')
    end
    it 'without date are sorted before those with date' do
        offer_sort_key('foo').should < offer_sort_key('foo-2010-01-02')
    end
end

