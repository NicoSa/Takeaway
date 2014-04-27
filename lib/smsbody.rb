module SMSBody

  def generate_timestamp
    @timestamp = Time.now + 3600
  end

  def sms_body
    @sms_body = "Thank you! Your order was placed and will be delivered before #{@timestamp.strftime("%H:%M")}! Your total is #{@total} GBP!"
  end

end
