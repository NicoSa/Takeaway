module SMSBody

	def generate_sms_body
		time = Time.now + 3600
		@sms_body = "Thank you! Your order was placed and will be delivered before #{time.strftime("%H:%M")}"
	end

end