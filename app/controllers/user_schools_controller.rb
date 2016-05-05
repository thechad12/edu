class UserSchoolsController < ApplicationController

  def targets_match
    schools = School.joins('JOIN users ON users.gpa >= schools.gpa
    AND users.sat >= schools.sat OR users.act >= schools.act AND users.location =
    schools.location AND users.population = schools.population AND users.social_life =
    schools.social_life AND users.athletics = schools.athletics LIMIT 4')
  end

  def reaches_match
    schools = School.joins('JOIN users ON users.gpa <= schools.gpa
    AND users.sat <= schools.sat OR users.act <= schools.act AND users.location =
    schools.location AND users.population = schools.population AND users.social_life =
    schools.social_life AND users.athletics = schools.athletics LIMIT 4')
  end
end
