class UserSchoolsController < ApplicationController

def match
  @user = current_user
  @schools = School.where(user_info: ())
end


end
