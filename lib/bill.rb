require 'ostruct'
require 'json'
require 'http'

# Send API request and converts json to an object via OpenStruct
class Bill
	
	URL = "http://safe-plains-5453.herokuapp.com/bill.json".freeze

	attr_reader :statement, :total, :package, :callCharges, :skyStore

	def initialize
		data					= JSON.parse(HTTP.get(URL), object_class: OpenStruct)
		@statement		= data.statement
		@total				= data.total
		@package			= data.package
		@callCharges	= data.callCharges
		@skyStore			= data.skyStore
	end

end