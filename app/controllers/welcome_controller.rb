class WelcomeController < ApplicationController
	def index
		@msj = String.new('Bienvenido a Alfred!')
		#session[:user_id] = nil
	end
end