class School < ActiveRecord::Base
	# Create new school
	# Will add admin privilege so schools cannot
	# be created, deleted, or edited without
	# admin credentials.
	def newSchool
		name = gets
		gpa = gets
		sat = gets
		act = gets
		location = gets
		population = gets
		social_life = gets
		athletics = gets
	end

	# Save school info to the db
	def saveSchool(newSchool)
		school = School.create(name: newSchool.name,
			gpa: newSchool.gpa,
			sat: newSchool.sat,
			act: newSchool.act,
			location: newSchool.location,
			population: newSchool.population,
			social_life: newSchool.social_life,
			athletics: newSchool.athletics)
	end

	# Delete school from db
	def deleteSchool(schoolName)
		schoolName = gets
		school = School.find_by(name: schoolName)
		school.destroy
	end
end
