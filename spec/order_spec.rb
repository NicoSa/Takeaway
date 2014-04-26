require 'order'

describe Order do

	let(:order) {Order.new({"Lark´s Tongues" => 5,"Wren´s Livers" => 10}, 30)}

	it 'takes in quantity of food items' do
		expect(order.food_quantities).to eq ({"Lark´s Tongues" => 5,"Wren´s Livers" => 10})
	end

	it 'takes in a total as an argument' do
		expect(order.suggested_total).to eq 30
	end

end