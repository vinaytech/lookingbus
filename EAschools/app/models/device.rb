class Device < ActiveRecord::Base 
  belongs_to :institution 
  belongs_to :vehicle   
  has_many :device_stops 
  belongs_to :user
end
