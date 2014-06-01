# Recipients are created by admin users.  
# A 'family' consists of all the users assocaited with one recipient.
class Recipient < ActiveRecord::Base
  validates :first_name, :last_name, presence: true

  has_and_belongs_to_many :family_members, class_name: "User", join_table: 'recipients_users', foreign_key: :recipient_id, association_foreign_key: :user_id

  belongs_to :creator, class_name: "User"

end
