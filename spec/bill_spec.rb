require 'bill'

describe Bill do
	subject(:bill) { described_class.new }
	
	context "statement:" do 
		it "statement should be a OpenStruct" do
			expect(bill.statement).to be_a OpenStruct
		end

		it "statement struct should respond to 'generated'" do
			expect(bill.statement.generated).not_to be nil
		end

		it "statement struct should respond to 'due'" do
			expect(bill.statement.due).not_to be nil
		end

		context "period:" do
			it "statement struct should respond to 'period'" do
				expect(bill.statement.period).not_to be nil
			end

			it "period should respond to 'from'" do
				expect(bill.statement.period.from).not_to be nil
			end

			it "period should respond to 'to'" do
				expect(bill.statement.period.to).not_to be nil
			end
		end
	end

	context "total:" do
		it "total should be a Numeric" do
			expect(bill.total).to be_a Numeric
		end
	end
	
	context "package:" do 
		it "package should be a OpenStruct" do
			expect(bill.package).to be_a OpenStruct
		end

		it "package struct should respond to 'total'" do
			expect(bill.package.total).not_to be nil
		end

		context "subscriptions:" do
			it "package struct should respond to 'subscriptions'" do
				expect(bill.package.subscriptions).not_to be nil
			end

			it "subscriptions should respond to 'type'" do
				sub = bill.package.subscriptions.first
				expect(sub.type).not_to be nil
			end

			it "subscriptions should respond to 'name'" do
				sub = bill.package.subscriptions.first
				expect(sub.name).not_to be nil
			end

			it "subscriptions should respond to 'cost'" do
				sub = bill.package.subscriptions.first
				expect(sub.cost).not_to be nil
			end

			it "subscriptions should not respond to 'foo'" do
				sub = bill.package.subscriptions.first
				expect(sub.foo).to be nil
			end	
		end
	end

	context "callCharges:" do 
		it "callCharges should be a OpenStruct" do
			expect(bill.callCharges).to be_a OpenStruct
		end

		it "callCharges struct should respond to 'total'" do
			expect(bill.callCharges.total).not_to be nil
		end

		context "calls:" do
			it "callCharges struct should respond to 'calls'" do
				expect(bill.callCharges.calls).not_to be nil
			end

			it "calls should respond to 'type'" do
				call = bill.callCharges.calls.first
				expect(call.called).not_to be nil
			end

			it "calls should respond to 'name'" do
				call = bill.callCharges.calls.first
				expect(call.duration).not_to be nil
			end

			it "calls should respond to 'cost'" do
				call = bill.callCharges.calls.first
				expect(call.cost).not_to be nil
			end

			it "calls should not respond to 'foo'" do
				call = bill.callCharges.calls.first
				expect(call.foo).to be nil
			end		
		end
	end

	context "skyStore:" do
		it "skyStore should be a OpenStruct" do
			expect(bill.skyStore).to be_a OpenStruct
		end

		it "skyStore struct should respond to 'total'" do
			expect(bill.skyStore.total).not_to be nil
		end

		context "rentals:" do
			it "skyStore struct should respond to 'rentals'" do
				expect(bill.skyStore.rentals).not_to be nil
			end

			it "rentals should respond to 'title'" do
				rental = bill.skyStore.rentals.first
				expect(rental.title).not_to be nil
			end

			it "rentals should respond to 'cost'" do
				rental = bill.skyStore.rentals.first
				expect(rental.cost).not_to be nil
			end

			it "rentals should not respond to 'foo'" do
				rental = bill.skyStore.rentals.first
				expect(rental.foo).to be nil
			end
		end

		context "buy & keep:" do
			it "skyStore struct should respond to 'buyAndKeep'" do
				expect(bill.skyStore.buyAndKeep).not_to be nil
			end

			it "buyAndKeep should respond to 'title'" do
				bk = bill.skyStore.buyAndKeep.first
				expect(bk.title).not_to be nil
			end

			it "buyAndKeep should respond to 'cost'" do
				bk = bill.skyStore.buyAndKeep.first
				expect(bk.cost).not_to be nil
			end

			it "buyAndKeep should not respond to 'foo'" do
				bk = bill.skyStore.buyAndKeep.first
				expect(bk.foo).to be nil
			end
		end
			
	end
	
end