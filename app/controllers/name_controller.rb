class NameController < ApplicationController
	def view
		#@sign_up_count = SignUp.count
		#@error = flash[:error]
	end

	def new 
	end

	def show_message

		#if SignUp.find_by(email: params[:email])
			#flash[:error] = "That email is already taken"
			# flash only lasts for one instance, whereas a param will stick around forever
			#redirect_to('/')
			# / always redirects to get, and not post 

		#elsif params[:email].include? "@"
			@name = params[:name]
			@email = params[:email]
			@sign_up = SignUp.new
			@sign_up.name = params[:name]
			@sign_up.email = params[:email]
			@sign_up.save
			@sign_up_count = SignUp.count
			@sign_up_all = SignUp.find(:all)
		
		#else
			#flash[:error] = "Email is not valid"
			# flash only lasts for one instance, whereas a param will stick around forever
			#redirect_to('/')
			# / always redirects to get, and not post 
		#end
	end
end
