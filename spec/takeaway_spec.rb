require 'takeaway'
require 'order'

describe TakeAway do

	let(:takeaway) { TakeAway.new}
	let(:order_wrong_total) {Order.new({"Lark´s Tongues" => 2,"Wren´s Livers" => 8}, 30)}
	let(:order_right_total) {Order.new({"Lark´s Tongues" => 2,"Wren´s Livers" => 8}, 74)}

	it 'return total of 74 for certain order' do
		expect(takeaway(order_right_total).calculate_total).to eq 74
	end


	

end