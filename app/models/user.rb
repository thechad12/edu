class User < ActiveRecord::Base

	def user
		gpa = gets
		sat = gets
		act = gets
		location = gets
		population = gets
		social_life = gets
		athletics = gets
	end

	def user_to_db
		user = User.create(location: user(location),
			population: user(population), gpa: user(gpa),
			sat: user(sat), act: user(act),
			social_life: user(social_life),
			athletics: user(athletics))
end
