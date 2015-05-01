require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('/lib/word.rb')

get('/') do
    @all_words = words.sort()
    words = Word.all()
    erb(:index)
end
