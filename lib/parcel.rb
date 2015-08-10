class Parcel
  define_method(:initialize) do |height, length, width, weight|
    @volume = height * length * width
    @weight = weight
  end

  define_method(:shipping) do
    @volume
    
  end
end
