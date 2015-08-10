require('rspec')
require('parcel')

describe('Parcel') do
  describe('#shipping') do
   it('returns volume based on height width and length') do
      test_parcel=Parcel.new(5,10,3,20)
      expect(test_parcel.shipping()).to(eq(150))
    end
    it('returns the weight') do
      test_parcel=Parcel.new(5, 10, 3, 20)
      expect(test_parcel.shipping()).to(eq(20))
    end
    it('returns the cost of shipping without speed') do
      test_parcel=Parcel.new(5, 10, 3, 20)
      expect(test_parcel.shipping(50)).to(eq(50))
    end
  end
end
