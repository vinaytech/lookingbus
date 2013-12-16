class InstitutionAppPage < ActiveRecord::Base  
  belongs_to :institution_app
  has_many :institution_app_pages_sections  
end
