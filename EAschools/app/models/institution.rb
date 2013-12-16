class Institution < ActiveRecord::Base  
  belongs_to :account 
  has_many :institutions_branchs 
  has_many :vehicles  
  has_many :devices 
  has_many :users
  has_one :institution_app 
  has_many :notifications 
end
