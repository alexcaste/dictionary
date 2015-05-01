require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
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

get('/single_word/:w_id') do
    @word = Word.find(params.fetch('w_id').to_i())
    erb(:single_word)
end

post('/delete_word') do
    word_id = params.fetch('word_id')
    Word.delete(Word.find(word_id))
    @all_words = Word.all()
    erb(:index)
end

post('/new_define/') do
    @word = Word.find(params.fetch('word_id').to_i())
    w_class = params.fetch('w_class')
    new_def = params.fetch('new_def')
    add_def = Definition.new(:w_class => w_class, :define => new_def)
    @word.add_definition(add_def)
    erb(:single_word)
end
