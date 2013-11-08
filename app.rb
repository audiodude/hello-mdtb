require 'sinatra'

# Change this method so that the server path is /hello and the
# name of the ERB file being rendered is also called hello.
get '/hello' do
    if params[:fname] or params[:city] or params[:state]
      @city = params[:fname]
      @fname = params[:city]
      @state = params[:state]
    else
       @failure = "Oops that's an error"
    end
  erb :hello
end

# When you request http://mdtb-37357.usw1.actionbox.io:3000
# it really requests http://mdtb-37357.usw1.actionbox.io:3000/
# The extra '/' is important. You're requesting the path '/' on
# the server. This is known also as the 'root' path.

