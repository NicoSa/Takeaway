require 'takeaway'
require 'order'

describe TakeAway do

	
	let(:order_wrong_total) {Order.new({"Lark´s Tongues" => 2,"Wren´s Livers" => 8}, 30)}
	let(:order_right_total) {Order.new({"Lark´s Tongues" => 2,"Wren´s Livers" => 8}, 74)}
	let(:takeaway_right_total) { TakeAway.new(order_right_total) }
	let(:takeaway_wrong_total) { TakeAway.new(order_wrong_total) }

	it 'calculates correct total for an order' do
		takeaway_right_total.calculate_total!
		expect(takeaway_right_total.total).to eq 74
	end

	it 'raises error if suggested total is not equal to total' do
		takeaway_wrong_total.calculate_total!
		expect{takeaway_wrong_total.totals_match?}.to raise_error 
	end
	
	

end