class HomepageController < ApplicationController

  def index
    if current_user
      @families = current_user.families
    else
      redirect_to '/users/sign_up'
    end
  end

  def profile
    render layout: false
  end

end