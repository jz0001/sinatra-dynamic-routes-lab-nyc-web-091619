require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    # @number = params[:number].to_i
    # @phrase = params[:phrase]
    # i = 0
    # while i<@number
    #   "#{@phrase}"
    #   i++
    # end
      answer = ''
  
      params[:number].to_i.times do
        answer += params[:phrase]
      end
  
      answer
      
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

  end

end