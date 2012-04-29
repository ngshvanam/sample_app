class UsersController < ApplicationController

require "base64"
require 'open-uri'

def home
  if request.post?
        $response = ActiveSupport::JSON.decode(Base64.decode64(params[:signed_request].split(".").last))["oauth_token"];
	if $response.nil?
	 $code = params[:code]#ActiveSupport::JSON.decode(Base64.decode64(params[:signed_request].split(".").last))["oauth_token"]
         #$response = ActiveSupport::JSON.decode(Base64.decode64(params[:signed_request].split(".").last))["oauth_token"]
	 if $code.nil? 
	  redirect_to "https://www.facebook.com/dialog/oauth/?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&scope=user_location,user_likes,friends_likes"
	 else
 	 
	  if $response.nil?
	   $response = open("https://graph.facebook.com/oauth/access_token?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&client_secret=6d849aa8ae2779bb804ecb8d7724df8d&code="+ $code).read
	  end
         end
	end
  else
    # redirect_to "https://www.facebook.com/dialog/oauth/?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&scope=user_location,user_likes,friends_likes"
	
  end

end

def page
 #  require 'open-uri'
 #   body = open('http://www.example.com').read
end


end
