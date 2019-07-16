require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
      erb :user_input
    end
    post '/result' do
      converter = PigLatinizer.new
      @result_text = converter.piglatinize(params[:user_input])
      erb :result
    end
end