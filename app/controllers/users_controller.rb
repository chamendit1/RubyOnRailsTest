class UsersController < ApplicationController

		def index
			@user = User.all
		end
		
		def delete
			self.destroy
		end


		def destroy
		  User.find(params[:id]).destroy
		  session[:user_id] = nil
		  redirect_to users_path
		end

		def edit
		end
		
		def update
		end
end