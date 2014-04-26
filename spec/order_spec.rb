require 'order'

describe Order do

	let(:order) {Order.new([{"Lark´s Tongues" => 5},{"Wren´s Livers" => 10}], 30)}

	it 'takes in has of food items and quantity' do
		expect(order.food_quantities).to eq [{"Lark´s Tongues" => 5},{"Wren´s Livers" => 10}]
	end

	it 'take in a total as an argument' do
		expect(order.total).to eq 30
	end
	
end