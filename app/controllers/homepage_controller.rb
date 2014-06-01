class HomepageController < ApplicationController

  def index
    unless current_user
      redirect_to '/users/sign_up'
    end

    @families = current_user.families
  end

end