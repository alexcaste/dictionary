require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
# require('./lib/definition')
require('./lib/word.rb')

get('/') do
    @all_words = Word.all()
    erb(:index)
end

post('/new_word') do
    word = params.fetch('user_word')
    Word.new({:name => word}).save()
    @all_words = Word.all()
    erb(:index)
end

get('/single_word') do
    erb(:single_word)
end

post('/delete_word') do
    word_id = params.fetch('word_id')
    Word.delete(Word.find(word_id))
    @all_words = Word.all()
    erb(:index)
end
