require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the shipping cost path', {:type => :feature}) do
  it('processes the user entry and returns it the cost of shipping') do
    visit('/')
    fill_in('length', :with => '2')
    fill_in('width', :with => '1')
    fill_in('height', :with => '3')
    fill_in('weight', :with => '5')
    fill_in('distance', :with => '50')
    fill_in('speed', :with => 'dog')
    click_button('Send')
    expect(page).to have_content("Please enter either Yes or No in expedited shipping")
  end
end
