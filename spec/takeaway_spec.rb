require 'takeaway'

describe TakeAway do

	let(:takeaway) { TakeAway.new}

	it "gives you a list of dishes" do
		expect(takeaway.display_menu)
	end

end