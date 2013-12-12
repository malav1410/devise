class User < ActiveRecord::Base
  has_many :role_users
  has_many :roles , :through => :role_users

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
	
  

  attr_accessible :email, :password, :password_confirmation

  validates_uniqueness_of :email


    def role?(role)
    	return !!self.roles.find_by_name(role.to_s)
	end
end
