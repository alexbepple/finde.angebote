
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
  test_data = [
    ['are sorted by date', 'foo-2010-01-02', 'bar-2010-01-03'],
    ['without date come before those with date', 'foo', '20100101'],
    ['can have a 2-digit year', '20100101', '110101'],
  ]
  test_data.each do |set|
    it set[0] do
      offer_sort_key(set[1]).should < offer_sort_key(set[2])
    end
  end
end
