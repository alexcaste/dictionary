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

describe('path for adding a word', {:type => :feature}) do
   it('allows user to add a word to dictionary ') do
     visit('/all_words/new')
     fill_in('user_word', :with => 'Apple')
     click_button('Add Word')
     expect(page).to have_content('Apple')
   end
 end
