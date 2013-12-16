class SignUp   
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  attr_accessor :company_name, :first_name, :last_name, :email, :email_confirmation
  
  validates_presence_of :company_name, :first_name, :last_name, :email, :email_confirmation  
  
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i  , :multiline => true
  
  validates :email, confirmation: true 
  
  validate :check_email_availability
  
  validate :check_company_availability  
  
  def initialize(attributes = {})
    attributes.each do |name, value|
     send("#{name}=", value)
    end
  end
  def persisted?
    false
  end  
  
  def check_email_availability  
      @user = User.find_by_email(self.email) 
      if @user
         errors.add(:email, "already in use.") 
      end    
  end  
  def check_company_availability 
     # @company = Company.find_by_company_name(self.company_name) 
     # if @company
     #    errors.add(:company_name, "already in use.")
     # end    
  end  
  
  def save   
       account_type = Account.find_by_name('free')
      # company = Company.create!(:company_name => self.company_name, :status =>  true, :account_id => account_type.id ) 
      # group = Group.create!(:name => "Default Group", :status =>  true, :company_id => company.id) 
      # plant = Plant.create!(:name => "Default Plant",  :company_id => company.id, :group_id => group.id, :company_name => company.company_name) 
      # department = Department.create!(:name => "Default Department", :status =>  true, :company_id => company.id, :group_id => group.id, :plant_id => plant.id)
      # User.create!(:first_name => self.first_name,:last_name => self.last_name,:company_id => company.id,:email => self.email, :plant_id => plant.id, :role_id => 1 )
  end  
  
end