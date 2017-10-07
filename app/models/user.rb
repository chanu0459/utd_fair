class User < ActiveRecord::Base
	self.table_name = :ilance_users
	before_save :encrypt_password

  # attr_accessible :title, :body
  require 'digest/md5'
  attr_accessible :username, :email, :password, :password_confirmation

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 4..20, :on => :create

  def generate_salt length=5, complexicity = 3
    subsets = [("a".."z"), ("A".."Z"), (0..9), ("!".."?"), ("µ".."ö")]
    chars = subsets[0..complexicity].map { |subset| subset.to_a }.flatten 
    chars.sample(length).join
  end

  def encrypted_password login_password=""
  	Digest::MD5.hexdigest(Digest::MD5.hexdigest("#{login_password}")+ "#{self.salt}")
  end

	def encrypt_password
		if password.present?
			self.salt = generate_salt
			self.password= Digest::MD5.hexdigest(Digest::MD5.hexdigest("#{password}")+ "#{self.salt}")
		end
	end

	def self.authenticate(username_or_email="", login_password="")
	  if EMAIL_REGEX.match(username_or_email)    
	    user = User.find_by_email(username_or_email)
	  else
	    user = User.find_by_username(username_or_email)
	  end
	  if user && user.match_password(login_password)
	    return user
	  else
	    return false
	  end
	end  

	def match_password(login_password="")
	  self.password == encrypted_password(login_password)
	end
end
