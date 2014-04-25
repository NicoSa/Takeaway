require 'takeaway'

describe TakeAway do

	let(:takeaway) { TakeAway.new}

	it "gives you a list of dishes" do
		expect(takeaway).to eq takeaway.show_menu
	end

end