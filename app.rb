require 'sinatra'

get "/" do
  @headline_text = "A FANTASTIC AMAZING HEADLINE GOES HERE"
  erb :index
end

# get "/:headline_text" do
#    @headline_text = "A SUPER AWESOME AMAZING TEXT GOES HERE"
#    erb :index
# end

get "/:headline_text" do
  @headline_text = params[:headline_text]
  "#{@headline_text.capitalize}"
  erb :index
end
