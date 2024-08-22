class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_user_job_search

  private

  def set_user_job_search
    @user_job_search = UserJobSearch.find_by(job_seeker: current_user).present? ? UserJobSearch.find_by(job_seeker: current_user) : UserJobSearch.new
  end
end
