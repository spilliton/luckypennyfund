# Users are anyone that can log into the site.
# Users with the 'admim' flag checked can manage their recipients
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recipients, class_name: "Recipient", foreign_key: "creator_id"

  def name
    return self.email
  end

  has_and_belongs_to_many :families, class_name: "Recipient", join_table: 'recipients_users', foreign_key: :user_id, association_foreign_key: :recipient_id

  after_create :assign_to_family

  def assign_to_family
    if recipient = Recipient.oldest.first
      self.families << recipient
    end
  end

end
