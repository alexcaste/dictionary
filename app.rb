require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
# require('./lib/definition')
require('./lib/word.rb')

get('/') do
    @all_words = Word.unsorted()

    erb(:index)
end

post('/all_words') do
    word = params.fetch('user_word')
    Word.new({:name => word}).save()
    @all_words = Word.all()
    erb(:index)
end

get('/single_word') do
    erb(:single_word)
end
