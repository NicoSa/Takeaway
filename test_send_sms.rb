require 'rubygems'
require 'twilio-ruby'

account_sid = 'ACa7ed7360f5a78cef143d2c88421751a6'
auth_token = 'b9b56c483acdf8d39838fbddc24fc595'
@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.account.sms.messages.create(:body => "HELLO YOU DICK", :to => "+447432865747", :from => "+442891042146")
puts message.sid