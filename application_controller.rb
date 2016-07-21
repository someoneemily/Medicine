require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/method' do
    @medicine = evaluate(params[:symptom])
    erb :results
  end
end
