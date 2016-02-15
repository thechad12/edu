class UsersController < ApplicationController
	def new
	end

	def create
		@user = User.new(params.require(:user).permit(:name,
			:gpa, :sat, :act, :location, :population, :social_life,
			:athletics))

		@user.save
		redirect_to @user
	end
end
