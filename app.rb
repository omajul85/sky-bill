require 'sinatra/base'
require 'sinatra/partial'
require './lib/bill.rb'

class SkyBill < Sinatra::Base

  set :public_folder, File.dirname(__FILE__) + '/public'
  
  register Sinatra::Partial
  
  set :partial_template_engine, :erb
  enable :partial_underscores

  before do
    @bill = Bill.new
  end

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
