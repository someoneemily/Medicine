require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/method' do
    @symptoms_hash = {
      "nausea" => ["nausea med1", "nausea med2"],
      "headaches" => ["headaches med1", "headaches med2"],
      "fever" => ["fever med1", "fever med2"]
    }
    @symptoms_hash[params[:symptom]]
    erb :results
  end
end
