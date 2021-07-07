require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @revname = params[:name].reverse
  end
  get '/square/:number' do
    @sqnum = params[:number].to_i
    @return = @sqnum * @sqnum
    "#{@return}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phra = params[:phrase]
    @result = @phra * @num
    "#{@result}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    @concat = "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
    "#{@concat}"
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      @result = @num1 + @num2
    elsif @op == "subtract"
      @result = @num1 - @num2
    elsif @op == "multiply"
      @result = @num1 * @num2
    elsif @op == "divide"
      @result = @num1 / @num2
    end
    @result.to_s
  end

end