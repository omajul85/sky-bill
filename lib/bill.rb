require 'http'
require 'json'

URL = "http://safe-plains-5453.herokuapp.com/bill.json"

def get_json_from_api
  JSON.parse(HTTP.get(URL))
end
