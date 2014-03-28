class SignUp < ActiveRecord::Base

	def say_hello
    	"Hello " + self.name
  	end

  	def loud_email
  		email.upcase
  	end

  	def email
  		self.read_attribute(:email) || "unknown@email.com"
  	end
end
