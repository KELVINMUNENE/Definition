require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('.lib/defination')

get('/') do
  @words = Word.all()
  erb(index)
end
