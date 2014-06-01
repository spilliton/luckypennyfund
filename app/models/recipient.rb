# Recipients are created by admin users.  
# A 'family' consists of all the users assocaited with one recipient.
class Recipient < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence: true

  has_many :users
  belongs_to :creator, class_name: "User"

end
