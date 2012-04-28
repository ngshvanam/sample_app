class UsersController < ApplicationController

require "base64"

def home
  if request.post?
	$code = params[:code]#ActiveSupport::JSON.decode(Base64.decode64(params[:signed_request].split(".").last))["oauth_token"]
        #$response = ActiveSupport::JSON.decode(Base64.decode64(params[:signed_request].split(".").last))["oauth_token"]
	if $code.nil? 
	 redirect_to "https://www.facebook.com/dialog/oauth/?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&scope=user_location,user_likes,friends_likes"
	else
	
	 #if $response.nil?
	 $response = "https://graph.facebook.com/oauth/access_token?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&client_secret=6d849aa8ae2779bb804ecb8d7724df8d&code="+ $code
	 #end
	end
  else
    # redirect_to "https://www.facebook.com/dialog/oauth/?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&scope=user_location,user_likes,friends_likes"
	
  end

end

def page
  
end


end
