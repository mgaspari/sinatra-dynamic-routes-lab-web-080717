require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "Hi #{@user_name.reverse}"
  end

get "/square/:number" do
  @num = params[:number]
  "#{@num.to_i ** 2}"
end

get "/say/:number/:phrase" do
  @times = params[:number]
  @phrase = params[:phrase]
  "#{@phrase * @times.to_i}"
end

get "/say/:word1/:word2/:word3/:word4/:word5" do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5}."
end

get "/:operation/:number1/:number2" do
  if params[:operation] == "add"
  "#{params[:number1].to_i + params[:number2].to_i}"
elsif params[:operation] == "subtract"
  "#{params[:number2].to_i - params[:number1].to_i}"
elsif params[:operation] == "multiply"
  "#{params[:number2].to_i * params[:number1].to_i}"
elsif params[:operation] == "divide"
"#{params[:number1].to_i / params[:number2].to_i}"
end
end
end
