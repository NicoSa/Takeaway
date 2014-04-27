module SMSBody

	def generate_sms_body
		timestamp = Time.now + 3600
		@sms_body = "Thank you! Your order was placed and will be delivered before #{timestamp.strftime("%H:%M")}"
	end

end