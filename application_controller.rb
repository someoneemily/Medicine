require 'bundler'
Bundler.require
# require_relative "views/title_page.erb"

class ApplicationController < Sinatra::Base

  get '/' do
    erb :title_page
  end

  get '/index' do
    erb :index
  end

  post '/method' do
    @medicine = evaluate(params[:symptom])
    erb :results
  end
end
