require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/result') do
  height = params.fetch('height')
  length = params.fetch('length')
  width = params.fetch('width')
  weight = params.fetch('weight')
  distance = params.fetch('distance')
  speed = params.fetch('speed')
  @parcel = Parcel.new(height, length, width, weight)
  @result = @parcel.shipping(distance, speed)
  erb(:result)
end
