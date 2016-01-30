class User < ActiveRecord::Base

	# Gets the info from the user
	def newUser
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
	def user_to_db(newUser)
		user = User.create(name: newUser.name,
			location: newUser.location,
			population: newUser.population,
			gpa: newUser.gpa,
			sat: newUser.sat, act: newUser.act,
			social_life: newUser.social_life,
			athletics: newUser.athletics)
		user.save
	# Deletes the user from the database
	def user_delete(username)
		username = gets
		user = User.find_by(name: username)
		user.destroy
	end

end
