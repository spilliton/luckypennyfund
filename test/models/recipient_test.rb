require 'test_helper'

class RecipientTest < ActiveSupport::TestCase


  should "assign a new user to the appropriate family" do 
    user = User.create(email: 'sdf@sdfsd.com', first_name: "First", last_name: "Last", password: '20321j12102', password_confirmation: '20321j12102')

    assert !user.new_record?
    assert_equal 1, user.families.count
    assert_equal recipients(:one), user.families.first
  end


end
