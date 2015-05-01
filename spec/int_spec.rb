require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('path for index', {:type => :feature}) do
  it('displays the index page') do
    visit('/')
    expect(page).to have_content('Dictionary')
  end
end
