require 'bill'

describe Bill do
	subject(:bill) { described_class.new }
	
	it "statement should be a OpenStruct" do
		expect(bill.statement).to be_a OpenStruct
	end

	it "total should be a Numeric" do
		expect(bill.total).to be_a Numeric
	end
	
	it "package should be a OpenStruct" do
		expect(bill.package).to be_a OpenStruct
	end

	it "callCharges should be a OpenStruct" do
		expect(bill.callCharges).to be_a OpenStruct
	end

	it "skyStore should be a OpenStruct" do
		expect(bill.skyStore).to be_a OpenStruct
	end
	
end