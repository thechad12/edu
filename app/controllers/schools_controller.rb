class SchoolsController < ApplicationController
	def new
	end

	def create
		@school = School.new(params.require(:school).permit(:name,
			:gpa, :sat, :act, :location, :population,
			:social_life))

		@school.save
		redirect_to @school
	end
end
