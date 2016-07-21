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

  post '/method' do
    @symp = params[:symptom]
    @medicine = evaluate(params[:symptom])
    erb :result
  end
end
