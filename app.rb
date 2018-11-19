require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params["name"]
    " Hello #{@name.to_s.reverse}"
  end

  get '/square/:number' do
    @num = params["number"]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    @num = params["number"]
    @phrase = ""
    @num.to_i.times do |i|
      @phrase += params["phrase"]
    end
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params["word1"]} #{params["word2"]} #{params["word3"]} #{params["word4"]} #{params["word5"]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params["number1"].to_i
    @num2 = params["number2"].to_i
    @operation = params["operation"]
    @invalid_operation = "Not a valid operation"
    case @operation
      when "add"
        "#{@num1 + @num2}"
      when "subtract"
        "#{@num1 - @num2}"
      when "multiply"
        "#{@num1 * @num2}"
      when "divide"
        "#{@num1 / @num2}"
      else
        "#{@invalid_operation}"
      end
  end
end
