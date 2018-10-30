# CONTROLLER
require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
require_relative "models/text_analyzer.rb" # pulls in text_analyzer.rb
# allows us to create new instances of the TextAnalyzer class from within our controller.

class App < Sinatra::Base

  get '/' do # this route renders the index.erb page
    erb :index
  end

  post '/' do # receives the form data through params and renders the results page
    # text_from_user = params[:user_text]

    # take the data from params[:user_text] and feed it into a new instance of the TextAnalyzer class
    @analyzed_text = TextAnalyzer.new(params[:user_text])

    erb :results
  end



end # end of App class
