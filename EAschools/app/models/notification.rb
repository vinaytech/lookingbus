class Notification < ActiveRecord::Base 
  belongs_to :institution 
  belongs_to :institution_app
end
