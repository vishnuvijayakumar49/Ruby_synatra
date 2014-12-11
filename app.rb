# app.rb
require 'sinatra'
require 'erb'
class HelloWorldApp < Sinatra::Base
	get '/' do
		greeting = "hello,world"
		erb :index, :locals => {:greeting => greeting }
	end
	
	get '/fill' do
		erb :submit
	end
	
	post '/filled' do
		"name = '#{params[:student_name]}'
		age='#{params[:student_age]}"
	end
end
