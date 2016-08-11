require 'ostruct'
require 'json'
require 'http'

# Send API request and converts json to objects via OpenStruct
class Bill
	
	attr_reader :statement, :total, :package, :callCharges, :skyStore

	def initialize(bill_url = "https://safe-plains-5453.herokuapp.com/bill.json")
		data					= JSON.parse(HTTP.get(bill_url), object_class: OpenStruct)
		@statement		= data.statement
		@total				= data.total
		@package			= data.package
		@callCharges	= data.callCharges
		@skyStore			= data.skyStore
	end

end