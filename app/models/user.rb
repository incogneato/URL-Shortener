class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :shorteners
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

end


# ----------------------------------------------------------------------
#   attr_accessor :password
#   attr_accessible :email, :password, :password_confirmation
  
#   before_save :encrypt_password

#   validates_confirmation_of :password
#   validates_presence_of :password, :on => :create
#   validates_presence_of :email
#   validates_uniqueness_of :email

#   def encrypt_password
#   	if password.present?
#   		self.password_salt = BCrypt::Engine.generate_salt
#   		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
#   	end
#   end

#   def self.authenticate(email, password)
#     user = find_by_email(emial)
#     if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
#       user
#     else
#       nil
#     end
#   end