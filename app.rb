require 'sinatra/base'

class SkyBill < Sinatra::Base

  set :public_folder, File.dirname(__FILE__) + '/public'

  get '/' do
    "Hello World!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
