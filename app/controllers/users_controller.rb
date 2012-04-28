class UsersController < ApplicationController

require "base64"

def home
  if request.post?
	@response = ActiveSupport::JSON.decode(Base64.decode64(params[:signed_request].split(".").last))["oauth_token"]
	if @response.nil?
	 redirect_to "https://www.facebook.com/dialog/oauth/?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&scope=user_location,user_likes,friends_likes"
	end
  else
    # redirect_to "https://www.facebook.com/dialog/oauth/?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&scope=user_location,user_likes,friends_likes"
	# @response = ActiveSupport::JSON.decode('{"algorithm":"HMAC-SHA256","issued_at":1335625281,"user":{"country":"in","locale":"en_US","age":{"min":21}}}')["oauth_token"].nil?
  end

end

end
