require 'sinatra/base'
require './lib/bill.rb'

class SkyBill < Sinatra::Base

  set :public_folder, File.dirname(__FILE__) + '/public'

  before do
    @bill = Bill.new
  end

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
