require 'sinatra/base'
require './lib/bill.rb'
require './views/helpers/view_helpers.rb'

class SkyBill < Sinatra::Base

  include ViewHelpers

  set :public_folder, File.dirname(__FILE__) + '/public'

  before do
    @bill = Bill.new
  end

  get '/' do
    slim :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
