##https://enterprise.smsgupshup.com/GatewayAPI/rest?method=SendMessage&send_to=6200663619&msg=Welcome%20to%20SMS%20GupShup%20API&msg_type=TEXT&userid=2000190041&auth_scheme=plain&password=AGGpZgZ89&v=1.1&format=text

require 'rest-client'

class MessengerBase
  attr_accessor :user_id, :password, :mobile_number

  BASE_URL = "http://enterprise.smsgupshup.com/GatewayAPI/rest"

  def initialize opt
    self.user_id = ENV['GUPSHUP_USER_ID']
    self.password = ENV['GUPSHUP_PASSWORD']
    self.mobile_number = opt.delete(:mobile_number)
  end

  def encode_message message
    CGI.escape(message) rescue nil
  end

  def location_info
    # url = "http://enterprise.smsgupshup.com/GatewayAPI/rest?method=GET_MOBILE_NUMBER_INFO&userid=#{self.user_id}&password=#{self.password}&format=json&mobileNumber=#{self.mobile_number}&v=1.1&auth_scheme=PLAIN"
    url = "http://enterprise.smsgupshup.com/GatewayAPI/rest?msg= Hi%20Test%20Message&v=1.1&userid=2000XXXXXX&password=XXXXX&send_to=9XXXXXXXXX&msg_type=text&method=sendMessage"
    RestClient.get url
  end

  def send_otp
    url = "http://enterprise.smsgupshup.com/GatewayAPI/rest?userid=#{self.user_id}&password=#{self.password}&method=TWO_FACTOR_AUTH&v=1.1&phone_no=#{self.mobile_number}&msg=Your%20OTP%20code%20is%20%25code%25&format=text&otpCodeLength=4&otpCodeType=NUMERIC"
    
    GET url
  end

  def GET url
    response = RestClient.get url
    response.body
  end

  def POST
  end
  

end