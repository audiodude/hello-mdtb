require 'sinatra'

# Change this method so that the server path is /hello and the
# name of the ERB file being rendered is also called hello.
get '/hello' do
  if params[:fname] && params[:city] && params[:lname]
    @city = params[:city]
    @fname = params[:fname]
    @lname = params[:lname]
  else
    @failure = "Oops that's an error"
  end    
  
  if params[:state]
    @state = params[:state]
  else
    @state = "CA"
  end
    
    erb :hello
end

get '/taxes' do
    erb :taxes
end


# When you request http://mdtb-37357.usw1.actionbox.io:3000
# it really requests http://mdtb-37357.usw1.actionbox.io:3000/
# The extra '/' is important. You're requesting the path '/' on
# the server. This is known also as the 'root' path.

