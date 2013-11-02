require 'sinatra'

# Change this method so that the server path is /hello and the
# name of the ERB file being rendered is also called hello.
get '/hello' do
  if params[:name]
    @name = params[:name]
  else
    @name = "Someone"
  end
  erb :hello
end

# When you request http://mdtb-37357.usw1.actionbox.io:3000
# it really requests http://mdtb-37357.usw1.actionbox.io:3000/
# The extra '/' is important. You're requesting the path '/' on
# the server. This is known also as the 'root' path.

