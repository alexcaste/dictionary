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
     visit('/')
     fill_in('user_word', :with => 'Apple')
     click_button('Add')
     expect(page).to have_content('Apple')
   end
 end

 describe('path for adding definition to a word', {:type => :feature}) do
     it('allows the user to add a definition to a word in the dictionary') do
         visit('/')
         fill_in('user_word', :with => 'Pear')
         click_button('Add')
         expect(page).to have_content('Pear')
         click_link('Pear')
         expect(page).to have_content('Here are')
         fill_in('new_def', :with => 'A yummy fruit')
         click_button('Add')
         expect(page).to have_content('A yummy fruit')
    end
end
