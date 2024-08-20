class UsersController < ApplicationController
  def my_candidacies
    @candidacies = current_user.candidacies_as_job_seeker
  end
end
