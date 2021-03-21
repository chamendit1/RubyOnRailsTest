class PasswordResetsControllwe < ApplicationController
	def new

	end

	def create
		@user = User.findby(email: params[:email])

		if @user.present?
			# Send Email
			PasswordMailer.with(user: @user).reset.deliver_later
		end
		
		redirect_to root_path, notice: "We will sent an email to the email provided"
	end
end
