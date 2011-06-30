
require 'offer'

describe 'Offer filter' do
    it 'returns list as-is when there are no duplicates' do
        names = %w(foo bar)
        filter(names).should == %w(foo bar)
    end
    it 'removes duplicates'
end
