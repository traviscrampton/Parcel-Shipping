class Parcel
  define_method(:initialize) do |height, length, width, weight|
    @volume = height * length * width
    @weight = weight
  end

  define_method(:shipping) do |distance, speed|
      volume_price = @volume*(0.10)
      weight_price = @weight
      distance_price = distance * (0.30)
      speed_price = 3*(volume_price + weight_price + distance_price)
      price = volume_price + weight_price + distance_price
      speed.upcase!()
      if speed == "YES"
        speed_price
      elsif speed == "NO"
        price
      elsif speed != ("YES" || "NO")
        "Please enter either Yes or No in expedited shipping"
    end
  end
end
