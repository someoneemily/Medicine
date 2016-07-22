require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :title_page
  end

  get '/index' do
    erb :index
  end

  get '/submit' do
    erb :result
  end

  post '/method' do
    @symp = params[:symptom]
    @medicine = evaluate(params[:symptom])
    @medpic = getpics(@medicine)
    @meddescrip = getdescrip(@medicine)
    @levelofpain = feedback(params[:painlevel])
    erb :result
  end
end
