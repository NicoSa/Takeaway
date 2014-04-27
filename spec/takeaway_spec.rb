require 'takeaway'
require 'order'

describe TakeAway do


  let(:order_wrong_total)    {Order.new({"Lark´s Tongues" => 2,"Wren´s Livers" => 8}, 30)}
  let(:order_right_total)    {Order.new({"Lark´s Tongues" => 2,"Wren´s Livers" => 8}, 74)}
  let(:takeaway_right_total) { TakeAway.new(order_right_total) }
  let(:takeaway_wrong_total) { TakeAway.new(order_wrong_total) }

  context 'Total' do

    it 'calculates correct for an order' do
      takeaway_right_total.calculate_total
      expect(takeaway_right_total.total).to eq 74
    end

    it 'returns false for wrong total' do
      takeaway_wrong_total.calculate_total
      expect(takeaway_wrong_total.totals_match?).to be_false
    end

    it 'returns true for right total' do
      takeaway_right_total.calculate_total
      expect(takeaway_right_total.totals_match?).to be_true
    end

  end

  context 'Sending Confirmation Errors' do

    it 'raises Great Error instead of sending confirmation sms if total wasn´t calculated!' do
      expect{takeaway_wrong_total.sent_order_confirmation}.to raise_error (GreatError)
    end

    it 'raises Great Error instead of sending confirmation sms if total doesn´t match' do
      takeaway_wrong_total.calculate_total
      expect{takeaway_wrong_total.sent_order_confirmation}.to raise_error (GreatError)
    end

  end

  context 'Sending Message' do

    before do
      takeaway_right_total.stub(:send_sms).and_return("Order confirmation has been sent to your phone!")
    end


    it 'sents confirmation sms if totals match' do
      takeaway_right_total.calculate_total
      expect(takeaway_right_total.sent_order_confirmation).to eq "Order confirmation has been sent to your phone!"
    end

  end

end
