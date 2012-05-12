class UsersController < ApplicationController

require "base64"
require 'open-uri'

def home
  if request.post?
	$jsondata = ActiveSupport::JSON.decode(Base64.decode64(params[:signed_request].split(".").last))
        $response = $jsondata["oauth_token"]
	
  else
    # redirect_to "https://www.facebook.com/dialog/oauth/?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&scope=user_location,user_likes,friends_likes"
	
  end

end

def page
 #  require 'open-uri'
 #   body = open('http://www.example.com').read
end


end
