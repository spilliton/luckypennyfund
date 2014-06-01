# Recipients are created by admin users.  
# A 'family' consists of all the users assocaited with one recipient.
class Recipient < ActiveRecord::Base

  has_many :users

end
