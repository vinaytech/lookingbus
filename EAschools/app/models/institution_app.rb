class InstitutionApp < ActiveRecord::Base 
  belongs_to :institution
  has_many :institution_app_pages
  has_many :notifications
end
