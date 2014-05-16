class Admin::User < ActiveRecord::Base
	
	has_secure_password

	has_and_belongs_to_many :roles

  def role?(role)
      return !!self.roles.find_by_name(role.to_s)
  end  

	

	before_create { generate_token(:auth_token) }

	def self.find_by_username_or_email(option)
	    where("username =? OR email =?", option, option).first
	end
	
	def send_password_reset
	  generate_token(:password_reset_token)
	  self.password_reset_sent_at = Time.zone.now
	  save!
	  # UserMailer.password_reset(self).deliver
	end

	def generate_token(column)
	  begin
	    self[column] = SecureRandom.urlsafe_base64
	  end while User.exists?(column => self[column])
	end
end
