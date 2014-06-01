class HomepageController < ApplicationController

  def index
    unless current_user
      redirect_to '/users/sign_up'
    end
  end

end