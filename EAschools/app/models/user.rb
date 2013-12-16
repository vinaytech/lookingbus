class User < ActiveRecord::Base
  belongs_to :institution
  has_one :device  
  has_one :vehicle
  
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true , :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i } 
  validates :role_id, presence: true
  
end
