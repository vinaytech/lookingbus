# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)    

# super admin
User.create!(:first_name => 'Vinay', :last_name => 'Vinay', :middle_name => 'Vinay', :email => 'vinay@g.com', :password => 'vinay123',:password_confirmation => 'vinay123', :role_id => '1028', :phone_number => '099999999999', :mobile_number=> '099999999999', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999')

Account.create!(:name => 'Free', :price => 0, :vehicle_number_allowed => 3, :institution_number_allowed => 1, :account_type => 'Free',:status => true,:user_number_allowed => 10, :android_active => true, :apple_active => true, :blackberry_active => true, :web_active => true)
Account.create!(:name => 'Basic', :price => 100, :vehicle_number_allowed => 10, :institution_number_allowed => 1, :account_type => 'Basic',:status => true,:user_number_allowed => 20, :android_active => true, :apple_active => true, :blackberry_active => true, :web_active => true) 
Account.create!(:name => 'Silver', :price => 1000, :vehicle_number_allowed => 15, :institution_number_allowed => 2, :account_type => 'Basic',:status => true,:user_number_allowed => 50, :android_active => true, :apple_active => true, :blackberry_active => true, :web_active => true)
Account.create!(:name => 'Gold', :price => 10000, :vehicle_number_allowed => 100, :institution_number_allowed => 5, :account_type => 'Basic',:status => true,:user_number_allowed => 100, :android_active => true, :apple_active => true, :blackberry_active => true, :web_active => true)   

@institution_1 = Institution.create!(:name => 'Institution 1', :number_of_vehicle => 10 ,:institution_key => 'Institution 1', :number_of_institution_branch => 1, :status => true , :account_type_id => 1,  :institutions_cms => true,  :institutions_vehicle => true,  :institutions_web => true,  :institutions_android => true , :institutions_apple => true ,  :institutions_blackberry => true  )
@institution_2 = Institution.create!(:name => 'Institution 2', :number_of_vehicle => 10 ,:institution_key => 'Institution 2', :number_of_institution_branch => 2, :status => true , :account_type_id => 2,  :institutions_cms => true,  :institutions_vehicle => true,  :institutions_web => true,  :institutions_android => true , :institutions_apple => true ,  :institutions_blackberry => true  )
@institution_3 = Institution.create!(:name => 'Institution 3', :number_of_vehicle => 10 ,:institution_key => 'Institution 3', :number_of_institution_branch => 3, :status => true , :account_type_id => 3,  :institutions_cms => true,  :institutions_vehicle => true,  :institutions_web => true,  :institutions_android => true , :institutions_apple => true ,  :institutions_blackberry => true  )
@institution_4 = Institution.create!(:name => 'Institution 4', :number_of_vehicle => 10 ,:institution_key => 'Institution 4', :number_of_institution_branch => 4, :status => true , :account_type_id => 4,  :institutions_cms => true,  :institutions_vehicle => true,  :institutions_web => true,  :institutions_android => true , :institutions_apple => true ,  :institutions_blackberry => true  )

InstitutionsBranch.create!(:name =>'Institution_1 Branch 1', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => true, :institution_id => @institution_1.id)
InstitutionsBranch.create!(:name =>'Institution_2 Branch 1', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => true, :institution_id => @institution_2.id)
InstitutionsBranch.create!(:name =>'Institution_2 Branch 2', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => false, :institution_id => @institution_2.id)
InstitutionsBranch.create!(:name =>'Institution_3 Branch 1', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => true, :institution_id => @institution_3.id)
InstitutionsBranch.create!(:name =>'Institution_3 Branch 2', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => false, :institution_id => @institution_3.id)
InstitutionsBranch.create!(:name =>'Institution_3 Branch 3', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => false, :institution_id => @institution_3.id)
InstitutionsBranch.create!(:name =>'Institution_4 Branch 1', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => true, :institution_id => @institution_4.id)
InstitutionsBranch.create!(:name =>'Institution_4 Branch 2', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => false, :institution_id => @institution_4.id)
InstitutionsBranch.create!(:name =>'Institution_4 Branch 3', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => false, :institution_id => @institution_4.id)
InstitutionsBranch.create!(:name =>'Institution_4 Branch 4', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :main_branch => false, :institution_id => @institution_4.id)
 


@institution_app_1 = InstitutionApp.create!(:institution_id => @institution_1.id , :name => "Institution 1",:splash_screen_image => true , :splash_screen_url => 'Institution 1', :splash_screen_text => 'Institution 1', :splash_screen_slogans =>  'Institution 1', :google_url => 'Institution 1',  :apple_url => 'Institution 1', :blackberry_url => 'Institution 1', :google_instruction => 'Institution 1', :apple_instruction => 'Institution 1', :blackberry_instruction => 'Institution 1', :app_logo  => 'Institution 1', :app_logo_text => 'Institution 1', :app_logo_url => 'Institution 1', :android_active => true, :apple_active => true, :blackberry_active => true, :web_active => true )
@institution_app_2 = InstitutionApp.create!(:institution_id => @institution_2.id , :name => "Institution 1",:splash_screen_image => true , :splash_screen_url => 'Institution 1', :splash_screen_text => 'Institution 1', :splash_screen_slogans =>  'Institution 1', :google_url => 'Institution 1',  :apple_url => 'Institution 1', :blackberry_url => 'Institution 1', :google_instruction => 'Institution 1', :apple_instruction => 'Institution 1', :blackberry_instruction => 'Institution 1', :app_logo  => 'Institution 1', :app_logo_text => 'Institution 1', :app_logo_url => 'Institution 1', :android_active => true, :apple_active => true, :blackberry_active => true, :web_active => true )
@institution_app_3 = InstitutionApp.create!(:institution_id => @institution_3.id , :name => "Institution 1",:splash_screen_image => true , :splash_screen_url => 'Institution 1', :splash_screen_text => 'Institution 1', :splash_screen_slogans =>  'Institution 1', :google_url => 'Institution 1',  :apple_url => 'Institution 1', :blackberry_url => 'Institution 1', :google_instruction => 'Institution 1', :apple_instruction => 'Institution 1', :blackberry_instruction => 'Institution 1', :app_logo  => 'Institution 1', :app_logo_text => 'Institution 1', :app_logo_url => 'Institution 1', :android_active => true, :apple_active => true, :blackberry_active => true, :web_active => true )
@institution_app_4 = InstitutionApp.create!(:institution_id => @institution_4.id , :name => "Institution 1",:splash_screen_image => true , :splash_screen_url => 'Institution 1', :splash_screen_text => 'Institution 1', :splash_screen_slogans =>  'Institution 1', :google_url => 'Institution 1',  :apple_url => 'Institution 1', :blackberry_url => 'Institution 1', :google_instruction => 'Institution 1', :apple_instruction => 'Institution 1', :blackberry_instruction => 'Institution 1', :app_logo  => 'Institution 1', :app_logo_text => 'Institution 1', :app_logo_url => 'Institution 1', :android_active => true, :apple_active => true, :blackberry_active => true, :web_active => true )

@institution_app_page_1 = InstitutionAppPage.create!(:institution_app_id => @institution_app_1.id, :name => 'landing', :url => 'landing')
@institution_app_page_2 = InstitutionAppPage.create!(:institution_app_id => @institution_app_1.id, :name => 'notificatoin', :url => 'notificatoin')
@institution_app_page_3 = InstitutionAppPage.create!(:institution_app_id => @institution_app_1.id, :name => 'messages', :url => 'messages')  
@institution_app_page_4 = InstitutionAppPage.create!(:institution_app_id => @institution_app_1.id, :name => 'vehicle status', :url => 'vehicle_status') 
@institution_app_page_5 = InstitutionAppPage.create!(:institution_app_id => @institution_app_1.id, :name => 'contact us', :url => 'contact us')

@institution_app_page_11 = InstitutionAppPage.create!(:institution_app_id => @institution_app_2.id, :name => 'landing', :url => 'landing')
@institution_app_page_22 = InstitutionAppPage.create!(:institution_app_id => @institution_app_2.id, :name => 'notificatoin', :url => 'notificatoin')
@institution_app_page_33 = InstitutionAppPage.create!(:institution_app_id => @institution_app_2.id, :name => 'messages', :url => 'messages')  
@institution_app_page_44 = InstitutionAppPage.create!(:institution_app_id => @institution_app_2.id, :name => 'vehicle status', :url => 'vehicle_status') 
@institution_app_page_55 = InstitutionAppPage.create!(:institution_app_id => @institution_app_2.id, :name => 'contact us', :url => 'contact us')
  
@institution_app_page_111 = InstitutionAppPage.create!(:institution_app_id => @institution_app_3.id, :name => 'landing', :url => 'landing')
@institution_app_page_222 = InstitutionAppPage.create!(:institution_app_id => @institution_app_3.id, :name => 'notificatoin', :url => 'notificatoin')
@institution_app_page_333 = InstitutionAppPage.create!(:institution_app_id => @institution_app_3.id, :name => 'messages', :url => 'messages')  
@institution_app_page_444 = InstitutionAppPage.create!(:institution_app_id => @institution_app_3.id, :name => 'vehicle status', :url => 'vehicle_status') 
@institution_app_page_555 = InstitutionAppPage.create!(:institution_app_id => @institution_app_3.id, :name => 'contact us', :url => 'contact us')

@institution_app_page_1111 = InstitutionAppPage.create!(:institution_app_id => @institution_app_4.id, :name => 'landing', :url => 'landing')
@institution_app_page_2222 = InstitutionAppPage.create!(:institution_app_id => @institution_app_4.id, :name => 'notificatoin', :url => 'notificatoin')
@institution_app_page_3333 = InstitutionAppPage.create!(:institution_app_id => @institution_app_4.id, :name => 'messages', :url => 'messages')  
@institution_app_page_4444 = InstitutionAppPage.create!(:institution_app_id => @institution_app_4.id, :name => 'vehicle status', :url => 'vehicle_status') 
@institution_app_page_5555 = InstitutionAppPage.create!(:institution_app_id => @institution_app_4.id, :name => 'contact us', :url => 'contact us')


InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_1.id,:head_name  => "institution_app_page_1", :body_text => "institution_app_page_1")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_1.id,:head_name  => "institution_app_page_1", :body_text => "institution_app_page_1")  
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_2.id,:head_name  => "institution_app_page_2", :body_text => "institution_app_page_2")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_2.id,:head_name  => "institution_app_page_2", :body_text => "institution_app_page_2")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_3.id,:head_name  => "institution_app_page_3", :body_text => "institution_app_page_3")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_3.id,:head_name  => "institution_app_page_3", :body_text => "institution_app_page_3")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_4.id,:head_name  => "institution_app_page_4", :body_text => "institution_app_page_4")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_4.id,:head_name  => "institution_app_page_4", :body_text => "institution_app_page_4")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_5.id,:head_name  => "institution_app_page_5", :body_text => "institution_app_page_5")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_5.id,:head_name  => "institution_app_page_5", :body_text => "institution_app_page_5")  


InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_11.id,:head_name  => "institution_app_page_1", :body_text => "institution_app_page_1")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_11.id,:head_name  => "institution_app_page_1", :body_text => "institution_app_page_1")  
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_22.id,:head_name  => "institution_app_page_2", :body_text => "institution_app_page_2")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_22.id,:head_name  => "institution_app_page_2", :body_text => "institution_app_page_2")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_33.id,:head_name  => "institution_app_page_3", :body_text => "institution_app_page_3")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_33.id,:head_name  => "institution_app_page_3", :body_text => "institution_app_page_3")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_44.id,:head_name  => "institution_app_page_4", :body_text => "institution_app_page_4")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_44.id,:head_name  => "institution_app_page_4", :body_text => "institution_app_page_4")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_55.id,:head_name  => "institution_app_page_5", :body_text => "institution_app_page_5")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_55.id,:head_name  => "institution_app_page_5", :body_text => "institution_app_page_5")


InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_111.id,:head_name  => "institution_app_page_1", :body_text => "institution_app_page_1")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_111.id,:head_name  => "institution_app_page_1", :body_text => "institution_app_page_1")  
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_222.id,:head_name  => "institution_app_page_2", :body_text => "institution_app_page_2")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_222.id,:head_name  => "institution_app_page_2", :body_text => "institution_app_page_2")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_333.id,:head_name  => "institution_app_page_3", :body_text => "institution_app_page_3")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_333.id,:head_name  => "institution_app_page_3", :body_text => "institution_app_page_3")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_444.id,:head_name  => "institution_app_page_4", :body_text => "institution_app_page_4")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_444.id,:head_name  => "institution_app_page_4", :body_text => "institution_app_page_4")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_555.id,:head_name  => "institution_app_page_5", :body_text => "institution_app_page_5")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_555.id,:head_name  => "institution_app_page_5", :body_text => "institution_app_page_5")

InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_1111.id,:head_name  => "institution_app_page_1", :body_text => "institution_app_page_1")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_1111.id,:head_name  => "institution_app_page_1", :body_text => "institution_app_page_1")  
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_2222.id,:head_name  => "institution_app_page_2", :body_text => "institution_app_page_2")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_2222.id,:head_name  => "institution_app_page_2", :body_text => "institution_app_page_2")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_3333.id,:head_name  => "institution_app_page_3", :body_text => "institution_app_page_3")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_3333.id,:head_name  => "institution_app_page_3", :body_text => "institution_app_page_3")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_4444.id,:head_name  => "institution_app_page_4", :body_text => "institution_app_page_4")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_4444.id,:head_name  => "institution_app_page_4", :body_text => "institution_app_page_4")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_5555.id,:head_name  => "institution_app_page_5", :body_text => "institution_app_page_5")
InstitutionAppPagesSection.create!(:institution_app_pages_id => @institution_app_page_5555.id,:head_name  => "institution_app_page_5", :body_text => "institution_app_page_5")    



User.create!(:first_name => 'Vinay', :last_name => 'Vinay', :middle_name => 'Vinay', :email => "vinay1@g.com", :password => 'vinay123',:password_confirmation => 'vinay123', :role_id => 1, :phone_number => '099999999999', :mobile_number=> '099999999999', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :institution_id => @institution_1.id)
User.create!(:first_name => 'Vinay', :last_name => 'Vinay', :middle_name => 'Vinay', :email => "vinay2@g.com", :password => 'vinay123',:password_confirmation => 'vinay123', :role_id => 1, :phone_number => '099999999999', :mobile_number=> '099999999999', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :institution_id => @institution_2.id)
User.create!(:first_name => 'Vinay', :last_name => 'Vinay', :middle_name => 'Vinay', :email => "vinay3@g.com", :password => 'vinay123',:password_confirmation => 'vinay123', :role_id => 1, :phone_number => '099999999999', :mobile_number=> '099999999999', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :institution_id => @institution_3.id)
User.create!(:first_name => 'Vinay', :last_name => 'Vinay', :middle_name => 'Vinay', :email => "vinay4@g.com", :password => 'vinay123',:password_confirmation => 'vinay123', :role_id => 1, :phone_number => '099999999999', :mobile_number=> '099999999999', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :institution_id => @institution_4.id)


(1..50).each do |i| 
  
  if i <= 10
   @user = User.create!(:first_name => 'Vinay', :last_name => 'Vinay', :middle_name => 'Vinay', :email => "vinay#{i}@g.com", :password => 'vinay123',:password_confirmation => 'vinay123', :role_id => 3, :phone_number => '099999999999', :mobile_number=> '099999999999', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :institution_id => @institution_1.id)
   @vehicle =  Vehicle.create!(:user_id =>  @user.id , :vehicle_number => 'bpn33456', :vehicle_key =>'bpn33456',  :institution_id => @institution_1.id,  :status => true ) 
   Device.create!(:user_id => @user.id , :device_number => '3333333' , :device_key  => '3333333' , :institution_id => @institution_1.id , :vehicle_id => @vehicle.id, :status => true) 
  elsif i<=20 
   @user = User.create!(:first_name => 'Vinay', :last_name => 'Vinay', :middle_name => 'Vinay', :email => "vinay#{i}@g.com", :password => 'vinay123',:password_confirmation => 'vinay123', :role_id => 3, :phone_number => '099999999999', :mobile_number=> '099999999999', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :institution_id => @institution_2.id)
   @vehicle =  Vehicle.create!(:user_id =>  @user.id , :vehicle_number => 'bpn33456', :vehicle_key =>'bpn33456',  :institution_id => @institution_2.id,  :status => true ) 
   Device.create!(:user_id => @user.id , :device_number => '3333333' , :device_key  => '3333333' , :institution_id => @institution_2.id , :vehicle_id => @vehicle.id, :status => true)
  elsif i<=30 
   @user = User.create!(:first_name => 'Vinay', :last_name => 'Vinay', :middle_name => 'Vinay', :email => "vinay#{i}@g.com", :password => 'vinay123',:password_confirmation => 'vinay123', :role_id => 3, :phone_number => '099999999999', :mobile_number=> '099999999999', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :institution_id => @institution_3.id)
   @vehicle =  Vehicle.create!(:user_id =>  @user.id , :vehicle_number => 'bpn33456', :vehicle_key =>'bpn33456',  :institution_id => @institution_3.id,  :status => true ) 
   Device.create!(:user_id => @user.id , :device_number => '3333333' , :device_key  => '3333333' , :institution_id => @institution_3.id , :vehicle_id => @vehicle.id, :status => true)
  elsif i<=40
   @user = User.create!(:first_name => 'Vinay', :last_name => 'Vinay', :middle_name => 'Vinay', :email => "vinay#{i}@g.com", :password => 'vinay123',:password_confirmation => 'vinay123', :role_id => 3, :phone_number => '099999999999', :mobile_number=> '099999999999', :address_1 => 'Delhi', :address_2 => 'Delhi', :city => 'Delhi', :state => 'Delhi', :country => 'India', :zip_code => '99999', :institution_id => @institution_4.id)
   @vehicle =  Vehicle.create!(:user_id =>  @user.id , :vehicle_number => 'bpn33456', :vehicle_key =>'bpn33456',  :institution_id => @institution_4.id,  :status => true ) 
   Device.create!(:user_id => @user.id , :device_number => '3333333' , :device_key  => '3333333' , :institution_id => @institution_4.id , :vehicle_id => @vehicle.id, :status => true)
  end   
end  



    
 




