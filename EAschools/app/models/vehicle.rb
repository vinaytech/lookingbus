class Vehicle < ActiveRecord::Base   
  belongs_to :institution 
  has_one :device  
  belongs_to :user
end
