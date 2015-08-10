require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/result') do
  height = params.fetch('height').to_f()
  length = params.fetch('length').to_f()
  width = params.fetch('width').to_f()
  weight = params.fetch('weight').to_f()
  distance = params.fetch('distance').to_f()
  speed = params.fetch('speed')
  if speed.downcase() != ("yes"||"no")
    @result = "Please enter either Yes or No in expedited shipping"
    erb(:error)
  else
    @parcel = Parcel.new(height, length, width, weight)
    @result = (@parcel.shipping(distance, speed)).round(2)
    erb(:result)
  end
end
