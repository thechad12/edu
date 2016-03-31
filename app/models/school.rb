class School < ActiveRecord::Base
	belongs_to :user
	# Create new school
	# Will add admin privilege so schools cannot
	# be created, deleted, or edited without
	# admin credentials.
	def schoolInfo
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
	def saveSchool(schoolInfo)
		school = School.create(name: schoolInfo.name,
			gpa: schoolInfo.gpa,
			sat: schoolInfo.sat,
			act: schoolInfo.act,
			location: schoolInfo.location,
			population: schoolInfo.population,
			social_life: schoolInfo.social_life,
			athletics: schoolInfo.athletics)
	end

	# Update school and save edited info to db
	def updateSchool(updatedSchool)
		updatedSchool = gets
		school = School.find_by(name: updatedSchool)
		school.update(name: schoolInfo.name,
			gpa: schoolInfo.gpa,
			sat: schoolInfo.sat,
			act: schoolInfo.act,
			location: schoolInfo.location,
			population: schoolInfo.population,
			social_life: schoolInfo.social_life,
			athletics: schoolInfo.athletics)
		school.save
	end


	# Delete school from db
	def deleteSchool(schoolName)
		schoolName = gets
		school = School.find_by(name: schoolName)
		school.destroy
	end
end
