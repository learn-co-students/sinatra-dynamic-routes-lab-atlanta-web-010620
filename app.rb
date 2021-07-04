require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name}".reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num**2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @new_phrase = params[:phrase]
    @saying = @new_phrase * @num
    "#{@saying}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    @together = @word_1 + " " + @word_2 + " " + @word_3 + " " + @word_4 + " " + @word_5 + "."
    "#{@together}"
  
  end

  get '/:operation/:number1/:number2' do
    @operations = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operations == "add"
      @add = @num1 + @num2
      "#{@add}"
    elsif @operations == "subtract"
      @subtract = @num1 - @num2
      "#{@subtract}"
    elsif @operations == "multiply"
      @multiply = @num1 * @num2
      "#{@multiply}"
    elsif @operations == "divide"
      @divide = @num1 / @num2
      "#{@divide}"
    end
      
  end

end