require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    x = []
    "#{@number.times do
        x << @phrase
    end}"
    x.flatten.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4]+ " " + params[:word5] + "."}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    add = "#{@number1 + @number2}"
    subtract = "#{@number1 - @number2}"
  end

end
