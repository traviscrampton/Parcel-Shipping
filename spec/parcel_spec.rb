require('rspec')
require('parcel')

describe('Parcel') do
  describe('#shipping') do
    it('returns volume based on height width and length') do
      test_parcel=Parcel.new(5,10,3,20)
      expect(test_parcel.shipping()).to(eq(150))
    end
  end
end
