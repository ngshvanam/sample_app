class UsersController < ApplicationController

def home
if request.post?
	  @response = params[:signed_request];
else
redirect_to "https://www.facebook.com/dialog/oauth/?client_id=268196199939502&redirect_uri=https%3A%2F%2Fapps.facebook.com%2Fnag_app%2F&scope=user_location,user_likes,friends_likes"
	   @response = "";	
end

end

end
