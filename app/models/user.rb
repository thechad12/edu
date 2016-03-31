class User < ActiveRecord::Base
	has_many :school

	# Gets the info from the user
	def userInfo
		name = gets
		gpa = gets
		sat = gets
		act = gets
		location = gets
		population = gets
		social_life = gets
		athletics = gets
	end

	# Takes the info given by the user and saves
	# it into the database
	def user_to_db(userInfo)
		user = User.create(name: userInfo.name,
			location: userInfo.location,
			population: userInfo.population,
			gpa: userInfo.gpa,
			sat: userInfo.sat, act: userInfo.act,
			social_life: userInfo.social_life,
			athletics: userInfo.athletics)
		user.save
	end

	# Update user info and save to db
	def updatedUser(updatedUser)
		updatedUser = gets
		user = User.find_by(name: updatedUser)
		user.update(name: userInfo.name,
			gpa: userInfo.gpa,
			sat: userInfo.sat,
			act: userInfo.act,
			location: userInfo.location,
			population: userInfo.population,
			social_life: userInfo.social_life,
			athletics: userInfo.athletics)
		user.save
	end

	# Deletes the user from the database
	def user_delete(username)
		username = gets
		user = User.find_by(name: username)
		user.destroy
	end
	# Returns a list of schools where student's profile matches the school's averages
	def targets
		@user = current_user
		@school = School.where(user_info: ())
	end

	# Returns list of schools where student's profile is below school's averages, but close
	def reaches
		@user = current_user
		@school = School.where(user_info: ())
	end

	# Returns a list of schools where student's profile is above school's averages
	def safety
		@user = current_user
		@school = School.where(user_info: ())
	end
end
